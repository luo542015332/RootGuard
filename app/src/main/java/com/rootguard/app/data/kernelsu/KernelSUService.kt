package com.rootguard.app.data.kernelsu

import android.content.Context
import com.rootguard.app.utils.Logger
import com.topjohnwu.superuser.Shell
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

/**
 * KernelSU RootService 连接管理类
 *
 * 用于通过 Root Shell 获取完整的系统应用列表，绕过 HyperOS/MIUI 的限制
 */
class KernelSUService(private val context: Context) {

    companion object {
        private const val TAG = "KernelSUService"
    }

    /**
     * 检查 Root 权限是否可用（包括 KernelSU 和普通 su）
     */
    suspend fun isRootAvailable(): Boolean = withContext(Dispatchers.IO) {
        try {
            val result = Shell.cmd("su -c id").exec()
            val available = result.isSuccess
            Logger.d("Root available: $available")
            available
        } catch (e: Exception) {
            Logger.e("Failed to check root availability", e)
            false
        }
    }

    /**
     * 通过 Root Shell 获取完整的应用列表
     * 使用 pm list packages -a 命令获取所有应用（不受系统限制）
     */
    suspend fun getAllPackages(): List<String> = withContext(Dispatchers.IO) {
        val packages = mutableListOf<String>()

        try {
            Logger.d("Starting to get packages via Root Shell...")

            // 使用 Root Shell 执行 pm list packages 命令
            // -a 参数表示列出所有应用（包括系统应用）
            val command = "pm list packages -a"
            Logger.d("Executing command: $command")

            val result = Shell.cmd(command).exec()

            if (result.isSuccess) {
                val output = result.out.joinToString("\n")
                Logger.d("Command output length: ${output.length}")

                output.lines().forEach { line ->
                    // 解析包名：格式为 "package:com.example.app"
                    if (line.startsWith("package:")) {
                        val packageName = line.substringAfter("package:").trim()
                        if (packageName.isNotEmpty()) {
                            packages.add(packageName)
                        }
                    }
                }

                Logger.d("Found ${packages.size} packages via Root Shell")
            } else {
                Logger.e("Command failed with exit code: ${result.code}")
                Logger.e("Error output: ${result.err}")
            }
        } catch (e: Exception) {
            Logger.e("Failed to get packages via Root Shell", e)
        }

        packages
    }

    /**
     * 通过 Root Shell 执行任意命令并返回输出
     */
    suspend fun executeCommand(command: String): String = withContext(Dispatchers.IO) {
        try {
            Logger.d("Executing command via Root Shell: $command")

            val result = Shell.cmd(command).exec()

            if (result.isSuccess) {
                Logger.d("Command exit code: ${result.code}")
                result.out.joinToString("\n")
            } else {
                val errorMsg = "Command failed with exit code: ${result.code}"
                Logger.w(errorMsg)
                if (result.err.isNotEmpty()) {
                    Logger.w("Command error output: ${result.err.joinToString("\n")}")
                }
                ""
            }
        } catch (e: Exception) {
            Logger.e("Failed to execute command: $command", e)
            ""
        }
    }

    /**
     * 通过 Root Shell 检查应用是否安装
     */
    suspend fun isPackageInstalled(packageName: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val command = "pm path $packageName"
            val output = executeCommand(command)
            output.isNotEmpty() && !output.contains("Error:")
        } catch (e: Exception) {
            Logger.e("Failed to check package: $packageName", e)
            false
        }
    }

    /**
     * 通过 Root Shell 获取应用的详细信息
     */
    suspend fun getAppInfo(packageName: String): String = withContext(Dispatchers.IO) {
        try {
            val command = "dumpsys package $packageName"
            executeCommand(command)
        } catch (e: Exception) {
            Logger.e("Failed to get app info: $packageName", e)
            ""
        }
    }
}


