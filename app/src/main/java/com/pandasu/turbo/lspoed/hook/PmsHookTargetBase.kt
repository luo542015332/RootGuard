package com.pandasu.turbo.lspoed.hook

import android.util.Log
import com.pandasu.turbo.lspoed.TurboService
import com.pandasu.turbo.lspoed.XR

/**
 * Base class for PMS hooks (Android 10-14).
 * Provides common shouldFilterApplication interception.
 */
open class PmsHookTargetBase(protected val service: TurboService) : IPmsHook {
    protected val unhooks = mutableListOf<Any>()

    override fun load() {
        hookShouldFilterApplication()
    }

    private fun hookShouldFilterApplication() {
        try {
            val pmsClass = XR.findClass("com.android.server.pm.PackageManagerService")
            for (method in pmsClass.declaredMethods) {
                if (method.name == "shouldFilterApplication" && method.parameterTypes.size >= 3) {
                    method.isAccessible = true
                    val u = XR.hookMethod(method,
                        before = { p -> onShouldFilterApplication(p); false },
                        after = null
                    )
                    if (u != null) unhooks.add(u)
                    Log.i(TAG, "Hooked shouldFilterApplication: ${method.parameterTypes.contentToString()}")
                }
            }
            Log.i(TAG, "shouldFilterApplication hooks: ${unhooks.size}")
        } catch (e: Throwable) {
            Log.e(TAG, "PMS hook failed: ${e.message}")
        }
    }

    protected open fun onShouldFilterApplication(param: Any) {
        try {
            val args = XR.paramGetArgs(param) ?: return
            if (args.size < 3) return

            val callingPkg = args.filterIsInstance<String>().firstOrNull { it.contains(".") } ?: ""
            if (callingPkg.isEmpty()) return

            var targetPkg = ""
            for (arg in args) {
                if (arg != null && arg !is String && arg !is Int) {
                    targetPkg = extractPackageName(arg) ?: ""
                    if (targetPkg.isNotEmpty()) break
                }
            }
            if (targetPkg.isEmpty()) return

            val callingUid = args.filterIsInstance<Int>().firstOrNull() ?: return
            if (callingUid <= 0 || callingUid == 1000 || callingUid == 1001) return

            if (service.shouldHide(callingPkg, targetPkg)) {
                XR.paramSetResult(param, true)
                Log.d(TAG, "PMS filtered [$callingPkg -> $targetPkg]")
            }
        } catch (e: Throwable) {
            Log.e(TAG, "hook error: ${e.message}")
        }
    }

    protected fun extractPackageName(obj: Any?): String? {
        if (obj == null) return null
        return XR.getDeclaredField(obj.javaClass, "packageName")?.let {
            try { it.get(obj) as? String } catch (_: Throwable) { null }
        } ?: XR.getDeclaredField(obj.javaClass, "name")?.let {
            try { it.get(obj) as? String } catch (_: Throwable) { null }
        }
    }

    override fun unload() {
        unhooks.forEach { XR.unhook(it) }
        unhooks.clear()
    }

    companion object { private const val TAG = "TurboX-PmsBase" }
}
