package com.pandasu.turbo.lspoed

import android.util.Log
import de.robv.android.xposed.XposedBridge
import org.json.JSONObject
import java.io.BufferedReader
import java.io.File
import java.io.InputStreamReader
import java.util.concurrent.ConcurrentHashMap

/**
 * Hidden Module Assistant - manages the hidden package list and provides
 * shouldHide() logic for all hooks.
 *
 * Config reading uses two strategies:
 * 1. In system_server: read via `cat` command (SELinux blocks direct file access)
 * 2. In app processes: same `cat` approach or direct file read if accessible
 */
object HMAService {

    private val hiddenPackages = ConcurrentHashMap.newKeySet<String>()
    private var configLoaded = false
    private var detailLog = false

    // Config path — MUST match what the app writes to (LspConfigHelper.kt)
    // The app writes to /data/user/0/com.pandasu.turbo/cache/config.dat
    // system_server CANNOT read app-private files directly (SELinux)
    // So we use shell command (cat) which runs in shell domain (u:r:shell:s0)
    // shell CAN read /data/user_de/0/ and /data/local/tmp/ on most ROMs
    private const val CONFIG_PATH = "/data/user_de/0/com.pandasu.turbo/cache/config.dat"

    // Fallback: try direct read (may work on some ROMs without SELinux restrictions)
    private const val CONFIG_PATH_ALT = "/data/local/tmp/turbox_config.dat"

    fun loadConfigForSystem() {
        if (configLoaded) return
        reloadDefaults()
        loadConfig()
        configLoaded = true
    }

    private fun reloadDefaults() {
        val defaults = listOf(
            // Root tools
            "com.topjohnwu.magisk",
            "io.github.vvb2060.magisk",
            "me.weishu.kernelsu",
            "me.weishu.freereflection",
            // Xposed framework
            "de.robv.android.xposed.installer",
            "org.lsposed.manager",
            // Self
            "com.pandasu.turbo",
            "com.pandasu.turbo.lspoed"
        )
        hiddenPackages.addAll(defaults)
    }

    private fun loadConfig() {
        // Try reading config via root shell (works in system_server)
        val config = readConfigViaShell()
        if (config != null) {
            parseConfig(config)
            logI("Config loaded via shell: ${hiddenPackages.size} hidden packages")
            return
        }

        // Fallback: try direct file read
        for (path in listOf(CONFIG_PATH, CONFIG_PATH_ALT)) {
            try {
                val file = File(path)
                if (file.exists()) {
                    val content = file.readText()
                    parseConfig(content)
                    logI("Config loaded from $path: ${hiddenPackages.size} hidden packages")
                    return
                }
            } catch (_: Throwable) {}
        }

        logI("No config file found, using defaults: ${hiddenPackages.size} hidden packages")
    }

    /**
     * Read config via `cat` shell command — bypasses SELinux restrictions
     * because the shell domain (u:r:shell:s0) can read /data/local/tmp
     */
    private fun readConfigViaShell(): String? {
        for (path in listOf(CONFIG_PATH, CONFIG_PATH_ALT)) {
            try {
                val process = Runtime.getRuntime().exec(arrayOf("cat", path))
                val reader = BufferedReader(InputStreamReader(process.inputStream))
                val content = reader.readText()
                reader.close()
                process.waitFor()
                if (content.isNotEmpty()) return content
            } catch (_: Throwable) {}
        }
        return null
    }

    private fun parseConfig(content: String) {
        try {
            val json = JSONObject(content)
            // New format: enabledPackages array
            val packages = json.optJSONArray("enabledPackages")
            if (packages != null) {
                for (i in 0 until packages.length()) {
                    val pkg = packages.getJSONObject(i).optString("packageName", "")
                    if (pkg.isNotEmpty()) hiddenPackages.add(pkg)
                }
            }
            // Also support simple format: hiddenPackages string array
            val simpleList = json.optJSONArray("hiddenPackages")
            if (simpleList != null) {
                for (i in 0 until simpleList.length()) {
                    val pkg = simpleList.optString(i)
                    if (pkg.isNotEmpty()) hiddenPackages.add(pkg)
                }
            }
        } catch (_: Throwable) {}
    }

    fun reloadConfig() {
        hiddenPackages.clear()
        reloadDefaults()
        loadConfig()
    }

    /**
     * Core hiding logic — hide target from ALL callers
     */
    fun shouldHide(caller: String, target: String): Boolean {
        return hiddenPackages.contains(target)
    }

    /**
     * Overload: hide by target package name only
     */
    fun shouldHide(target: String): Boolean {
        return hiddenPackages.contains(target)
    }

    fun getHiddenPackages(): Set<String> = hiddenPackages.toSet()
    fun setDetailLog(enabled: Boolean) { detailLog = enabled }
    fun isDetailLogEnabled(): Boolean = detailLog

    // Keep for backward compat with PmsHookTarget36
    fun startHook() {
        loadConfigForSystem()
    }

    private fun logI(msg: String) {
        try { XposedBridge.log("[TurboX] [INF] $msg") } catch (_: Throwable) { Log.i("TurboX", msg) }
    }
}
