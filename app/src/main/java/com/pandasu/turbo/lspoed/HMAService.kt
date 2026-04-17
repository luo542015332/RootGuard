package com.pandasu.turbo.lspoed

import android.util.Log
import de.robv.android.xposed.XposedBridge
import org.json.JSONObject
import java.io.File
import java.util.concurrent.ConcurrentHashMap

object HMAService {

    private val hiddenPackages = ConcurrentHashMap.newKeySet<String>()
    private var detailLog = false
    private var hooksLoaded = false

    private const val CONFIG_PATH = "/data/user/0/com.pandasu.turbo/cache/config.dat"

    init {
        // 默认隐藏包
        reloadDefaults()
        loadConfig()
    }

    private fun reloadDefaults() {
        val defaults = listOf(
            // Root 工具
            "com.topjohnwu.magisk",
            "io.github.vvb2060.magisk",
            "me.weishu.kernelsu",
            "me.weishu.freereflection",
            // Xposed 框架
            "de.robv.android.xposed.installer",
            "org.lsposed.manager",
            // 自己
            "com.pandasu.turbo.lspoed"
        )
        hiddenPackages.addAll(defaults)
    }

    private fun loadConfig() {
        try {
            val file = File(CONFIG_PATH)
            if (!file.exists()) return
            val json = JSONObject(file.readText())
            val packages = json.optJSONArray("enabledPackages") ?: return
            for (i in 0 until packages.length()) {
                val pkg = packages.getJSONObject(i).optString("packageName", "")
                if (pkg.isNotEmpty()) hiddenPackages.add(pkg)
            }
            logI("Config loaded: ${hiddenPackages.size} hidden packages")
        } catch (t: Throwable) {
            logE("Config load failed", t)
        }
    }

    fun reloadConfig() {
        hiddenPackages.clear()
        reloadDefaults()
        loadConfig()
    }

    /**
     * 隐藏判断 — 对所有调用者生效
     * caller=查询方包名, target=被查的包名
     */
    fun shouldHide(caller: String, target: String): Boolean {
        return hiddenPackages.contains(target)
    }

    fun getHiddenPackages(): Set<String> = hiddenPackages.toSet()
    fun setDetailLog(enabled: Boolean) { detailLog = enabled }
    fun isDetailLogEnabled(): Boolean = detailLog

    fun startHook() {
        if (hooksLoaded) return
        hooksLoaded = true
        logI("Loading LSP hooks...")
        try {
            val hook = com.pandasu.turbo.lspoed.hook.PmsHookTarget36(this)
            hook.load()
            logI("PMS hooks loaded successfully")
        } catch (t: Throwable) {
            logE("PMS hook load failed", t)
        }
    }

    fun loadAdditionalHooks(classLoader: ClassLoader?) {
        // 配置变更时重载
        try {
            val file = File(CONFIG_PATH)
            if (file.exists()) {
                val lastModified = file.lastModified()
                if (System.currentTimeMillis() - lastModified < 5000) reloadConfig()
            }
        } catch (_: Throwable) {}
    }

    private fun logD(msg: String) {
        if (!detailLog) return
        try {
            XposedBridge.log("[TurboX] [DBG] $msg")
        } catch (_: Throwable) { Log.d("TurboX", msg) }
    }

    private fun logI(msg: String) {
        try {
            XposedBridge.log("[TurboX] [INF] $msg")
        } catch (_: Throwable) { Log.i("TurboX", msg) }
    }

    private fun logE(msg: String, t: Throwable) {
        try {
            XposedBridge.log("[TurboX] [ERR] $msg: ${t.message}")
        } catch (_: Throwable) { Log.e("TurboX", msg, t) }
    }
}
