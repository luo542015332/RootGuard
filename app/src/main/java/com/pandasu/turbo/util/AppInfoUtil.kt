package com.pandasu.turbo.util

import android.content.Context
import android.content.Intent
import android.content.pm.ApplicationInfo
import android.content.pm.PackageInfo
import android.content.pm.PackageManager
import android.graphics.drawable.Drawable
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.util.Log
import kotlinx.coroutines.*
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.text.DecimalFormat

/**
 * App 信息 + APK 提取
 * 原则：
 * - 提取用户应用 APK：直接读 sourceDir，不需要任何权限
 * - 提取系统应用 APK：需要 su（无 su 时明确提示）
 * - 强制停止/禁用/卸载：am/pm 不需要 root（用户应用直接成功，系统应用需要 su）
 */
object AppInfoUtil {

    private const val TAG = "AppInfoUtil"
    private val mainHandler = Handler(Looper.getMainLooper())

    data class AppItem(
        val packageName: String,
        val appName: String,
        val versionName: String,
        val versionCode: Long,
        val apkPath: String,
        val apkSize: Long,
        val isSystemApp: Boolean,
        val icon: Drawable?,
        val installTime: Long,
        val updateTime: Long,
        val targetSdk: Int,
        val minSdk: Int
    ) {
        val apkSizeStr: String get() {
            val df = DecimalFormat("#,##0.0")
            return when {
                apkSize >= 1024L * 1024 * 1024 -> "${df.format(apkSize / (1024.0 * 1024 * 1024))} GB"
                apkSize >= 1024L * 1024 -> "${df.format(apkSize / (1024.0 * 1024))} MB"
                apkSize >= 1024L -> "${df.format(apkSize / 1024.0)} KB"
                else -> "$apkSize B"
            }
        }
    }

    // ─── 获取已安装应用列表 ─────────────────────────────────────────

    fun getInstalledApps(context: Context, includeSystem: Boolean = true): List<AppItem> {
        val pm = context.packageManager
        val flags = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            PackageManager.GET_META_DATA or PackageManager.MATCH_UNINSTALLED_PACKAGES
        } else {
            @Suppress("DEPRECATION")
            PackageManager.GET_META_DATA or PackageManager.GET_UNINSTALLED_PACKAGES
        }

        val packages = pm.getInstalledPackages(flags)
        val result = mutableListOf<AppItem>()

        for (pkg in packages) {
            try {
                val isSystem = (pkg.applicationInfo.flags and ApplicationInfo.FLAG_SYSTEM) != 0
                if (!includeSystem && isSystem) continue

                val apkFile = File(pkg.applicationInfo.sourceDir)
                val apkSize = if (apkFile.exists()) apkFile.length() else 0L
                val icon = try { pm.getApplicationIcon(pkg.packageName) } catch (e: Exception) { null }

                result.add(AppItem(
                    packageName = pkg.packageName,
                    appName = pm.getApplicationLabel(pkg.applicationInfo).toString(),
                    versionName = pkg.versionName ?: "N/A",
                    versionCode = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
                        pkg.longVersionCode
                    } else {
                        @Suppress("DEPRECATION")
                        pkg.versionCode.toLong()
                    },
                    apkPath = pkg.applicationInfo.sourceDir,
                    apkSize = apkSize,
                    isSystemApp = isSystem,
                    icon = icon,
                    installTime = pkg.firstInstallTime,
                    updateTime = pkg.lastUpdateTime,
                    targetSdk = pkg.applicationInfo.targetSdkVersion,
                    minSdk = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                        pkg.applicationInfo.minSdkVersion
                    } else 0
                ))
            } catch (e: Exception) {
                Log.w(TAG, "Skip ${pkg.packageName}: ${e.message}")
            }
        }

        return result.sortedWith(compareBy({ it.isSystemApp }, { it.appName.lowercase() }))
    }

    // ─── 提取 APK（通用方法）─────────────────────────────────────────

    /**
     * 提取 APK 到 app 私有目录
     * - 用户应用：直接读取 sourceDir，不需要任何权限
     * - 系统应用：需要 su，否则返回 false 并提示
     */
    fun extractApk(
        context: Context,
        app: AppItem,
        onProgress: (Int) -> Unit,
        onComplete: (Boolean, String) -> Unit
    ) {
        CoroutineScope(Dispatchers.IO).launch {
            try {
                val srcFile = File(app.apkPath)
                if (!srcFile.exists()) {
                    mainHandler.post { onComplete(false, "APK 文件不存在") }
                    return@launch
                }

                val destDir = File(context.getExternalFilesDir(null), "apk_backup")
                if (!destDir.exists() && !destDir.mkdirs()) {
                    mainHandler.post { onComplete(false, "无法创建目录") }
                    return@launch
                }

                val safeName = app.appName.replace(Regex("[^a-zA-Z0-9_\\-\\u4e00-\\u9fa5]"), "_")
                val destFile = File(destDir, "${safeName}_${app.versionName}.apk")

                // 直接复制，不需要任何权限（sourceDir 在 Android 上是所有用户可读的）
                val totalSize = srcFile.length()
                var copiedSize = 0L

                FileInputStream(srcFile).use { input ->
                    FileOutputStream(destFile).use { output ->
                        val buffer = ByteArray(8192)
                        var bytesRead: Int
                        while (input.read(buffer).also { bytesRead = it } != -1) {
                            output.write(buffer, 0, bytesRead)
                            copiedSize += bytesRead
                            val progress = ((copiedSize.toFloat() / totalSize) * 100).toInt()
                            mainHandler.post { onProgress(progress) }
                        }
                    }
                }

                mainHandler.post { onComplete(true, destFile.absolutePath) }

            } catch (e: Exception) {
                Log.e(TAG, "Extract failed: ${e.message}", e)
                // 如果普通读取失败，尝试走 su（仅系统应用需要）
                if (app.isSystemApp) {
                    extractViaSu(context, app, onComplete)
                } else {
                    mainHandler.post { onComplete(false, "提取失败: ${e.message}") }
                }
            }
        }
    }

    // ─── 通过 su 提取系统 APK ────────────────────────────────────────

    private fun extractViaSu(
        context: Context,
        app: AppItem,
        onComplete: (Boolean, String) -> Unit
    ) {
        val destDir = File(context.getExternalFilesDir(null), "apk_backup")
        destDir.mkdirs()
        val safeName = app.appName.replace(Regex("[^a-zA-Z0-9_\\-\\u4e00-\\u9fa5]"), "_")
        val destPath = "${destDir.absolutePath}/${safeName}_${app.versionName}.apk"

        Thread {
            try {
                val process = Runtime.getRuntime().exec(ShizukuHelper.suArgs("cp '${app.apkPath}' '$destPath' && chmod 644 '$destPath'"))
                val exitCode = waitForWithTimeout(process, 10000)
                if (exitCode == 0) {
                    mainHandler.post { onComplete(true, destPath) }
                } else {
                    val err = process.errorStream.bufferedReader().readText()
                    mainHandler.post { onComplete(false, "需要 Root 权限: $err") }
                }
            } catch (e: Exception) {
                mainHandler.post { onComplete(false, "需要 Root 权限才能提取系统应用") }
            }
        }.start()
    }

    private fun waitForWithTimeout(process: Process, timeoutMs: Long): Int {
        val deadline = System.currentTimeMillis() + timeoutMs
        while (System.currentTimeMillis() < deadline) {
            try { return process.exitValue() } catch (e: IllegalThreadStateException) { Thread.sleep(50) }
        }
        process.destroy()
        return -1
    }

    // ─── 强制停止 ────────────────────────────────────────────────────

    /**
     * 强制停止应用
     * - 用户应用：am force-stop 不需要 root
     * - 系统应用：需要 su
     */
    fun forceStopApp(packageName: String, isSystemApp: Boolean = false, callback: (Boolean, String) -> Unit) {
        execAsCmd("am force-stop $packageName", isSystemApp, callback)
    }

    // ─── 禁用/启用应用 ──────────────────────────────────────────────

    fun disableApp(packageName: String, isSystemApp: Boolean = false, callback: (Boolean, String) -> Unit) {
        execAsCmd("pm disable-user --user 0 $packageName", isSystemApp, callback)
    }

    fun enableApp(packageName: String, isSystemApp: Boolean = false, callback: (Boolean, String) -> Unit) {
        execAsCmd("pm enable $packageName", isSystemApp, callback)
    }

    // ─── 卸载应用 ───────────────────────────────────────────────────

    fun uninstallApp(packageName: String, keepData: Boolean = false, isSystemApp: Boolean = false, callback: (Boolean, String) -> Unit) {
        val cmd = if (keepData) "pm uninstall -k $packageName" else "pm uninstall $packageName"
        execAsCmd(cmd, isSystemApp) { success, msg ->
            callback(success || msg.contains("Success"), msg)
        }
    }

    // ─── 权限审计 ───────────────────────────────────────────────────

    fun getPermissionUsage(context: Context, permission: String): List<String> {
        val pm = context.packageManager
        val result = mutableListOf<String>()
        try {
            val packages = pm.getInstalledPackages(PackageManager.GET_PERMISSIONS)
            for (pkg in packages) {
                val perms = pkg.requestedPermissions ?: continue
                if (perms.contains(permission)) {
                    result.add(pm.getApplicationLabel(pkg.applicationInfo).toString())
                }
            }
        } catch (e: Exception) { }
        return result
    }

    // ─── 获取应用详情 ───────────────────────────────────────────────

    fun getAppDetail(context: Context, packageName: String): Map<String, String> {
        val pm = context.packageManager
        val result = mutableMapOf<String, String>()
        try {
            val flags = PackageManager.GET_ACTIVITIES or PackageManager.GET_PERMISSIONS or
                    PackageManager.GET_SERVICES or PackageManager.GET_RECEIVERS
            val pkg = pm.getPackageInfo(packageName, flags)

            result["包名"] = packageName
            result["版本"] = "${pkg.versionName} (${if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) pkg.longVersionCode else @Suppress("DEPRECATION") pkg.versionCode})"
            result["安装路径"] = pkg.applicationInfo.sourceDir
            result["数据目录"] = pkg.applicationInfo.dataDir
            result["目标SDK"] = pkg.applicationInfo.targetSdkVersion.toString()
            result["Activity数量"] = (pkg.activities?.size ?: 0).toString()
            result["Service数量"] = (pkg.services?.size ?: 0).toString()
            result["Receiver数量"] = (pkg.receivers?.size ?: 0).toString()
            result["权限数量"] = (pkg.requestedPermissions?.size ?: 0).toString()

            val dangerousPerms = pkg.requestedPermissions?.filter { perm ->
                try {
                    val permInfo = pm.getPermissionInfo(perm, 0)
                    permInfo.protectionLevel and android.content.pm.PermissionInfo.PROTECTION_DANGEROUS != 0
                } catch (e: Exception) { false }
            } ?: emptyList()
            result["危险权限"] = dangerousPerms.joinToString("\n") { it.substringAfterLast(".") }

        } catch (e: Exception) {
            result["错误"] = e.message ?: "Unknown"
        }
        return result
    }

    // ─── 内部工具 ───────────────────────────────────────────────────

    /**
     * 执行 shell 命令
     * - 用户应用：直接用 shell 执行（am / pm 等命令不需要 root）
     * - 系统应用：需要 su
     */
    private fun execAsCmd(cmd: String, needSu: Boolean, callback: (Boolean, String) -> Unit) {
        Thread {
            var exitCode: Int
            var stdout = ""
            var stderr = ""
            try {
                val process = if (needSu) {
                    Runtime.getRuntime().exec(ShizukuHelper.suArgs(cmd))
                } else {
                    Runtime.getRuntime().exec(arrayOf("sh", "-c", cmd))
                }
                exitCode = waitForWithTimeout(process, 8000)
                stdout = process.inputStream.bufferedReader().readText()
                stderr = process.errorStream.bufferedReader().readText()
            } catch (e: Exception) {
                mainHandler.post { callback(false, "执行失败: ${e.message}") }
                return@Thread
            }

            if (exitCode == -1) {
                mainHandler.post { callback(false, "执行超时，需要 Root 权限") }
            } else {
                mainHandler.post { callback(exitCode == 0, stdout.ifBlank { stderr }) }
            }
        }.start()
    }
}
