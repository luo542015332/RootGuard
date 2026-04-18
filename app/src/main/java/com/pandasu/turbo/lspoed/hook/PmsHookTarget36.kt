package com.pandasu.turbo.lspoed.hook

import android.util.Log
import com.pandasu.turbo.lspoed.TurboService
import com.pandasu.turbo.lspoed.XR

/**
 * Android 14/15+ PMS hook (SDK 29-36).
 * Primary: AppsFilterImpl.shouldFilterApplication
 * Fallback: PMS.shouldFilterApplication
 */
class PmsHookTarget36(service: TurboService) : PmsHookTargetBase(service) {

    override fun load() {
        hookAppsFilterImpl()
        super.load()
    }

    private fun hookAppsFilterImpl() {
        try {
            val clazz = XR.findClass("com.android.server.pm.AppsFilterImpl")
            var count = 0
            for (method in clazz.declaredMethods) {
                if (method.name == "shouldFilterApplication" && method.parameterTypes.size >= 4) {
                    method.isAccessible = true
                    val u = XR.hookMethod(method,
                        before = { p -> onAppsFilterCheck(p); false },
                        after = null
                    )
                    if (u != null) {
                        unhooks.add(u)
                        count++
                        Log.i(TAG, "Hooked: ${method.parameterTypes.joinToString { it.simpleName }}")
                    }
                }
            }
            XR.log("[Turbo] AppsFilterImpl: $count hooks")
        } catch (e: Throwable) {
            XR.logE("AppsFilterImpl hook failed: ${e.message}", e)
        }
    }

    private fun onAppsFilterCheck(param: Any) {
        try {
            val args = XR.paramGetArgs(param) ?: return
            if (args.size < 4) return
            val callingUid = args[0] as? Int ?: -1
            if (callingUid <= 0 || callingUid == 1000 || callingUid == 1001) return

            val callingPkg = (args[1] as? String) ?: extractPackageName(args[1])
            val targetPkg = extractPackageName(args[3]) ?: return

            if (!callingPkg.isNullOrEmpty() && !targetPkg.isNullOrEmpty() && service.shouldHide(callingPkg, targetPkg)) {
                XR.paramSetResult(param, true)
                Log.d(TAG, "AppsFilter hidden [${callingPkg}(uid=$callingUid) -> ${targetPkg}]")
            }
        } catch (e: Throwable) {
            Log.e(TAG, "AppsFilter check error: ${e.message}")
        }
    }

    companion object { private const val TAG = "TurboX-Pms36" }
}

