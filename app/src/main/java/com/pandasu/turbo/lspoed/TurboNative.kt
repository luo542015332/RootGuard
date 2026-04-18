package com.pandasu.turbo.lspoed

import android.util.Log

/**
 * JNI bridge for native mount namespace isolation.
 * Loads libturbo_nativeloader.so and provides Kotlin-callable APIs.
 */
object TurboNative {

    private const val TAG = "TurboNative"
    private const val LIB_NAME = "turbo_nativeloader"

    private var initialized = false

    init {
        try {
            System.loadLibrary(LIB_NAME)
            Log.i(TAG, "Loaded $LIB_NAME")
        } catch (e: Throwable) {
            Log.e(TAG, "Failed to load $LIB_NAME: ${e.message}")
        }
    }

    /**
     * Initialize native hook system.
     * Called once from XposedEntry.initZygote().
     */
    @JvmStatic
    external fun init(): Int

    /**
     * Set the list of packages that need mount namespace isolation.
     * Called when config is loaded or updated.
     * @param packages Array of package names
     */
    @JvmStatic
    external fun setTargetPackages(packages: Array<String>)

    /**
     * Process mount namespace for a specific package.
     * Called when a target app is about to start.
     * @param packageName The package to process
     * @return 0 on success, -1 on failure
     */
    @JvmStatic
    external fun processPackage(packageName: String): Int

    /**
     * Check if a package is in the target list (debug).
     */
    @JvmStatic
    external fun isPackageTarget(packageName: String): Boolean

    /**
     * Commit all PLT hooks. Must be called after all hook registrations.
     */
    @JvmStatic
    external fun commitHooks(): Boolean

    /**
     * Cleanup when module is unloaded.
     */
    @JvmStatic
    external fun unload()

    /**
     * Kotlin-friendly wrapper for processing a package.
     * @return true if successfully isolated
     */
    @JvmStatic
    fun isolatePackage(packageName: String): Boolean {
        return try {
            processPackage(packageName) == 0
        } catch (e: Throwable) {
            Log.e(TAG, "isolatePackage failed: ${e.message}")
            false
        }
    }
}
