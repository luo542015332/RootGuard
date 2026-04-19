package com.pandasu.turbo.lspoed.hook

import com.pandasu.turbo.lspoed.TurboService

@Deprecated("PmsHookTarget36 is standalone per HMA OSS")
abstract class PmsHookTargetBase(private val service: TurboService) : IFrameworkHook {
    abstract override fun load()
    abstract override fun unload()
}
