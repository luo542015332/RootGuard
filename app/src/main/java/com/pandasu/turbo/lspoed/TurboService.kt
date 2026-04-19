package com.pandasu.turbo.lspoed

import android.os.IBinder
import com.pandasu.turbo.lspoed.hook.*
import java.io.BufferedReader
import java.io.File
import java.io.InputStreamReader
import java.util.concurrent.ConcurrentHashMap

class TurboService private constructor() {
    companion object {
        private const val TAG = "TurboX"
        private const val CONFIG_PATH = "/data/user/0/com.pandasu.turbo/cache/config.dat"
        @Volatile private var instance: TurboService? = null
        fun getInstance(): TurboService = instance ?: synchronized(this) { instance ?: TurboService().also { instance = it } }
    }

    @Volatile var pms: Any? = null
    private val hiddenPackages = ConcurrentHashMap.newKeySet<String>()
    private val detectorApps = ConcurrentHashMap.newKeySet<String>()
    private val systemApps = ConcurrentHashMap.newKeySet<String>()
    private val frameworkHooks = mutableListOf<IFrameworkHook>()
    @Volatile var filterCount = 0

    fun initWithPms(binder: IBinder, classLoader: ClassLoader) {
        try {
            val stubClass = Class.forName("android.content.pm.IPackageManager\$Stub")
            pms = stubClass.getDeclaredMethod("asInterface", IBinder::class.java).invoke(null, binder)
            XR.log("$TAG: PMS proxy obtained")
        } catch (e: Throwable) { XR.logE("$TAG: PMS proxy failed: ${e.message}", e) }
        loadSystemApps()
        loadConfig()
        installHooks()
        XR.log("$TAG: initialized (${hiddenPackages.size} hidden)")
    }

    private fun loadSystemApps() {
        val p = pms ?: return
        try {
            val m = p.javaClass.getMethod("getInstalledApplications", Long::class.javaPrimitiveType, Int::class.javaPrimitiveType)
            val list = Utils.binderLocalScope { m.invoke(p, 0L, 0) as? List<*> } ?: return
            systemApps.clear()
            for (app in list) {
                try {
                    val flags = app!!.javaClass.getField("flags").getInt(app)
                    if ((flags and 0x1) != 0) {
                        app.javaClass.getField("packageName").get(app)?.toString()?.let { systemApps.add(it) }
                    }
                } catch (_: Throwable) {}
            }
        } catch (e: Throwable) { XR.logE("$TAG: loadSystemApps: ${e.message}", e) }
    }

    private fun loadConfig() {
        reloadDefaults()
        (readConfigViaShell() ?: readConfigDirect())?.let { parseConfig(it) }
    }

    private fun reloadDefaults() {
        hiddenPackages.clear()
        detectorApps.clear()
        listOf("com.topjohnwu.magisk", "me.bmax.apatch", "org.lsposed.manager", "com.pandasu.turbo").forEach { hiddenPackages.add(it) }
        listOf("icu.nullptr.applistdetector", "com.zhenxi.hunter", "com.scottyab.rootbeer.sample").forEach { detectorApps.add(it) }
    }

    private fun readConfigViaShell(): String? = try {
        val p = Runtime.getRuntime().exec(arrayOf("cat", CONFIG_PATH))
        val txt = p.inputStream.bufferedReader().use { it.readText() }
        p.waitFor()
        if (txt.isNotEmpty()) txt else null
    } catch (_: Throwable) { null }

    private fun readConfigDirect(): String? = try { File(CONFIG_PATH).takeIf { it.exists() }?.readText() } catch (_: Throwable) { null }

    private fun parseConfig(content: String) {
        // Simple line-based: package names, one per line, # for comments
        content.lines().forEach { line ->
            val pkg = line.substringBefore("#").trim()
            if (pkg.isNotEmpty() && !pkg.startsWith("#")) hiddenPackages.add(pkg)
        }
    }

    fun shouldHide(caller: String?, target: String?): Boolean {
        if (caller == null || target == null) return false
        if (caller in Utils.packagesShouldNotHide || target in Utils.packagesShouldNotHide) return false
        if (caller == target) return false
        if (detectorApps.contains(caller)) return false
        return hiddenPackages.contains(target)
    }

    fun isHookEnabled(pkg: String) = true

    private fun installHooks() {
        frameworkHooks.add(PmsHookTarget36(this))
        frameworkHooks.add(PlatformCompatHook(this))
        frameworkHooks.add(SafetyNetHook(this))
        frameworkHooks.add(XposedBridgeHook(this))
        frameworkHooks.forEach { try { it.load() } catch (e: Throwable) { XR.logE("$TAG: hook failed: ${e.message}", e) } }
    }

    fun unload() { frameworkHooks.forEach { try { it.unload() } catch (_: Throwable) {} }; frameworkHooks.clear() }
}
