package com.pandasu.turbo.lspoed.hook

import android.util.Log
import com.pandasu.turbo.lspoed.TurboService
import com.pandasu.turbo.lspoed.XR

/**
 * SafetyNet hook - intercepts SystemProperties.get to hide root indicators.
 * Hooks android.os.SystemProperties.get(String) and get(String, String).
 */
class SafetyNetHook(private val service: TurboService) : IFrameworkHook {
    companion object {
        private const val TAG = "Turbo-SafetyNetHook"
        private val SPOOFED = mapOf(
            "ro.debuggable" to "0",
            "ro.secure" to "1",
            "ro.build.tags" to "release-keys",
            "ro.build.type" to "user",
            "persist.sys.dalvik.vm.lib.2" to "libart.so",
            "ro.boot.verifiedbootstate" to "green",
            "ro.boot.vbmeta.device_state" to "locked"
        )
    }

    private val hooks = mutableListOf<Any>()

    override fun load() {
        try {
            XR.log("[Turbo] Loading SafetyNetHook...")
            val spClass = XR.findClass("android.os.SystemProperties")

            // Hook get(String)
            XR.hookMethod(spClass, "get", arrayOf(String::class.java),
                before = { param ->
                    val key = XR.paramGetArg(param, 0) as? String ?: return@hookMethod false
                    val spoofed = spoofProperty(key)
                    if (spoofed != null) {
                        XR.paramSetResult(param, spoofed)
                        Log.d(TAG, "Spoofed $key -> $spoofed")
                    }
                    false
                },
                after = null
            )?.let { hooks.add(it) }

            // Hook get(String, String)
            XR.hookMethod(spClass, "get", arrayOf(String::class.java, String::class.java),
                before = { param ->
                    val key = XR.paramGetArg(param, 0) as? String ?: return@hookMethod false
                    val default = XR.paramGetArg(param, 1) as? String
                    val spoofed = spoofProperty(key, default)
                    if (spoofed != null) {
                        XR.paramSetResult(param, spoofed)
                    }
                    false
                },
                after = null
            )?.let { hooks.add(it) }

            XR.log("[Turbo] SafetyNetHook loaded")
        } catch (e: Throwable) {
            XR.logE("SafetyNetHook failed: ${e.message}", e)
        }
    }

    private fun spoofProperty(key: String, default: String? = null): String? {
        SPOOFED[key]?.let { return it }
        if (key == "ro.build.flavor") {
            return default?.replace("test-keys", "release-keys")?.replace("eng.", "user.")?.replace("userdebug", "user") ?: "user"
        }
        if (default?.contains("test-keys") == true) {
            return default.replace("test-keys", "release-keys")
        }
        return null
    }

    override fun unload() {
        hooks.forEach { XR.unhook(it) }
        hooks.clear()
    }
}
