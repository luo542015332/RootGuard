package com.pandasu.turbo.lspoed.hook

import android.util.Log
import com.pandasu.turbo.lspoed.TurboService
import com.pandasu.turbo.lspoed.XR

/**
 * PlatformCompat hook - bypasses compatibility change checks.
 * Hooks PlatformCompat.isChangeEnabled(changeId).
 */
class PlatformCompatHook(private val service: TurboService) : IFrameworkHook {
    companion object {
        private const val TAG = "Turbo-PlatformCompat"
        // changeId 0x89450c5 is commonly used for compat checking
        private const val BYPASS_CHANGE_ID = 0x89450c5.toLong()
    }

    private var hook: Any? = null

    override fun load() {
        try {
            val compatClass = XR.findClass("android.compat.Compatibility")
            val isChangeEnabled = compatClass.getDeclaredMethod("isChangeEnabled", Long::class.java)
            isChangeEnabled.isAccessible = true

            hook = XR.hookMethod(isChangeEnabled,
                before = { param ->
                    val changeId = XR.paramGetArg(param, 0) as? Long ?: return@hookMethod false
                    if (changeId == BYPASS_CHANGE_ID) {
                        XR.paramSetResult(param, true)
                        Log.d(TAG, "Bypassing change $changeId")
                    }
                    false
                },
                after = null
            )
            XR.log("[Turbo] PlatformCompatHook loaded")
        } catch (e: Throwable) {
            XR.logE("PlatformCompatHook failed: ${e.message}", e)
        }
    }

    override fun unload() {
        hook?.let { XR.unhook(it) }
        hook = null
    }
}
