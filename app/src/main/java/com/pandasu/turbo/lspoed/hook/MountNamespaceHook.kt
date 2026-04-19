package com.pandasu.turbo.lspoed.hook

import com.pandasu.turbo.lspoed.TurboService

@Deprecated("Removed - native lib not available")
class MountNamespaceHook(private val service: TurboService) : IFrameworkHook {
    override fun load() {}
    override fun unload() {}
    fun onAppPreload(packageName: String) {}
}
