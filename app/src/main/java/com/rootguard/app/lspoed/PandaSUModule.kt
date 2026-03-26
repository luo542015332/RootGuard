package com.rootguard.app.lspoed

import android.os.Build
import de.robv.android.xposed.IXposedHookLoadPackage
import de.robv.android.xposed.XC_MethodHook
import de.robv.android.xposed.XposedHelpers
import de.robv.android.xposed.callbacks.XC_LoadPackage
import com.rootguard.app.utils.Logger

/**
 * PandaSU LSPosed 模块主类
 * 使用更通用的 hook 方法，兼容各种 ROM
 */
class PandaSUModule : IXposedHookLoadPackage {

    companion object {
        const val TAG = "PandaSU-Module"

        // 要隐藏的包名列表
        private val HIDDEN_PACKAGES = listOf(
            // Magisk
            "com.topjohnwu.magisk", "com.topjohnwu.magisk.debug",
            // KernelSU
            "me.weishu.kernelsu", "me.weishu.kernelsu.gms", "me.weishu.exp",
            "com.kernelsu.free", "com.kernelsu.manager",
            // LSPosed
            "org.lsposed.manager", "org.lsposed.lspd", "org.lsposed.hidden",
            "com.lsposed", "com.lsposed.inject", "com.lsposed.service",
            // EdXposed
            "de.robv.android.xposed.installer", "org.meowcat.edxposed.manager",
            "com.solohsu.android.edxp.manager", "io.github.vvb2060.magisk",
            // SuperSU
            "eu.chainfire.supersu", "com.koushikdutta.superuser", "com.thirdparty.superuser",
            // KingRoot
            "com.yellowes.su", "com.kingroot.kinguser", "com.kingo.root",
            // Root 工具
            "com.ramdroid.appquarantine", "com.devadvance.rootcloak", "com.devadvance.rootcloakplus",
            "com.noshufou.android.su", "com.noshufou.android.su.elite",
            // 应用隐藏工具
            "com.tsng.hidemyapplist", "com.tsng.hidemyapplist.xposed",
            "icu.nullptr.applistdetector",
            // 检测器
            "com.zhenxi.hunter", "com.hunter.detector",
            "com.momoobo.detector", "com.android.detector",
            // termux
            "com.termux.boot", "com.termux",
            // 模块
            "com.triplebeat.modulemanager", "com.triplebeat.qrscan",
            // Zygisk
            "top.canyie.droidguard", "top.canyie.droidguard.xposed"
        )

        // 关键词匹配
        private val HIDDEN_KEYWORDS = listOf(
            "magisk", "kernelsu", "lsposed", "edxposed",
            "supersu", "kingroot", "rootcloak", "hidemyapplist",
            "xposed", "zygisk", "riru", "substratum"
        )

        fun isHiddenPackage(packageName: String): Boolean {
            if (packageName.isEmpty()) return false
            val lower = packageName.lowercase()
            if (HIDDEN_PACKAGES.any { it.equals(packageName, ignoreCase = true) }) {
                return true
            }
            if (HIDDEN_KEYWORDS.any { lower.contains(it) }) {
                return true
            }
            return false
        }
    }

    override fun handleLoadPackage(loadPackageParam: XC_LoadPackage.LoadPackageParam) {
        val pkgName = loadPackageParam.packageName
        Logger.d("$TAG: Loading package: $pkgName")

        // Hook android framework
        if (pkgName == "android") {
            Logger.d("$TAG: Hooking android framework")
            hookFramework(loadPackageParam)
        }
    }

    private fun hookFramework(loadPackageParam: XC_LoadPackage.LoadPackageParam) {
        Logger.d("$TAG: SDK: ${Build.VERSION.SDK_INT}, ROM: ${Build.MANUFACTURER}")

        // 尝试 hook 多种可能的类和方法
        var hooked = false
        
        // 方法1: Hook ApplicationPackageManager.getInstalledPackages
        hooked = hookAPMGetInstalledPackages(loadPackageParam) || hooked
        
        // 方法2: Hook ApplicationPackageManager.getInstalledApplications  
        hooked = hookAPMGetInstalledApplications(loadPackageParam) || hooked
        
        // 方法3: 尝试 hook PackageManagerService (如果存在)
        hooked = hookPMSAll(loadPackageParam) || hooked
        
        if (hooked) {
            Logger.d("$TAG: Hook successful!")
        } else {
            Logger.d("$TAG: No hooks succeeded, trying fallback...")
            hookFallback(loadPackageParam)
        }
    }

    private fun hookAPMGetInstalledPackages(lpparam: XC_LoadPackage.LoadPackageParam): Boolean {
        return try {
            // Hook getInstalledPackages(int flags)
            XposedHelpers.findAndHookMethod(
                "android.app.ApplicationPackageManager",
                lpparam.classLoader,
                "getInstalledPackages",
                Int::class.javaPrimitiveType!!,
                object : XC_MethodHook() {
                    override fun afterHookedMethod(param: MethodHookParam) {
                        filterList(param)
                    }
                }
            )
            Logger.d("$TAG: Hooked APM.getInstalledPackages(Int)")
            true
        } catch (e: Throwable) {
            Logger.e("$TAG: Failed to hook APM.getInstalledPackages: ${e.message}")
            false
        }
    }

    private fun hookAPMGetInstalledApplications(lpparam: XC_LoadPackage.LoadPackageParam): Boolean {
        return try {
            // Hook getInstalledApplications()
            XposedHelpers.findAndHookMethod(
                "android.app.ApplicationPackageManager",
                lpparam.classLoader,
                "getInstalledApplications",
                object : XC_MethodHook() {
                    override fun afterHookedMethod(param: MethodHookParam) {
                        filterList(param)
                    }
                }
            )
            Logger.d("$TAG: Hooked APM.getInstalledApplications()")
            true
        } catch (e: Throwable) {
            Logger.e("$TAG: Failed to hook APM.getInstalledApplications: ${e.message}")
            false
        }
    }

    private fun hookPMSAll(lpparam: XC_LoadPackage.LoadPackageParam): Boolean {
        var any = false
        
        // 尝试多种 PMS 类名
        val pmsClasses = listOf(
            "com.android.server.pm.PackageManagerService",
            "com.android.server.pm.PackageManagerServiceEx"
        )
        
        for (pmsClass in pmsClasses) {
            try {
                // 尝试 getInstalledPackages
                try {
                    XposedHelpers.findAndHookMethod(
                        pmsClass,
                        lpparam.classLoader,
                        "getInstalledPackages",
                        Int::class.javaPrimitiveType!!,
                        Int::class.javaPrimitiveType!!,
                        object : XC_MethodHook() {
                            override fun afterHookedMethod(param: MethodHookParam) {
                                filterList(param)
                            }
                        }
                    )
                    Logger.d("$TAG: Hooked $pmsClass.getInstalledPackages")
                    any = true
                } catch (e: Throwable) {
                    // ignore
                }

                // 尝试 getInstalledApplications
                try {
                    XposedHelpers.findAndHookMethod(
                        pmsClass,
                        lpparam.classLoader,
                        "getInstalledApplications",
                        Int::class.javaPrimitiveType!!,
                        Int::class.javaPrimitiveType!!,
                        object : XC_MethodHook() {
                            override fun afterHookedMethod(param: MethodHookParam) {
                                filterList(param)
                            }
                        }
                    )
                    Logger.d("$TAG: Hooked $pmsClass.getInstalledApplications")
                    any = true
                } catch (e: Throwable) {
                    // ignore
                }
            } catch (e: Throwable) {
                // Class not found, try next
            }
        }
        
        return any
    }

    private fun hookFallback(lpparam: XC_LoadPackage.LoadPackageParam) {
        // Fallback: 尝试 hook 所有的 getInstalledPackages 方法
        try {
            XposedHelpers.findAndHookMethod(
                "android.app.ApplicationPackageManager",
                lpparam.classLoader,
                "getInstalledPackages",
                object : XC_MethodHook() {
                    override fun afterHookedMethod(param: MethodHookParam) {
                        filterList(param)
                    }
                }
            )
            Logger.d("$TAG: Fallback hook succeeded!")
        } catch (e: Throwable) {
            Logger.e("$TAG: Fallback also failed: ${e.message}")
        }
    }

    private fun filterList(param: XC_MethodHook.MethodHookParam) {
        try {
            @Suppress("UNCHECKED_CAST")
            val list = param.result as? MutableList<*> ?: return
            
            val originalSize = list.size
            
            list.removeAll { item ->
                try {
                    val pkgName = XposedHelpers.getObjectField(item, "packageName") as? String ?: ""
                    isHiddenPackage(pkgName)
                } catch (e: Exception) {
                    false
                }
            }
            
            if (list.size != originalSize) {
                param.result = list
                Logger.d("$TAG: Filtered $originalSize -> ${list.size}")
            }
        } catch (e: Exception) {
            Logger.e("$TAG: Filter error: ${e.message}")
        }
    }
}