package com.rootguard.app.data.repository

import com.rootguard.app.data.magisk.*
import com.rootguard.app.ui.screens.apps.AppItem
import com.rootguard.app.ui.screens.apps.RootAccessStatus
import com.rootguard.app.ui.screens.home.RootStatus
import com.rootguard.app.ui.screens.home.SystemInfo
import com.rootguard.app.ui.screens.logs.LogEntry
import com.rootguard.app.data.magisk.LogLevel
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
     * 显示所有已安装应用，包括没有 Root 策略记录的应用
     */
    suspend fun getAppsWithRootStatus(): List<AppItem> = withContext(Dispatchers.IO) {
        // 获取所有已安装应用
        val allApps = magiskProvider.getAllInstalledApps()
        // 获取已有的授权策略
        val policies = magiskProvider.getAppPolicies()
        val policyMap = policies.associateBy { it.packageName }

        // 检测 Root 类型以确定 policy 值含义
        val isKernelSU = try {
            magiskProvider.getCurrentRootType() == MagiskProvider.ROOT_TYPE_KERNELSU
        } catch (e: Exception) {
            false
        }

        allApps.map { appInfo ->
            val policy = policyMap[appInfo.packageName]
            val status = when {
                isKernelSU -> {
                    // KernelSU: 0=拒绝, 1=允许
                    when (policy?.policy) {
                        1 -> RootAccessStatus.GRANTED
                        0 -> RootAccessStatus.DENIED
                        else -> RootAccessStatus.PROMPT
                    }
                }
                else -> {
                    // Magisk: 0=询问, 1=拒绝, 2=允许
                    when (policy?.policy) {
                        2 -> RootAccessStatus.GRANTED
                        1 -> RootAccessStatus.DENIED
                        else -> RootAccessStatus.PROMPT
                    }
                }
            }

            AppItem(
                packageName = appInfo.packageName,
                name = appInfo.appName,
                rootStatus = status,
                isSystemApp = appInfo.isSystemApp,
                icon = appInfo.icon
            )
        }.sortedWith(
            compareByDescending<AppItem> { it.rootStatus == RootAccessStatus.GRANTED }
                .thenBy { it.name }
        )
    }

    /**
     * 设置应用的 Root 权限
     */
    suspend fun setAppRootAccess(packageName: String, status: RootAccessStatus): Boolean {
        // 检测 Root 类型以确定 policy 值含义
        val isKernelSU = try {
            magiskProvider.getCurrentRootType() == MagiskProvider.ROOT_TYPE_KERNELSU
        } catch (e: Exception) {
            false
        }

        val policy = if (isKernelSU) {
            // KernelSU: 0=拒绝, 1=允许
            when (status) {
                RootAccessStatus.GRANTED -> 1
                RootAccessStatus.DENIED -> 0
                RootAccessStatus.PROMPT -> 1 // KernelSU 不支持 PROMPT，默认为允许
            }
        } else {
            // Magisk: 0=询问, 1=拒绝, 2=允许
            when (status) {
                RootAccessStatus.GRANTED -> 2
                RootAccessStatus.DENIED -> 1
                RootAccessStatus.PROMPT -> 0
            }
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
                    com.rootguard.app.data.magisk.LogLevel.DEBUG -> com.rootguard.app.ui.screens.logs.LogLevel.DEBUG
                    com.rootguard.app.data.magisk.LogLevel.INFO -> com.rootguard.app.ui.screens.logs.LogLevel.INFO
                    com.rootguard.app.data.magisk.LogLevel.WARNING -> com.rootguard.app.ui.screens.logs.LogLevel.WARNING
                    com.rootguard.app.data.magisk.LogLevel.ERROR -> com.rootguard.app.ui.screens.logs.LogLevel.ERROR
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
            when {
                status.isEmpty() -> "Unknown"
                status.contains("Enforcing", ignoreCase = true) -> "Enforcing (强制)"
                status.contains("Permissive", ignoreCase = true) -> "Permissive (宽容)"
                status.contains("Disabled", ignoreCase = true) -> "Disabled (禁用)"
                else -> status
            }
        } catch (e: Exception) {
            "Unknown"
        }
        
        // 获取内核版本 - 尝试多种方法
        val kernelVersion = try {
            // 方法1: 通过 su 执行 uname
            val process = Runtime.getRuntime().exec("su -c uname -r")
            val version = process.inputStream.bufferedReader().readText().trim()
            process.waitFor()
            if (version.isNotEmpty() && !version.contains("not found")) {
                version
            } else {
                throw Exception("Su uname failed")
            }
        } catch (e: Exception) {
            try {
                // 方法2: 直接执行 uname（某些设备可能不需要 su）
                val process = Runtime.getRuntime().exec("uname -r")
                val version = process.inputStream.bufferedReader().readText().trim()
                process.waitFor()
                if (version.isNotEmpty()) version else throw Exception("Uname failed")
            } catch (e2: Exception) {
                // 方法3: 从系统属性获取
                System.getProperty("os.version") ?: "Unknown"
            }
        }
        
        // 获取系统指纹
        val systemFingerprint = android.os.Build.FINGERPRINT ?: "Unknown"
        
        SystemInfo(
            androidVersion = "Android $androidVersion",
            apiLevel = "API $apiLevel",
            deviceModel = deviceModel,
            securityPatch = securityPatch,
            selinuxStatus = selinuxStatus,
            kernelVersion = kernelVersion,
            systemFingerprint = systemFingerprint
        )
    }

    /**
     * 检查 Magisk 是否安装
     */
    fun isMagiskInstalled(): Boolean {
        return magiskProvider.isMagiskInstalled()
    }

    /**
     * 获取内核版本
     */
    suspend fun getKernelVersion(): String = withContext(Dispatchers.IO) {
        try {
            val process = Runtime.getRuntime().exec("su -c uname -r")
            val version = process.inputStream.bufferedReader().readText().trim()
            process.waitFor()
            version.ifEmpty { System.getProperty("os.version") ?: "Unknown" }
        } catch (e: Exception) {
            System.getProperty("os.version") ?: "Unknown"
        }
    }

    /**
     * 重启设备
     */
    suspend fun reboot() {
        magiskProvider.reboot()
    }
}