package com.pandasu.turbo.lspoed.hook

import com.pandasu.turbo.lspoed.TurboService
import com.pandasu.turbo.lspoed.XR

class XposedBridgeHook(private val service: TurboService) : IFrameworkHook {
    private val unhooks = mutableListOf<Any>()
    override fun load() {
        try {
            val getModules = XR.XposedBridge.getDeclaredMethod("getModules")
            getModules.isAccessible = true
            XR.hookMethod(getModules, before = null, after = { param ->
                if (Thread.currentThread().stackTrace.any { it.className.lowercase().contains("detector") }) {
                    XR.paramSetResult(param, emptyMap<String, Any>())
                }
            })?.let { unhooks.add(it) }
        } catch (e: Throwable) { XR.logE("XposedBridgeHook: ${e.message}", e) }
    }
    override fun unload() { unhooks.forEach { XR.unhook(it) }; unhooks.clear() }
}
