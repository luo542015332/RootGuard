package com.rootguard.app.data.repository

import com.rootguard.app.data.magisk.*
import com.rootguard.app.ui.screens.apps.AppItem
import com.rootguard.app.ui.screens.apps.RootAccessStatus
import com.rootguard.app.ui.screens.home.RootStatus
import com.rootguard.app.ui.screens.home.SystemInfo
import com.rootguard.app.ui.screens.logs.LogEntry
import com.rootguard.app.ui.screens.logs.LogLevel
import com.rootguard.app.ui.screens.modules.ModuleItem
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class MagiskRepository @Inject constructor(
    private val magiskProvider: MagiskProvider
) {
    /**
     * 检查 Root 状态
     */
    suspend fun checkRootStatus(): RootStatus = withContext(Dispatchers.IO) {
        try {
            val process = Runtime.getRuntime().exec("su -c id")
            val exitCode = process.waitFor()
            if (exitCode == 0) {
                val output = process.inputStream.bufferedReader().readText()
                if (output.contains("uid=0")) {
                    RootStatus.ROOTED
                } else {
                    RootStatus.NOT_ROOTED
                }
            } else {
                RootStatus.NOT_ROOTED
            }
        } catch (e: Exception) {
            RootStatus.NOT_ROOTED
        }
    }

    /**
     * 获取 Magisk 版本
     */
    suspend fun getMagiskVersion(): String {
        val version = magiskProvider.getMagiskVersion()
        return if (version.isInstalled) {
            "${version.versionName} (${version.versionCode})"
        } else {
            "未安装"
        }
    }

    /**
     * 获取已安装模块列表
     */
    suspend fun getModules(): List<ModuleItem> {
        return magiskProvider.getModules().map { module ->
            ModuleItem(
                id = module.id,
                name = module.name,
                version = module.version,
                description = module.description,
                author = module.author,
                isEnabled = module.isEnabled
            )
        }
    }

    /**
     * 安装模块
     */
    suspend fun installModule(zipPath: String): Boolean {
        return magiskProvider.installModule(zipPath)
    }

    /**
     * 卸载模块
     */
    suspend fun uninstallModule(moduleId: String): Boolean {
        return magiskProvider.uninstallModule(moduleId)
    }

    /**
     * 启用/禁用模块
     */
    suspend fun toggleModule(moduleId: String, enable: Boolean): Boolean {
        return magiskProvider.toggleModule(moduleId, enable)
    }

    /**
     * 获取应用列表及其 Root 权限状态
     */
    suspend fun getAppsWithRootStatus(): List<AppItem> = withContext(Dispatchers.IO) {
        val policies = magiskProvider.getAppPolicies()
        val packageManager = magiskProvider.context.packageManager
        
        policies.mapNotNull { policy ->
            try {
                val appInfo = packageManager.getApplicationInfo(policy.packageName, 0)
                val appName = packageManager.getApplicationLabel(appInfo).toString()
                
                val status = when (policy.policy) {
                    2 -> RootAccessStatus.GRANTED
                    1 -> RootAccessStatus.DENIED
                    else -> RootAccessStatus.PROMPT
                }
                
                AppItem(
                    packageName = policy.packageName,
                    name = appName,
                    rootStatus = status
                )
            } catch (e: Exception) {
                // 应用可能已卸载
                null
            }
        }.sortedBy { it.name }
    }

    /**
     * 设置应用的 Root 权限
     */
    suspend fun setAppRootAccess(packageName: String, status: RootAccessStatus): Boolean {
        val policy = when (status) {
            RootAccessStatus.GRANTED -> 2
            RootAccessStatus.DENIED -> 1
            RootAccessStatus.PROMPT -> 0
        }
        return magiskProvider.setAppPolicy(packageName, policy)
    }

    /**
     * 获取日志
     */
    suspend fun getLogs(): List<LogEntry> {
        return magiskProvider.getLogs().map { log ->
            LogEntry(
                id = log.id,
                message = log.message,
                level = when (log.level) {
                    LogLevel.DEBUG -> com.rootguard.app.ui.screens.logs.LogLevel.DEBUG
                    LogLevel.INFO -> com.rootguard.app.ui.screens.logs.LogLevel.INFO
                    LogLevel.WARNING -> com.rootguard.app.ui.screens.logs.LogLevel.WARNING
                    LogLevel.ERROR -> com.rootguard.app.ui.screens.logs.LogLevel.ERROR
                },
                timestamp = log.timestamp
            )
        }
    }

    /**
     * 清除日志
     */
    suspend fun clearLogs(): Boolean {
        return magiskProvider.clearLogs()
    }

    /**
     * 获取系统信息
     */
    suspend fun getSystemInfo(): SystemInfo = withContext(Dispatchers.IO) {
        val androidVersion = android.os.Build.VERSION.RELEASE
        val apiLevel = android.os.Build.VERSION.SDK_INT.toString()
        val deviceModel = "${android.os.Build.MANUFACTURER} ${android.os.Build.MODEL}"
        val securityPatch = android.os.Build.VERSION.SECURITY_PATCH ?: "Unknown"
        
        // 获取 SELinux 状态
        val selinuxStatus = try {
            val process = Runtime.getRuntime().exec("su -c getenforce")
            val status = process.inputStream.bufferedReader().readText().trim()
            process.waitFor()
            status.ifEmpty { "Unknown" }
        } catch (e: Exception) {
            "Unknown"
        }
        
        SystemInfo(
            androidVersion = "Android $androidVersion",
            apiLevel = "API $apiLevel",
            deviceModel = deviceModel,
            securityPatch = securityPatch,
            selinuxStatus = selinuxStatus
        )
    }

    /**
     * 检查 Magisk 是否安装
     */
    fun isMagiskInstalled(): Boolean {
        return magiskProvider.isMagiskInstalled()
    }

    /**
     * 重启设备
     */
    suspend fun reboot() {
        magiskProvider.reboot()
    }
}