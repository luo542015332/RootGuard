package com.rootguard.app.data.magisk

import android.content.ContentResolver
import android.content.Context
import android.database.Cursor
import android.net.Uri
import android.os.ParcelFileDescriptor
import com.rootguard.app.utils.Logger
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.json.JSONArray
import org.json.JSONObject
import java.io.FileInputStream
import java.io.FileOutputStream
import java.text.SimpleDateFormat
import java.util.*
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Magisk ContentProvider 通信接口
 *
 * Magisk 通过 ContentProvider 暴露以下 URI:
 * - content://com.topjohnwu.magisk.provider/ -> Magisk 主应用
 * - content://com.topjohnwu.magisk.provider/file/ -> 文件访问
 */
@Singleton
class MagiskProvider @Inject constructor(
    val context: Context
) {
    companion object {
        private const val MAGISK_AUTHORITY = "com.topjohnwu.magisk.provider"
        private val dateFormat = SimpleDateFormat("MM-dd HH:mm:ss", Locale.getDefault())
        private const val MAGISK_PACKAGE = "com.topjohnwu.magisk"
        
        // Magisk ContentProvider URI
        val MAGISK_URI: Uri = Uri.parse("content://$MAGISK_AUTHORITY")
        val MAGISK_FILE_URI: Uri = Uri.parse("content://$MAGISK_AUTHORITY/file")
        
        // 模块路径
        const val MODULES_PATH = "/data/adb/modules"
        const val MAGISK_DB = "/data/adb/magisk.db"
    }

    /**
     * 检查 Magisk 是否已安装
     */
    fun isMagiskInstalled(): Boolean {
        return try {
            context.packageManager.getPackageInfo(MAGISK_PACKAGE, 0)
            true
        } catch (e: Exception) {
            false
        }
    }

    /**
     * 获取 Magisk 版本信息
     */
    suspend fun getMagiskVersion(): MagiskVersion = withContext(Dispatchers.IO) {
        try {
            // 通过 su 命令获取版本
            val process = Runtime.getRuntime().exec("su -c magisk -V")
            val versionCode = process.inputStream.bufferedReader().readText().trim().toIntOrNull() ?: 0
            process.waitFor()
            
            val versionNameProcess = Runtime.getRuntime().exec("su -c magisk -v")
            val versionName = versionNameProcess.inputStream.bufferedReader().readText().trim()
            versionNameProcess.waitFor()
            
            MagiskVersion(
                versionName = versionName,
                versionCode = versionCode,
                isInstalled = true
            )
        } catch (e: Exception) {
            Logger.e("Failed to get Magisk version", e)
            MagiskVersion("Unknown", 0, false)
        }
    }

    /**
     * 获取已安装模块列表
     */
    suspend fun getModules(): List<MagiskModule> = withContext(Dispatchers.IO) {
        val modules = mutableListOf<MagiskModule>()
        
        try {
            // 读取 /data/adb/modules 目录
            val process = Runtime.getRuntime().exec("su -c ls -1 $MODULES_PATH")
            val moduleDirs = process.inputStream.bufferedReader().readLines()
            process.waitFor()
            
            moduleDirs.forEach { moduleId ->
                if (moduleId.isNotBlank()) {
                    val module = readModuleInfo(moduleId)
                    if (module != null) {
                        modules.add(module)
                    }
                }
            }
        } catch (e: Exception) {
            Logger.e("Failed to get modules", e)
        }
        
        modules
    }

    /**
     * 读取单个模块信息
     */
    private suspend fun readModuleInfo(moduleId: String): MagiskModule? = withContext(Dispatchers.IO) {
        try {
            val modulePath = "$MODULES_PATH/$moduleId"
            
            // 读取 module.prop
            val propProcess = Runtime.getRuntime().exec("su -c cat $modulePath/module.prop")
            val propContent = propProcess.inputStream.bufferedReader().readText()
            propProcess.waitFor()
            
            // 检查模块是否启用
            val disableFile = Runtime.getRuntime().exec("su -c test -f $modulePath/disable && echo 1 || echo 0")
            val isDisabled = disableFile.inputStream.bufferedReader().readText().trim() == "1"
            disableFile.waitFor()
            
            // 检查是否为 remove 状态
            val removeFile = Runtime.getRuntime().exec("su -c test -f $modulePath/remove && echo 1 || echo 0")
            val isRemoved = removeFile.inputStream.bufferedReader().readText().trim() == "1"
            removeFile.waitFor()
            
            parseModuleProp(propContent, moduleId, !isDisabled && !isRemoved)
        } catch (e: Exception) {
            Logger.e("Failed to read module info: $moduleId", e)
            null
        }
    }

    /**
     * 解析 module.prop 文件
     */
    private fun parseModuleProp(content: String, moduleId: String, isEnabled: Boolean): MagiskModule {
        val props = content.lines()
            .filter { it.contains("=") }
            .associate { 
                val parts = it.split("=", limit = 2)
                parts[0].trim() to (parts.getOrNull(1)?.trim() ?: "")
            }
        
        return MagiskModule(
            id = moduleId,
            name = props["name"] ?: moduleId,
            version = props["version"] ?: "Unknown",
            versionCode = props["versionCode"]?.toIntOrNull() ?: 0,
            author = props["author"] ?: "Unknown",
            description = props["description"] ?: "",
            isEnabled = isEnabled
        )
    }

    /**
     * 启用/禁用模块
     */
    suspend fun toggleModule(moduleId: String, enable: Boolean): Boolean = withContext(Dispatchers.IO) {
        try {
            val modulePath = "$MODULES_PATH/$moduleId"
            val disableFile = "$modulePath/disable"
            
            val command = if (enable) {
                "su -c rm -f $disableFile"
            } else {
                "su -c touch $disableFile"
            }
            
            val process = Runtime.getRuntime().exec(command)
            process.waitFor()
            process.exitValue() == 0
        } catch (e: Exception) {
            Logger.e("Failed to toggle module: $moduleId", e)
            false
        }
    }

    /**
     * 卸载模块（标记为 remove）
     */
    suspend fun uninstallModule(moduleId: String): Boolean = withContext(Dispatchers.IO) {
        try {
            val modulePath = "$MODULES_PATH/$moduleId"
            val removeFile = "$modulePath/remove"
            
            val process = Runtime.getRuntime().exec("su -c touch $removeFile")
            process.waitFor()
            process.exitValue() == 0
        } catch (e: Exception) {
            Logger.e("Failed to uninstall module: $moduleId", e)
            false
        }
    }

    /**
     * 安装模块（从 zip 文件）
     */
    suspend fun installModule(zipPath: String): Boolean = withContext(Dispatchers.IO) {
        try {
            // 使用 Magisk 的模块安装命令
            val process = Runtime.getRuntime().exec("su -c magisk --install-module \"$zipPath\"")
            process.waitFor()
            process.exitValue() == 0
        } catch (e: Exception) {
            Logger.e("Failed to install module: $zipPath", e)
            false
        }
    }

    /**
     * 获取 Root 权限管理数据库中的应用授权信息
     */
    suspend fun getAppPolicies(): List<AppPolicy> = withContext(Dispatchers.IO) {
        val policies = mutableListOf<AppPolicy>()
        
        try {
            // 查询 Magisk 的 policies 数据库
            val process = Runtime.getRuntime().exec(
                "su -c sqlite3 $MAGISK_DB \"SELECT package_name, policy, logging, notification FROM policies\""
            )
            val output = process.inputStream.bufferedReader().readText()
            process.waitFor()
            
            output.lines().forEach { line ->
                val parts = line.split("|")
                if (parts.size >= 4) {
                    policies.add(
                        AppPolicy(
                            packageName = parts[0],
                            policy = parts[1].toIntOrNull() ?: 0,
                            logging = parts[2].toIntOrNull() ?: 1,
                            notification = parts[3].toIntOrNull() ?: 1
                        )
                    )
                }
            }
        } catch (e: Exception) {
            Logger.e("Failed to get app policies", e)
        }
        
        policies
    }

    /**
     * 获取所有已安装的应用（包括系统应用）
     */
    suspend fun getAllInstalledApps(): List<InstalledAppInfo> = withContext(Dispatchers.IO) {
        val apps = mutableListOf<InstalledAppInfo>()

        try {
            val pm = context.packageManager
            val packages = pm.getInstalledApplications(0)

            Logger.d("PackageManager returned ${packages.size} packages")

            packages.forEachIndexed { index, appInfo ->
                try {
                    val packageName = appInfo.packageName
                    val isSystemApp = isSystemApp(appInfo)
                    val appName = try {
                        pm.getApplicationLabel(appInfo).toString()
                    } catch (e: Exception) {
                        packageName
                    }

                    val icon = try {
                        pm.getApplicationIcon(appInfo)
                    } catch (e: Exception) {
                        Logger.w("Failed to load icon for $packageName: ${e.message}")
                        pm.getDefaultActivityIcon()
                    }

                    apps.add(
                        InstalledAppInfo(
                            packageName = packageName,
                            appName = appName,
                            isSystemApp = isSystemApp,
                            icon = icon
                        )
                    )
                } catch (e: Exception) {
                    Logger.e("Failed to process app[${index}]: ${appInfo.packageName}", e)
                }
            }

            val userApps = apps.count { !it.isSystemApp }
            val systemApps = apps.count { it.isSystemApp }
            Logger.d("Added ${apps.size} apps to list: $userApps user apps, $systemApps system apps")

            // 打印前 10 个用户应用的包名用于调试
            apps.filter { !it.isSystemApp }.take(10).forEach {
                Logger.d("User app: ${it.packageName} - ${it.appName}")
            }
        } catch (e: Exception) {
            Logger.e("Failed to get installed apps", e)
        }

        apps.sortedBy { it.appName }
    }

    /**
     * 设置应用的 Root 权限策略
     * policy: 0 = 询问, 1 = 拒绝, 2 = 允许
     */
    suspend fun setAppPolicy(packageName: String, policy: Int): Boolean = withContext(Dispatchers.IO) {
        try {
            val process = Runtime.getRuntime().exec(
                "su -c sqlite3 $MAGISK_DB \"UPDATE policies SET policy=$policy WHERE package_name='$packageName'\""
            )
            process.waitFor()
            
            // 如果没有记录则插入
            if (process.exitValue() != 0) {
                val insertProcess = Runtime.getRuntime().exec(
                    "su -c sqlite3 $MAGISK_DB \"INSERT INTO policies (package_name, policy, logging, notification) VALUES ('$packageName', $policy, 1, 1)\""
                )
                insertProcess.waitFor()
                insertProcess.exitValue() == 0
            } else {
                true
            }
        } catch (e: Exception) {
            Logger.e("Failed to set app policy: $packageName", e)
            false
        }
    }

    /**
     * 获取 Magisk 日志
     */
    suspend fun getLogs(): List<MagiskLog> = withContext(Dispatchers.IO) {
        val logs = mutableListOf<MagiskLog>()

        // 优先从本地 Logger 获取日志
        val localLogs = Logger.getLocalLogs()
        if (localLogs.isNotEmpty()) {
            return@withContext localLogs.reversed()
        }

        // 如果本地没有日志，尝试从 Magisk 获取
        try {
            // 检查 Magisk 是否安装
            if (!isMagiskInstalled()) {
                throw Exception("Magisk 未安装")
            }

            // 执行 logcat 命令获取系统日志（更可靠的方法）
            val process = Runtime.getRuntime().exec(
                arrayOf("su", "-c", "logcat", "-d", "-v", "time", "*:I")
            )
            val output = process.inputStream.bufferedReader().readText()
            process.waitFor()

            // 解析最近的日志
            val lines = output.lines().takeLast(100) // 只取最后 100 条
            lines.forEachIndexed { index, line ->
                if (line.isNotBlank() && !line.contains("Magisk")) {
                    logs.add(parseLogLine(line, index))
                }
            }
        } catch (e: Exception) {
            Logger.e("Failed to get logs", e)
            // 如果无法获取日志，返回初始化日志
            logs.add(MagiskLog(
                id = "0",
                message = "无法获取日志: ${e.message}",
                level = LogLevel.WARNING,
                timestamp = dateFormat.format(Date())
            ))
            logs.add(MagiskLog(
                id = "1",
                message = "日志系统已初始化",
                level = LogLevel.INFO,
                timestamp = dateFormat.format(Date())
            ))
        }

        logs.reversed() // 最新的在前
    }

    /**
     * 解析日志行
     * logcat 格式: "12-25 10:30:45.123  1234  5678 I Magisk : message"
     */
    private fun parseLogLine(line: String, id: Int): MagiskLog {
        return try {
            val level = when {
                line.contains(" E ") -> LogLevel.ERROR
                line.contains(" W ") -> LogLevel.WARNING
                line.contains(" I ") -> LogLevel.INFO
                line.contains(" D ") -> LogLevel.DEBUG
                else -> LogLevel.INFO
            }

            // 提取日志消息部分（去掉前面的时间戳和进程信息）
            val message = try {
                val messageStart = line.indexOf("): ")
                if (messageStart != -1 && messageStart + 2 < line.length) {
                    line.substring(messageStart + 2).trim()
                } else {
                    line
                }
            } catch (e: Exception) {
                line
            }

            MagiskLog(
                id = id.toString(),
                message = message,
                level = level,
                timestamp = extractTimestamp(line) ?: dateFormat.format(Date())
            )
        } catch (e: Exception) {
            // 如果解析失败，创建一个默认日志
            MagiskLog(
                id = id.toString(),
                message = line.take(500), // 限制长度避免过长
                level = LogLevel.INFO,
                timestamp = dateFormat.format(Date())
            )
        }
    }

    private fun extractTimestamp(line: String): String? {
        val regex = "\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}".toRegex()
        return regex.find(line)?.value
    }

    /**
     * 清除 Magisk 日志
     */
    suspend fun clearLogs(): Boolean = withContext(Dispatchers.IO) {
        // 清除本地日志
        Logger.clearLocalLogs()
        
        // 同时尝试清除 Magisk 日志
        try {
            val process = Runtime.getRuntime().exec("su -c magisk -c")
            process.waitFor()
            process.exitValue() == 0
        } catch (e: Exception) {
            Logger.e("Failed to clear logs", e)
            false
        }
    }

    /**
     * 重启设备（可选：重启到 Recovery、Bootloader 等）
     */
    suspend fun reboot(target: String = ""): Boolean = withContext(Dispatchers.IO) {
        try {
            val command = if (target.isEmpty()) {
                "su -c reboot"
            } else {
                "su -c reboot $target"
            }
            val process = Runtime.getRuntime().exec(command)
            process.waitFor()
            process.exitValue() == 0
        } catch (e: Exception) {
            Logger.e("Failed to reboot", e)
            false
        }
    }

    /**
     * 判断是否为系统应用
     * 
     * 系统应用判断逻辑：
     * 1. 检查 FLAG_SYSTEM 标志
     * 2. 进一步检查安装路径，排除被错误标记的用户应用
     * 3. 某些 ROM（如 MIUI）可能将用户应用标记为 FLAG_SYSTEM，
     *    但它们的安装路径仍在 /data/app/ 下
     * 
     * @param appInfo 应用信息
     * @return true 如果是系统应用，false 如果是用户应用
     */
    private fun isSystemApp(appInfo: android.content.pm.ApplicationInfo): Boolean {
        // 检查 FLAG_SYSTEM 标志
        val hasSystemFlag = (appInfo.flags and android.content.pm.ApplicationInfo.FLAG_SYSTEM) != 0
        
        if (!hasSystemFlag) {
            return false
        }
        
        // 如果有 FLAG_SYSTEM 标志，进一步检查安装路径
        // 用户应用通常安装在 /data/app/ 下
        // 系统应用安装在 /system/、/vendor/、/product/ 等目录下
        val sourceDir = appInfo.sourceDir ?: return true
        
        val isUserInstalled = sourceDir.contains("/data/app/") || 
                             sourceDir.contains("/data/data/")
        
        return !isUserInstalled
    }
}

// Data Classes

data class MagiskVersion(
    val versionName: String,
    val versionCode: Int,
    val isInstalled: Boolean
)

data class MagiskModule(
    val id: String,
    val name: String,
    val version: String,
    val versionCode: Int,
    val author: String,
    val description: String,
    val isEnabled: Boolean
)

data class AppPolicy(
    val packageName: String,
    val policy: Int,        // 0 = 询问, 1 = 拒绝, 2 = 允许
    val logging: Int,
    val notification: Int
)

data class InstalledAppInfo(
    val packageName: String,
    val appName: String,
    val isSystemApp: Boolean,
    val icon: android.graphics.drawable.Drawable
)

data class MagiskLog(
    val id: String,
    val message: String,
    val level: LogLevel,
    val timestamp: String
)

enum class LogLevel {
    DEBUG,
    INFO,
    WARNING,
    ERROR
}
