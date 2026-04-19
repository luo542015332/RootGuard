package com.pandasu.turbo.lspoed.hook

import com.pandasu.turbo.lspoed.TurboService

@Deprecated("Removed - AppsFilter layer is sufficient per HMA OSS")
class PmsQueryHook(private val service: TurboService) {
    fun hookPmsInternal(classLoader: ClassLoader) {}
}
