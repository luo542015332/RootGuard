package com.pandasu.turbo.lspoed.hook

import android.util.Log
import de.robv.android.xposed.XC_MethodHook
import de.robv.android.xposed.XposedBridge
import com.pandasu.turbo.lspoed.HMAService
import java.lang.reflect.Method

open class PmsHookTargetBase(protected val service: HMAService) : IPmsHook {
    protected val unhooks = mutableListOf<XC_MethodHook.Unhook>()

    override fun load() {
        try {
            val pmsClass = Class.forName("com.android.server.pm.PackageManagerService")
            val methods = pmsClass.declaredMethods.filter {
                it.name == "shouldFilterApplication" && it.parameterTypes.size >= 3
            }
            if (methods.isEmpty()) {
                Log.w(TAG, "PMS.shouldFilterApplication not found")
                return
            }
            val method = methods.first()
            Log.i(TAG, "Hooking PMS.shouldFilterApplication: ${method.parameterTypes.joinToString { it.simpleName }}")

            val svc = service
            val unhook = XposedBridge.hookMethod(method, object : XC_MethodHook() {
                override fun beforeHookedMethod(param: MethodHookParam) {
                    onBeforeShouldFilter(param, svc)
                }
            })
            if (unhook != null) unhooks.add(unhook)
            Log.i(TAG, "PMS shouldFilterApplication hook installed")
        } catch (t: Throwable) {
            Log.e(TAG, "PMS hook failed: ${t.message}")
        }
    }

    /**
     * PMS.shouldFilterApplication 的统一处理
     * 签名: shouldFilterApplication(pkgSetting, callingPackage, callingUid, ...)
     * 或:   shouldFilterApplication(snapshot, callingPackage, callingUid, ...)
     */
    protected open fun onBeforeShouldFilter(param: XC_MethodHook.MethodHookParam, svc: HMAService) {
        try {
            val args = param.args ?: return
            if (args.size < 3) return

            // 找 callingPackage — 遍历 String 类型的参数
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

            // 系统进程跳过
            if (callingUid <= 0 || callingUid == 1000 || callingUid == 1001) return
            if (callingPkg.isEmpty() || targetPkg.isEmpty()) return

            if (svc.shouldHide(callingPkg, targetPkg)) {
                param.result = true
                Log.d(TAG, "PMS filtered [$callingPkg -> $targetPkg]")
            }
        } catch (e: Throwable) {
            Log.e(TAG, "PMS hook error: ${e.message}")
        }
    }

    protected fun extractPackageName(obj: Any?): String {
        if (obj == null) return ""
        // 优先 getPackageName()
        try {
            val m = obj.javaClass.getDeclaredMethod("getPackageName")
            m.isAccessible = true
            return m.invoke(obj) as? String ?: ""
        } catch (_: Throwable) {}
        // 兜底 packageName 字段
        try {
            val f = obj.javaClass.getDeclaredField("packageName")
            f.isAccessible = true
            return f.get(obj) as? String ?: ""
        } catch (_: Throwable) {}
        // pkg 字段
        try {
            val f = obj.javaClass.getDeclaredField("pkg")
            f.isAccessible = true
            val pkgObj = f.get(obj) ?: return ""
            val m = pkgObj.javaClass.getDeclaredMethod("getPackageName")
            m.isAccessible = true
            return m.invoke(pkgObj) as? String ?: ""
        } catch (_: Throwable) {}
        // name 字段 (AndroidPackage)
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
