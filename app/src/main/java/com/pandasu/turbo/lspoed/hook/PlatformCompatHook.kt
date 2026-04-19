package com.pandasu.turbo.lspoed.hook

import android.content.pm.ApplicationInfo
import com.pandasu.turbo.lspoed.TurboService
import com.pandasu.turbo.lspoed.Utils
import com.pandasu.turbo.lspoed.XR

class PlatformCompatHook(private val service: TurboService) : IFrameworkHook {
    companion object { private const val TAG = "PlatformCompat"; private const val CHANGE_ID_FORCE_MOUNT_DATA = 143937733L }
    private var hook: Any? = null

    override fun load() {
        try {
            val clazz = XR.findClass("com.android.server.compat.PlatformCompat")
            val method = clazz.getDeclaredMethod("isChangeEnabled", Long::class.javaPrimitiveType, ApplicationInfo::class.java)
            method.isAccessible = true
            hook = XR.hookMethod(method, before = { param ->
                runCatching {
                    val changeId = XR.paramGetArg(param, 0) as? Long ?: return@hookMethod false
                    if (changeId != CHANGE_ID_FORCE_MOUNT_DATA) return@hookMethod false
                    val appInfo = XR.paramGetArg(param, 1) as? ApplicationInfo ?: return@hookMethod false
                    val pkgs = Utils.binderLocalScope { (service.pms?.javaClass?.getMethod("getPackagesForUid", Int::class.javaPrimitiveType)?.invoke(service.pms, appInfo.uid) as? Array<String>) } ?: return@hookMethod false
                    for (pkg in pkgs) {
                        if (service.isHookEnabled(pkg)) {
                            XR.paramSetResult(param, true)
                            XR.log("$TAG: force mount data for $pkg")
                            return@hookMethod false
                        }
                    }
                }.onFailure { e -> XR.logE("$TAG: error: ${e.message}", e) }
                false
            }, after = null)
        } catch (e: Throwable) { XR.logE("$TAG: hook failed: ${e.message}", e) }
    }

    override fun unload() { hook?.let { XR.unhook(it) }; hook = null }
}
