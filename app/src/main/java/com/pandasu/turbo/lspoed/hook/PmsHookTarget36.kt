package com.pandasu.turbo.lspoed.hook

import android.os.Binder
import android.os.Build
import androidx.annotation.RequiresApi
import de.robv.android.xposed.XposedBridge
import de.robv.android.xposed.XC_MethodHook
import com.pandasu.turbo.lspoed.*
import java.lang.reflect.Method

@RequiresApi(Build.VERSION_CODES.UPSIDE_DOWN_CAKE)
class PmsHookTarget36(private val service: TurboService) : IFrameworkHook {

    companion object {
        private const val TAG = "PmsHookTarget36"
    }

    private var hook: XC_MethodHook.Unhook? = null
    private var expHook: XC_MethodHook.Unhook? = null
    private val lastFilteredApp = java.util.concurrent.atomic.AtomicReference<String?>(null)

    /**
     * 在类及其父类中查找方法（不含接口）
     */
    private fun findMethodDeep(className: String, methodName: String): Method? {
        var clazz: Class<*>? = null
        try { clazz = Class.forName(className) }
        catch (_: Throwable) { return null }

        while (clazz != null) {
            clazz.declaredMethods.forEach { m ->
                if (m.name == methodName) return m
            }
            clazz = clazz.superclass
        }
        return null
    }

    override fun load() {
        logI(TAG, "Load hook")

        // Hook AppsFilterImpl.shouldFilterApplication
        runCatching {
            val method = findMethodDeep("com.android.server.pm.AppsFilterImpl", "shouldFilterApplication")
                ?: findMethodDeep("com.android.server.pm.AppsFilter", "shouldFilterApplication")
                ?: throw IllegalStateException("shouldFilterApplication not found")

            hook = XposedBridge.hookMethod(method, object : XC_MethodHook() {
                override fun beforeHookedMethod(param: MethodHookParam) {
                    runCatching {
                        val callingUid = param.args[1] as Int
                        if (callingUid == Constants.UID_SYSTEM) return@beforeHookedMethod

                        val getPackagesForUid = service.pms.javaClass.getDeclaredMethod(
                            "getPackagesForUid", Int::class.java
                        )
                        getPackagesForUid.isAccessible = true
                        @Suppress("UNCHECKED_CAST")
                        val callingApps = Utils.binderLocalScope {
                            getPackagesForUid.invoke(service.pms, callingUid) as? Array<String>
                        } ?: return@beforeHookedMethod

                        val targetApp = Utils.getPackageNameFromPackageSettings(param.args[3])
                        for (caller in callingApps) {
                            if (service.shouldHide(caller, targetApp)) {
                                param.result = java.lang.Boolean.TRUE
                                service.filterCount++
                                val last = lastFilteredApp.getAndSet(caller)
                                if (last != caller) logI(TAG, "@filterApp: query from $caller")
                                return@beforeHookedMethod
                            }
                        }
                    }.onFailure {
                        logE(TAG, "Fatal", it)
                        unload()
                    }
                }
            })
            logI(TAG, "Hooked shouldFilterApplication")
        }.onFailure { logE(TAG, "shouldFilterApplication failed", it) }

        // Hook PackageManagerService.getArchivedPackageInternal (Android 14+ archive feature)
        runCatching {
            val method = findMethodDeep("com.android.server.pm.PackageManagerService", "getArchivedPackageInternal")
            if (method != null) {
                expHook = XposedBridge.hookMethod(method, object : XC_MethodHook() {
                    override fun beforeHookedMethod(param: MethodHookParam) {
                        runCatching {
                            val callingUid = Binder.getCallingUid()
                            if (callingUid == Constants.UID_SYSTEM) return@beforeHookedMethod
                            val callingApps = Utils.binderLocalScope {
                                service.pms.getPackagesForUid(callingUid)
                            } ?: return@beforeHookedMethod

                            val targetApp = param.args[0].toString()
                            for (caller in callingApps) {
                                if (service.shouldHide(caller, targetApp)) {
                                    param.result = null
                                    service.filterCount++
                                    val last = lastFilteredApp.getAndSet(caller)
                                    if (last != caller) logI(TAG, "@getArchived: query from $caller")
                                    return@beforeHookedMethod
                                }
                            }
                        }.onFailure {
                            logE(TAG, "Fatal", it)
                            unload()
                        }
                    }
                })
                logI(TAG, "Hooked getArchivedPackageInternal")
            } else {
                logI(TAG, "getArchivedPackageInternal not found, skipping")
            }
        }.onFailure { logE(TAG, "getArchivedPackageInternal failed", it) }
    }

    override fun unload() {
        hook?.unhook(); hook = null
        expHook?.unhook(); expHook = null
    }
}
