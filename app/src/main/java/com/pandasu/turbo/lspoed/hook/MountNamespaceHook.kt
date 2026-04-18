package com.pandasu.turbo.lspoed.hook

import android.util.Log
import com.pandasu.turbo.lspoed.TurboNative
import com.pandasu.turbo.lspoed.TurboService

/**
 * Mount Namespace Isolation Hook.
 * 
 * Uses native code (libturbo_nativeloader.so) to:
 * 1. Hook unshare() via PLT to catch process fork events
 * 2. Create a new mount namespace for target apps
 * 3. Umount sensitive paths (/data/adb, /sbin, etc.) in that namespace
 * 
 * This prevents detector apps from seeing root files through /proc/[pid]/mountinfo
 * or scanning /data/app/ via syscalls.
 */
class MountNamespaceHook(
    private val service: TurboService
) : IFrameworkHook {

    private val TAG = "MountNSHook"

    override fun load() {
        Log.i(TAG, "Loading mount namespace hook...")
    }

    /**
     * Called when a target app is about to start.
     * Invokes native code to set up mount namespace isolation.
     */
    fun onAppPreload(packageName: String) {
        if (!service.shouldUseMountNsIsolation(packageName)) {
            return
        }

        Log.i(TAG, "Applying mount NS isolation to: $packageName")

        try {
            val success = TurboNative.isolatePackage(packageName)
            if (success) {
                Log.i(TAG, "Mount NS isolation applied to: $packageName")
            } else {
                Log.w(TAG, "Mount NS isolation failed for: $packageName (non-zero exit)")
            }
        } catch (e: Throwable) {
            Log.e(TAG, "Mount NS isolation error for $packageName: ${e.message}")
        }
    }

    override fun unload() {
        Log.i(TAG, "Unloading mount namespace hook...")
        // Note: mount namespace isolation cannot be easily undone per-process.
        // The best we can do is stop processing new apps.
        try {
            TurboNative.unload()
        } catch (e: Throwable) {
            Log.e(TAG, "Native unload error: ${e.message}")
        }
    }
}
