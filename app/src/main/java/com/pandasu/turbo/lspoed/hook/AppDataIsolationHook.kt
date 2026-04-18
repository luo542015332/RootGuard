package com.pandasu.turbo.lspoed.hook

import android.os.Binder
import android.util.Log
import com.pandasu.turbo.lspoed.TurboService
import com.pandasu.turbo.lspoed.XR

/**
 * AppDataIsolation hook - intercepts storage isolation decisions.
 * Hooks ProcessList.startProcess and needsStorageDataIsolation.
 */
class AppDataIsolationHook(private val service: TurboService) : IFrameworkHook {
    companion object {
        private const val TAG = "Turbo-AppDataIso"
    }

    private val hooks = mutableListOf<Any>()

    override fun load() {
        XR.log("[Turbo] Loading AppDataIsolationHook...")
        val fuseEnabled = getSystemProperty("persist.sys.fuse", "false") == "true"
        Log.i(TAG, "FUSE enabled: $fuseEnabled")

        // Hook ProcessList.startProcess
        hookStartProcess()

        // Hook needsStorageDataIsolation
        hookNeedsIsolation()

        XR.log("[Turbo] AppDataIsolationHook loaded (${hooks.size} hooks)")
    }

    private fun hookStartProcess() {
        try {
            val pClass = XR.findClass("com.android.server.am.ProcessList")
            for (method in pClass.declaredMethods) {
                if (method.name.startsWith("startProcess") && method.parameterTypes.isNotEmpty()) {
                    method.isAccessible = true
                    val u = XR.hookMethod(method,
                        before = { p ->
                            val args = XR.paramGetArgs(p)
                            val pkgName = args?.filterIsInstance<String>()?.firstOrNull()
                            if (pkgName != null && service.shouldIsolateStorage(pkgName)) {
                                Log.d(TAG, "Isolating storage for: $pkgName")
                            }
                            false
                        },
                        after = null
                    )
                    if (u != null) hooks.add(u)
                }
            }
        } catch (e: Throwable) {
            Log.e(TAG, "hookStartProcess failed: ${e.message}")
        }
    }

    private fun hookNeedsIsolation() {
        try {
            val pClass = XR.findClass("com.android.server.am.ProcessList")
            for (method in pClass.declaredMethods) {
                if (method.name.contains("needsIsolation", ignoreCase = true)) {
                    method.isAccessible = true
                    val u = XR.hookMethod(method,
                        before = null,
                        after = { p ->
                            val args = XR.paramGetArgs(p)
                            val pkgName = args?.filterIsInstance<String>()?.firstOrNull()
                            if (pkgName != null) {
                                if (service.shouldIsolateStorage(pkgName)) {
                                    XR.paramSetResult(p, true)
                                } else if (service.isAppDataIsolationExcluded(pkgName)) {
                                    XR.paramSetResult(p, false)
                                }
                            }
                        }
                    )
                    if (u != null) hooks.add(u)
                    XR.log("[Turbo] Hooked ${method.name}")
                }
            }
        } catch (e: Throwable) {
            Log.e(TAG, "hookNeedsIsolation failed: ${e.message}")
        }
    }

    private fun getSystemProperty(key: String, default: String): String {
        return try {
            val clazz = XR.findClass("android.os.SystemProperties")
            val method = clazz.getMethod("get", String::class.java, String::class.java)
            method.invoke(null, key, default) as? String ?: default
        } catch (_: Throwable) { default }
    }

    override fun unload() {
        hooks.forEach { XR.unhook(it) }
        hooks.clear()
    }
}
