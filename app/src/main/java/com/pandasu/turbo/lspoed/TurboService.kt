package com.pandasu.turbo.lspoed

import android.os.IBinder
import android.util.Log
import com.pandasu.turbo.lspoed.TurboNative
import com.pandasu.turbo.lspoed.hook.*
import com.pandasu.turbo.lspoed.XR
import org.json.JSONArray
import org.json.JSONObject
import java.io.BufferedReader
import java.io.File
import java.io.InputStreamReader
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.CopyOnWriteArrayList

/**
 * Turbo Service - app hiding & detection evasion - Core service for PandaTurbo LSP module
 * 
 * Features:
 * - Dynamic config reload from /data/user/0/com.pandasu.turbo/cache/config.dat
 * - Per-package isolation and custom property support
 * - Detector app whitelist (detectors can see all packages)
 * - System property spoofing via setprop
 */
class TurboService private constructor() {

    companion object {
        private const val TAG = "PandaTurbo"
        private const val CONFIG_PATH = "/data/user/0/com.pandasu.turbo/cache/config.dat"
        
        @Volatile
        private var instance: TurboService? = null
        
        fun getInstance(): TurboService {
            return instance ?: synchronized(this) {
                instance ?: TurboService().also { instance = it }
            }
        }
    }

    // Hidden packages set
    private val hiddenPackages = ConcurrentHashMap.newKeySet<String>()
    
    // Detector apps (these apps can see all packages, used for detection tools)
    private val detectorApps = CopyOnWriteArrayList<String>()
    
    // Mount NS isolation target packages (apps we protect from detector apps)
    // These are apps that run in a clean mount namespace where /data/adb etc. are hidden.
    private val mountNsTargets = ConcurrentHashMap.newKeySet<String>()

    // Package-specific configs: packageName -> PackageConfig
    private val packageConfigs = ConcurrentHashMap<String, PackageConfig>()
    
    // Detail logging flag
    private var detailLog = false
    
    // Config loaded flag
    private var configLoaded = false

    // System apps set - populated by loadSystemApps(), used to exclude from data isolation
    private val systemApps = ConcurrentHashMap.newKeySet<String>()

    // Loaded framework hooks for unload
    private val loadedHooks = mutableListOf<IFrameworkHook>()

    // Mount namespace isolation hook instance
    private var mountNsHook: MountNamespaceHook? = null

    data class PackageConfig(
        val packageName: String,
        val isolateStorage: Boolean = false,
        val customProps: Map<String, String> = emptyMap()
    )

    init {
        reloadDefaults()
    }

    /**
     * Load system app package names via PMS reflection.
     * Called from XposedEntry after PMS object is available.
     * Populates systemApps set for AppDataIsolationHook to exclude system apps.
     */
    fun loadSystemApps(pms: Any?) {
        if (pms == null) {
            logI("PMS is null, cannot load system apps")
            return
        }
        try {
            val pmsClass = pms.javaClass
            val getInstalledAppsMethod = pmsClass.getDeclaredMethod(
                "getInstalledApplications", Int::class.javaPrimitiveType, Int::class.javaPrimitiveType
            )
            getInstalledAppsMethod.isAccessible = true
            @Suppress("UNCHECKED_CAST")
            val apps = getInstalledAppsMethod.invoke(pms, 0, 0) as? List<Any> ?: emptyList()

            val FLAG_SYSTEM = 0x1
            systemApps.clear()
            apps.forEach { appInfo ->
                try {
                    val flagsField = appInfo.javaClass.getField("flags")
                    val flags = flagsField.getInt(appInfo)
                    if ((flags and FLAG_SYSTEM) != 0) {
                        val pkgField = appInfo.javaClass.getField("packageName")
                        val pkgName = pkgField.get(appInfo) as? String
                        if (pkgName != null) {
                            systemApps.add(pkgName)
                        }
                    }
                } catch (_: Throwable) {}
            }
            logI("Loaded ${systemApps.size} system apps")
        } catch (e: Throwable) {
            logE("Failed to load system apps", e)
        }
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
            // LSP/Xposed detectors
            "de.robv.android.xposed.installer",
            "org.lsposed.manager",
            "com.tsng.hidemyapplist",
            "com.solohsu.android.edxp.manager",
            "org.meowcat.edxposed.manager",
            "com.xposed.manager",
            // App list detectors (critical)
            "icu.nullptr.applistdetector",
            "com.zhenxi.hunter",
            "com.oaseng.apecheck",
            "io.github.nitsuya.donottryaccessibility",
            // Root detectors
            "com.scottyab.rootbeer.sample",
            "com.joeykrim.rootcheck",
            "com.amphoras.hidemyroothelper",
            "com.izzysoft.androidquake",
            // Su/root managers
            "com.koushikdutta.superuser",
            "com.thirdparty.superuser",
            "com.yellowes.su",
            // ROM/mod tools
            "com.koushikdutta.rommanager",
            "com.koushikdutta.rommanager.license",
            "com.dimonvideo.luckypatcher",
            "com.chelpus.lackypatch",
            "com.chelpus.luckypatcher",
            "com.ramdroid.appquarantine",
            "com.ramdroid.appquarantinepro",
            // Billing/Market mods
            "com.android.vending.billing.InAppBillingService.COIN",
            "com.android.vending.billing.InAppBillingService.LUCK",
            "com.blackmartalpha",
            "org.blackmart.market",
            "com.allinone.free",
            "com.repodroid.app",
            "org.creeplays.hack",
            "com.baseappfull.fwd",
            "com.zmapp",
            "com.dv.marketmod.installer",
            "org.mobilism.android",
            // Suspicious system apps
            "com.android.wp.net.log",
            "com.android.camera.update",
            "cc.madkite.freedom",
            // Terminal / Dev tools
            "com.termux",
            "org.fdroid.fdroid",
            // Riru/Xposed variants
            "com.singularsys.riru_easypay",
            "com.singularsys.xposed",
            "com.miui.systemuihook"
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
    fun getPackageConfigs(): Map<String, PackageConfig> = packageConfigs.toMap()
    
    fun setDetailLog(enabled: Boolean) { 
        detailLog = enabled 
    }
    
    fun isDetailLogEnabled(): Boolean = detailLog

    /**
     * Check if app is excluded from data isolation
     * System apps (loaded via loadSystemApps) are excluded unless explicitly configured
     */
    fun isAppDataIsolationExcluded(packageName: String): Boolean {
        return systemApps.contains(packageName) && !packageConfigs.containsKey(packageName)
    }

    /**
     * Check if a package is a system app
     */
    fun isSystemApp(packageName: String): Boolean {
        return systemApps.contains(packageName)
    }

    /**
     * Check if storage isolation should be applied by UID
     */
    fun shouldIsolateStorageByUid(uid: Int): Boolean {
        // This is a simplified check - in practice would need PMS to resolve UID->packageName
        return false
    }

    // ============================================================
    // Mount Namespace Isolation API
    // ============================================================

    /**
     * Check if an app needs mount namespace isolation.
     * Apps that need protection from detector apps get a clean mount namespace.
     * 
     * Currently: all hidden packages that are NOT detector apps.
     * User can extend this via config.dat (mountNsTargets array).
     */
    fun shouldUseMountNsIsolation(packageName: String): Boolean {
        // Detector apps themselves don't need isolation
        if (detectorApps.contains(packageName)) return false
        
        // User-configured targets
        if (mountNsTargets.contains(packageName)) return true
        
        // By default: hide packages that are being hidden (non-detector)
        return hiddenPackages.contains(packageName)
    }

    /**
     * Add a package to the mount NS isolation target list.
     * Call this to protect an app from seeing root files via /proc mounts.
     */
    fun addMountNsTarget(packageName: String) {
        mountNsTargets.add(packageName)
        // Sync to native layer
        try {
            TurboNative.setTargetPackages(mountNsTargets.toTypedArray())
        } catch (e: Throwable) {
            logD("Failed to sync mountNsTargets to native: ${e.message}")
        }
    }

    /**
     * Check if a package needs mount NS isolation.
     */
    fun isMountNsTarget(packageName: String): Boolean {
        return mountNsTargets.contains(packageName) || 
               (hiddenPackages.contains(packageName) && !detectorApps.contains(packageName))
    }

    /**
     * Get all packages that need mount NS isolation.
     */
    fun getMountNsTargets(): Set<String> = mountNsTargets.toSet()

    // PMS hooks that need explicit lifecycle management
    private var pmsHook: PmsHookTarget36? = null
    private var pmsQueryHook: PmsQueryHook? = null

    /**
     * Load all additional framework hooks
     * Called from XposedEntry after PMS object is available in system_server
     */
    fun loadAdditionalHooks(classLoader: ClassLoader) {
        val hooks = mutableListOf<IFrameworkHook>()

        // === CORE PMS HOOKS (must be first) ===
        try {
            pmsHook = PmsHookTarget36(this)
            pmsHook!!.load()
            logI("PmsHookTarget36 loaded")
        } catch (e: Throwable) {
            logE("Failed to create PmsHookTarget36", e)
        }

        try {
            pmsQueryHook = PmsQueryHook(this)
            pmsQueryHook!!.hookPmsInternal(classLoader)
            logI("PmsQueryHook loaded")
        } catch (e: Throwable) {
            logE("Failed to create PmsQueryHook", e)
        }

        // === ADDITIONAL FRAMEWORK HOOKS ===
        try {
            hooks.add(ActivityHook(this))
            logI("ActivityHook registered")
        } catch (e: Throwable) {
            logE("Failed to create ActivityHook", e)
        }

        try {
            hooks.add(ContentProviderHook(this))
            logI("ContentProviderHook registered")
        } catch (e: Throwable) {
            logE("Failed to create ContentProviderHook", e)
        }

        try {
            hooks.add(ZygoteHook(this))
            logI("ZygoteHook registered")
        } catch (e: Throwable) {
            logE("Failed to create ZygoteHook", e)
        }

        try {
            val isolationHook = AppDataIsolationHook(this)
            hooks.add(isolationHook)
            logI("AppDataIsolationHook registered")
        } catch (e: Throwable) {
            logE("Failed to create AppDataIsolationHook", e)
        }

        try {
            hooks.add(PlatformCompatHook(this))
            logI("PlatformCompatHook registered")
        } catch (e: Throwable) {
            logE("Failed to create PlatformCompatHook", e)
        }

        try {
            hooks.add(SafetyNetHook(this))
            logI("SafetyNetHook registered")
        } catch (e: Throwable) {
            logE("Failed to create SafetyNetHook", e)
        }

        try {
            hooks.add(com.pandasu.turbo.lspoed.hook.XposedBridgeHook(this))
            logI("XposedBridgeHook registered")
        } catch (e: Throwable) {
            logE("Failed to create XposedBridgeHook", e)
        }

        // Mount Namespace Isolation hook (native)
        try {
            mountNsHook = MountNamespaceHook(this)
            hooks.add(mountNsHook!!)
            logI("MountNamespaceHook registered")
        } catch (e: Throwable) {
            logE("Failed to create MountNamespaceHook", e)
        }

        // Load all additional hooks
        hooks.forEach { hook ->
            try {
                hook.load()
            } catch (e: Throwable) {
                logE("Failed to load hook: ${hook.javaClass.simpleName}", e)
            }
        }

        // Store for unload
        loadedHooks.addAll(hooks)
        logI("All hooks loaded (${loadedHooks.size} additional + PMS hooks)")
    }

    // LSPosed handleLoadPackage entry
    fun load(param: Any, classLoader: ClassLoader) {
        // param can be XC_LoadPackage.LoadPackageParam or any object with packageName field
        val pkgName = when (param) {
            is de.robv.android.xposed.callbacks.XC_LoadPackage.LoadPackageParam -> param.packageName
            else -> try { XR.getPackageName(param) } catch (_: Throwable) { "" }
        }
        XR.log("[Turbo] load() called for: $pkgName")

        // Only do heavy initialization in system_server (android process)
        if (pkgName != "android") {
            logD("Skipping non-system process: $pkgName")
            return
        }

        loadConfigForSystem()

        // Get PMS via ServiceManager reflection
        val pms = getPMSInstance()
        loadSystemApps(pms)

        loadAdditionalHooks(classLoader)

        try {
            TurboNative.setTargetPackages(mountNsTargets.toTypedArray())
        } catch (e: Throwable) {
            logD("Native sync failed: ${e.message}")
        }

        logI("TurboService fully initialized for system_server")
    }

    /**
     * Get PMS instance via ServiceManager reflection
     */
    private fun getPMSInstance(): Any? {
        return try {
            val smClass = Class.forName("android.os.ServiceManager")
            val getService = smClass.getDeclaredMethod("getService", String::class.java)
            val binder = getService.invoke(null, "package") as? android.os.IBinder ?: return null

            // IPackageManager.Stub.asInterface(binder)
            val stubClass = Class.forName("android.content.pm.IPackageManager")
            val asInterface = stubClass.getDeclaredMethod("asInterface", android.os.IBinder::class.java)
            asInterface.invoke(null, binder)
        } catch (e: Throwable) {
            logE("Failed to get PMS instance: ${e.message}", e)
            null
        }
    }

    // Legacy entry point
    fun startHook() {
        loadConfigForSystem()
    }

    /**
     * Unload all hooks - called when module is being disabled
     */
    fun unload() {
        // Unload PMS hooks first
        try { pmsHook?.unload() } catch (_: Throwable) {}
        try { pmsQueryHook?.let { /* PmsQueryHook has no explicit unload */ } } catch (_: Throwable) {}
        pmsHook = null
        pmsQueryHook = null

        // Unload framework hooks
        loadedHooks.forEach { hook ->
            try {
                hook.unload()
            } catch (e: Throwable) {
                logE("Failed to unload hook: ${hook.javaClass.simpleName}", e)
            }
        }
        loadedHooks.clear()
        logI("All hooks unloaded")
    }

    // Logging helpers
    private fun logI(msg: String) {
        Log.i(TAG, msg)
        try { XR.log("[$TAG] $msg") } catch (_: Throwable) {}
    }

    private fun logD(msg: String) {
        if (detailLog) {
            Log.d(TAG, msg)
            try { XR.log("[$TAG] [DBG] $msg") } catch (_: Throwable) {}
        }
    }

    private fun logE(msg: String, t: Throwable? = null) {
        Log.e(TAG, msg, t)
        try { 
            XR.log("[$TAG] [ERR] $msg") 
            t?.let { XR.log(it.message ?: it.toString()) }
        } catch (_: Throwable) {}
    }
}
