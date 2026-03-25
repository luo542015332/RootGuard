package com.rootguard.helper

import android.os.Build
import org.lsposed.lspd.hooker.ModuleHelper
import org.lsposed.lspd.models.ModuleModulePrefs
import org.lsposed.lspd.service.Descriptor

class PandaSUHelperHooker : ModuleHelper() {
    companion object {
        private const val TAG = "PandaSU-Helper"

        // 默认要隐藏的包名
        private val DEFAULT_HIDDEN_PACKAGES = listOf(
            // Magisk
            "com.topjohnwu.magisk",
            "com.topjohnwu.magisk.debug",
            // KernelSU
            "me.weishu.kernelsu",
            "me.weishu.kernelsu.gms",
            // LSPosed
            "org.lsposed.manager",
            "org.lsposed.lspd",
            "com.lsposed",
            // Riru
            "com.termux.boot",
            // Xposed
            "de.robv.android.xposed.installer",
            "org.meowcat.edxposed.manager",
            "com.solohsu.android.edxp.manager",
            "io.github.vvb2060.magisk",
            // Root检测工具
            "eu.chainfire.supersu",
            "com.koushikdutta.superuser",
            "com.thirdparty.superuser",
            "com.yellowes.su",
            "com.kingroot.kinguser",
            "com.kingo.root",
            "com.ramdroid.appquarantine",
            "com.devadvance.rootcloak",
            "com.devadvance.rootcloakplus",
            // 隐藏应用列表工具
            "com.tsng.hidemyapplist",
            // 其他
            "com.noshufou.android.su"
        )
    }

    override fun onHookPackageLoad(librarian: Boolean) {
        if (Descriptor.getPackageName() == null) return

        val prefs = ModuleModulePrefs()
        val enabled = prefs.getBoolean("enabled", true)
        if (!enabled) return

        applyHooks()
    }

    private fun applyHooks() {
        // 根据 Android 版本选择合适的 hook 实现
        when {
            Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDOWN -> hookAndroid14Plus()
            Build.VERSION.SDK_INT >= Build.VERSION_CODES.S_V2 -> hookAndroid12L()
            Build.VERSION.SDK_INT >= Build.VERSION_CODES.R -> hookAndroid11()
            else -> hookAndroidLegacy()
        }
    }

    private fun hookAndroid14Plus() {
        // Android 14+ (API 34+) 的 PackageManagerService hook
        try {
            val pmsClass = findClass("com.android.server.pm.PackageManagerService")
            val method = pmsClass.getDeclaredMethod(
                "getInstalledApplications",
                Long::class.java,
                Long::class.java,
                Int::class.java
            )
            hookMethod(method) { param ->
                // 过滤隐藏的包
                filterPackageList(param.args)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Android 14+ hook failed: ${e.message}")
        }
    }

    private fun hookAndroid12L() {
        // Android 12-12L (API 31-32) 的 PackageManagerService hook
        try {
            val pmsClass = findClass("com.android.server.pm.PackageManagerService")
            val method = pmsClass.getDeclaredMethod(
                "getInstalledPackages",
                Long::class.java,
                Int::class.java
            )
            hookMethod(method) { param ->
                filterPackageList(param.args)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Android 12L hook failed: ${e.message}")
        }
    }

    private fun hookAndroid11() {
        // Android 11 (API 30) 的 PackageManagerService hook
        try {
            val pmsClass = findClass("com.android.server.pm.PackageManagerService")
            val method = pmsClass.getDeclaredMethod(
                "getInstalledPackagesList",
                Long::class.java,
                Int::class.java
            )
            hookMethod(method) { param ->
                filterPackageList(param.args)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Android 11 hook failed: ${e.message}")
        }
    }

    private fun hookAndroidLegacy() {
        // Android 9-10 (API 28-29) 的 PackageManagerService hook
        try {
            val pmsClass = findClass("com.android.server.pm.PackageManagerService")
            val method = pmsClass.getDeclaredMethod(
                "getInstalledApplications",
                Int::class.java,
                Int::class.java
            )
            hookMethod(method) { param ->
                filterPackageList(param.args)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Android legacy hook failed: ${e.message}")
        }
    }

    private fun filterPackageList(args: Array<Any?>) {
        // 实现包名过滤逻辑
        // 这个方法会根据用户配置过滤掉要隐藏的应用
        // 具体实现需要参考 HMA-OSS 的过滤算法
    }

    private fun findClass(className: String): Class<*> {
        return Class.forName(className)
    }

    private fun hookMethod(method: java.lang.reflect.Method, callback: (MethodHookParam) -> Unit) {
        // LSPosed hook 逻辑
        // 这里会替换原方法，实现过滤功能
    }

    class MethodHookParam {
        var args: Array<Any?> = emptyArray()
    }

    object Log {
        fun e(tag: String, msg: String) {
            android.util.Log.e(tag, msg)
        }
        fun d(tag: String, msg: String) {
            android.util.Log.d(tag, msg)
        }
    }
}
