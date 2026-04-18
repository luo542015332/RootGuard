package com.pandasu.turbo.lspoed.hook

import android.util.Log
import com.pandasu.turbo.lspoed.TurboService
import com.pandasu.turbo.lspoed.XR

/**
 * XposedBridge hook - hides Xposed module list from app-level detectors.
 * Hooks XposedBridge.getModules() to return empty list when called from detectors.
 */
class XposedBridgeHook(private val service: TurboService) : IFrameworkHook {
    companion object {
        private const val TAG = "Turbo-XposedBridgeHook"
    }

    private val unhooks = mutableListOf<Any>()

    override fun load() {
        try {
            val bridgeClass = XR.XposedBridge
            val getModules = bridgeClass.getDeclaredMethod("getModules")
            getModules.isAccessible = true

            val unhook = XR.hookMethod(getModules,
                before = null,
                after = { param ->
                    if (isDetectorCalling()) {
                        Log.d(TAG, "Detector calling, filtering modules")
                        XR.paramSetResult(param, emptyMap<String, Any>())
                    }
                }
            )
            if (unhook != null) unhooks.add(unhook)
            XR.log("[Turbo] XposedBridgeHook loaded")
        } catch (e: Throwable) {
            XR.logE("XposedBridgeHook failed: ${e.message}", e)
        }
    }

    override fun unload() {
        unhooks.forEach { XR.unhook(it) }
        unhooks.clear()
        Log.i(TAG, "XposedBridgeHook unloaded")
    }

    private fun isDetectorCalling(): Boolean {
        return Thread.currentThread().stackTrace.any { el ->
            val name = el.className.lowercase()
            name.contains("applistdetector") ||
            name.contains("hunter") ||
            name.contains("apecheck") ||
            name.contains("rootbeer") ||
            name.contains("safetynettest")
        }
    }
}
