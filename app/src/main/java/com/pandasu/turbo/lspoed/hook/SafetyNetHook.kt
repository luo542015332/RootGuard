package com.pandasu.turbo.lspoed.hook

import android.util.Log
import com.pandasu.turbo.lspoed.TurboService
import com.pandasu.turbo.lspoed.XR

class SafetyNetHook(private val service: TurboService) : IFrameworkHook {
    companion object {
        private const val TAG = "SafetyNet"
        private val SPOOFED = mapOf(
            "ro.debuggable" to "0",
            "ro.secure" to "1",
            "ro.build.tags" to "release-keys",
            "ro.build.type" to "user",
            "ro.boot.verifiedbootstate" to "green"
        )
    }
    private val hooks = mutableListOf<Any>()

    override fun load() {
        try {
            val spClass = XR.findClass("android.os.SystemProperties")
            XR.hookMethod(spClass, "get", arrayOf(String::class.java), before = { param ->
                val key = XR.paramGetArg(param, 0) as? String ?: return@hookMethod false
                SPOOFED[key]?.let { XR.paramSetResult(param, it); Log.d(TAG, "$key->$it") }
                false
            }, after = null)?.let { hooks.add(it) }
            XR.hookMethod(spClass, "get", arrayOf(String::class.java, String::class.java), before = { param ->
                val key = XR.paramGetArg(param, 0) as? String ?: return@hookMethod false
                SPOOFED[key]?.let { XR.paramSetResult(param, it) }
                false
            }, after = null)?.let { hooks.add(it) }
        } catch (e: Throwable) { XR.logE("$TAG: failed: ${e.message}", e) }
    }

    override fun unload() { hooks.forEach { XR.unhook(it) }; hooks.clear() }
}
