package com.pandasu.turbo.util

import android.app.ActivityManager
import android.content.Context
import android.os.Environment
import kotlinx.coroutines.*
import java.io.File

/**
 * 清理工具：缓存分析 / 进程清理 / 大文件查找
 * 有 Shizuku/Root：直接读 /data/data/
 * 无 Root：走 App 私有目录 fallback，清理操作给出明确提示
 */
object CleanerUtil {

    data class CacheInfo(
        val appName: String,
        val packageName: String,
        val cacheSize: Long,
        val codeCacheSize: Long,
        val dataSize: Long,
        val isRootScan: Boolean
    ) {
        val totalSize: Long get() = cacheSize + codeCacheSize
        val totalSizeStr: String get() = formatSize(totalSize)
        val sourceHint: String get() = if (isRootScan) "" else "（无 Root，仅部分数据）"
    }

    data class BigFile(
        val path: String,
        val size: Long,
        val lastModified: Long,
        val isApk: Boolean
    ) {
        val sizeStr: String get() = formatSize(size)
    }

    // ─── 扫描 ─────────────────────────────────────────────────────────

    fun scanCache(
        context: Context,
        onProgress: (Int) -> Unit,
        onComplete: (List<CacheInfo>) -> Unit
    ) {
        CoroutineScope(Dispatchers.IO).launch {
            val pm = context.packageManager
            val packages = try {
                pm.getInstalledPackages(0)
            } catch (e: Exception) {
                withContext(Dispatchers.Main) { onComplete(emptyList()) }
                return@launch
            }

            val hasRoot = isRootAvailable()
            val result = mutableListOf<CacheInfo>()
            val total = packages.size

            for ((index, pkg) in packages.withIndex()) {
                try {
                    val appInfo = pkg.applicationInfo
                    val appLabel = pm.getApplicationLabel(appInfo).toString()
                    val pkgName = pkg.packageName

                    if (hasRoot) {
                        val dataDir = File("/data/data/$pkgName")
                        if (dataDir.exists()) {
                            val cacheSize = getDirSize(File(dataDir, "cache"))
                            val codeCacheSize = getDirSize(File(dataDir, "code_cache"))
                            val dataSize = getDirSize(File(dataDir, "files")) +
                                    getDirSize(File(dataDir, "shared_prefs"))
                            if (cacheSize + codeCacheSize > 0) {
                                result.add(CacheInfo(
                                    appLabel, pkgName, cacheSize, codeCacheSize, dataSize, true
                                ))
                            }
                        }
                    } else {
                        val extCache = context.getExternalFilesDir(null)?.let {
                            File(it.parentFile, "Android/data/$pkgName/cache")
                        }
                        val intCache = try {
                            File(appInfo.dataDir, "cache")
                        } catch (e: Exception) { null }

                        val cacheSize = getDirSize(extCache) + getDirSize(intCache)
                        if (cacheSize > 0) {
                            result.add(CacheInfo(appLabel, pkgName, cacheSize, 0L, 0L, false))
                        }
                    }
                } catch (e: Exception) { }

                val progress = ((index + 1) * 100 / total)
                withContext(Dispatchers.Main) { onProgress(progress) }
            }

            withContext(Dispatchers.Main) {
                onComplete(result.sortedByDescending { it.totalSize })
            }
        }
    }

    // ─── 清理单个应用缓存 ──────────────────────────────────────────────

    fun clearCache(packageName: String, callback: (Boolean, String) -> Unit) {
        if (!isRootAvailable()) {
            // 无 root：尝试清理 App 外部缓存目录
            val appExtCache = File(
                Environment.getExternalStorageDirectory(),
                "Android/data/$packageName/cache"
            )
            if (appExtCache.exists()) {
                val deleted = deleteRecursively(appExtCache)
                if (deleted) {
                    callback(true, "App 外部缓存已清理")
                } else {
                    callback(false, "清理失败，请确认已授予存储权限")
                }
            } else {
                callback(false, "无 Root 权限，无法清理此应用缓存")
            }
            return
        }

        val commands = listOf(
            "pm trim-caches $packageName 2>/dev/null || true",
            "rm -rf /data/data/$packageName/cache/* 2>/dev/null || true",
            "rm -rf /data/data/$packageName/code_cache/* 2>/dev/null || true",
            "rm -rf /sdcard/Android/data/$packageName/cache/* 2>/dev/null || true"
        )
        ShizukuHelper.execScript(commands, useSu = true,
            callback = object : ShizukuHelper.CommandResultListener {
                override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                    callback(true, "缓存已清理")
                }
                override fun onError(msg: String) { callback(false, msg) }
            }
        )
    }

    // ─── 一键清理全部 ─────────────────────────────────────────────────

    fun clearAllCache(callback: (Boolean, String) -> Unit) {
        if (!isRootAvailable()) {
            callback(false, "一键清理需要 Root 权限，请在 Shizuku 或 Magisk 中授权")
            return
        }
        ShizukuHelper.execCommand(
            "rm -rf /data/dalvik-cache/* 2>/dev/null; " +
            "rm -rf /data/data/*/cache/* 2>/dev/null; " +
            "pm trim-caches 999G 2>/dev/null || true",
            useSu = true,
            callback = object : ShizukuHelper.CommandResultListener {
                override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                    callback(true, "全局缓存已清理")
                }
                override fun onError(msg: String) { callback(false, msg) }
            }
        )
    }

    // ─── 进程清理 ────────────────────────────────────────────────────

    fun killBackgroundProcesses(context: Context, callback: (Int) -> Unit) {
        val am = context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
        val runningApps = am.runningAppProcesses ?: emptyList()
        var killed = 0
        for (app in runningApps) {
            if (app.importance >=
                ActivityManager.RunningAppProcessInfo.IMPORTANCE_FOREGROUND_SERVICE) continue
            if (app.processName == context.packageName) continue
            am.killBackgroundProcesses(app.processName)
            killed++
        }
        callback(killed)
    }

    // ─── 大文件查找 ──────────────────────────────────────────────────

    fun findBigFiles(
        path: String = Environment.getExternalStorageDirectory().absolutePath,
        minSizeMB: Int = 10,
        onProgress: (Int, String) -> Unit,
        onComplete: (List<BigFile>) -> Unit
    ) {
        CoroutineScope(Dispatchers.IO).launch {
            val minBytes = minSizeMB * 1024L * 1024L
            val result = mutableListOf<BigFile>()
            val root = File(path)

            fun scanDir(dir: File) {
                try {
                    if (!dir.canRead()) return
                    val files = dir.listFiles() ?: return
                    for (file in files) {
                        if (file.isDirectory) {
                            if (!file.name.startsWith(".") &&
                                file.name != "proc" && file.name != "sys" &&
                                file.name != "dev" && file.name != "run") {
                                scanDir(file)
                            }
                        } else {
                            if (file.length() >= minBytes) {
                                result.add(BigFile(
                                    path = file.absolutePath,
                                    size = file.length(),
                                    lastModified = file.lastModified(),
                                    isApk = file.extension.equals("apk", ignoreCase = true)
                                ))
                            }
                        }
                    }
                } catch (e: Exception) { }
            }

            scanDir(root)
            withContext(Dispatchers.Main) {
                onComplete(result.sortedByDescending { it.size })
            }
        }
    }

    // ─── 删除大文件 ──────────────────────────────────────────────────

    fun deleteBigFile(path: String, callback: (Boolean) -> Unit) {
        if (!isRootAvailable()) {
            val file = File(path)
            if (file.canWrite()) {
                callback(file.delete())
            } else {
                callback(false)
            }
            return
        }
        val cmd = "rm -f '$path'"
        ShizukuHelper.execCommand(cmd, useSu = true,
            callback = object : ShizukuHelper.CommandResultListener {
                override fun onResult(exitCode: Int, stdout: String, stderr: String) {
                    callback(exitCode == 0)
                }
                override fun onError(msg: String) { callback(false) }
            }
        )
    }

    // ─── 工具方法 ────────────────────────────────────────────────────

    private fun getDirSize(dir: File?): Long {
        if (dir == null || !dir.exists()) return 0L
        var size = 0L
        try {
            dir.listFiles()?.forEach { file ->
                size += if (file.isDirectory) getDirSize(file) else file.length()
            }
        } catch (e: Exception) { }
        return size
    }

    private fun deleteRecursively(file: File): Boolean {
        var result = true
        try {
            if (file.isDirectory) {
                file.listFiles()?.forEach { result = deleteRecursively(it) && result }
            }
            if (!file.delete()) result = false
        } catch (e: Exception) { result = false }
        return result
    }

    fun formatSize(bytes: Long): String {
        val df = java.text.DecimalFormat("#,##0.0")
        return when {
            bytes >= 1024L * 1024 * 1024 -> "${df.format(bytes / (1024.0 * 1024 * 1024))} GB"
            bytes >= 1024L * 1024 -> "${df.format(bytes / (1024.0 * 1024))} MB"
            bytes >= 1024L -> "${df.format(bytes / 1024.0)} KB"
            else -> "$bytes B"
        }
    }

    private fun isRootAvailable(): Boolean {
        return try {
            File("/system/xbin/su").exists() || File("/system/bin/su").exists()
        } catch (e: Exception) { false }
    }
}
