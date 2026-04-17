package com.pandasu.turbo

import android.app.ActivityManager
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.pm.PackageManager
import android.os.Build
import android.os.Parcelable
import android.provider.Settings
import android.util.Log
import java.io.BufferedReader
import java.io.InputStreamReader
import java.io.RandomAccessFile
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicReference
import rikka.shizuku.Shizuku
import rikka.shizuku.ShizukuBinderWrapper
import moe.shizuku.server.IShizukuService

class GameManager(private val ctx: Context) {

    companion object {
        private const val TAG = "GameManager"

        val GAME_PACKAGES = listOf(
            // 腾讯
            "com.tencent.tmgp.sgame",        // 王者荣耀
            "com.tencent.ig",                  // 吃鸡/PUBG Mobile
            "com.tencent.lm",                  // 英雄联盟手游
            "com.tencent.qt.uuw",              // 欢乐斗地主
            "com.QQ.X",                       // QQ游戏
            "com.tencent.mm.plugin.webgame",  // 微信小程序游戏
            // 网易
            "com.miHoYo.Yuanshen",            // 原神
            "com.miHoYo.enterprise.Yuanshen", // 渠道原神
            "com.netease.hyxg",               // 蛋仔派对
            "com.netease.lztgglobal",         // 第五人格
            "com.netease.mrzh",               // 明日之后
            "com.netease.sky",                // 光·遇
            "com.netease.oxtoys",             // 我的世界
            "com.netease.moba",               // 阴阳师
            "com.netease.gnsh",               // 阴阳师：百闻牌
            // 米哈游
            "com.miHoYo.houkai",              // 崩坏3
            "com.miHoYo.starrail",            // 崩坏：星穹铁道
            "com.miHoYo.ZZZ",                 // 绝区零
            // 其他知名游戏
            "com.supercell.clashofclans",     // 海岛奇兵
            "com.supercell.brawlstars",       // 荒野乱斗
            "com.supercell.clashroyale",      // 皇室战争
            "com.riotgames.league.wildrift",  // 英雄联盟手游
            "com.riotgames.league.teamfighttactics", // 云顶之弈
            "com.activision.callofduty.shooter", // COD Mobile
            "com.ea.gp.apexlegentsmobilefps", // Apex 移动版
            "com.epicgames.fortnite",         // Fortnite
            "com.mojang.minecraftpe",         // 我的世界基岩版（旧包名）
            "com.microsoft.minecraft",        // 我的世界基岩版（新包名）
            "com.garena.game.codm",           // 使命召唤手游
            "com.dts.freefireth",             // 自由火力
            "com.dts.freefire",               // 吃鸡
            "com.miniclip.footballdash",      // 迷你足球
            "com.miniclip.subwaysurf",        // 神庙逃亡
            "com.rovio.angrybirds",           // 愤怒的小鸟
            "com.rovio.angrybirdsfriends",   // 愤怒的小鸟2
            "com.outplay.candycrush",         // 糖果传奇
            "com.king.candycrushsaga",        // 糖果传奇
            "com.king.candycrush4",           // 糖果传奇4
            "com.playdemic.golfclash",        // 高尔夫冲突
            "com.playdemic.golflx",           // 高尔夫挑战赛
            "com.ea.spous",                   // 模拟人生
            "com.ea.dpabulletin",             // 植物大战僵尸
            "com.popcap.PvZ2",                // 植物大战僵尸2
            "com.popcap.PlantsVsZombies",     // 植物大战僵尸
        )
    }

    private val prefs = ctx.getSharedPreferences("turbo_state", Context.MODE_PRIVATE)
    private val activityManager = ctx.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager

    fun isTurboEnabled(): Boolean = prefs.getBoolean("turbo_enabled", false)

    fun setTurboEnabled(enabled: Boolean) {
        prefs.edit().putBoolean("turbo_enabled", enabled).apply()
    }

    fun oneKeyTurbo() {
        setTurboEnabled(true)
        exec("settings put global low_power 0")
        exec("echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 2>/dev/null")
        exec("settings put system screen_brightness 255")
    }

    fun disableTurbo() {
        setTurboEnabled(false)
        exec("settings put global low_power 1")
        exec("echo schedutil > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 2>/dev/null")
        exec("settings put system screen_brightness_mode 1")
    }

    fun setBrightness(brightness: Int) {
        try {
            val b = brightness.coerceIn(1, 255)
            Settings.System.putInt(ctx.contentResolver, Settings.System.SCREEN_BRIGHTNESS, b)
            Settings.System.putInt(ctx.contentResolver, Settings.System.SCREEN_BRIGHTNESS_MODE, 0)
        } catch (e: Exception) { }
    }

    // ========== Shizuku ==========

    fun isShizukuAvailable(): Boolean {
        return try { Shizuku.pingBinder() } catch (e: Exception) { false }
    }

    fun isShizukuInstalled(): Boolean {
        return try {
            ctx.packageManager.getPackageInfo("moe.shizuku.manager", 0); true
        } catch (e: Exception) { false }
    }

    fun isShizukuAuthorized(): Boolean {
        return try {
            Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED
        } catch (e: Exception) { false }
    }

    fun execShizuku(command: String): Boolean {
        if (!isShizukuAvailable()) return false
        return try {
            val binder = fetchShizukuBinder() ?: return false
            val service = IShizukuService.Stub.asInterface(binder) ?: return false
            val process = service.newProcess(arrayOf("/system/bin/sh", "-c", command), arrayOf(), "/")
            process.waitFor() == 0
        } catch (e: Exception) {
            Log.w(TAG, "Shizuku exec: ${e.message}"); false
        }
    }

    private fun fetchShizukuBinder(): android.os.IBinder? {
        val existing = Shizuku.getBinder()
        if (existing != null) return existing

        val latch = CountDownLatch(1)
        val binderRef = AtomicReference<android.os.IBinder?>()

        val receiver = object : BroadcastReceiver() {
            override fun onReceive(c: Context, intent: Intent) {
                try {
                    val extra = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                        intent.getParcelableExtra("binder", ShizukuBinderWrapper::class.java)
                    } else {
                        @Suppress("DEPRECATION")
                        intent.getParcelableExtra<Parcelable>("binder") as? ShizukuBinderWrapper
                    }
                    if (extra is ShizukuBinderWrapper) {
                        Shizuku.onBinderReceived(extra, null)
                        binderRef.set(extra)
                    }
                } catch (e: Exception) { }
                latch.countDown()
            }
        }

        try {
            ctx.registerReceiver(receiver, IntentFilter("moe.shizuku.api.action.BINDER_RECEIVED"), 0)
            requestBinderFromShizukuManager()
            latch.await(3, TimeUnit.SECONDS)
        } catch (e: Exception) {
            Log.w(TAG, "fetchShizukuBinder: ${e.message}")
        } finally {
            try { ctx.unregisterReceiver(receiver) } catch (e: Exception) { }
        }
        return binderRef.get() ?: Shizuku.getBinder()
    }

    private fun requestBinderFromShizukuManager() {
        try {
            val authority = "${ctx.packageName}.shizuku"
            ctx.contentResolver.call(android.net.Uri.parse("content://$authority"),
                "requestBinderForNonProviderProcess", null, null)
        } catch (e: Exception) { }
    }

    // ========== Root ==========

    private var hasSu: Boolean? = null

    private fun hasRootAccess(): Boolean {
        if (hasSu != null) return hasSu!!
        hasSu = try {
            val p = Runtime.getRuntime().exec(arrayOf("/system/xbin/su", "-c", "id"))
            BufferedReader(InputStreamReader(p.inputStream)).use { it.readLine() ?: "" }.contains("uid=0")
        } catch (e: Exception) { false }
        return hasSu!!
    }

    fun execSu(command: String): Boolean {
        if (!hasRootAccess()) return false
        return try {
            val p = Runtime.getRuntime().exec(arrayOf("/system/xbin/su", "-c", command))
            p.waitFor(); p.exitValue() == 0
        } catch (e: Exception) { false }
    }

    fun exec(command: String): Boolean {
        if (isShizukuAvailable() && isShizukuAuthorized()) return execShizuku(command)
        return execSu(command)
    }

    // ========== Game Detection ==========

    fun isGameRunning(): Boolean {
        val running = activityManager.runningAppProcesses ?: return false
        return running.any { proc ->
            proc.pkgList.any { pkg -> GAME_PACKAGES.any { game -> pkg.startsWith(game) } }
        }
    }

    fun getRunningGamePackage(): String? {
        val running = activityManager.runningAppProcesses ?: return null
        return running.flatMap { it.pkgList.toList() }
            .firstOrNull { pkg -> GAME_PACKAGES.any { game -> pkg.startsWith(game) } }
    }

    fun cleanBackgroundApps(): Int {
        var count = 0
        try {
            val running = activityManager.runningAppProcesses ?: return 0
            val whiteList = setOf(
                ctx.packageName, "com.android.systemui",
                "com.android.launcher", "com.miui.home",
                "com.tencent.mobileqq", "com.tencent.mm",
                "com.whatsapp", "org.telegram.messenger"
            ) + GAME_PACKAGES

            for (proc in running) {
                if (proc.importance >= ActivityManager.RunningAppProcessInfo.IMPORTANCE_FOREGROUND_SERVICE
                    && !whiteList.any { proc.pkgList.contains(it) }
                    && proc.pkgList.isNotEmpty()
                ) {
                    if (exec("am force-stop " + proc.pkgList.first())) count++
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "cleanBackgroundApps: ${e.message}")
        }
        return count
    }

    fun getDeviceTemperature(): Float {
        val paths = listOf(
            "/sys/class/thermal/thermal_zone0/temp",
            "/sys/devices/virtual/thermal/thermal_zone0/temp",
            "/sys/class/hwmon/hwmon0/temp1_input"
        )
        for (path in paths) {
            try {
                val rf = RandomAccessFile(path, "r")
                val line = rf.readLine(); rf.close()
                val raw = line.toFloatOrNull() ?: continue
                return if (raw > 1000) raw / 1000f else raw
            } catch (e: Exception) { }
        }
        return 35.0f
    }

    fun setDoNotDisturb(enable: Boolean) {
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                val mode = if (enable) android.app.NotificationManager.INTERRUPTION_FILTER_NONE
                           else android.app.NotificationManager.INTERRUPTION_FILTER_ALL
                @Suppress("DEPRECATION")
                (ctx.getSystemService(Context.NOTIFICATION_SERVICE) as android.app.NotificationManager)
                    .setInterruptionFilter(mode)
            }
        } catch (e: Exception) { }
    }

    fun hasAccessibilityPermission(): Boolean {
        val svc = "${ctx.packageName}/.GameAccessibilityService"
        return Settings.Secure.getString(ctx.contentResolver, Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES)
            ?.contains(svc) ?: false
    }

    fun isRooted(): Boolean = hasRootAccess()
}