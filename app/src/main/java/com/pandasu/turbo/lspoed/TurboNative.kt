package com.pandasu.turbo.lspoed

import android.util.Log

@Deprecated("Native lib not available")
object TurboNative {
    init { Log.d("TurboNative", "Native library not loaded") }
    @JvmStatic fun init(): Int = 0
    @JvmStatic fun setTargetPackages(packages: Array<String>) {}
    @JvmStatic fun processPackage(packageName: String): Int = -1
    @JvmStatic fun isPackageTarget(packageName: String): Boolean = false
    @JvmStatic fun commitHooks(): Boolean = false
    @JvmStatic fun unload() {}
    @JvmStatic fun isolatePackage(packageName: String): Boolean = false
}
