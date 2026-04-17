package com.pandasu.turbo.util

import android.app.ActivityManager
import android.content.Context
import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.util.concurrent.CountDownLatch

object BackgroundManager {
    private const val TAG = "BackgroundManager"

    data class AppBackgroundInfo(
        val packageName: String,
        val appName: String,
        val isSystemApp: Boolean,
        val canRunInBackground: Boolean,
        val isBatteryOptimized: Boolean,
        val memoryUsage: Long = 0
    )

    suspend fun getAllAppsBackgroundStatus(context: Context): List<AppBackgroundInfo> =
        withContext(Dispatchers.IO) {
            val pm = context.packageManager
            val am = context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
            val apps = pm.getInstalledApplications(PackageManager.GET_META_DATA)
            val runningProcesses = am.runningAppProcesses ?: emptyList()
            
            // 批量获取所有应用的 appops 状态
            val appopsMap = mutableMapOf<String, Boolean>()
            val latch = CountDownLatch(apps.size)
            
            for (app in apps) {
                val pkg = app.packageName
                if (shouldSkipApp(pkg)) {
                    latch.countDown()
                    continue
                }
                
                ShizukuHelper.execCommand(
                    "appops get $pkg RUN_IN_BACKGROUND",
                    useSu = true,
                    callback = object : ShizukuHelper.CommandResultListener {
                        override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                            // ignore = 禁止后台, allow/default = 允许后台
                            val canRun = !stdout.trim().contains("ignore", ignoreCase = true)
                            synchronized(appopsMap) { appopsMap[pkg] = canRun }
                            latch.countDown()
                        }
                        override fun onError(msg: String) {
                            synchronized(appopsMap) { appopsMap[pkg] = true } // 默认允许
                            latch.countDown()
                        }
                    })
            }
            
            latch.await(30, java.util.concurrent.TimeUnit.SECONDS)
            
            apps.mapNotNull { app ->
                val pkg = app.packageName
                if (shouldSkipApp(pkg)) return@mapNotNull null
                AppBackgroundInfo(
                    packageName = pkg,
                    appName = pm.getApplicationLabel(app).toString(),
                    isSystemApp = (app.flags and ApplicationInfo.FLAG_SYSTEM) != 0,
                    canRunInBackground = appopsMap[pkg] ?: true,
                    isBatteryOptimized = true,
                    memoryUsage = runningProcesses
                        .filter { it.pkgList?.contains(pkg) == true }
                        .sumOf { it.lastTrimLevel.toLong() }
                )
            }.sortedByDescending { it.memoryUsage }
        }

    /** iOS 墓碑模式 - 禁止后台运行（不改 pm disable） */
    suspend fun enableStrictMode(context: Context): Result<StrictModeResult> =
        withContext(Dispatchers.IO) {
            try {
                val apps = context.packageManager.getInstalledApplications(0)
                val results = mutableMapOf<String, Boolean>()
                val latch = CountDownLatch(apps.size)

                for (app in apps) {
                    val pkg = app.packageName
                    if (shouldSkipApp(pkg) || pkg == context.packageName) {
                        latch.countDown()
                        continue
                    }

                    val cmd = listOf(
                        "appops set $pkg RUN_IN_BACKGROUND ignore",
                        "appops set $pkg RUN_ANY_IN_BACKGROUND ignore",
                        "appops set $pkg FOREGROUND_SERVICE ignore",
                        "appops set $pkg AUTO_START ignore",
                        "echo done"
                    ).joinToString("; ")

                    ShizukuHelper.execCommand(cmd, useSu = true,
                        callback = object : ShizukuHelper.CommandResultListener {
                            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                                synchronized(results) { results[pkg] = stdout.contains("done") }
                                latch.countDown()
                            }
                            override fun onError(msg: String) {
                                synchronized(results) { results[pkg] = false }
                                latch.countDown()
                            }
                        })
                }

                latch.await(60, java.util.concurrent.TimeUnit.SECONDS)
                setAggressiveMemoryManagement()
                val processed = results.count { it.value }
                Result.success(StrictModeResult(processed, apps.size - processed))
            } catch (e: Exception) {
                Result.failure(e)
            }
        }

    /** 恢复所有应用默认后台策略 */
    suspend fun restoreDefaultMode(context: Context): Result<Unit> =
        withContext(Dispatchers.IO) {
            try {
                val apps = context.packageManager.getInstalledApplications(0)
                val latch = CountDownLatch(apps.size)

                for (app in apps) {
                    val pkg = app.packageName
                    if (shouldSkipApp(pkg)) {
                        latch.countDown()
                        continue
                    }

                    val cmd = listOf(
                        "appops set $pkg RUN_IN_BACKGROUND default",
                        "appops set $pkg RUN_ANY_IN_BACKGROUND default",
                        "appops set $pkg FOREGROUND_SERVICE default",
                        "echo done"
                    ).joinToString("; ")

                    ShizukuHelper.execCommand(cmd, useSu = true,
                        callback = object : ShizukuHelper.CommandResultListener {
                            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                                latch.countDown()
                            }
                            override fun onError(msg: String) {
                                latch.countDown()
                            }
                        })
                }

                latch.await(60, java.util.concurrent.TimeUnit.SECONDS)
                Result.success(Unit)
            } catch (e: Exception) {
                Result.failure(e)
            }
        }

    /** 清理所有后台应用 */
    suspend fun killAllBackgroundApps(context: Context): Result<KillResult> =
        withContext(Dispatchers.IO) {
            try {
                val am = context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
                val runningApps = am.runningAppProcesses ?: emptyList()
                val latch = CountDownLatch(runningApps.size)
                var killed = 0

                for (process in runningApps) {
                    val pkg = process.pkgList?.firstOrNull()
                    if (pkg == null || shouldSkipApp(pkg) || pkg == context.packageName) {
                        latch.countDown()
                        continue
                    }

                    // 先禁止后台运行，再杀进程，防止 HyperOS 立即拉起
                    ShizukuHelper.execCommand(
                        "appops set $pkg RUN_IN_BACKGROUND ignore; appops set $pkg RUN_ANY_IN_BACKGROUND ignore; am force-stop $pkg; echo done",
                        useSu = true,
                        callback = object : ShizukuHelper.CommandResultListener {
                            override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                                if (stdout.contains("done")) {
                                    synchronized(this) { killed++ }
                                }
                                latch.countDown()
                            }
                            override fun onError(msg: String) {
                                latch.countDown()
                            }
                        })
                }

                latch.await(30, java.util.concurrent.TimeUnit.SECONDS)
                System.gc()
                Result.success(KillResult(killed, 0))
            } catch (e: Exception) {
                Result.failure(e)
            }
        }

    /** 单个应用墓碑模式 */
    suspend fun setTombstoneMode(packageName: String, enable: Boolean): Result<Unit> =
        withContext(Dispatchers.IO) {
            val cmd = if (enable) {
                listOf(
                    "appops set $packageName RUN_IN_BACKGROUND ignore",
                    "appops set $packageName FOREGROUND_SERVICE ignore",
                    "echo done"
                ).joinToString("; ")
            } else {
                listOf(
                    "appops set $packageName RUN_IN_BACKGROUND default",
                    "appops set $packageName FOREGROUND_SERVICE default",
                    "echo done"
                ).joinToString("; ")
            }

            val latch = CountDownLatch(1)
            ShizukuHelper.execCommand(cmd, useSu = true,
                callback = object : ShizukuHelper.CommandResultListener {
                    override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                        latch.countDown()
                    }
                    override fun onError(msg: String) {
                        latch.countDown()
                    }
                })
            latch.await(10, java.util.concurrent.TimeUnit.SECONDS)
            Result.success(Unit)
        }

    fun getMemoryInfo(context: Context): MemoryStatus {
        val am = context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
        val memInfo = android.app.ActivityManager.MemoryInfo()
        am.getMemoryInfo(memInfo)
        val runtime = Runtime.getRuntime()
        return MemoryStatus(
            totalRam = memInfo.totalMem,
            availableRam = memInfo.availMem,
            isLowMemory = memInfo.lowMemory,
            appTotalMem = runtime.totalMemory(),
            appFreeMem = runtime.freeMemory(),
            appMaxMem = runtime.maxMemory()
        )
    }

    private fun shouldSkipApp(packageName: String): Boolean {
        val skipPackages = setOf("android", "com.pandasu.turbo")
        if (skipPackages.contains(packageName)) return true

        val systemPrefixes = setOf(
            "com.android.", "com.google.android.",
            "com.android.systemui", "com.android.launcher",
            "com.google.android.gms", "com.google.android.gsf",
            "com.miui.", "com.xiaomi."
        )
        return systemPrefixes.any {
            packageName.startsWith(it) && !packageName.contains("chrome")
        }
    }

    private fun setAggressiveMemoryManagement() {
        Thread {
            listOf(
                "settings put global app_standby_enabled 1",
                "settings put global forced_app_standby_enabled 1",
                "settings put global app_restriction_level 2"
            ).forEach { cmd ->
                ShizukuHelper.execCommand(cmd, useSu = true,
                    callback = object : ShizukuHelper.CommandResultListener {
                        override fun onResult(exitCode: Int, stdout: String, stderr: String) {}
                        override fun onError(msg: String) {}
                    })
            }
        }.start()
    }

    data class StrictModeResult(val processedApps: Int, val failedApps: Int)
    data class KillResult(val killedApps: Int, val freedMemoryBytes: Long)
    data class MemoryStatus(
        val totalRam: Long,
        val availableRam: Long,
        val isLowMemory: Boolean,
        val appTotalMem: Long,
        val appFreeMem: Long,
        val appMaxMem: Long
    ) {
        val usedRam: Long get() = totalRam - availableRam
        val usedPercent: Int get() = ((usedRam * 100) / totalRam).toInt()
    }
}
