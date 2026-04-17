package com.pandasu.turbo.util

import android.os.Handler
import android.os.Looper
import android.provider.Settings
import android.util.Log
import java.io.BufferedReader
import java.io.File
import java.io.FileReader

/**
 * 温控 / 性能调优工具
 *
 * - 所有控制方法均为异步：内部开线程，回调在主线程
 * - 需要 Root 权限
 */
object ThermalUtil {

    private const val TAG = "ThermalUtil"

    // ═══════════════════════════════════════════════════════════════════════
    // 结果类型
    // ═══════════════════════════════════════════════════════════════════════

    data class CtrlResult(
        val ok: Boolean,
        val msg: String,
        val changed: Int = 0
    )

    // ═══════════════════════════════════════════════════════════════════════
    // 温控解除
    // ═══════════════════════════════════════════════════════════════════════

    /**
     * 解除温控
     * - 调高所有 thermal_zone 的 trip_point 温度阈值
     * - 禁用 MIUI 温控服务
     */
    fun disableThermalThrottle(callback: (Boolean, String) -> Unit) {
        runAsync(callback) { disableThermalInternal() }
    }

    /**
     * 恢复温控
     */
    fun restoreThermalThrottle(callback: (Boolean, String) -> Unit) {
        runAsync(callback) { restoreThermalInternal() }
    }

    // ═══════════════════════════════════════════════════════════════════════
    // 性能模式
    // ═══════════════════════════════════════════════════════════════════════

    /**
     * 极致性能模式
     * - CPU/GPU governor → performance
     * - 锁定最高频率
     * - 保持所有核心在线
     */
    fun enablePerformanceMode(callback: (Boolean, String) -> Unit) {
        runAsync(callback) { performanceModeInternal() }
    }

    /**
     * 省电模式
     */
    fun enablePowerSaveMode(callback: (Boolean, String) -> Unit) {
        runAsync(callback) { powerSaveModeInternal() }
    }

    /**
     * 均衡模式（恢复默认）
     */
    fun enableBalancedMode(callback: (Boolean, String) -> Unit) {
        runAsync(callback) { balancedModeInternal() }
    }

    // ═══════════════════════════════════════════════════════════════════════
    // 动画速度（不需要 root）
    // ═══════════════════════════════════════════════════════════════════════

    fun setAnimationScale(context: android.content.Context, scale: Float, callback: (Boolean) -> Unit) {
        try {
            val resolver = context.contentResolver
            Settings.Global.putString(resolver, Settings.Global.WINDOW_ANIMATION_SCALE, scale.toString())
            Settings.Global.putString(resolver, Settings.Global.TRANSITION_ANIMATION_SCALE, scale.toString())
            Settings.Global.putString(resolver, Settings.Global.ANIMATOR_DURATION_SCALE, scale.toString())
            callback(true)
        } catch (e: Exception) {
            callback(false)
        }
    }

    /**
     * 关闭预加载（不需要 root，通过 Settings.Global 设置）
     */
    fun disablePreload(context: android.content.Context, callback: (Boolean) -> Unit) {
        try {
            val resolver = context.contentResolver
            Settings.Global.putString(resolver, "fstrim_mandatory_interval", "0")
            Settings.Global.putString(resolver, "force_hw_ui", "true")
            callback(true)
        } catch (e: Exception) {
            callback(false)
        }
    }

    // ═══════════════════════════════════════════════════════════════════════
    // Swap / Swappiness
    // ═══════════════════════════════════════════════════════════════════════

    fun getSwapInfo(): Map<String, String> {
        val result = mutableMapOf<String, String>()
        val lines = SystemInfoUtil.readFileLines("/proc/meminfo")
        for (line in lines) {
            if (line.startsWith("SwapTotal") || line.startsWith("SwapFree") || line.startsWith("SwapCached")) {
                val parts = line.split(Regex("\\s+"))
                if (parts.size >= 2) result[parts[0].trimEnd(':')] = "${parts[1]} kB"
            }
        }
        return result
    }

    fun setVmSwappiness(value: Int, callback: (Boolean) -> Unit) {
        Thread {
            if (!checkRoot()) {
                mainHandler.post { callback(false) }
                return@Thread
            }
            val (code, _) = suExec("echo $value > /proc/sys/vm/swappiness")
            mainHandler.post { callback(code == 0) }
        }.start()
    }

    // ═══════════════════════════════════════════════════════════════════════
    // GPU 渲染
    // ═══════════════════════════════════════════════════════════════════════

    fun enableHardwareRendering(context: android.content.Context, callback: (Boolean) -> Unit) {
        try {
            val resolver = context.contentResolver
            Settings.Global.putString(resolver, "debug.hwui.renderer", "opengl")
            Settings.Global.putString(resolver, "debug.egl.hw", "1")
            callback(true)
        } catch (e: Exception) {
            callback(false)
        }
    }

    // ═══════════════════════════════════════════════════════════════════════
    // 读取工具
    // ═══════════════════════════════════════════════════════════════════════

    /** 读取 CPU 温度（摄氏度）*/
    fun getCpuTempCelsius(): Float? {
        val thermalDir = File("/sys/class/thermal")
        if (!thermalDir.exists()) return null

        val zones = thermalDir.listFiles() ?: return null
        for (zone in zones) {
            if (!zone.isDirectory || !zone.name.startsWith("thermal_zone")) continue
            val type = readFile("${zone.absolutePath}/type") ?: continue
            if (type.contains("cpu", ignoreCase = true) || type.contains("tsens", ignoreCase = true)) {
                val temp = readFile("${zone.absolutePath}/temp")?.toLongOrNull() ?: continue
                return temp / 1000f
            }
        }
        return null
    }

    // ═══════════════════════════════════════════════════════════════════════
    // 内部实现：异步框架
    // ═══════════════════════════════════════════════════════════════════════

    private val mainHandler = Handler(Looper.getMainLooper())

    private fun runAsync(callback: (Boolean, String) -> Unit, block: () -> CtrlResult) {
        Log.d(TAG, "runAsync: starting")
        Thread {
            try {
                if (!checkRoot()) {
                    Log.e(TAG, "runAsync: no root")
                    mainHandler.post { callback(false, "没有 Root 权限") }
                    return@Thread
                }
                Log.d(TAG, "runAsync: root ok, executing block")
                val result = block()
                Log.d(TAG, "runAsync: result ok=${result.ok}, msg=${result.msg}, changed=${result.changed}")
                mainHandler.post { callback(result.ok, result.msg) }
            } catch (e: Exception) {
                Log.e(TAG, "runAsync error", e)
                mainHandler.post { callback(false, "执行异常: ${e.message}") }
            }
        }.start()
    }

    // ═══════════════════════════════════════════════════════════════════════
    // 内部实现：Root 执行原语（优先 su 0 走 root context）
    // ═══════════════════════════════════════════════════════════════════════

    private fun checkRoot(): Boolean {
        return try {
            val p = Runtime.getRuntime().exec(ShizukuHelper.suArgs("id"))
            val out = p.inputStream.bufferedReader().readText()
            p.waitFor() == 0 && out.contains("uid=0")
        } catch (e: Exception) { false }
    }

    /** 用 su 0 sh -c 执行命令（绕过受限 shell context） */
    private fun suExec(command: String): Pair<Int, String> {
        return try {
            val p = Runtime.getRuntime().exec(ShizukuHelper.suArgs(command))
            val stdout = p.inputStream.bufferedReader().readText()
            val stderr = p.errorStream.bufferedReader().readText()
            val exit = p.waitFor()
            Pair(exit, stdout + if (stderr.isNotBlank()) "\n[stderr] $stderr" else "")
        } catch (e: Exception) {
            Pair(-1, e.message ?: "exec failed")
        }
    }

    /** 用 su 0 cat 读文件（绕过 shell 限制） */
    private fun suCat(path: String): String? {
        return try {
            val p = Runtime.getRuntime().exec(ShizukuHelper.suArgs("cat '" + path + "'" ))
            val out = p.inputStream.bufferedReader().readText().trim()
            if (p.waitFor() == 0 && out.isNotBlank()) out else null
        } catch (e: Exception) { null }
    }

    /** 写 sysfs 节点：用 tee 避免 shell 重定向被拦截 */
    private fun writeFile(path: String, value: String): Boolean {
        return try {
            val p = Runtime.getRuntime().exec(ShizukuHelper.suArgs("tee '" + path + "'" ))
            p.outputStream.write(value.toByteArray())
            p.outputStream.flush()
            p.outputStream.close()
            val stderr = p.errorStream.bufferedReader().readText()
            val exit = p.waitFor()
            if (exit != 0 || stderr.contains("Permission denied", ignoreCase = true)) return false
            // 回读验证
            val content = suCat(path) ?: return false
            content.trim().contains(value.trim())
        } catch (e: Exception) {
            Log.e(TAG, "writeFile failed: $path = $value", e)
            false
        }
    }

    // ═══════════════════════════════════════════════════════════════════════
    // 内部实现：读取工具（优先 su 读，fallback 无 root 读）
    // ═══════════════════════════════════════════════════════════════════════

    /** 读文件：优先 su 0 读，fallback Java 直读 */
    private fun readFile(path: String): String? {
        // 优先 su 0 读（解决 HyperOS SELinux 限制）
        val suResult = suCat(path)
        if (!suResult.isNullOrBlank()) return suResult.trim()
        // fallback：直接读（用于 /proc、/data 等目录）
        return try {
            BufferedReader(FileReader(path)).use { it.readLine()?.trim() }
        } catch (e: Exception) { null }
    }

    // ═══════════════════════════════════════════════════════════════════════
    // 内部实现：具体控制逻辑
    // ═══════════════════════════════════════════════════════════════════════

    private fun disableThermalInternal(): CtrlResult {
        var changed = 0
        val thermalDir = File("/sys/class/thermal")

        // 1. 调高所有 trip_point 温度阈值
        if (thermalDir.exists()) {
            thermalDir.listFiles()
                ?.filter { it.isDirectory && it.name.startsWith("thermal_zone") }
                ?.forEach { zone ->
                    for (i in 0..9) {
                        val tripFile = File("${zone.absolutePath}/trip_point_${i}_temp")
                        if (tripFile.exists()) {
                            if (writeFile(tripFile.absolutePath, "125000")) changed++
                        }
                    }
                }
        }

        // 2. 禁用温控服务
        suExec("setprop persist.sys.thermal.disable 1")
        suExec("stop thermal-engine")
        suExec("stop thermald")
        suExec("stop mi_thermald")
        suExec("setprop sys.thermal.data.provider none")

        return if (changed > 0) {
            CtrlResult(true, "温控已解除（修改 $changed 个节点，重启后恢复）", changed)
        } else {
            // 没找到 trip_point，说明设备没有相关节点或无权限写入
            CtrlResult(false, "未能修改任何节点，可能没有 Root 权限或设备不支持")
        }
    }

    private fun restoreThermalInternal(): CtrlResult {
        suExec("setprop persist.sys.thermal.disable 0")
        suExec("start thermal-engine")
        suExec("start thermald")
        suExec("start mi_thermald")
        return CtrlResult(true, "温控已恢复")
    }

    private fun performanceModeInternal(): CtrlResult {
        val coreCount = Runtime.getRuntime().availableProcessors()
        var changed = 0

        // CPU governor → performance
        for (i in 0 until coreCount) {
            if (writeFile("/sys/devices/system/cpu/cpu$i/cpufreq/scaling_governor", "performance")) {
                changed++
            }
        }

        // 锁定最高频率
        for (i in 0 until coreCount) {
            val maxFreq = readFile("/sys/devices/system/cpu/cpu$i/cpufreq/cpuinfo_max_freq")
            if (maxFreq != null) {
                writeFile("/sys/devices/system/cpu/cpu$i/cpufreq/scaling_min_freq", maxFreq)
            }
        }

        // GPU performance (Adreno)
        writeFile("/sys/class/kgsl/kgsl-3d0/devfreq/governor", "performance")
        writeFile("/sys/class/kgsl/kgsl-3d0/force_clk_on", "1")
        writeFile("/sys/class/kgsl/kgsl-3d0/idle_timer", "10000000")

        // GPU performance (Mali)
        writeFile("/sys/class/misc/mali0/device/devfreq/gpufreq/governor", "performance")

        // 保持所有核心在线
        for (i in 1 until coreCount) {
            writeFile("/sys/devices/system/cpu/cpu$i/online", "1")
        }

        // MIUI 性能模式
        suExec("setprop persist.sys.perf.mode 1")
        suExec("cmd power set-mode 3")

        return CtrlResult(true, "极致性能模式已开启（修改 $changed 个节点）", changed)
    }

    private fun powerSaveModeInternal(): CtrlResult {
        val coreCount = Runtime.getRuntime().availableProcessors()
        var changed = 0

        for (i in 0 until coreCount) {
            // 恢复最低频率到原始值
            val minFreq = readFile("/sys/devices/system/cpu/cpu$i/cpufreq/cpuinfo_min_freq")
            if (minFreq != null) {
                writeFile("/sys/devices/system/cpu/cpu$i/cpufreq/scaling_min_freq", minFreq)
            }
            if (writeFile("/sys/devices/system/cpu/cpu$i/cpufreq/scaling_governor", "powersave")) {
                changed++
            }
        }
        suExec("cmd power set-mode 1")

        return CtrlResult(true, "省电模式已开启（修改 $changed 个节点）", changed)
    }

    private fun balancedModeInternal(): CtrlResult {
        val coreCount = Runtime.getRuntime().availableProcessors()
        var changed = 0

        for (i in 0 until coreCount) {
            // 恢复最低频率到原始值
            val minFreq = readFile("/sys/devices/system/cpu/cpu$i/cpufreq/cpuinfo_min_freq")
            if (minFreq != null) {
                writeFile("/sys/devices/system/cpu/cpu$i/cpufreq/scaling_min_freq", minFreq)
            }
            if (writeFile("/sys/devices/system/cpu/cpu$i/cpufreq/scaling_governor", "schedutil")) {
                changed++
            }
        }
        suExec("cmd power set-mode 0")

        return CtrlResult(true, "均衡模式已恢复（修改 $changed 个节点）", changed)
    }
}
