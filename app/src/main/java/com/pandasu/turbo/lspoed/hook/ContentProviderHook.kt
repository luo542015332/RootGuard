package com.pandasu.turbo.lspoed.hook

import com.pandasu.turbo.lspoed.TurboService

/**
 * ContentProvider hook - placeholder for ContentProvider-based hiding
 * Original: only logs, no actual hook implementation
 */
class ContentProviderHook(private val service: TurboService) : IFrameworkHook {

    override fun load() {
        android.util.Log.i("Turbo-ContentProviderHook", "Loading ContentProvider hooks")
    }

    override fun unload() {
        // No hooks to unload
    }
}
