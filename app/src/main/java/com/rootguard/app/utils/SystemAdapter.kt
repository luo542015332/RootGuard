package com.rootguard.app.utils

import android.content.Context
import android.content.pm.PackageManager
import com.rootguard.app.data.model.IsolationConfig
import com.rootguard.app.data.model.IsolationPresets
import com.topjohnwu.superuser.Shell

/**
 * 系统适配器 - 处理不同定制系统的特定行为
 */
object SystemAdapter {

    /**
     * 获取针对特定系统的应用列表获取策略
     */
    fun getAppListStrategy(context: Context): AppListStrategy {
        val customOS = AndroidVersionCompat.getCustomOS()
        
        return when (customOS) {
            AndroidVersionCompat.CustomOS.HYPEROS -> HyperOSStrategy()
            AndroidVersionCompat.CustomOS.MIUI -> MIUIStrategy()
            AndroidVersionCompat.CustomOS.COLOROS -> ColorOSStrategy()
            AndroidVersionCompat.CustomOS.ORIGINOS -> OriginOSStrategy()
            AndroidVersionCompat.CustomOS.HARMONYOS -> HarmonyOSStrategy()
            AndroidVersionCompat.CustomOS.ONEUI -> OneUIStrategy()
            else -> DefaultStrategy()
        }
    }

    /**
     * 获取针对特定系统的属性伪装配置
     */
    fun getPropertySpoofConfig(): Map<String, String> {
        val customOS = AndroidVersionCompat.getCustomOS()
        val manufacturer = AndroidVersionCompat.getDeviceManufacturer()
        
        val config = mutableMapOf<String, String>()
        config.putAll(IsolationPresets.FULL_PROP_SPOOF)
        
        when (customOS) {
            AndroidVersionCompat.CustomOS.HYPEROS, 
            AndroidVersionCompat.CustomOS.MIUI -> {
                config.putAll(IsolationPresets.MIUI_PROPS)
                // HyperOS 可能需要额外属性
                if (customOS == AndroidVersionCompat.CustomOS.HYPEROS) {
                    config["ro.miui.ui.version.name"] = "V14"
                    config["ro.miui.ui.version.code"] = "14"
                }
            }
            AndroidVersionCompat.CustomOS.COLOROS -> {
                // ColorOS 特定属性
                config["ro.coloros.version"] = "V13.1"
                config["ro.coloros.version.name"] = "ColorOS 13.1"
                config["ro.oppo.theme.version"] = "CTS"
            }
            AndroidVersionCompat.CustomOS.ORIGINOS -> {
                // OriginOS 特定属性
                config["ro.vivo.os.version"] = "PD2145B_A_1.10.5"
                config["ro.vivo.os.build.display.id"] = "PD2145B_A_1.10.5"
            }
            AndroidVersionCompat.CustomOS.HARMONYOS -> {
                // HarmonyOS 特定属性
                config["ro.huawei.system.os"] = "HarmonyOS"
                config["ro.huawei.system.version"] = "3.0.0"
                config["ro.build.hw_emui_api_level"] = "10"
            }
            AndroidVersionCompat.CustomOS.ONEUI -> {
                // OneUI 特定属性
                config["ro.build.scafe.version"] = "2023A"
                config["ro.build.scafe.cream"] = "white"
                config["ro.build.scafe.size"] = "tall"
            }
            else -> {
                // 默认配置
                when (manufacturer) {
                    AndroidVersionCompat.DeviceManufacturer.XIAOMI -> {
                        config.putAll(IsolationPresets.MIUI_PROPS)
                    }
                    AndroidVersionCompat.DeviceManufacturer.HUAWEI -> {
                        // HarmonyOS 特定属性
                        config["ro.huawei.build.version.security_patch"] = "2025-01-01"
                    }
                    AndroidVersionCompat.DeviceManufacturer.VIVO -> {
                        // OriginOS 特定属性
                        config["ro.vivo.os.version"] = "4.0"
                    }
                    AndroidVersionCompat.DeviceManufacturer.SAMSUNG -> {
                        config["ro.samsung.security.device.rooting"] = "0"
                    }
                    AndroidVersionCompat.DeviceManufacturer.OPPO -> {
                        config.putAll(IsolationPresets.REALME_PROPS)
                    }
                    AndroidVersionCompat.DeviceManufacturer.OTHER -> {
                        // 通用属性
                    }
                }
            }
        }
        
        return config
    }

    /**
     * 检查系统是否支持特定功能
     */
    fun isFeatureSupported(feature: SystemFeature): Boolean {
        return when (feature) {
            SystemFeature.KERNELSU_ROOT_SERVICE -> {
                // HyperOS/MIUI 需要 KernelSU RootService
                AndroidVersionCompat.getCustomOS() in setOf(
                    AndroidVersionCompat.CustomOS.HYPEROS,
                    AndroidVersionCompat.CustomOS.MIUI
                )
            }
            SystemFeature.INSTALL_PATH_CHECK -> {
                // HyperOS/MIUI 需要使用安装路径判断系统应用
                AndroidVersionCompat.getCustomOS() in setOf(
                    AndroidVersionCompat.CustomOS.HYPEROS,
                    AndroidVersionCompat.CustomOS.MIUI
                )
            }
            SystemFeature.STRICT_PERMISSION_MANAGEMENT -> {
                // ColorOS/OriginOS 有严格的权限管理
                AndroidVersionCompat.getCustomOS() in setOf(
                    AndroidVersionCompat.CustomOS.COLOROS,
                    AndroidVersionCompat.CustomOS.ORIGINOS
                )
            }
            SystemFeature.ENHANCED_SECURITY -> {
                // HarmonyOS 有增强的安全机制
                AndroidVersionCompat.getCustomOS() == AndroidVersionCompat.CustomOS.HARMONYOS
            }
        }
    }

    /**
     * 获取系统特定的建议
     */
    fun getSystemSuggestions(): List<String> {
        val suggestions = mutableListOf<String>()
        val customOS = AndroidVersionCompat.getCustomOS()
        
        when (customOS) {
            AndroidVersionCompat.CustomOS.HYPEROS -> {
                suggestions.add("HyperOS 系统限制较多，建议使用 KernelSU RootService")
                suggestions.add("应用列表获取可能需要特殊权限")
                suggestions.add("系统应用判断需要使用安装路径而非 FLAG_SYSTEM")
            }
            AndroidVersionCompat.CustomOS.MIUI -> {
                suggestions.add("MIUI 系统 FLAG_SYSTEM 标志异常，需要使用安装路径判断")
                suggestions.add("部分 MIUI 预装应用安装在 /data/app/ 目录下")
                suggestions.add("建议使用多方法获取应用列表")
            }
            AndroidVersionCompat.CustomOS.COLOROS -> {
                suggestions.add("ColorOS 有严格的权限管理机制")
                suggestions.add("可能需要额外权限申请")
                suggestions.add("系统行为可能与原生 Android 不同")
            }
            AndroidVersionCompat.CustomOS.ORIGINOS -> {
                suggestions.add("OriginOS 有独特的权限管理")
                suggestions.add("应用列表获取可能需要特殊处理")
            }
            AndroidVersionCompat.CustomOS.HARMONYOS -> {
                suggestions.add("HarmonyOS 使用微内核架构")
                suggestions.add("系统调用和权限管理可能与 Android 不同")
                suggestions.add("可能需要 HarmonyOS 特定的适配")
            }
            AndroidVersionCompat.CustomOS.ONEUI -> {
                suggestions.add("OneUI 有 Samsung Knox 安全机制")
                suggestions.add("部分功能可能受到限制")
                suggestions.add("建议检查 Knox 相关设置")
            }
            else -> {
                suggestions.add("标准 Android 系统，使用常规方法")
            }
        }
        
        return suggestions
    }

    /**
     * 系统功能枚举
     */
    enum class SystemFeature {
        KERNELSU_ROOT_SERVICE,      // 需要 KernelSU RootService
        INSTALL_PATH_CHECK,         // 需要使用安装路径判断
        STRICT_PERMISSION_MANAGEMENT, // 严格的权限管理
        ENHANCED_SECURITY           // 增强的安全机制
    }

    /**
     * 应用列表获取策略接口
     */
    interface AppListStrategy {
        fun getInstalledApps(context: Context): List<String>
        fun isSystemApp(packageName: String, context: Context): Boolean
        fun getStrategyName(): String
    }

    /**
     * HyperOS 策略
     */
    class HyperOSStrategy : AppListStrategy {
        override fun getInstalledApps(context: Context): List<String> {
            Logger.d("使用 HyperOS 策略获取应用列表")
            // HyperOS 需要使用 RootService 获取完整应用列表
            return try {
                // 尝试使用 KernelSU RootService
                val result = Shell.cmd("pm list packages -a").exec()
                if (result.isSuccess) {
                    result.out.map { it.removePrefix("package:") }
                } else {
                    // 降级方案
                    context.packageManager.getInstalledPackages(PackageManager.GET_META_DATA)
                        .map { it.packageName }
                }
            } catch (e: Exception) {
                Logger.w("HyperOS 应用列表获取失败: ${e.message}")
                emptyList()
            }
        }

        override fun isSystemApp(packageName: String, context: Context): Boolean {
            // HyperOS 必须使用安装路径判断
            return try {
                val appInfo = context.packageManager.getApplicationInfo(packageName, 0)
                val sourceDir = appInfo.sourceDir
                sourceDir.startsWith("/system/") ||
                        sourceDir.startsWith("/vendor/") ||
                        sourceDir.startsWith("/product/") ||
                        sourceDir.startsWith("/apex/") ||
                        packageName.startsWith("com.miui.") ||
                        packageName.startsWith("com.xiaomi.")
            } catch (e: Exception) {
                false
            }
        }

        override fun getStrategyName(): String = "HyperOS Strategy"
    }

    /**
     * MIUI 策略
     */
    class MIUIStrategy : AppListStrategy {
        override fun getInstalledApps(context: Context): List<String> {
            Logger.d("使用 MIUI 策略获取应用列表")
            // MIUI 尝试多种方法
            return try {
                // 方法1：使用 pm list packages
                val result = Shell.cmd("pm list packages -a").exec()
                if (result.isSuccess && result.out.size > 100) {
                    result.out.map { it.removePrefix("package:") }
                } else {
                    // 方法2：使用 PackageManager
                    context.packageManager.getInstalledPackages(PackageManager.GET_META_DATA)
                        .map { it.packageName }
                }
            } catch (e: Exception) {
                Logger.w("MIUI 应用列表获取失败: ${e.message}")
                emptyList()
            }
        }

        override fun isSystemApp(packageName: String, context: Context): Boolean {
            // MIUI 优先使用安装路径判断
            return try {
                val appInfo = context.packageManager.getApplicationInfo(packageName, 0)
                val sourceDir = appInfo.sourceDir
                sourceDir.startsWith("/system/") ||
                        sourceDir.startsWith("/vendor/") ||
                        sourceDir.startsWith("/product/") ||
                        sourceDir.startsWith("/apex/") ||
                        packageName.startsWith("com.miui.") ||
                        packageName.startsWith("com.xiaomi.")
            } catch (e: Exception) {
                false
            }
        }

        override fun getStrategyName(): String = "MIUI Strategy"
    }

    /**
     * ColorOS 策略
     */
    class ColorOSStrategy : AppListStrategy {
        override fun getInstalledApps(context: Context): List<String> {
            Logger.d("使用 ColorOS 策略获取应用列表")
            // ColorOS 通常使用标准方法
            return try {
                context.packageManager.getInstalledPackages(PackageManager.GET_META_DATA)
                    .map { it.packageName }
            } catch (e: Exception) {
                Logger.w("ColorOS 应用列表获取失败: ${e.message}")
                emptyList()
            }
        }

        override fun isSystemApp(packageName: String, context: Context): Boolean {
            // ColorOS 可以使用标准方法
            return try {
                val appInfo = context.packageManager.getApplicationInfo(packageName, 0)
                (appInfo.flags and android.content.pm.ApplicationInfo.FLAG_SYSTEM) != 0 ||
                        (appInfo.flags and android.content.pm.ApplicationInfo.FLAG_UPDATED_SYSTEM_APP) != 0 ||
                        packageName.startsWith("com.oppo.") ||
                        packageName.startsWith("com.realme.") ||
                        packageName.startsWith("com.oneplus.")
            } catch (e: Exception) {
                false
            }
        }

        override fun getStrategyName(): String = "ColorOS Strategy"
    }

    /**
     * OriginOS 策略
     */
    class OriginOSStrategy : AppListStrategy {
        override fun getInstalledApps(context: Context): List<String> {
            Logger.d("使用 OriginOS 策略获取应用列表")
            return try {
                context.packageManager.getInstalledPackages(PackageManager.GET_META_DATA)
                    .map { it.packageName }
            } catch (e: Exception) {
                Logger.w("OriginOS 应用列表获取失败: ${e.message}")
                emptyList()
            }
        }

        override fun isSystemApp(packageName: String, context: Context): Boolean {
            return try {
                val appInfo = context.packageManager.getApplicationInfo(packageName, 0)
                (appInfo.flags and android.content.pm.ApplicationInfo.FLAG_SYSTEM) != 0 ||
                        (appInfo.flags and android.content.pm.ApplicationInfo.FLAG_UPDATED_SYSTEM_APP) != 0 ||
                        packageName.startsWith("com.vivo.") ||
                        packageName.startsWith("com.iqoo.")
            } catch (e: Exception) {
                false
            }
        }

        override fun getStrategyName(): String = "OriginOS Strategy"
    }

    /**
     * HarmonyOS 策略
     */
    class HarmonyOSStrategy : AppListStrategy {
        override fun getInstalledApps(context: Context): List<String> {
            Logger.d("使用 HarmonyOS 策略获取应用列表")
            return try {
                context.packageManager.getInstalledPackages(PackageManager.GET_META_DATA)
                    .map { it.packageName }
            } catch (e: Exception) {
                Logger.w("HarmonyOS 应用列表获取失败: ${e.message}")
                emptyList()
            }
        }

        override fun isSystemApp(packageName: String, context: Context): Boolean {
            return try {
                val appInfo = context.packageManager.getApplicationInfo(packageName, 0)
                (appInfo.flags and android.content.pm.ApplicationInfo.FLAG_SYSTEM) != 0 ||
                        (appInfo.flags and android.content.pm.ApplicationInfo.FLAG_UPDATED_SYSTEM_APP) != 0 ||
                        packageName.startsWith("com.huawei.") ||
                        packageName.startsWith("com.honor.")
            } catch (e: Exception) {
                false
            }
        }

        override fun getStrategyName(): String = "HarmonyOS Strategy"
    }

    /**
     * OneUI 策略
     */
    class OneUIStrategy : AppListStrategy {
        override fun getInstalledApps(context: Context): List<String> {
            Logger.d("使用 OneUI 策略获取应用列表")
            return try {
                context.packageManager.getInstalledPackages(PackageManager.GET_META_DATA)
                    .map { it.packageName }
            } catch (e: Exception) {
                Logger.w("OneUI 应用列表获取失败: ${e.message}")
                emptyList()
            }
        }

        override fun isSystemApp(packageName: String, context: Context): Boolean {
            return try {
                val appInfo = context.packageManager.getApplicationInfo(packageName, 0)
                (appInfo.flags and android.content.pm.ApplicationInfo.FLAG_SYSTEM) != 0 ||
                        (appInfo.flags and android.content.pm.ApplicationInfo.FLAG_UPDATED_SYSTEM_APP) != 0 ||
                        packageName.startsWith("com.samsung.") ||
                        packageName.startsWith("com.sec.")
            } catch (e: Exception) {
                false
            }
        }

        override fun getStrategyName(): String = "OneUI Strategy"
    }

    /**
     * 默认策略（标准 Android）
     */
    class DefaultStrategy : AppListStrategy {
        override fun getInstalledApps(context: Context): List<String> {
            Logger.d("使用默认策略获取应用列表")
            return try {
                context.packageManager.getInstalledPackages(PackageManager.GET_META_DATA)
                    .map { it.packageName }
            } catch (e: Exception) {
                Logger.w("默认策略应用列表获取失败: ${e.message}")
                emptyList()
            }
        }

        override fun isSystemApp(packageName: String, context: Context): Boolean {
            return try {
                val appInfo = context.packageManager.getApplicationInfo(packageName, 0)
                (appInfo.flags and android.content.pm.ApplicationInfo.FLAG_SYSTEM) != 0 ||
                        (appInfo.flags and android.content.pm.ApplicationInfo.FLAG_UPDATED_SYSTEM_APP) != 0
            } catch (e: Exception) {
                false
            }
        }

        override fun getStrategyName(): String = "Default Strategy"
    }
}