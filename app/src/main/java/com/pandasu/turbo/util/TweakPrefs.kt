package com.pandasu.turbo.util

import android.content.Context
import android.content.SharedPreferences
import androidx.core.content.edit

/**
 * 系统优化设置持久化
 */
object TweakPrefs {

    private const val NAME = "tweak_settings"

    private fun prefs(ctx: Context): SharedPreferences =
        ctx.getSharedPreferences(NAME, Context.MODE_PRIVATE)

    // ─── 动画设置 ───────────────────────────────────────────────────

    fun getWindowScale(ctx: Context) = prefs(ctx).getFloat("window_scale", 1.0f)
    fun setWindowScale(ctx: Context, scale: Float) {
        prefs(ctx).edit { putFloat("window_scale", scale) }
    }

    fun getTransitionScale(ctx: Context) = prefs(ctx).getFloat("transition_scale", 1.0f)
    fun setTransitionScale(ctx: Context, scale: Float) {
        prefs(ctx).edit { putFloat("transition_scale", scale) }
    }

    fun getAnimatorScale(ctx: Context) = prefs(ctx).getFloat("animator_scale", 1.0f)
    fun setAnimatorScale(ctx: Context, scale: Float) {
        prefs(ctx).edit { putFloat("animator_scale", scale) }
    }

    // ─── 刷新率 ───────────────────────────────────────────────────

    fun getRefreshRate(ctx: Context) = prefs(ctx).getInt("refresh_rate", 0)
    fun setRefreshRate(ctx: Context, rate: Int) {
        prefs(ctx).edit { putInt("refresh_rate", rate) }
    }

    // ─── 电池模式 ───────────────────────────────────────────────────

    fun getBatteryMode(ctx: Context) = prefs(ctx).getString("battery_mode", "smart") ?: "smart"
    fun setBatteryMode(ctx: Context, mode: String) {
        prefs(ctx).edit { putString("battery_mode", mode) }
    }

    // ─── 广告设置 ───────────────────────────────────────────────────

    fun isAdsDisabled(ctx: Context) = prefs(ctx).getBoolean("ads_disabled", false)
    fun setAdsDisabled(ctx: Context, disabled: Boolean) {
        prefs(ctx).edit { putBoolean("ads_disabled", disabled) }
    }

    fun isLockScreenAdsDisabled(ctx: Context) = prefs(ctx).getBoolean("lock_screen_ads_disabled", false)
    fun setLockScreenAdsDisabled(ctx: Context, disabled: Boolean) {
        prefs(ctx).edit { putBoolean("lock_screen_ads_disabled", disabled) }
    }

    // ─── 自启动统计 ───────────────────────────────────────────────────

    fun getAutoStartDisabledCount(ctx: Context) = prefs(ctx).getInt("auto_start_disabled", 0)
    fun setAutoStartDisabledCount(ctx: Context, count: Int) {
        prefs(ctx).edit { putInt("auto_start_disabled", count) }
    }

    // ─── 严格模式 ───────────────────────────────────────────────────

    fun isStrictModeEnabled(ctx: Context) = prefs(ctx).getBoolean("strict_mode_enabled", false)
    fun setStrictModeEnabled(ctx: Context, enabled: Boolean) {
        prefs(ctx).edit { putBoolean("strict_mode_enabled", enabled) }
    }

    // ─── 批量恢复 ───────────────────────────────────────────────────

    fun resetAll(ctx: Context) {
        prefs(ctx).edit { clear() }
    }
}