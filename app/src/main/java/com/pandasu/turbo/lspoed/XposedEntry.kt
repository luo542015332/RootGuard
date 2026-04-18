package com.pandasu.turbo.lspoed

import android.util.Log
import de.robv.android.xposed.IXposedHookLoadPackage
import de.robv.android.xposed.XposedBridge
import de.robv.android.xposed.XC_LoadPackage
import de.robv.android.xposed.XposedHelpers
import com.pandasu.turbo.lspoed.hook.PmsHookTarget36
import com.pandasu.turbo.lspoed.hook.PmsQueryHook

/**
 * LSPosed module entry point
 * Hooks system_server for AppsFilter + PMS query filtering
 * Hooks all app processes for IPackageManager query filtering
 */
class XposedEntry : IXposedHookLoadPackage {

    companion object {
        private const val TAG = "TurboX"
    }

    override fun handleLoadPackage(lpparam: XC_LoadPackage.LoadPackageParam) {
        logI("handleLoadPackage: ${lpparam.packageName} process=${lpparam.processName}")

        if (lpparam.packageName == "android") {
            // system_server: hook AppsFilter + PMS internal methods
            hookSystemServer(lpparam)
        } else {
            // All other apps: hook IPackageManager proxy
            hookAppProcess(lpparam)
        }
    }

    private fun hookSystemServer(lpparam: XC_LoadPackage.LoadPackageParam) {
        try {
            logI("Loading system_server hooks...")

            // Load hidden package list
            HMAService.loadConfigForSystem()

            // Hook AppsFilterImpl.shouldFilterApplication
            val appsFilterHook = PmsHookTarget36(HMAService)
            appsFilterHook.load()
            logI("AppsFilter hooks loaded")

            // Hook PMS internal query methods (getInstalledPackages etc.)
            val pmsQueryHook = PmsQueryHook(HMAService)
            pmsQueryHook.hookPmsInternal(lpparam.classLoader)
            logI("PMS internal query hooks loaded")

        } catch (t: Throwable) {
            logE("system_server hook failed", t)
        }
    }

    private fun hookAppProcess(lpparam: XC_LoadPackage.LoadPackageParam) {
        // Skip self and system UI
        if (lpparam.packageName == "com.pandasu.turbo") return

        try {
            HMAService.loadConfigForSystem()
            val queryHook = PmsQueryHook(HMAService)
            queryHook.hookPackageManagerProxy(lpparam.classLoader, lpparam.packageName)
        } catch (t: Throwable) {
            // Non-fatal: some apps may not use PackageManager
            logD("App hook skipped for ${lpparam.packageName}: ${t.message}")
        }
    }

    private fun logI(msg: String) {
        try { XposedBridge.log("[$TAG] [INF] $msg") } catch (_: Throwable) { Log.i(TAG, msg) }
    }

    private fun logD(msg: String) {
        try { XposedBridge.log("[$TAG] [DBG] $msg") } catch (_: Throwable) { Log.d(TAG, msg) }
    }

    private fun logE(msg: String, t: Throwable) {
        try { XposedBridge.log("[$TAG] [ERR] $msg: ${t.message}") } catch (_: Throwable) { Log.e(TAG, msg, t) }
    }
}
