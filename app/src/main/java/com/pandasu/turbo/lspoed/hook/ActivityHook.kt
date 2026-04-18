package com.pandasu.turbo.lspoed.hook

import com.pandasu.turbo.lspoed.TurboService

/**
 * Activity hook - placeholder for Activity-based hiding
 * Original: only logs, no actual hook implementation
 */
class ActivityHook(private val service: TurboService) : IFrameworkHook {

    override fun load() {
        android.util.Log.i("Turbo-ActivityHook", "Loading Activity hooks")
    }

    override fun unload() {
        // No hooks to unload
    }
}
