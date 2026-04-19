package com.pandasu.turbo.lspoed.hook

import com.pandasu.turbo.lspoed.TurboService

@Deprecated("Removed - not needed per HMA OSS")
class ZygoteHook(private val service: TurboService) : IFrameworkHook {
    override fun load() {}
    override fun unload() {}
}
