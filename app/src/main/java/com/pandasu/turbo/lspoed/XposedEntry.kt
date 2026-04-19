package com.pandasu.turbo.lspoed

import de.robv.android.xposed.IXposedHookLoadPackage
import de.robv.android.xposed.callbacks.XC_LoadPackage
import kotlin.concurrent.thread

/**
 * LSPosed module entry point.
 *
 * PMS acquisition: hook ServiceManager.addService("package") to capture
 * the live IPackageManager binder. This is more reliable than
 * ServiceManager.getService() which may return null if called too early.
 *
 * Architecture follows HMA OSS:
 * - system_server: capture PMS → init TurboService → install hooks
 * - app process: mark module as active via MyApp.isHooked field
 */
class XposedEntry : IXposedHookLoadPackage {

    companion object {
        private const val TAG = "TurboX"
    }

    override fun handleLoadPackage(lpparam: XC_LoadPackage.LoadPackageParam) {
        val pkgName = lpparam.packageName

        // Mark ourselves as active in the host app
        if (pkgName == "com.pandasu.turbo") {
            try {
                val appClass = lpparam.classLoader.loadClass("com.pandasu.turbo.MyApp")
                val field = appClass.getDeclaredField("isHooked")
                field.isAccessible = true
                field.setBoolean(null, true)
                XR.log("$TAG: MyApp.isHooked = true")
            } catch (e: Throwable) {
                XR.logE("$TAG: mark isHooked failed: ${e.message}", e)
            }
            return
        }

        // Only hook system_server
        if (pkgName != "android") return

        XR.log("$TAG: system_server detected, hooking ServiceManager.addService")

        // Hook ServiceManager.addService("package") to capture PMS binder
        try {
            val smClass = XR.findClass("android.os.ServiceManager")

            // Try 4-param overload first (Android 11+): addService(name, binder, allowIsolated, dumpPriority)
            var addServiceMethod = try {
                smClass.getDeclaredMethod(
                    "addService", String::class.java, android.os.IBinder::class.java,
                    Boolean::class.javaPrimitiveType, Int::class.javaPrimitiveType
                )
            } catch (_: Throwable) {
                // Fallback to 2-param: addService(name, binder)
                smClass.getDeclaredMethod("addService", String::class.java, android.os.IBinder::class.java)
            }
            addServiceMethod.isAccessible = true

            var unhook: Any? = null
            unhook = XR.hookMethod(addServiceMethod,
                before = { param ->
                    val name = XR.paramGetArg(param, 0) as? String ?: return@hookMethod false
                    if (name == "package") {
                        val pmsBinder = XR.paramGetArg(param, 1) as? android.os.IBinder
                        if (pmsBinder != null) {
                            // Unhook immediately - we only need PMS once
                            unhook?.let { XR.unhook(it) }

                            XR.log("$TAG: captured PMS binder via addService")
                            thread {
                                try {
                                    val service = TurboService.getInstance()
                                    service.initWithPms(pmsBinder, lpparam.classLoader)
                                    XR.log("$TAG: TurboService initialized")
                                } catch (e: Throwable) {
                                    XR.logE("$TAG: TurboService init failed: ${e.message}", e)
                                }
                            }
                        }
                    }
                    false
                },
                after = null
            )
            XR.log("$TAG: ServiceManager.addService hook installed")
        } catch (e: Throwable) {
            XR.logE("$TAG: ServiceManager.addService hook failed: ${e.message}", e)

            // Fallback: poll ServiceManager.getService("package") until available
            XR.log("$TAG: fallback: polling ServiceManager.getService")
            thread {
                try {
                    val smClass = Class.forName("android.os.ServiceManager")
                    val getService = smClass.getDeclaredMethod("getService", String::class.java)
                    var binder: android.os.IBinder? = null
                    for (i in 0 until 60) {
                        binder = getService.invoke(null, "package") as? android.os.IBinder
                        if (binder != null) break
                        Thread.sleep(500)
                    }
                    if (binder != null) {
                        val service = TurboService.getInstance()
                        service.initWithPms(binder, lpparam.classLoader)
                        XR.log("$TAG: fallback PMS acquired")
                    } else {
                        XR.logE("$TAG: fallback PMS acquisition failed after 30s")
                    }
                } catch (e: Throwable) {
                    XR.logE("$TAG: fallback failed: ${e.message}", e)
                }
            }
        }
    }
}
