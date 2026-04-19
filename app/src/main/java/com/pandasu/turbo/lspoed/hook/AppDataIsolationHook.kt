package com.pandasu.turbo.lspoed.hook

import com.pandasu.turbo.lspoed.TurboService

@Deprecated("Removed - use PlatformCompatHook instead per HMA OSS")
class AppDataIsolationHook(private val service: TurboService) : IFrameworkHook {
    override fun load() {}
    override fun unload() {}
}
