package com.pandasu.turbo.lspoed

import android.os.IBinder
import android.util.Log
import de.robv.android.xposed.IXposedHookLoadPackage
import de.robv.android.xposed.XC_LoadPackage
import de.robv.android.xposed.XC_MethodHook
import de.robv.android.xposed.XposedBridge
import de.robv.android.xposed.XposedHelpers
import com.pandasu.turbo.lspoed.hook.PmsHookTarget36
import com.pandasu.turbo.lspoed.hook.PmsQueryHook
import kotlin.concurrent.thread

/**
 * LSPosed module entry point - Based on smali3 full implementation
 * 
 * Hook strategy:
 * 1. handleLoadPackage for "android" (system_server):
 *    - Try to get PMS directly via ServiceManager
 *    - If not ready, hook PMS constructor via hookPackageManagerService
 *    - Hook ServiceManager.addService to catch PMS registration
 * 2. handleLoadPackage for other apps: Hook ApplicationPackageManager
 */
class XposedEntry : IXposedHookLoadPackage {

    companion object {
        private const val TAG = "TurboX"
    }

    private var hmaStarted = false

    override fun handleLoadPackage(lpparam: XC_LoadPackage.LoadPackageParam) {
        if (lpparam.packageName != "android") return
        if (hmaStarted) return
        
        hmaStarted = true
        
        logI("---")
        logI("TurboX - Hooking system...")
        logI("---")

        try {
            // Try to get PMS directly first
            val pms = getService("package")
            if (pms != null) {
                logI("Got PMS directly: $pms")
                
                // Start HMA service in background thread
                thread {
                    try {
                        HMAService.getInstance().loadConfigForSystem()
                        
                        // Hook PMS methods
                        val classLoader = lpparam.classLoader
                        hookPmsMethods(classLoader, pms)
                        
                    } catch (e: Throwable) {
                        logE("HMA initialization failed", e)
                    }
                }
                return
            }
        } catch (e: Throwable) {
            logD("Direct PMS get failed: ${e.message}")
        }

        // PMS not ready yet, hook constructors
        logI("PMS not ready yet, hooking PMS constructor...")
        hookPackageManagerService(lpparam.classLoader)
        
        logI("Installing addService hook...")
        hookAddService(lpparam.classLoader)
    }

    /**
     * Get system service via reflection (ServiceManager is hidden API)
     */
    private fun getService(name: String): IBinder? {
        return try {
            val serviceManager = Class.forName("android.os.ServiceManager")
            val method = serviceManager.getMethod("getService", String::class.java)
            method.invoke(null, name) as? IBinder
        } catch (e: Throwable) {
            null
        }
    }

    /**
     * Hook PackageManagerService constructor or systemReady/initFirstStep
     */
    private fun hookPackageManagerService(classLoader: ClassLoader) {
        try {
            val pmsClass = XposedHelpers.findClass(
                "com.android.server.pm.PackageManagerService", 
                classLoader
            )

            // Try hooking systemReady first (Android 10+)
            try {
                val systemReadyMethod = pmsClass.getMethod("systemReady")
                XposedBridge.hookMethod(systemReadyMethod, object : XC_MethodHook() {
                    override fun afterHookedMethod(param: MethodHookParam) {
                        logI("PMS.systemReady called, initializing HMA...")
                        initHMAService(classLoader)
                    }
                })
                logI("Hooked PMS.systemReady")
                return
            } catch (e: Throwable) {
                logD("systemReady not found: ${e.message}")
            }

            // Fallback: hook initFirstStep (older Android)
            try {
                val initMethod = pmsClass.getDeclaredMethod("initFirstStep")
                XposedBridge.hookMethod(initMethod, object : XC_MethodHook() {
                    override fun afterHookedMethod(param: MethodHookParam) {
                        logI("PMS.initFirstStep called, initializing HMA...")
                        initHMAService(classLoader)
                    }
                })
                logI("Hooked PMS.initFirstStep")
            } catch (e: Throwable) {
                logE("initFirstStep not found", e)
            }

        } catch (e: Throwable) {
            logE("Failed to hook PackageManagerService", e)
        }
    }

    /**
     * Hook ServiceManager.addService to catch PMS registration
     */
    private fun hookAddService(classLoader: ClassLoader) {
        val hookCallback = object : XC_MethodHook() {
            override fun beforeHookedMethod(param: MethodHookParam) {
                val name = param.args[0] as? String ?: return
                if (name == "package") {
                    logI("ServiceManager.addService called for package")
                    initHMAService(classLoader)
                }
            }
        }

        // Try different addService signatures
        // 4-arg: addService(String, IBinder, boolean, int)
        try {
            XposedHelpers.findAndHookMethod(
                "android.os.ServiceManager",
                classLoader,
                "addService",
                String::class.java,
                IBinder::class.java,
                Boolean::class.javaPrimitiveType,
                Int::class.javaPrimitiveType,
                hookCallback
            )
            logI("ServiceManager hook (4 args) installed")
            return
        } catch (e: Throwable) {
            logD("4-arg hook failed, trying 3-arg")
        }

        // 3-arg: addService(String, IBinder, boolean)
        try {
            XposedHelpers.findAndHookMethod(
                "android.os.ServiceManager",
                classLoader,
                "addService",
                String::class.java,
                IBinder::class.java,
                Boolean::class.javaPrimitiveType,
                hookCallback
            )
            logI("ServiceManager hook (3 args) installed")
            return
        } catch (e: Throwable) {
            logD("3-arg hook failed, trying 2-arg")
        }

        // 2-arg: addService(String, IBinder)
        try {
            XposedHelpers.findAndHookMethod(
                "android.os.ServiceManager",
                classLoader,
                "addService",
                String::class.java,
                IBinder::class.java,
                hookCallback
            )
            logI("ServiceManager hook (2 args) installed")
        } catch (e: Throwable) {
            logE("All addService hooks failed", e)
        }
    }

    /**
     * Initialize HMA service and install hooks
     */
    private fun initHMAService(classLoader: ClassLoader) {
        try {
            HMAService.getInstance().loadConfigForSystem()
            
            // Hook AppsFilterImpl (Android 11+)
            val appsFilterHook = PmsHookTarget36(HMAService.getInstance())
            appsFilterHook.load()
            logI("AppsFilter hooks loaded")

            // Hook PMS query methods
            val pmsQueryHook = PmsQueryHook(HMAService.getInstance())
            pmsQueryHook.hookPmsInternal(classLoader)
            logI("PMS query hooks loaded")

        } catch (e: Throwable) {
            logE("HMA service initialization failed", e)
        }
    }

    /**
     * Hook PMS methods when we have direct access to PMS binder
     */
    private fun hookPmsMethods(classLoader: ClassLoader, pmsBinder: IBinder) {
        try {
            initHMAService(classLoader)
        } catch (e: Throwable) {
            logE("PMS method hook failed", e)
        }
    }

    private fun logI(msg: String) {
        Log.i(TAG, msg)
        try { XposedBridge.log("[$TAG] [INF] $msg") } catch (_: Throwable) {}
    }

    private fun logD(msg: String) {
        try { XposedBridge.log("[$TAG] [DBG] $msg") } catch (_: Throwable) { Log.d(TAG, msg) }
    }

    private fun logE(msg: String, t: Throwable? = null) {
        Log.e(TAG, msg, t)
        try { 
            XposedBridge.log("[$TAG] [ERR] $msg") 
            t?.let { XposedBridge.log(it.message ?: it.toString()) }
        } catch (_: Throwable) {}
    }
}
