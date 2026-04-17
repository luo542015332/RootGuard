package com.pandasu.turbo.util

import android.content.Context
import android.util.Log
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.BufferedReader
import java.io.InputStreamReader

object SystemTweaksHelper {
    private const val TAG = "SystemTweaksHelper"

    data class OptimizeResult(
        val success: Boolean,
        val message: String,
        val animationDisabled: Boolean = false,
        val refreshRateLocked: Boolean = false,
        val batteryModeSet: Boolean = false,
        val adsDisabled: Boolean = false,
        val autoStartDisabled: Int = 0,
        val processedApps: Int = 0
    )

    data class AnimationScales(
        val window: Float,
        val transition: Float,
        val animator: Float
    )

    data class SelectItem(val key: String, val name: String, val description: String)

    val BATTERY_MODES = listOf(
        SelectItem("balanced", "均衡模式", "性能和续航平衡"),
        SelectItem("performance", "性能模式", "极致性能，续航下降"),
        SelectItem("save", "省电模式", "限制性能，延长续航")
    )

    fun isBatteryOptimizationDisabled(mode: String): Boolean = mode != "balanced"
    fun getBatteryOptimizationDisabled(): String = "balanced"

    // ─── 同步 shell 执行 ─────────────────────────────────────────────────────

    private fun execSuSync(command: String): Pair<Int, String> {
        return try {
            // 使用 ShizukuHelper 的 suArgs() 自动探测 APatch/Magisk/KernelSU 格式
            val fullArgs = ShizukuHelper.suArgs(command)
            val process = Runtime.getRuntime().exec(fullArgs)
            val exitCode = process.waitFor()
            val stdout = BufferedReader(InputStreamReader(process.inputStream)).use { it.readText() }
            val stderr = BufferedReader(InputStreamReader(process.errorStream)).use { it.readText() }
            val output = if (stdout.isNotEmpty()) stdout else stderr
            Pair(exitCode, output.trim())
        } catch (e: Exception) {
            Log.e(TAG, "execSuSync failed: ${e.message}")
            Pair(-1, e.message ?: "Unknown error")
        }
    }

    /** 执行多行命令（用分号连接，兼容 su -c 格式） */
    private fun execSuSyncMulti(commands: List<String>): Pair<Int, String> {
        val joined = commands.joinToString("; ")
        return execSuSync(joined)
    }

    // ─── 各功能方法 ───────────────────────────────────────────────────────────

    fun setAnimationScales(scale: Float): Result<Boolean> = runCatching {
        val commands = listOf(
            "settings put global window_animation_scale $scale",
            "settings put global transition_animation_scale $scale",
            "settings put global animator_duration_scale $scale"
        )
        commands.all { cmd ->
            execSuSync(cmd).first == 0
        }
    }

    fun getAnimationScales(): Result<AnimationScales> = runCatching {
        val (wc, wo) = execSuSync("settings get global window_animation_scale")
        val (tc, to) = execSuSync("settings get global transition_animation_scale")
        val (ac, ao) = execSuSync("settings get global animator_duration_scale")
        AnimationScales(
            window = wo.toFloatOrNull() ?: 1f,
            transition = to.toFloatOrNull() ?: 1f,
            animator = ao.toFloatOrNull() ?: 1f
        )
    }

    fun setRefreshRate(context: Context, rate: Int): Result<Int> = runCatching {
        execSuSync("settings put system peak_refresh_rate $rate")
        execSuSync("settings put system min_refresh_rate $rate")
        rate
    }

    fun getRefreshRate(): Result<Int> = runCatching {
        val (_, out) = execSuSync("settings get system peak_refresh_rate")
        out.toIntOrNull() ?: 60
    }

    fun setBatteryMode(mode: String): Result<Boolean> = runCatching {
        val cmd = when (mode) {
            "performance" -> "settings put system power_mode 1"
            "balanced" -> "settings put system power_mode 0"
            "save" -> "settings put system power_mode 2"
            else -> throw IllegalArgumentException("Unknown mode: $mode")
        }
        execSuSync(cmd).first == 0
    }

    fun setBatteryMode(context: Context, mode: String): Result<Boolean> = setBatteryMode(mode)

    fun getBatteryMode(): Result<String> = runCatching {
        val (_, out) = execSuSync("settings get system power_mode")
        when (out.trim()) {
            "1" -> "performance"
            "2" -> "save"
            else -> "balanced"
        }
    }

    fun disableAds(): Result<Boolean> = runCatching {
        listOf(
            "settings put global package_installer_package_verifier_enable 0",
            "settings put global verifier_verify_adb_installs 0"
        ).all { execSuSync(it).first == 0 }
    }

    fun getAutoStartDisabled(): Result<Int> = runCatching {
        val pm = android.app.ActivityManager::class.java
        val (code, _) = execSuSync("dumpsys package android | grep AUTO_START | wc -l")
        code
    }

    fun getCurrentRefreshRate(context: Context): Result<Int> = runCatching {
        val (_, out) = execSuSync("dumpsys display | grep 'mDisplayModes' | head -1")
        out.filter { it.isDigit() }.take(3).toIntOrNull() ?: 60
    }

    suspend fun disableAllAutoStart(context: Context): Result<Pair<Int, Int>> =
        withContext(Dispatchers.IO) {
            runCatching {
                val pm = context.packageManager
                val apps = pm.getInstalledApplications(0)
                val nonSystemApps = apps.filter { !isSystemApp(it.packageName) && it.packageName != context.packageName }
                val total = nonSystemApps.size
                Log.i(TAG, "开始禁用自启动: 共 $total 个应用")
                
                // 分批执行（每批 50 个，避免命令行过长）
                val batchSize = 50
                var success = 0
                var failed = 0
                
                nonSystemApps.chunked(batchSize).forEach { batch ->
                    val commands = batch.map { app ->
                        "appops set ${app.packageName} AUTO_START ignore"
                    }
                    val (execCode, execOut) = execSuSyncMulti(commands)
                    
                    if (execCode == 0) {
                        success += batch.size
                    } else {
                        Log.e(TAG, "批次失败: code=$execCode, out=$execOut")
                        // 逐个重试
                        batch.forEach { app ->
                            val (code, _) = execSuSync("appops set ${app.packageName} AUTO_START ignore")
                            if (code == 0) success++ else failed++
                        }
                    }
                }
                
                Log.i(TAG, "自启动禁用完成: 成功 $success, 失败 $failed")
                Pair(success, failed)
            }
        }

    fun disableSystemAds(): Result<Boolean> = runCatching {
        listOf(
            "settings put global package_installer_package_verifier_enable 0",
            "settings put global verifier_verify_adb_installs 0"
        ).all { execSuSync(it).first == 0 }
    }

    fun enableSystemAds(): Result<Boolean> = runCatching {
        listOf(
            "settings put global package_installer_package_verifier_enable 1",
            "settings put global verifier_verify_adb_installs 1"
        ).all { execSuSync(it).first == 0 }
    }

    fun disableLockScreenAds(): Result<Boolean> = runCatching {
        execSuSync("settings put secure lock_screen_allow_private_notifications 0").first == 0
    }

    fun enableLockScreenAds(): Result<Boolean> = runCatching {
        execSuSync("settings put secure lock_screen_allow_private_notifications 1").first == 0
    }

    suspend fun disableAutoStart(context: Context): Result<OptimizeResult> =
        withContext(Dispatchers.IO) {
            runCatching {
                val pm = context.packageManager
                val apps = pm.getInstalledApplications(0)
                var processed = 0
                for (app in apps) {
                    val pkg = app.packageName
                    if (isSystemApp(pkg) || pkg == context.packageName) continue
                    val (code, _) = execSuSync("appops set $pkg AUTO_START ignore")
                    if (code == 0) processed++
                }
                OptimizeResult(
                    success = true,
                    message = "已禁用 $processed 个应用",
                    autoStartDisabled = processed,
                    processedApps = processed
                )
            }
        }

    suspend fun oneKeyOptimize(context: Context): Result<OptimizeResult> =
        withContext(Dispatchers.IO) {
            runCatching {
                val animDisabled = setAnimationScales(0f).getOrThrow()
                val rateLocked = setRefreshRate(context, 120).getOrThrow() > 0
                val modeSet = setBatteryMode("performance").getOrThrow()
                val adsDone = disableAds().getOrThrow()
                val autoResult = disableAutoStart(context).getOrThrow()

                val okCount = listOf(animDisabled, rateLocked, modeSet, adsDone).count { it }
                OptimizeResult(
                    success = okCount >= 3,
                    message = "优化完成: $okCount 项成功",
                    animationDisabled = animDisabled,
                    refreshRateLocked = rateLocked,
                    batteryModeSet = modeSet,
                    adsDisabled = adsDone,
                    autoStartDisabled = autoResult.autoStartDisabled,
                    processedApps = autoResult.processedApps
                )
            }
        }

    fun restoreDefaults(): Result<Boolean> = runCatching {
        listOf(
            "settings put global window_animation_scale 1.0",
            "settings put global transition_animation_scale 1.0",
            "settings put global animator_duration_scale 1.0",
            "settings delete system min_refresh_rate",
            "settings delete system peak_refresh_rate",
            "settings put system power_mode 0"
        ).all { execSuSync(it).first == 0 }
    }

    fun resetToDefaults(context: Context): Result<Unit> = runCatching {
        restoreDefaults().getOrThrow()
    }

    private fun isSystemApp(packageName: String): Boolean {
        return packageName.startsWith("com.android.") ||
               packageName.startsWith("com.google.android.") ||
               packageName == "android"
    }
}
