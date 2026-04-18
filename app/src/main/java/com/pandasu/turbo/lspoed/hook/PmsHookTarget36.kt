package com.pandasu.turbo.lspoed.hook

import android.util.Log
import de.robv.android.xposed.XC_MethodHook
import de.robv.android.xposed.XposedBridge
import com.pandasu.turbo.lspoed.HMAService
import java.lang.reflect.Method

/**
 * Android 15+ (SDK 35+) hook for AppsFilterImpl.shouldFilterApplication
 * 
 * This is the PRIMARY hiding mechanism on modern Android:
 * - AppsFilterImpl decides which packages appear in launcher, recents, share sheets
 * - HyperOS/MIUI uses this for app hiding features
 * 
 * We hook this to make hidden packages invisible to all query methods.
 */
class PmsHookTarget36(service: HMAService) : PmsHookTargetBase(service) {

    override fun load() {
        // Primary: hook AppsFilterImpl
        hookAppsFilterImpl()
        // Fallback: hook PMS.shouldFilterApplication (in parent)
        super.load()
    }

    private fun hookAppsFilterImpl() {
        try {
            val clazz = Class.forName("com.android.server.pm.AppsFilterImpl")
            val methods = clazz.declaredMethods.filter {
                it.name == "shouldFilterApplication" && it.parameterTypes.size >= 3
            }
            
            if (methods.isEmpty()) {
                Log.w(TAG, "AppsFilterImpl.shouldFilterApplication not found")
                return
            }
            
            for (method in methods) {
                Log.i(TAG, "Hooking AppsFilterImpl.shouldFilterApplication: ${method.parameterTypes.joinToString { it.simpleName }}")
                
                val unhook = XposedBridge.hookMethod(method, object : XC_MethodHook() {
                    override fun beforeHookedMethod(param: MethodHookParam) {
                        onAppsFilterCheck(param)
                    }
                })
                unhooks.add(unhook)
            }
            
            Log.i(TAG, "AppsFilterImpl hooks installed (${methods.size} methods)")
        } catch (t: Throwable) {
            Log.e(TAG, "AppsFilterImpl hook failed: ${t.message}")
        }
    }

    /**
     * AppsFilterImpl.shouldFilterApplication parameter analysis
     * 
     * Android 14 (SDK 34): (int, AndroidPackage, int, AndroidPackage, int)
     *   args[0] = callingUid
     *   args[1] = callingPkg (AndroidPackage object)
     *   args[2] = callingDeviceId
     *   args[3] = targetPkg (AndroidPackage object)
     *   args[4] = targetUserId
     *
     * Android 15 (SDK 35): (int, String, int, AndroidPackage, int)
     *   args[0] = callingUid
     *   args[1] = callingPkg (String)
     *   args[2] = callingDeviceId
     *   args[3] = targetPkg (AndroidPackage object)
     *   args[4] = targetUserId
     */
    private fun onAppsFilterCheck(param: XC_MethodHook.MethodHookParam) {
        try {
            val args = param.args ?: return
            if (args.size < 4) return

            val callingUid = args[0] as? Int ?: -1
            
            // Skip system processes (root, system server)
            if (callingUid <= 0 || callingUid == 1000 || callingUid == 1001) return

            // callingPackage - may be String or AndroidPackage
            val callingPkg = when (val arg1 = args[1]) {
                is String -> arg1
                else -> extractPackageName(arg1)
            }

            // targetPackage - usually AndroidPackage at args[3]
            val targetPkg = extractPackageName(args[3])

            if (callingPkg.isNotEmpty() && targetPkg.isNotEmpty()) {
                if (service.shouldHide(callingPkg, targetPkg)) {
                    param.result = true // true = filter out (hide)
                    Log.d(TAG, "AppsFilter hidden [$callingPkg(uid=$callingUid) -> $targetPkg]")
                }
            }
        } catch (e: Throwable) {
            Log.e(TAG, "AppsFilter hook error: ${e.message}")
        }
    }

    companion object {
        private const val TAG = "TurboX-Pms36"
    }
}
