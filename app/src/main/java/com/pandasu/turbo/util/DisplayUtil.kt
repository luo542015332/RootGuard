package com.pandasu.turbo.util

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.os.Process
import android.provider.Settings
import android.view.WindowManager
import android.app.UiModeManager

/**
 * 显示设置工具
 *
 * 亮度 / 息屏时间：优先标准 API → su 兜底 → 静默失败
 * 刷新率：纯 Window API，无需权限
 * 夜间模式：UiModeManager，无需权限
 * AOD / DC 调光：OEM 定制，尝试写 Settings，静默失败
 */
object DisplayUtil {

    // ═══════════════════════════════════════════════════════
    // 刷新率（Window API，无需权限）
    // ═══════════════════════════════════════════════════════

    fun setRefreshRate(context: Activity, targetFps: Int): Boolean {
        return try {
            val display = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                context.display
            } else {
                @Suppress("DEPRECATION")
                context.windowManager.defaultDisplay
            } ?: return false

            val modes = display.supportedModes
            val best = modes
                .filter { it.refreshRate.toInt() == targetFps }
                .maxByOrNull { it.physicalWidth * it.physicalHeight }
                ?: modes.filter { it.refreshRate.toInt() == targetFps }.firstOrNull()
                ?: return false

            val params = context.window.attributes
            params.preferredDisplayModeId = best.modeId
            context.window.attributes = params
            true
        } catch (e: Exception) { false }
    }

    fun getCurrentRefreshRate(context: Activity): Float {
        return try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                context.display?.refreshRate ?: 60f
            } else {
                @Suppress("DEPRECATION")
                context.windowManager.defaultDisplay.refreshRate
            }
        } catch (e: Exception) { 60f }
    }

    fun getSupportedRefreshRates(context: Activity): List<Int> {
        return try {
            val display = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                context.display
            } else {
                @Suppress("DEPRECATION")
                context.windowManager.defaultDisplay
            }
            display?.supportedModes
                ?.map { it.refreshRate.toInt() }
                ?.distinct()
                ?.sorted()
                ?: listOf(60)
        } catch (e: Exception) { listOf(60) }
    }

    // ═══════════════════════════════════════════════════════
    // 亮度（Settings API → su 兜底）
    // ═══════════════════════════════════════════════════════

    /**
     * 写入亮度值，优先标准 API，失败则走 su 命令。
     * @return true = 写入成功，false = 全部失败
     */
    fun setBrightness(context: Context, brightness: Int): Boolean {
        val clamped = brightness.coerceIn(1, 255)
        // 1. 标准 Settings.System
        try {
            Settings.System.putInt(context.contentResolver,
                Settings.System.SCREEN_BRIGHTNESS, clamped)
            return true
        } catch (e: SecurityException) {
            // 需要 WRITE_SETTINGS 权限，但用户可能没授权
        } catch (e: Exception) { }

        // 2. su 兜底（root 设备直接写数据库）
        return execSuCommand("settings put system screen_brightness $clamped")
    }

    /**
     * 禁用自动亮度（切换为手动）
     */
    fun disableAutoBrightness(context: Context): Boolean {
        try {
            Settings.System.putInt(context.contentResolver,
                Settings.System.SCREEN_BRIGHTNESS_MODE,
                Settings.System.SCREEN_BRIGHTNESS_MODE_MANUAL)
            return true
        } catch (e: SecurityException) { } catch (e: Exception) { }
        return execSuCommand("settings put system screen_brightness_mode 0")
    }

    /**
     * 开启自动亮度
     */
    fun enableAutoBrightness(context: Context): Boolean {
        try {
            Settings.System.putInt(context.contentResolver,
                Settings.System.SCREEN_BRIGHTNESS_MODE,
                Settings.System.SCREEN_BRIGHTNESS_MODE_AUTOMATIC)
            return true
        } catch (e: SecurityException) { } catch (e: Exception) { }
        return execSuCommand("settings put system screen_brightness_mode 1")
    }

    /**
     * 获取当前亮度模式：0=手动，1=自动
     */
    fun getBrightnessMode(context: Context): Int {
        return try {
            Settings.System.getInt(context.contentResolver, Settings.System.SCREEN_BRIGHTNESS_MODE)
        } catch (e: Exception) { 0 }
    }

    /**
     * 获取当前亮度值 0-255
     */
    fun getCurrentBrightness(context: Context): Int {
        return try {
            Settings.System.getInt(context.contentResolver, Settings.System.SCREEN_BRIGHTNESS)
        } catch (e: Exception) { 128 }
    }

    // ═══════════════════════════════════════════════════════
    // 息屏时间（Settings API → su 兜底）
    // ═══════════════════════════════════════════════════════

    fun setScreenTimeout(context: Context, ms: Long): Boolean {
        val value = if (ms < 0) Int.MAX_VALUE.toLong() else ms.coerceIn(1000L, Int.MAX_VALUE.toLong() - 1)
        // 1. 标准 API
        try {
            Settings.System.putLong(context.contentResolver,
                Settings.System.SCREEN_OFF_TIMEOUT, value)
            return true
        } catch (e: SecurityException) { } catch (e: Exception) { }
        // 2. su 兜底
        return execSuCommand("settings put system screen_off_timeout $value")
    }

    fun getScreenTimeout(context: Context): Long {
        return try {
            Settings.System.getLong(context.contentResolver, Settings.System.SCREEN_OFF_TIMEOUT)
        } catch (e: Exception) { 30000L }
    }

    fun formatTimeout(ms: Long): String {
        return when {
            ms < 0 || ms >= Int.MAX_VALUE -> "永不息屏"
            ms >= 600000 -> "${ms / 600000} 小时"
            ms >= 60000 -> "${ms / 60000} 分钟"
            ms >= 1000 -> "${ms / 1000} 秒"
            else -> "未知"
        }
    }

    // ═══════════════════════════════════════════════════════
    // 夜间模式 / 护眼（UiModeManager，无需权限）
    // ═══════════════════════════════════════════════════════

    fun setNightMode(context: Context, enabled: Boolean): Boolean {
        return try {
            val uimm = context.getSystemService(Context.UI_MODE_SERVICE) as UiModeManager
            uimm.nightMode = if (enabled) UiModeManager.MODE_NIGHT_YES else UiModeManager.MODE_NIGHT_NO
            true
        } catch (e: Exception) {
            // ColorOS / MIUI fallback
            try {
                val v = if (enabled) 2 else 1
                Settings.Secure.putInt(context.contentResolver, "ui_night_mode", v)
                true
            } catch (e2: Exception) {
                execSuCommand("settings put secure ui_night_mode ${if (enabled) 2 else 1}")
            }
        }
    }

    fun getNightMode(context: Context): Int {
        return try {
            val uimm = context.getSystemService(Context.UI_MODE_SERVICE) as UiModeManager
            uimm.nightMode
        } catch (e: Exception) {
            try {
                Settings.Secure.getInt(context.contentResolver, "ui_night_mode")
            } catch (e2: Exception) { -1 }
        }
    }

    // ═══════════════════════════════════════════════════════
    // AOD（OEM 定制，尝试多个 key，静默失败）
    // ═══════════════════════════════════════════════════════

    /**
     * 获取 AOD 状态：0=关闭，1=开启，-1=未知
     */
    fun getAodStatus(context: Context): Int {
        // 尝试 Settings.Global（Android 10+）
        for (key in listOf("doze_always_on", "always_on_display_enabled", "aod_screen_state")) {
            try { return Settings.Global.getInt(context.contentResolver, key) } catch (e: Exception) { }
            try { return Settings.System.getInt(context.contentResolver, key) } catch (e: Exception) { }
        }
        return -1
    }

    fun setAodEnabled(context: Context, enabled: Boolean): Boolean {
        val v = if (enabled) 1 else 0
        var any = false
        val keys = listOf("doze_always_on", "always_on_display_enabled", "aod_screen_state")
        for (key in keys) {
            try { any = any || Settings.Global.putInt(context.contentResolver, key, v) } catch (e: Exception) { }
            try { any = any || Settings.System.putInt(context.contentResolver, key, v) } catch (e: Exception) { }
        }
        return any || execSuCommand("settings put global doze_always_on $v")
    }

    // ═══════════════════════════════════════════════════════
    // DC 调光（OEM 定制，尝试多个 key，静默失败）
    // ═══════════════════════════════════════════════════════

    fun setDCDimming(context: Context, enabled: Boolean): Boolean {
        val v = if (enabled) 1 else 0
        var any = false
        val keys = listOf("dc_brightness_enabled", "oem_dc_dim_enabled", "night_display_auto_mode",
                          "display_dc_dimming_enabled", "sys_dc_dim_enabled")
        for (key in keys) {
            try { any = any || Settings.Secure.putInt(context.contentResolver, key, v) } catch (e: Exception) { }
            try { any = any || Settings.Global.putInt(context.contentResolver, key, v) } catch (e: Exception) { }
        }
        return any
    }

    // ═══════════════════════════════════════════════════════
    // 开发者选项 - 触摸显示
    // ═══════════════════════════════════════════════════════

    fun setShowTouches(context: Context, enabled: Boolean): Boolean {
        val v = if (enabled) 1 else 0
        try {
            Settings.System.putInt(context.contentResolver, "show_touches", v)
            return true
        } catch (e: SecurityException) { } catch (e: Exception) { }
        return execSuCommand("settings put system show_touches $v")
    }

    fun getShowTouches(context: Context): Boolean {
        return try { Settings.System.getInt(context.contentResolver, "show_touches") == 1 }
        catch (e: Exception) { false }
    }

    // ═══════════════════════════════════════════════════════
    // WRITE_SETTINGS 权限辅助
    // ═══════════════════════════════════════════════════════

    /**
     * 检查是否持有 WRITE_SETTINGS 权限。
     * 注意：Android 6.0+ 必须通过 ACTION_MANAGE_WRITE_SETTINGS 授权。
     * ColorOS / MIUI 等可能误报 false，可直接尝试写 Settings 来验证。
     */
    fun hasWriteSettingsPermission(context: Context): Boolean {
        return try {
            Settings.System.canWrite(context)
        } catch (e: Exception) { false }
    }

    /**
     * 打开 WRITE_SETTINGS 授权页面
     */
    fun openWriteSettingsPage(context: Context) {
        try {
            val intent = Intent(Settings.ACTION_MANAGE_WRITE_SETTINGS).apply {
                data = android.net.Uri.parse("package:${context.packageName}")
            }
            context.startActivity(intent)
        } catch (e: Exception) { }
    }

    // ═══════════════════════════════════════════════════════
    // 内部工具
    // ═══════════════════════════════════════════════════════

    /**
     * 通过 su 执行命令（同步，阻塞等待结果）
     * 用于 Settings.System 被系统拦截时（如 ColorOS）的兜底写入。
     * @return true = exitCode == 0
     */
    private fun execSuCommand(command: String): Boolean {
        val lock = Any()
        var result = false
        synchronized(lock) {
            ShizukuHelper.execCommand(command, useSu = true,
                object : ShizukuHelper.CommandResultListener {
                    override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                        synchronized(lock) {
                            result = exitCode == 0
                            (lock as java.lang.Object).notify()
                        }
                    }
                    override fun onError(msg: String) {
                        synchronized(lock) {
                            result = false
                            (lock as java.lang.Object).notify()
                        }
                    }
                })
            try { (lock as java.lang.Object).wait(6000) } catch (e: InterruptedException) { }
        }
        return result
    }
}
