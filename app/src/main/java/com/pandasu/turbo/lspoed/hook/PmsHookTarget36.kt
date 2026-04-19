package com.pandasu.turbo.lspoed.hook

import android.os.Binder
import com.pandasu.turbo.lspoed.TurboService
import com.pandasu.turbo.lspoed.Utils
import com.pandasu.turbo.lspoed.XR
import java.util.concurrent.atomic.AtomicReference

class PmsHookTarget36(private val service: TurboService) : IFrameworkHook {
    companion object { private const val TAG = "Pms36" }

    private val getPackagesForUidMethod by lazy {
        try {
            XR.findClass("com.android.server.pm.Computer").getDeclaredMethod("getPackagesForUid", Int::class.javaPrimitiveType)
        } catch (_: Throwable) { null }
    }

    private val hooks = mutableListOf<Any>()
    private var lastFilteredApp = AtomicReference<String?>(null)

    override fun load() {
        hookShouldFilterApplication()
        hookGetArchivedPackageInternal()
    }

    private fun hookShouldFilterApplication() {
        try {
            val clazz = XR.findClass("com.android.server.pm.AppsFilterImpl")
            val method = findMethodInHierarchy(clazz, "shouldFilterApplication") ?: throw NoSuchMethodException("shouldFilterApplication")
            method.isAccessible = true
            val unhook = XR.hookMethod(method, before = { param ->
                runCatching {
                    val args = XR.paramGetArgs(param) ?: return@hookMethod false
                    val useSnapshot = android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.TIRAMISU
                    val callingUid = if (useSnapshot) args.getOrNull(1) as? Int ?: return@hookMethod false else args.getOrNull(0) as? Int ?: return@hookMethod false
                    if (callingUid == 1000) return@hookMethod false

                    val snapshot = if (useSnapshot) args[0] else null
                    val callingApps = if (snapshot != null && getPackagesForUidMethod != null) {
                        Utils.binderLocalScope { @Suppress("UNCHECKED_CAST") getPackagesForUidMethod!!.invoke(snapshot, callingUid) as? Array<String> }
                    } else {
                        getPackagesForUidFallback(callingUid)
                    } ?: return@hookMethod false

                    val targetIdx = if (useSnapshot) 3 else 2
                    val targetPkg = Utils.getPackageNameFromPackageSettings(args[targetIdx] ?: return@hookMethod false) ?: return@hookMethod false

                    for (caller in callingApps) {
                        if (service.shouldHide(caller, targetPkg)) {
                            XR.paramSetResult(param, true)
                            service.filterCount++
                            val last = lastFilteredApp.getAndSet(caller)
                            if (last != caller) XR.log("$TAG: hide [$caller]->$targetPkg")
                            return@hookMethod false
                        }
                    }
                }.onFailure { e -> XR.logE("$TAG: fatal, disabling: ${e.message}", e); unload() }
                false
            }, after = null)
            if (unhook != null) hooks.add(unhook)
        } catch (e: Throwable) { XR.logE("$TAG: shouldFilterApplication hook failed: ${e.message}", e) }
    }

    private fun hookGetArchivedPackageInternal() {
        try {
            val clazz = XR.findClass("com.android.server.pm.PackageManagerService")
            val method = findMethodInHierarchy(clazz, "getArchivedPackageInternal") ?: return
            method.isAccessible = true
            val unhook = XR.hookMethod(method, before = { param ->
                runCatching {
                    val callingUid = Binder.getCallingUid()
                    if (callingUid == 1000) return@hookMethod false
                    val callingApps = getPackagesForUidFallback(callingUid) ?: return@hookMethod false
                    val targetPkg = XR.paramGetArg(param, 0)?.toString() ?: return@hookMethod false
                    for (caller in callingApps) {
                        if (service.shouldHide(caller, targetPkg)) {
                            XR.paramSetResult(param, null)
                            service.filterCount++
                            XR.log("$TAG: archived hide [$caller]->$targetPkg")
                            return@hookMethod false
                        }
                    }
                }.onFailure { e -> XR.logE("$TAG: archived error: ${e.message}", e) }
                false
            }, after = null)
            if (unhook != null) hooks.add(unhook)
        } catch (_: Throwable) {}
    }

    private fun getPackagesForUidFallback(uid: Int): Array<String>? {
        val pms = service.pms ?: return null
        return try { Utils.binderLocalScope { pms.javaClass.getMethod("getPackagesForUid", Int::class.javaPrimitiveType).invoke(pms, uid) as? Array<String> } } catch (_: Throwable) { null }
    }

    private fun findMethodInHierarchy(clazz: Class<*>, name: String): java.lang.reflect.Method? {
        var current: Class<*>? = clazz
        while (current != null && current != Any::class.java) {
            try { return current.getDeclaredMethod(name) } catch (_: Throwable) {}
            current = current.superclass
        }
        return null
    }

    override fun unload() { hooks.forEach { XR.unhook(it) }; hooks.clear() }
}
