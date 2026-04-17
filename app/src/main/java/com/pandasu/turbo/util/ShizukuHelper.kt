package com.pandasu.turbo.util

import android.content.ComponentName
import android.content.pm.PackageManager
import android.os.Handler
import android.os.Looper
import android.util.Log
import com.pandasu.turbo.IRemoteProcess
import com.pandasu.turbo.userservice.RemoteProcessService
import rikka.shizuku.Shizuku
import java.io.BufferedReader
import java.io.InputStreamReader

/**
 * 统一命令执行入口
 *
 * 执行优先级：
 *   Root (su) → Shizuku UserService (ADB权限) → 普通 shell (受限)
 *
 * 大多数系统级操作（写 /sys、setenforce、pm 等）需要 Root 或 Shizuku。
 * 普通 shell 只能执行 getprop、logcat 等无需特权的命令。
 */
object ShizukuHelper {

    private const val TAG = "ShizukuHelper"
    private const val TIMEOUT_MS = 15000L

    private var remoteProcess: IRemoteProcess? = null
    private var userServiceBound = false

    interface CommandResultListener {
        fun onResult(exitCode: Int, stdout: String, stderr: String)
        fun onError(msg: String)
    }

    // ─── 状态检测 ───────────────────────────────────────────────────

    /**
     * 检测当前可用的最高权限等级（同步，会阻塞线程，勿在主线程调用）
     */
    fun checkStatus(): Int {
        if (isSuAvailable()) return STATUS_SU_AVAILABLE
        if (isShizukuAvailable()) return STATUS_SHIZUKU_READY
        return STATUS_SHELL_ONLY
    }

/** Root 是否可用（自动探测 su 格式，带超时防止阻塞） */
    fun isSuAvailable(): Boolean {
        if (suFormatChecked) return suAvailable
        suFormatChecked = true
        suAvailable = false

        // 优先试 su -c 'id'（APatch/Magisk/KernelSU 兼容格式）
        try {
            val p = Runtime.getRuntime().exec(arrayOf("su", "-c", "id"))
            val done = p.waitFor(3, java.util.concurrent.TimeUnit.SECONDS)
            if (done) {
                val line = p.inputStream.bufferedReader().readLine()
                if (p.exitValue() == 0 && line != null && line.contains("uid=0")) {
                    suFormat = "dash-c"
                    suAvailable = true
                    return true
                }
            } else { p.destroyForcibly() }
        } catch (_: Throwable) {}

        // 再试 su 0 id（部分 ROM 的 su 支持 user 参数）
        try {
            val p = Runtime.getRuntime().exec(arrayOf("su", "0", "id"))
            val done = p.waitFor(3, java.util.concurrent.TimeUnit.SECONDS)
            if (done) {
                val line = p.inputStream.bufferedReader().readLine()
                if (p.exitValue() == 0 && line != null && line.contains("uid=0")) {
                    suFormat = "uid-arg"
                    suAvailable = true
                    return true
                }
            } else { p.destroyForcibly() }
        } catch (_: Throwable) {}

        return false
    }

    /** 获取当前设备兼容的 su 执行参数 */
    fun suArgs(cmd: String): Array<String> {
        isSuAvailable()
        return when (suFormat) {
            "dash-c" -> arrayOf("su", "-c", cmd)
            "uid-arg" -> arrayOf("su", "0", "sh", "-c", cmd)
            else -> arrayOf("su", "-c", cmd) // 默认 fallback
        }
    }

    // su 格式缓存
    private var suFormatChecked = false
    private var suAvailable = false
    private var suFormat = "dash-c"

    /** Shizuku 是否已连接且已授权 */
    fun isShizukuAvailable(): Boolean {
        return try {
            Shizuku.pingBinder() && Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED
        } catch (e: Throwable) { false }
    }

    /** 请求 Shizuku 权限 */
    fun requestShizukuPermission(requestCode: Int) {
        try { Shizuku.requestPermission(requestCode) } catch (e: Throwable) { }
    }

    // ─── Shizuku UserService 绑定 ──────────────────────────────────

    private val userServiceConnection = object : android.content.ServiceConnection {
        override fun onServiceConnected(name: ComponentName, service: android.os.IBinder) {
            remoteProcess = IRemoteProcess.Stub.asInterface(service)
            userServiceBound = true
            Log.d(TAG, "RemoteProcessService connected (Shizuku)")
        }
        override fun onServiceDisconnected(name: ComponentName) {
            remoteProcess = null
            userServiceBound = false
            Log.d(TAG, "RemoteProcessService disconnected")
        }
    }

    fun bindUserService() {
        if (!isShizukuAvailable() || userServiceBound) return
        try {
            val args = Shizuku.UserServiceArgs(
                ComponentName("com.pandasu.turbo", RemoteProcessService::class.java.name)
            )
            Shizuku.bindUserService(args, userServiceConnection)
            Log.d(TAG, "Binding RemoteProcessService...")
        } catch (e: Exception) {
            Log.e(TAG, "bindUserService failed: ${e.message}")
        }
    }

    fun unbindUserService() {
        if (!userServiceBound) return
        try {
            val args = Shizuku.UserServiceArgs(
                ComponentName("com.pandasu.turbo", RemoteProcessService::class.java.name)
            )
            Shizuku.unbindUserService(args, userServiceConnection, true)
            remoteProcess = null
            userServiceBound = false
        } catch (e: Exception) {
            Log.e(TAG, "unbindUserService failed: ${e.message}")
        }
    }

    // ─── 核心执行 ───────────────────────────────────────────────────

    /**
     * 执行命令（异步，结果回调到主线程）
     *
     * @param command  要执行的命令
     * @param useSu    true = 强制走 su（Root），false = 自动选最高可用权限
     * @param callback 结果回调
     */
    fun execCommand(command: String, useSu: Boolean = false, callback: CommandResultListener) {
        // 如果 Shizuku 可用但 UserService 还没绑定，先绑定
        if (!userServiceBound && isShizukuAvailable()) {
            bindUserService()
        }

        Thread {
            when {
                // 明确要求 Root，或者 Root 可用时优先走 su
                useSu || isSuAvailable() -> execViaSu(command, callback)
                // Root 不可用，Shizuku UserService 可用
                userServiceBound && remoteProcess != null -> execViaUserService(command, callback)
                // 兜底：普通 shell（权限受限）
                else -> execViaShell(command, callback)
            }
        }.start()
    }

    /**
     * 执行多条命令（用 && 串联）
     */
    fun execScript(commands: List<String>, useSu: Boolean = false, callback: CommandResultListener) {
        val script = commands.joinToString(" && ") { "($it)" }
        execCommand(script, useSu, callback)
    }

    // ─── Root (su) 执行 ────────────────────────────────────────────

    private fun execViaSu(command: String, callback: CommandResultListener) {
        try {
            val process = Runtime.getRuntime().exec(suArgs(command))
            val exitCode = waitForWithTimeout(process, TIMEOUT_MS)
            if (exitCode == -1) {
                process.destroy()
                deliverError("命令超时（${TIMEOUT_MS / 1000}s），设备可能没有 Root 权限", callback)
                return
            }
            val stdout = process.inputStream.bufferedReader().readText()
            val stderr = process.errorStream.bufferedReader().readText()
            deliverResult(exitCode, stdout, stderr, callback)
        } catch (e: Exception) {
            Log.e(TAG, "su exec failed: ${e.message}")
            deliverError("Root 执行失败：${e.message}", callback)
        }
    }

    // ─── Shizuku UserService 执行 ──────────────────────────────────

    private fun execViaUserService(command: String, callback: CommandResultListener) {
        try {
            val service = remoteProcess ?: run {
                execViaShell(command, callback)
                return
            }
            val result = service.execute(command)
            // 格式：exitCode|stdout|stderr
            val parts = result.split("|", limit = 3)
            val exitCode = parts[0].toIntOrNull() ?: -1
            val stdout = parts.getOrElse(1) { "" }
            val stderr = parts.getOrElse(2) { "" }
            deliverResult(exitCode, stdout, stderr, callback)
        } catch (e: Exception) {
            Log.e(TAG, "UserService exec failed: ${e.message}")
            execViaShell(command, callback)
        }
    }

    // ─── 普通 shell 执行（兜底）────────────────────────────────────

    private fun execViaShell(command: String, callback: CommandResultListener) {
        try {
            val process = Runtime.getRuntime().exec(arrayOf("sh", "-c", command))
            val exitCode = waitForWithTimeout(process, TIMEOUT_MS)
            if (exitCode == -1) {
                process.destroy()
                deliverError("命令超时（${TIMEOUT_MS / 1000}s）", callback)
                return
            }
            val stdout = process.inputStream.bufferedReader().readText()
            val stderr = process.errorStream.bufferedReader().readText()
            if (exitCode == 127) {
                deliverError("命令不存在或无权限：$stderr\n\n需要 Root 或 Shizuku 授权才能执行此命令。", callback)
            } else {
                deliverResult(exitCode, stdout, stderr, callback)
            }
        } catch (e: Exception) {
            deliverError("执行失败：${e.message}", callback)
        }
    }

    // ─── 文件读写 ──────────────────────────────────────────────────

    fun readFile(path: String, useSu: Boolean = true, callback: (String?) -> Unit) {
        execCommand("cat '$path'", useSu, object : CommandResultListener {
            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                deliver { callback(if (exitCode == 0) stdout.trim() else null) }
            }
            override fun onError(msg: String) { deliver { callback(null) } }
        })
    }

    fun writeFile(path: String, content: String, useSu: Boolean = true, callback: (Boolean) -> Unit) {
        // 用 tee 写文件，绕过 shell 重定向被拦截的问题
        Thread {
            try {
                val p = Runtime.getRuntime().exec(suArgs("tee '$path'"))
                p.outputStream.write(content.toByteArray())
                p.outputStream.flush()
                p.outputStream.close()
                val stderr = p.errorStream.bufferedReader().readText()
                val exit = p.waitFor()
                val ok = exit == 0 && !stderr.contains("Permission denied", ignoreCase = true)
                Handler(Looper.getMainLooper()).post { callback(ok) }
            } catch (e: Exception) {
                Handler(Looper.getMainLooper()).post { callback(false) }
            }
        }.start()
    }

    // ─── 工具 ─────────────────────────────────────────────────────

    private fun waitForWithTimeout(process: Process, timeoutMs: Long): Int {
        val deadline = System.currentTimeMillis() + timeoutMs
        while (System.currentTimeMillis() < deadline) {
            try { return process.exitValue() }
            catch (_: IllegalThreadStateException) { Thread.sleep(50) }
        }
        return -1
    }

    private fun deliverResult(exitCode: Int, stdout: String, stderr: String, cb: CommandResultListener) {
        Handler(Looper.getMainLooper()).post { cb.onResult(exitCode, stdout, stderr) }
    }

    private fun deliverError(msg: String, cb: CommandResultListener) {
        Handler(Looper.getMainLooper()).post { cb.onError(msg) }
    }

    private fun deliver(block: () -> Unit) {
        Handler(Looper.getMainLooper()).post(block)
    }

    // ─── 协程支持 ─────────────────────────────────────────────────

    /**
     * 同步执行命令（阻塞，用于协程）
     * @return Pair<exitCode, stdout>
     */
    fun execCommandSync(command: String, useSu: Boolean = true): Pair<Int, String> {
        var result: Pair<Int, String> = Pair(-1, "")
        var completed = false
        
        execCommand(command, useSu, object : CommandResultListener {
            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                result = Pair(exitCode, stdout)
                completed = true
            }
            override fun onError(msg: String) {
                result = Pair(-1, msg)
                completed = true
            }
        })
        
        // 等待结果（带超时）
        val deadline = System.currentTimeMillis() + TIMEOUT_MS
        while (!completed && System.currentTimeMillis() < deadline) {
            Thread.sleep(10)
        }
        return result
    }

    // ─── 常量 ─────────────────────────────────────────────────────

    const val STATUS_SHIZUKU_NOT_STARTED = 0
    const val STATUS_SHIZUKU_NEED_PERMISSION = 1
    const val STATUS_SHIZUKU_READY = 2
    const val STATUS_SU_AVAILABLE = 3
    const val STATUS_SHELL_ONLY = 4
}
