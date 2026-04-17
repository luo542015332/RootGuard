package com.pandasu.turbo.lspoed.hook

import android.util.Log
import de.robv.android.xposed.XC_MethodHook
import de.robv.android.xposed.XposedBridge
import com.pandasu.turbo.lspoed.HMAService
import java.lang.reflect.Method

/**
 * Android 15+ (SDK 35+) — hook AppsFilterImpl.shouldFilterApplication
 * HyperOS/MIUI 用这个方法决定是否在应用列表里过滤包名
 */
class PmsHookTarget36(service: HMAService) : PmsHookTargetBase(service) {

    override fun load() {
        // 先尝试 hook AppsFilterImpl
        hookAppsFilterImpl()
        // 再 hook PMS.shouldFilterApplication 作为兜底
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
            val method = methods.first()
            Log.i(TAG, "Hooking AppsFilterImpl.shouldFilterApplication: ${method.parameterTypes.joinToString { it.simpleName }}")

            val svc = service
            val unhook = XposedBridge.hookMethod(method, object : XC_MethodHook() {
                override fun beforeHookedMethod(param: MethodHookParam) {
                    onAppsFilterCheck(param, svc)
                }
            })
            if (unhook != null) unhooks.add(unhook)
            Log.i(TAG, "AppsFilterImpl hook installed")
        } catch (t: Throwable) {
            Log.e(TAG, "AppsFilterImpl hook failed: ${t.message}")
        }
    }

    /**
     * AppsFilterImpl.shouldFilterApplication 参数解析
     * 
     * Android 14 (SDK 34): (int, AndroidPackage, int, AndroidPackage, int)
     *   args[0] = callingUid
     *   args[1] = callingPkg (AndroidPackage)
     *   args[2] = callingDeviceId (int)
     *   args[3] = targetPkg (AndroidPackage)
     *   args[4] = targetUserId (int)
     *
     * Android 15 (SDK 35): (int, String, int, AndroidPackage, int)
     *   args[0] = callingUid
     *   args[1] = callingPkg (String)
     *   args[2] = callingDeviceId
     *   args[3] = targetPkg (AndroidPackage)
     *   args[4] = targetUserId
     */
    private fun onAppsFilterCheck(param: XC_MethodHook.MethodHookParam, svc: HMAService) {
        try {
            val args = param.args ?: return
            if (args.size < 4) return

            val callingUid = args[0] as? Int ?: -1
            if (callingUid <= 0 || callingUid == 1000 || callingUid == 1001) return

            // callingPackage 可能是 String 或 AndroidPackage 对象
            val callingPkg = when (val arg1 = args[1]) {
                is String -> arg1
                else -> extractPackageName(arg1)
            }

            // targetPackage 通常在 args[3]，是 AndroidPackage 对象
            val targetPkg = extractPackageName(args[3])

            if (callingPkg.isNotEmpty() && targetPkg.isNotEmpty()) {
                if (svc.shouldHide(callingPkg, targetPkg)) {
                    param.result = true
                    Log.d(TAG, "AppsFilter filtered [$callingPkg(uid=$callingUid) -> $targetPkg]")
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
