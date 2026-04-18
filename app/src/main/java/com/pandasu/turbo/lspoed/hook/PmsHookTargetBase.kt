package com.pandasu.turbo.lspoed.hook

import android.util.Log
import de.robv.android.xposed.XC_MethodHook
import de.robv.android.xposed.XposedBridge
import com.pandasu.turbo.lspoed.HMAService
import java.lang.reflect.Method

/**
 * Base class for PMS hooks
 * Provides common utilities for extracting package names from various objects
 */
open class PmsHookTargetBase(protected val service: HMAService) : IPmsHook {
    
    protected val unhooks = mutableListOf<XC_MethodHook.Unhook>()

    override fun load() {
        hookShouldFilterApplication()
    }

    /**
     * Hook PMS.shouldFilterApplication as fallback
     * AppsFilterImpl hook in PmsHookTarget36 is preferred
     */
    private fun hookShouldFilterApplication() {
        try {
            val pmsClass = Class.forName("com.android.server.pm.PackageManagerService")
            val methods = pmsClass.declaredMethods.filter {
                it.name == "shouldFilterApplication" && it.parameterTypes.size >= 3
            }
            
            if (methods.isEmpty()) {
                Log.w(TAG, "PMS.shouldFilterApplication not found")
                return
            }
            
            for (method in methods) {
                Log.i(TAG, "Hooking PMS.shouldFilterApplication: ${method.parameterTypes.joinToString { it.simpleName }}")
                
                val unhook = XposedBridge.hookMethod(method, object : XC_MethodHook() {
                    override fun beforeHookedMethod(param: MethodHookParam) {
                        onShouldFilterApplication(param)
                    }
                })
                unhooks.add(unhook)
            }
            
            Log.i(TAG, "PMS shouldFilterApplication hooks installed")
        } catch (t: Throwable) {
            Log.e(TAG, "PMS hook failed: ${t.message}")
        }
    }

    protected open fun onShouldFilterApplication(param: XC_MethodHook.MethodHookParam) {
        try {
            val args = param.args ?: return
            if (args.size < 3) return

            var callingPkg = ""
            var callingUid = -1
            var targetPkg = ""

            for (i in args.indices) {
                val arg = args[i]
                when {
                    arg is String && callingPkg.isEmpty() && arg.contains(".") -> {
                        callingPkg = arg
                    }
                    arg is Int && callingUid < 0 -> {
                        callingUid = arg
                    }
                    arg != null && arg !is String && arg !is Int && targetPkg.isEmpty() -> {
                        targetPkg = extractPackageName(arg)
                    }
                }
            }

            // Skip system processes
            if (callingUid <= 0 || callingUid == 1000 || callingUid == 1001) return
            if (callingPkg.isEmpty() || targetPkg.isEmpty()) return

            if (service.shouldHide(callingPkg, targetPkg)) {
                param.result = true // true = filter/hide
                Log.d(TAG, "PMS filtered [$callingPkg -> $targetPkg]")
            }
        } catch (e: Throwable) {
            Log.e(TAG, "PMS hook error: ${e.message}")
        }
    }

    protected fun extractPackageName(obj: Any?): String {
        if (obj == null) return ""
        
        // Try getPackageName() method
        try {
            val m = obj.javaClass.getDeclaredMethod("getPackageName")
            m.isAccessible = true
            return m.invoke(obj) as? String ?: ""
        } catch (_: Throwable) {}
        
        // Try packageName field
        try {
            val f = obj.javaClass.getDeclaredField("packageName")
            f.isAccessible = true
            return f.get(obj) as? String ?: ""
        } catch (_: Throwable) {}
        
        // Try pkg.getPackageName()
        try {
            val f = obj.javaClass.getDeclaredField("pkg")
            f.isAccessible = true
            val pkgObj = f.get(obj) ?: return ""
            val m = pkgObj.javaClass.getDeclaredMethod("getPackageName")
            m.isAccessible = true
            return m.invoke(pkgObj) as? String ?: ""
        } catch (_: Throwable) {}
        
        // Try name field (AndroidPackage)
        try {
            val f = obj.javaClass.getDeclaredField("name")
            f.isAccessible = true
            return f.get(obj) as? String ?: ""
        } catch (_: Throwable) {}
        
        return ""
    }

    override fun unload() {
        unhooks.forEach { it.unhook() }
        unhooks.clear()
    }

    companion object {
        private const val TAG = "TurboX-PmsBase"
    }
}
