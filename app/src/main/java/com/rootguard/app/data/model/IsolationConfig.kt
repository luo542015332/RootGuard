package com.rootguard.app.data.model

/**
 * 应用隔离配置数据类
 * 用于配置针对特定应用的 Root 隐藏和隔离设置
 */
data class IsolationConfig(
    val packageName: String,
    val appName: String,
    val isEnabled: Boolean = false,
    val hideMagisk: Boolean = true,
    val hideSuBinary: Boolean = true,
    val hideBusybox: Boolean = true,
    val hideXposed: Boolean = true,
    val hideMagiskApp: Boolean = true,
    val isolateStorage: Boolean = false,
    val disableRootAccess: Boolean = false,
    val customProps: Map<String, String> = emptyMap()
)

/**
 * 隔离级别枚举
 */
enum class IsolationLevel {
    NONE,           // 无隔离
    BASIC,          // 基础隔离 - 隐藏 Magisk 相关文件
    STANDARD,       // 标准隔离 - 隐藏 Root 痕迹 + 修改系统属性
    STRICT          // 严格隔离 - 完全沙盒 + 禁止 Root 访问
}

/**
 * 检测项目枚举
 * 用于记录应用可能检测的 Root 特征
 */
enum class DetectionItem {
    SU_BINARY,          // /system/bin/su
    MAGISK_FILES,       // /data/adb/magisk
    BUSYBOX,            // busybox 二进制
    XPOSED,             // Xposed 框架
    MAGISK_APP,         // Magisk Manager 应用
    ROOT_PACKAGES,      // 已安装的 Root 相关应用
    TEST_KEYS,          // 测试密钥
    DEBUGGABLE,         // 可调试标志
    SUPERUSER_APK,      // Superuser APK
    DAEMON_SU           // su 守护进程
}

/**
 * 隔离配置预设
 */
object IsolationPresets {
    
    /**
     * 银行/金融应用预设 - 最高级别隔离
     */
    fun bankingPreset(packageName: String, appName: String) = IsolationConfig(
        packageName = packageName,
        appName = appName,
        isEnabled = true,
        hideMagisk = true,
        hideSuBinary = true,
        hideBusybox = true,
        hideXposed = true,
        hideMagiskApp = true,
        isolateStorage = true,
        disableRootAccess = true,
        customProps = mapOf(
            "ro.build.tags" to "release-keys",
            "ro.build.selinux" to "enforcing",
            "ro.debuggable" to "0",
            "ro.secure" to "1"
        )
    )
    
    /**
     * 游戏应用预设 - 中等隔离
     */
    fun gamingPreset(packageName: String, appName: String) = IsolationConfig(
        packageName = packageName,
        appName = appName,
        isEnabled = true,
        hideMagisk = true,
        hideSuBinary = true,
        hideBusybox = true,
        hideXposed = true,
        hideMagiskApp = true,
        isolateStorage = false,
        disableRootAccess = false,
        customProps = mapOf(
            "ro.debuggable" to "0"
        )
    )
    
    /**
     * 社交应用预设 - 基础隔离
     */
    fun socialPreset(packageName: String, appName: String) = IsolationConfig(
        packageName = packageName,
        appName = appName,
        isEnabled = true,
        hideMagisk = true,
        hideSuBinary = false,
        hideBusybox = false,
        hideXposed = true,
        hideMagiskApp = true,
        isolateStorage = false,
        disableRootAccess = false,
        customProps = emptyMap()
    )
}
