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
    val customProps: Map<String, String> = emptyMap(),
    val sandboxRule: SandboxRule? = null  // Sandbox 规则配置
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
 * Sandbox 规则配置（Root 命令过滤和权限控制）
 */
data class SandboxRule(
    val packageName: String,
    val level: SandboxLevel = SandboxLevel.MODERATE,
    val commandWhitelist: List<String> = emptyList(),
    val commandBlacklist: List<String> = emptyList(),
    val pathWhitelist: List<String> = emptyList(),
    val pathBlacklist: List<String> = emptyList()
)

/**
 * Sandbox 隔离级别
 */
enum class SandboxLevel {
    STRICT,    // 严格模式：仅允许白名单命令和路径
    MODERATE,  // 适中模式：禁止黑名单，允许其他
    PERMISSIVE, // 宽松模式：仅拦截危险命令
    DISABLED   // 禁用：不进行任何过滤
}

/**
 * 隔离事件类型
 */
enum class IsolationEventType {
    COMMAND_BLOCKED,      // 命令被拦截
    COMMAND_ALLOWED,      // 命令被允许
    PATH_BLOCKED,         // 路径访问被拦截
    PATH_ALLOWED,         // 路径访问被允许
    ISOLATION_ENABLED,    // 隔离已启用
    ISOLATION_DISABLED    // 隔离已禁用
}

/**
 * 隔离事件记录
 */
data class IsolationEvent(
    val packageName: String,
    val type: IsolationEventType,
    val command: String = "",
    val path: String = "",
    val timestamp: Long = System.currentTimeMillis(),
    val action: IsolationAction
)

/**
 * 隔离动作
 */
enum class IsolationAction {
    ALLOWED,    // 允许执行
    BLOCKED     // 拦截执行
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
        ),
        sandboxRule = SandboxRule(
            packageName = packageName,
            level = SandboxLevel.STRICT,
            commandWhitelist = listOf("su -c 'pm list packages'", "su -c 'dumpsys package'"),
            commandBlacklist = listOf("su -c 'rm -rf'", "su -c 'mount -o remount'"),
            pathWhitelist = listOf("/data/data/$packageName", "/sdcard"),
            pathBlacklist = listOf("/system/bin", "/system/xbin", "/data/adb")
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
        ),
        sandboxRule = SandboxRule(
            packageName = packageName,
            level = SandboxLevel.MODERATE,
            commandWhitelist = emptyList(),
            commandBlacklist = listOf("su -c 'rm -rf /data'", "su -c 'format'"),
            pathWhitelist = listOf("/data/data/$packageName", "/sdcard/Android/data/$packageName"),
            pathBlacklist = listOf("/system", "/data/adb/magisk")
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
        customProps = emptyMap(),
        sandboxRule = SandboxRule(
            packageName = packageName,
            level = SandboxLevel.PERMISSIVE,
            commandWhitelist = emptyList(),
            commandBlacklist = listOf("su -c 'rm -rf'"),
            pathWhitelist = emptyList(),
            pathBlacklist = listOf("/data/adb")
        )
    )
}

/**
 * 应用分类（用于智能隔离）
 */
enum class AppCategory {
    FINANCE,      // 金融类应用
    SOCIAL,       // 社交类应用
    GAME,         // 游戏类应用
    SYSTEM_TOOL,  // 系统工具类应用
    UTILITY,      // 实用工具类应用
    UNKNOWN       // 未知类型
}

/**
 * 一键隔离预设策略
 */
enum class OneClickIsolationPreset {
    CONSERVATIVE,  // 保守策略：全部严格模式
    BALANCED,      // 平衡策略：根据应用类型分配级别
    AGGRESSIVE,    // 激进策略：金融严格，其他适中
    LENIENT        // 宽松策略：金融适中，其他宽松
}
