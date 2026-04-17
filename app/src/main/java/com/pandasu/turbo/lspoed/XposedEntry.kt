package com.pandasu.turbo.lspoed

import android.util.Log
import de.robv.android.xposed.IXposedHookLoadPackage
import de.robv.android.xposed.XposedBridge
import de.robv.android.xposed.XC_LoadPackage

/**
 * LSPosed 模块入口
 * 实现标准 IXposedHookLoadPackage 接口
 */
class XposedEntry : IXposedHookLoadPackage {

    companion object {
        private const val TAG = "TurboX"
        private var hooksLoaded = false
    }

    override fun handleLoadPackage(lpparam: XC_LoadPackage.LoadPackageParam) {
        if (hooksLoaded) return

        logI("========================================")
        logI("TurboX handleLoadPackage: ${lpparam.packageName}")
        logI("Process: ${lpparam.processName}")
        logI("SDK: ${android.os.Build.VERSION.SDK_INT}")
        logI("========================================")

        // 只在 system_server 进程加载 hooks
        if (lpparam.packageName != "android") return

        try {
            HMAService.startHook()
            hooksLoaded = true
            logI("HMAService hooks loaded in system_server")
        } catch (t: Throwable) {
            logE("HMAService startHook failed", t)
        }
    }

    private fun logI(msg: String) {
        try {
            XposedBridge.log("[TurboX] [INF] $msg")
        } catch (_: Throwable) {
            Log.i("TurboX", msg)
        }
    }

    private fun logE(msg: String, t: Throwable) {
        try {
            XposedBridge.log("[TurboX] [ERR] $msg: ${t.message}")
        } catch (_: Throwable) {
            Log.e("TurboX", msg, t)
        }
    }
}
