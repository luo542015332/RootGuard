package com.pandasu.turbo.lspoed

import android.os.IBinder
import android.util.Log
import de.robv.android.xposed.XposedBridge
import org.json.JSONArray
import org.json.JSONObject
import java.io.BufferedReader
import java.io.File
import java.io.InputStreamReader
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.CopyOnWriteArrayList

/**
 * Hidden Module Assistant Service - Full implementation from smali3
 * 
 * Features:
 * - Dynamic config reload from /data/user/0/com.pandasu.turbo/cache/config.dat
 * - Per-package isolation and custom property support
 * - Detector app whitelist (detectors can see all packages)
 * - System property spoofing via setprop
 */
class HMAService private constructor() {

    companion object {
        private const val TAG = "PandaSU-HMAService"
        private const val CONFIG_PATH = "/data/user/0/com.pandasu.turbo/cache/config.dat"
        
        @Volatile
        private var instance: HMAService? = null
        
        fun getInstance(): HMAService {
            return instance ?: synchronized(this) {
                instance ?: HMAService().also { instance = it }
            }
        }
    }

    // Hidden packages set
    private val hiddenPackages = ConcurrentHashMap.newKeySet<String>()
    
    // Detector apps (these apps can see all packages, used for detection tools)
    private val detectorApps = CopyOnWriteArrayList<String>()
    
    // Package-specific configs: packageName -> PackageConfig
    private val packageConfigs = ConcurrentHashMap<String, PackageConfig>()
    
    // Detail logging flag
    private var detailLog = false
    
    // Config loaded flag
    private var configLoaded = false

    data class PackageConfig(
        val packageName: String,
        val isolateStorage: Boolean = false,
        val customProps: Map<String, String> = emptyMap()
    )

    init {
        reloadDefaults()
    }

    /**
     * Load default hidden packages and detector apps
     */
    private fun reloadDefaults() {
        hiddenPackages.clear()
        detectorApps.clear()
        
        // Default hidden packages - root tools
        val defaultHidden = listOf(
            "com.topjohnwu.magisk",
            "io.github.vvb2060.magisk",
            "me.weishu.kernelsu",
            "me.weishu.freereflection",
            "me.bmax.apatch",
            "com.airemote.universalroot",
            "com.koushikdutta.rommanager",
            "com.koushikdutta.rommanager.license",
            "com.dimonvideo.luckypatcher",
            "com.chelpus.lackypatch",
            "com.ramdroid.appquarantine",
            "com.ramdroid.appquarantinepro",
            "com.android.vending.billing.InAppBillingService.COIN",
            "com.android.vending.billing.InAppBillingService.LUCK",
            "com.chelpus.luckypatcher",
            "com.blackmartalpha",
            "org.blackmart.market",
            "com.allinone.free",
            "com.repodroid.app",
            "org.creeplays.hack",
            "com.baseappfull.fwd",
            "com.zmapp",
            "com.dv.marketmod.installer",
            "org.mobilism.android",
            "com.android.wp.net.log",
            "com.android.camera.update",
            "cc.madkite.freedom",
            "com.solohsu.android.edxp.manager",
            "org.meowcat.edxposed.manager",
            "com.xposed.manager",
            "com.google.android.gms",
            "com.google.android.gms.unstable",
            "com.tsng.hidemyapplist",
            "com.scottyab.rootbeer.sample",
            "com.joeykrim.rootcheck",
            "com.amphoras.hidemyroothelper",
            "de.robv.android.xposed.installer",
            "org.lsposed.manager",
            "com.pandasu.turbo"
        )
        hiddenPackages.addAll(defaultHidden)
        
        // Default detector apps - these can see all packages
        val defaultDetectors = listOf(
            "de.robv.android.xposed.installer",
            "org.lsposed.manager",
            "com.tsng.hidemyapplist",
            "com.scottyab.rootbeer.sample",
            "com.joeykrim.rootcheck",
            "com.amphoras.hidemyroothelper",
            "com.koushikdutta.superuser",
            "com.thirdparty.superuser",
            "com.yellowes.su",
            "com.koushikdutta.rommanager",
            "com.koushikdutta.rommanager.license",
            "com.dimonvideo.luckypatcher",
            "com.chelpus.lackypatch",
            "com.ramdroid.appquarantine",
            "com.ramdroid.appquarantinepro",
            "com.android.vending.billing.InAppBillingService.COIN",
            "com.android.vending.billing.InAppBillingService.LUCK",
            "com.chelpus.luckypatcher",
            "com.blackmartalpha",
            "org.blackmart.market",
            "com.allinone.free",
            "com.repodroid.app",
            "org.creeplays.hack",
            "com.baseappfull.fwd",
            "com.zmapp",
            "com.dv.marketmod.installer",
            "org.mobilism.android",
            "com.android.wp.net.log",
            "com.android.camera.update",
            "cc.madkite.freedom",
            "com.solohsu.android.edxp.manager",
            "org.meowcat.edxposed.manager",
            "com.xposed.manager"
        )
        detectorApps.addAll(defaultDetectors)
        
        logI("Loaded defaults: ${hiddenPackages.size} hidden, ${detectorApps.size} detectors")
    }

    /**
     * Load config for system_server context
     */
    fun loadConfigForSystem() {
        if (configLoaded) return
        reloadConfig()
        configLoaded = true
    }

    /**
     * Reload config from file - supports hot reload
     */
    fun reloadConfig() {
        hiddenPackages.clear()
        detectorApps.clear()
        packageConfigs.clear()
        reloadDefaults()
        
        val config = readConfigViaShell() ?: readConfigDirect()
        if (config != null) {
            parseConfig(config)
            logI("Config reloaded: ${hiddenPackages.size} hidden, ${detectorApps.size} detectors")
        } else {
            logI("No config found, using defaults")
        }
    }

    /**
     * Read config via shell cat command (bypasses SELinux in system_server)
     */
    private fun readConfigViaShell(): String? {
        return try {
            val process = Runtime.getRuntime().exec(arrayOf("cat", CONFIG_PATH))
            val reader = BufferedReader(InputStreamReader(process.inputStream))
            val content = reader.use { it.readText() }
            process.waitFor()
            if (content.isNotEmpty()) content else null
        } catch (e: Throwable) {
            logD("Shell read failed: ${e.message}")
            null
        }
    }

    /**
     * Read config directly from file
     */
    private fun readConfigDirect(): String? {
        return try {
            val file = File(CONFIG_PATH)
            if (file.exists()) file.readText() else null
        } catch (e: Throwable) {
            logD("Direct read failed: ${e.message}")
            null
        }
    }

    /**
     * Parse config JSON
     * Format: {"enabledPackages": [{"packageName": "...", "isolateStorage": true, "customProps": {...}}], ...}
     */
    private fun parseConfig(content: String) {
        try {
            val json = JSONObject(content)
            
            // Parse enabledPackages array with full config
            val packages = json.optJSONArray("enabledPackages")
            if (packages != null) {
                for (i in 0 until packages.length()) {
                    val pkgObj = packages.getJSONObject(i)
                    val pkgName = pkgObj.optString("packageName", "")
                    if (pkgName.isNotEmpty()) {
                        hiddenPackages.add(pkgName)
                        parsePackageConfig(pkgObj)
                    }
                }
            }
            
            // Parse simple hiddenPackages array (backward compat)
            val simpleList = json.optJSONArray("hiddenPackages")
            if (simpleList != null) {
                for (i in 0 until simpleList.length()) {
                    val pkg = simpleList.optString(i)
                    if (pkg.isNotEmpty()) hiddenPackages.add(pkg)
                }
            }
            
            // Parse detector apps
            val detectors = json.optJSONArray("detectorApps")
            if (detectors != null) {
                for (i in 0 until detectors.length()) {
                    val app = detectors.optString(i)
                    if (app.isNotEmpty() && !detectorApps.contains(app)) {
                        detectorApps.add(app)
                    }
                }
            }
            
            // Parse detail log flag
            detailLog = json.optBoolean("detailLog", false)
            
        } catch (e: Throwable) {
            logE("Config parse error", e)
        }
    }

    /**
     * Parse per-package config
     */
    private fun parsePackageConfig(pkgObj: JSONObject) {
        try {
            val pkgName = pkgObj.optString("packageName", "") 
            if (pkgName.isEmpty()) return
            
            val isolateStorage = pkgObj.optBoolean("isolateStorage", false)
            
            val customProps = mutableMapOf<String, String>()
            val propsObj = pkgObj.optJSONObject("customProps")
            if (propsObj != null) {
                propsObj.keys().forEach { key ->
                    customProps[key] = propsObj.optString(key, "")
                }
            }
            
            if (isolateStorage || customProps.isNotEmpty()) {
                packageConfigs[pkgName] = PackageConfig(pkgName, isolateStorage, customProps)
                logD("Package config: $pkgName isolate=$isolateStorage props=${customProps.size}")
            }
        } catch (e: Throwable) {
            logE("Parse package config error", e)
        }
    }

    /**
     * Core hiding logic
     * Returns true if target should be hidden from caller
     */
    fun shouldHide(caller: String, target: String): Boolean {
        // Detector apps can see all packages
        if (detectorApps.contains(caller)) {
            return false
        }
        
        // Check if target is in hidden list
        return hiddenPackages.contains(target)
    }

    /**
     * Simplified shouldHide - check by target only
     */
    fun shouldHide(target: String): Boolean {
        return hiddenPackages.contains(target)
    }

    /**
     * Check if caller is a detector app
     */
    fun isDetectorApp(caller: String): Boolean {
        return detectorApps.contains(caller)
    }

    /**
     * Get package config for isolation/property spoofing
     */
    fun getPackageConfig(packageName: String): PackageConfig? {
        return packageConfigs[packageName]
    }

    /**
     * Apply custom system properties for a package
     */
    fun applyCustomProps(packageName: String, props: Map<String, String>) {
        for ((key, value) in props) {
            applySetProp(key, value)
        }
        logI("Applied ${props.size} custom props for $packageName")
    }

    /**
     * Execute setprop command
     */
    private fun applySetProp(key: String, value: String) {
        try {
            Runtime.getRuntime().exec(arrayOf("setprop", key, value))
            logD("setprop $key=$value")
        } catch (e: Throwable) {
            logE("setprop failed: $key", e)
        }
    }

    /**
     * Apply Magisk Hide (disabled on APatch)
     */
    fun applyMagiskHide(packageName: String) {
        // Magisk Hide is not supported on APatch/KernelSU
        // This is a placeholder for compatibility
        logD("MagiskHide skipped for $packageName (not supported on APatch)")
    }

    /**
     * Check if storage isolation should be applied
     */
    fun shouldIsolateStorage(packageName: String): Boolean {
        return packageConfigs[packageName]?.isolateStorage ?: false
    }

    fun getHiddenPackages(): Set<String> = hiddenPackages.toSet()
    fun getDetectorApps(): List<String> = detectorApps.toList()
    
    fun setDetailLog(enabled: Boolean) { 
        detailLog = enabled 
    }
    
    fun isDetailLogEnabled(): Boolean = detailLog

    // Backward compatibility
    fun startHook() {
        loadConfigForSystem()
    }

    // Logging helpers
    private fun logI(msg: String) {
        Log.i(TAG, msg)
        try { XposedBridge.log("[$TAG] $msg") } catch (_: Throwable) {}
    }

    private fun logD(msg: String) {
        if (detailLog) {
            Log.d(TAG, msg)
            try { XposedBridge.log("[$TAG] [DBG] $msg") } catch (_: Throwable) {}
        }
    }

    private fun logE(msg: String, t: Throwable? = null) {
        Log.e(TAG, msg, t)
        try { 
            XposedBridge.log("[$TAG] [ERR] $msg") 
            t?.let { XposedBridge.log(it.message ?: it.toString()) }
        } catch (_: Throwable) {}
    }
}
