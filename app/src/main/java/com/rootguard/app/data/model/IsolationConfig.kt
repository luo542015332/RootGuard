package com.rootguard.app.data.model

import kotlinx.serialization.Serializable

@Serializable
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
    val sandboxRule: SandboxRule? = null
)

@Serializable
enum class IsolationLevel {
    NONE, BASIC, STANDARD, STRICT
}

enum class DetectionItem {
    SU_BINARY, MAGISK_FILES, BUSYBOX, XPOSED, MAGISK_APP, ROOT_PACKAGES,
    TEST_KEYS, DEBUGGABLE, SUPERUSER_APK, DAEMON_SU,
    // 新增检测项
    DENYLIST_ENFORCE, PROP_SPOOF, RECOVERY_MODE, SHAMIKO, TRICKY_STORE, PIF
}

@Serializable
data class SandboxRule(
    val packageName: String,
    val level: SandboxLevel = SandboxLevel.MODERATE,
    val commandWhitelist: List<String> = emptyList(),
    val commandBlacklist: List<String> = emptyList(),
    val pathWhitelist: List<String> = emptyList(),
    val pathBlacklist: List<String> = emptyList()
)

@Serializable
enum class SandboxLevel {
    STRICT, MODERATE, PERMISSIVE, DISABLED
}

@Serializable
enum class IsolationEventType {
    COMMAND_BLOCKED, COMMAND_ALLOWED, PATH_BLOCKED, PATH_ALLOWED,
    ISOLATION_ENABLED, ISOLATION_DISABLED
}

@Serializable
data class IsolationEvent(
    val packageName: String,
    val type: IsolationEventType,
    val command: String = "",
    val path: String = "",
    val timestamp: Long = System.currentTimeMillis(),
    val action: IsolationAction
)

@Serializable
enum class IsolationAction {
    ALLOWED, BLOCKED
}

object IsolationPresets {

    /** Shamiko 级完整属性伪装列表 */
    val FULL_PROP_SPOOF = mapOf(
        // 核心属性
        "ro.boot.vbmeta.device_state" to "locked",
        "ro.boot.verifiedbootstate" to "green",
        "ro.boot.flash.locked" to "1",
        "ro.boot.veritymode" to "enforcing",
        "ro.boot.warranty_bit" to "0",
        "ro.warranty_bit" to "0",
        "ro.debuggable" to "0",
        "ro.force.debuggable" to "0",
        "ro.secure" to "1",
        "ro.adb.secure" to "1",
        "ro.build.type" to "user",
        "ro.build.tags" to "release-keys",
        "ro.vendor.boot.warranty_bit" to "0",
        "ro.vendor.warranty_bit" to "0",
        "vendor.boot.vbmeta.device_state" to "locked",
        "vendor.boot.verifiedbootstate" to "green",
        "sys.oem_unlock_allowed" to "0"
    )

    /** MIUI 专用属性 */
    val MIUI_PROPS = mapOf(
        "ro.secureboot.lockstate" to "locked"
    )

    /** Realme 专用属性 */
    val REALME_PROPS = mapOf(
        "ro.boot.realmebootstate" to "green",
        "ro.boot.realme.lockstate" to "1"
    )

    fun bankingPreset(packageName: String, appName: String) = IsolationConfig(
        packageName = packageName, appName = appName, isEnabled = true,
        hideMagisk = true, hideSuBinary = true, hideBusybox = true,
        hideXposed = true, hideMagiskApp = true, isolateStorage = true,
        disableRootAccess = true,
        customProps = FULL_PROP_SPOOF,
        sandboxRule = SandboxRule(
            packageName = packageName, level = SandboxLevel.STRICT,
            commandBlacklist = listOf("su -c 'rm -rf'", "su -c 'mount -o remount'"),
            pathBlacklist = listOf("/system/bin", "/system/xbin", "/data/adb")
        )
    )

    fun gamingPreset(packageName: String, appName: String) = IsolationConfig(
        packageName = packageName, appName = appName, isEnabled = true,
        hideMagisk = true, hideSuBinary = true, hideBusybox = true,
        hideXposed = true, hideMagiskApp = true, isolateStorage = false,
        disableRootAccess = false,
        customProps = mapOf(
            "ro.debuggable" to "0", "ro.build.type" to "user",
            "ro.build.tags" to "release-keys", "ro.secure" to "1"
        ),
        sandboxRule = SandboxRule(
            packageName = packageName, level = SandboxLevel.MODERATE,
            commandBlacklist = listOf("su -c 'rm -rf /data'", "su -c 'format'"),
            pathBlacklist = listOf("/system", "/data/adb/magisk")
        )
    )

    fun socialPreset(packageName: String, appName: String) = IsolationConfig(
        packageName = packageName, appName = appName, isEnabled = true,
        hideMagisk = true, hideSuBinary = false, hideBusybox = false,
        hideXposed = true, hideMagiskApp = true, isolateStorage = false,
        disableRootAccess = false, customProps = emptyMap(),
        sandboxRule = SandboxRule(
            packageName = packageName, level = SandboxLevel.PERMISSIVE,
            commandBlacklist = listOf("su -c 'rm -rf'"),
            pathBlacklist = listOf("/data/adb")
        )
    )
}

enum class AppCategory {
    FINANCE, SOCIAL, GAME, SYSTEM_TOOL, UTILITY, UNKNOWN
}

enum class OneClickIsolationPreset {
    CONSERVATIVE, BALANCED, AGGRESSIVE, LENIENT
}
