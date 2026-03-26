package com.rootguard.helper;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.util.Log;

import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

public class LSPosedModule implements IXposedHookLoadPackage {
    private static final String TAG = "PandaSU-LSPosed";
    private static final String TARGET_PKG = "android";

    // 要隐藏的包名 - 完整列表
    private static final String[] HIDDEN_PACKAGES = {
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
        // 其他 Root 工具
        "com.ramdroid.appquarantine", "com.devadvance.rootcloak", "com.devadvance.rootcloakplus",
        "com.noshufou.android.su", "com.noshufou.android.su.elite",
        // 应用隐藏工具
        "com.tsng.hidemyapplist", "com.tsng.hidemyapplist.xposed",
        "icu.nullptr.applistdetector",
        // 指纹/检测工具
        "com.aliuoud", "com.now", "com.android.leaname",
        "com.pikaz.rotator", "com.XiaoDaiJin", "core.app.system",
        "com.triplebeat.modulemanager", "com.triplebeat.qrscan",
        // Magisk 模块
        "com.havoc.framework", "com.firemax13.root",
        // Zygisk modules
        "top.canyie.droidguard", "top.canyie.droidguard.xposed",
        // 检测器
        "com.zhenxi.hunter", "com.hunter.detector",
        "com.momoobo.detector", "com.android.detector",
        // 备份/还原
        "com.anthony.remember", "com.secondkeys.thirdkeys",
        // LSPosed additional
        "com.oasisfeng.heartblade", "com.oasisfeng.island",
        // KernelSU additional
        "com.rk.redexpression", "com.ext.stars",
        // termux
        "com.termux.boot", "com.termux",
        // Integrity/Play Store
        "com.google.android.gms", "com.android.vending",
        // 模块相关
        "com.argh.namemanager", "com.miui.tsmagent",
        // Additional root
        "com.sina.weibo", "cn.miui.ad", "miui.lbs",
        // 常见的 Magisk 模块
        "com.zty.ztyplugin", "com.viabill.root",
        "com.android.mzirk", "app.attitude.safetool",
        // more
        "com.android.safetool", "com.cescoo.enhancedwebview",
        "com.ryu.app", "com.rutil.jцени",
        "com.rutil.quad", "com.rutil.tiled",
        // xposed
        "com.android.xposed.installer", "com.android.xposed",
        // LSPosed fork
        "com.lsposed.lspd", "com.lsposed.manager",
        // ksu
        "org.lsposed.kernetsu", "me.weishu.kernelsu.ui",
        // Universal hide
        "com.tk.webview", "com.tk.xposed",
        // more detector
        "com.zzz.facebookdetect", "com.zzz.library"
    };

    @Override
    public void handleLoadPackage(XC_LoadPackage.LoadPackageParam lpparam) throws Throwable {
        // Hook 所有应用的 PackageManager 查询，而不仅仅是系统
        if (lpparam.packageName.equals("android")) {
            Log.i(TAG, "Hooking system PackageManager...");
            hookSystemPackageManager(lpparam);
        } else {
            // 为每个应用 Hook PackageManager
            Log.i(TAG, "Hooking PackageManager for: " + lpparam.packageName);
            hookAppPackageManager(lpparam);
        }
        
        // Hook libc文件访问函数（对所有应用生效）
        hookLibcFileAccess(lpparam);
    }

    private void hookSystemPackageManager(XC_LoadPackage.LoadPackageParam lpparam) {
        try {
            // Hook getInstalledPackages
            XposedHelpers.findAndHookMethod(
                "com.android.server.pm.PackageManagerService",
                lpparam.classLoader,
                "getInstalledPackages",
                long.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result instanceof List) {
                            List<?> list = (List<?>) result;
                            List<PackageInfo> filtered = filterPackageList(list);
                            param.setResult(filtered);
                            Log.i(TAG, "getInstalledPackages filtered: " + list.size() + " -> " + filtered.size());
                        }
                    }
                }
            );

            // Hook getInstalledApplications
            XposedHelpers.findAndHookMethod(
                "com.android.server.pm.PackageManagerService",
                lpparam.classLoader,
                "getInstalledApplications",
                long.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result instanceof List) {
                            List<?> list = (List<?>) result;
                            List<ApplicationInfo> filtered = filterApplicationList(list);
                            param.setResult(filtered);
                            Log.i(TAG, "getInstalledApplications filtered: " + list.size() + " -> " + filtered.size());
                        }
                    }
                }
            );

            // Hook queryIntentActivities
            XposedHelpers.findAndHookMethod(
                "com.android.server.pm.PackageManagerService",
                lpparam.classLoader,
                "queryIntentActivities",
                "android.content.Intent", long.class, int.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result instanceof List) {
                            List<?> list = (List<?>) result;
                            List<Object> filtered = filterResolveInfoList(list);
                            param.setResult(filtered);
                            Log.i(TAG, "queryIntentActivities filtered: " + list.size() + " -> " + filtered.size());
                        }
                    }
                }
            );

            // Hook queryIntentServices
            XposedHelpers.findAndHookMethod(
                "com.android.server.pm.PackageManagerService",
                lpparam.classLoader,
                "queryIntentServices",
                "android.content.Intent", long.class, int.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result instanceof List) {
                            List<?> list = (List<?>) result;
                            List<Object> filtered = filterResolveInfoList(list);
                            param.setResult(filtered);
                            Log.i(TAG, "queryIntentServices filtered: " + list.size() + " -> " + filtered.size());
                        }
                    }
                }
            );

            // Hook queryIntentContentProviders
            XposedHelpers.findAndHookMethod(
                "com.android.server.pm.PackageManagerService",
                lpparam.classLoader,
                "queryIntentContentProviders",
                "android.content.Intent", long.class, int.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result instanceof List) {
                            List<?> list = (List<?>) result;
                            List<Object> filtered = filterResolveInfoList(list);
                            param.setResult(filtered);
                            Log.i(TAG, "queryIntentContentProviders filtered: " + list.size() + " -> " + filtered.size());
                        }
                    }
                }
            );

            // Hook queryIntentActivitiesAsUser
            XposedHelpers.findAndHookMethod(
                "com.android.server.pm.PackageManagerService",
                lpparam.classLoader,
                "queryIntentActivitiesAsUser",
                "android.content.Intent", long.class, int.class, int.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result instanceof List) {
                            List<?> list = (List<?>) result;
                            List<Object> filtered = filterResolveInfoList(list);
                            param.setResult(filtered);
                            Log.i(TAG, "queryIntentActivitiesAsUser filtered: " + list.size() + " -> " + filtered.size());
                        }
                    }
                }
            );

            // Hook queryIntentServicesAsUser
            XposedHelpers.findAndHookMethod(
                "com.android.server.pm.PackageManagerService",
                lpparam.classLoader,
                "queryIntentServicesAsUser",
                "android.content.Intent", long.class, int.class, int.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result instanceof List) {
                            List<?> list = (List<?>) result;
                            List<Object> filtered = filterResolveInfoList(list);
                            param.setResult(filtered);
                            Log.i(TAG, "queryIntentServicesAsUser filtered: " + list.size() + " -> " + filtered.size());
                        }
                    }
                }
            );

            // Hook getApplicationInfo
            XposedHelpers.findAndHookMethod(
                "com.android.server.pm.PackageManagerService",
                lpparam.classLoader,
                "getApplicationInfo",
                String.class, long.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                        String packageName = (String) param.args[0];
                        if (shouldHide(packageName)) {
                            param.setResult(null);
                            Log.i(TAG, "getApplicationInfo hidden: " + packageName);
                        }
                    }
                }
            );

            // Hook getPackageInfo
            XposedHelpers.findAndHookMethod(
                "com.android.server.pm.PackageManagerService",
                lpparam.classLoader,
                "getPackageInfo",
                String.class, long.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                        String packageName = (String) param.args[0];
                        if (shouldHide(packageName)) {
                            param.setResult(null);
                            Log.i(TAG, "getPackageInfo hidden: " + packageName);
                        }
                    }
                }
            );

            // Hook getInstalledPackagesAsUser
            XposedHelpers.findAndHookMethod(
                "com.android.server.pm.PackageManagerService",
                lpparam.classLoader,
                "getInstalledPackagesAsUser",
                long.class, int.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result instanceof List) {
                            List<?> list = (List<?>) result;
                            List<PackageInfo> filtered = filterPackageList(list);
                            param.setResult(filtered);
                            Log.i(TAG, "getInstalledPackagesAsUser filtered: " + list.size() + " -> " + filtered.size());
                        }
                    }
                }
            );

            // Hook getInstalledApplicationsAsUser
            XposedHelpers.findAndHookMethod(
                "com.android.server.pm.PackageManagerService",
                lpparam.classLoader,
                "getInstalledApplicationsAsUser",
                long.class, int.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result instanceof List) {
                            List<?> list = (List<?>) result;
                            List<ApplicationInfo> filtered = filterApplicationList(list);
                            param.setResult(filtered);
                            Log.i(TAG, "getInstalledApplicationsAsUser filtered: " + list.size() + " -> " + filtered.size());
                        }
                    }
                }
            );

            // Hook getPackageUidAsUser
            XposedHelpers.findAndHookMethod(
                "com.android.server.pm.PackageManagerService",
                lpparam.classLoader,
                "getPackageUidAsUser",
                String.class, int.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                        String packageName = (String) param.args[0];
                        if (shouldHide(packageName)) {
                            param.setThrowable(new android.content.pm.PackageManager.NameNotFoundException(packageName));
                            Log.i(TAG, "getPackageUidAsUser hidden: " + packageName);
                        }
                    }
                }
            );

            // Hook getPackageGids
            XposedHelpers.findAndHookMethod(
                "com.android.server.pm.PackageManagerService",
                lpparam.classLoader,
                "getPackageGids",
                String.class, long.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                        String packageName = (String) param.args[0];
                        if (shouldHide(packageName)) {
                            param.setThrowable(new android.content.pm.PackageManager.NameNotFoundException(packageName));
                            Log.i(TAG, "getPackageGids hidden: " + packageName);
                        }
                    }
                }
            );

            // Hook resolveIntent
            XposedHelpers.findAndHookMethod(
                "com.android.server.pm.PackageManagerService",
                lpparam.classLoader,
                "resolveIntent",
                "android.content.Intent", long.class, int.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result != null) {
                            try {
                                // 尝试检查是否是隐藏包
                                java.lang.reflect.Field pkgField = result.getClass().getField("packageName");
                                if (pkgField != null) {
                                    String packageName = (String) pkgField.get(result);
                                    if (shouldHide(packageName)) {
                                        param.setResult(null);
                                        Log.i(TAG, "resolveIntent hidden: " + packageName);
                                    }
                                }
                            } catch (Exception e) {
                                // 忽略错误
                            }
                        }
                    }
                }
            );

            // Hook resolveContentProvider
            XposedHelpers.findAndHookMethod(
                "com.android.server.pm.PackageManagerService",
                lpparam.classLoader,
                "resolveContentProvider",
                String.class, long.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result != null) {
                            try {
                                java.lang.reflect.Field pkgField = result.getClass().getField("packageName");
                                if (pkgField != null) {
                                    String packageName = (String) pkgField.get(result);
                                    if (shouldHide(packageName)) {
                                        param.setResult(null);
                                        Log.i(TAG, "resolveContentProvider hidden: " + packageName);
                                    }
                                }
                            } catch (Exception e) {
                                // 忽略错误
                            }
                        }
                    }
                }
            );

            // Hook getInstallerPackageName
            XposedHelpers.findAndHookMethod(
                "com.android.server.pm.PackageManagerService",
                lpparam.classLoader,
                "getInstallerPackageName",
                String.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                        String packageName = (String) param.args[0];
                        if (shouldHide(packageName)) {
                            param.setThrowable(new android.content.pm.PackageManager.NameNotFoundException(packageName));
                            Log.i(TAG, "getInstallerPackageName hidden: " + packageName);
                        }
                    }
                }
            );

            Log.i(TAG, "System PackageManager hooks installed successfully");
        } catch (Exception e) {
            Log.e(TAG, "System hook failed: " + e.getMessage());
        }
    }

    private void hookLibcFileAccess(XC_LoadPackage.LoadPackageParam lpparam) {
        try {
            // Hook libc的open函数
            XposedBridge.hookAllMethods(
                Class.forName("java.io.File", false, lpparam.classLoader),
                "exists",
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                        File file = (File) param.thisObject;
                        String path = file.getAbsolutePath();
                        if (isRootFile(path)) {
                            param.setResult(false);
                            Log.i(TAG, "File.exists hidden: " + path);
                        }
                    }
                }
            );
            
            // Hook File的isFile方法
            XposedBridge.hookAllMethods(
                Class.forName("java.io.File", false, lpparam.classLoader),
                "isFile",
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                        File file = (File) param.thisObject;
                        String path = file.getAbsolutePath();
                        if (isRootFile(path)) {
                            param.setResult(false);
                            Log.i(TAG, "File.isFile hidden: " + path);
                        }
                    }
                }
            );
            
            // Hook File的canExecute方法
            XposedBridge.hookAllMethods(
                Class.forName("java.io.File", false, lpparam.classLoader),
                "canExecute",
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                        File file = (File) param.thisObject;
                        String path = file.getAbsolutePath();
                        if (isRootFile(path)) {
                            param.setResult(false);
                            Log.i(TAG, "File.canExecute hidden: " + path);
                        }
                    }
                }
            );
            
            // Hook Runtime.exec方法（有些检测工具会执行su命令）
            XposedBridge.hookAllMethods(
                Runtime.class,
                "exec",
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                        String[] cmd = (String[]) param.args[0];
                        if (cmd.length > 0) {
                            String command = cmd[0];
                            // 如果命令包含su或magisk
                            if (command != null && (command.contains("su") || 
                                                   command.contains("magisk") || 
                                                   command.contains("zygisk"))) {
                                param.setResult(null);
                                Log.i(TAG, "Runtime.exec blocked: " + command);
                            }
                        }
                    }
                }
            );
            
            Log.i(TAG, "Libc file hooks installed for: " + lpparam.packageName);
        } catch (Exception e) {
            Log.e(TAG, "Libc file hook failed: " + e.getMessage());
        }
    }
    
    private boolean isRootFile(String path) {
        if (path == null) return false;
        
        // 常见的Root相关文件路径
        String[] rootPaths = {
            "/system/bin/su",
            "/system/xbin/su",
            "/system/sbin/su",
            "/sbin/su",
            "/vendor/bin/su",
            "/system/bin/daemonsu",
            "/system/xbin/daemonsu",
            "/system/sbin/daemonsu",
            "/sbin/daemonsu",
            "/data/adb/",
            "/data/adb/magisk",
            "/data/adb/modules",
            "/data/adb/ksu",
            "/data/adb/kernelsu",
            "/data/adb/lspd",
            "/data/adb/lsposed",
            "/system/app/Magisk",
            "/system/priv-app/Magisk",
            "/system/app/Magisk.apk",
            "/system/priv-app/Magisk.apk",
            "/system/app/MagiskDebug",
            "/system/priv-app/MagiskDebug",
            "/apex/com.android.runtime/bin/su",
            "/system_root/system/bin/su",
            "/system_root/system/xbin/su",
            "/system_root/system/sbin/su"
        };
        
        for (String rootPath : rootPaths) {
            if (path.startsWith(rootPath) || path.contains(rootPath)) {
                return true;
            }
        }
        
        return false;
    }

    private void hookAppPackageManager(XC_LoadPackage.LoadPackageParam lpparam) {
        try {
            // Hook ApplicationPackageManager for individual apps
            Class<?> pmClass = XposedHelpers.findClass("android.app.ApplicationPackageManager", lpparam.classLoader);
            
            // Hook getInstalledPackages
            XposedHelpers.findAndHookMethod(pmClass, "getInstalledPackages", int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result instanceof List) {
                            List<?> list = (List<?>) result;
                            List<PackageInfo> filtered = filterPackageList(list);
                            param.setResult(filtered);
                        }
                    }
                }
            );

            // Hook getInstalledApplications
            XposedHelpers.findAndHookMethod(pmClass, "getInstalledApplications", int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result instanceof List) {
                            List<?> list = (List<?>) result;
                            List<ApplicationInfo> filtered = filterApplicationList(list);
                            param.setResult(filtered);
                        }
                    }
                }
            );

            // Hook getPackageInfo
            XposedHelpers.findAndHookMethod(pmClass, "getPackageInfo", String.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                        String packageName = (String) param.args[0];
                        if (shouldHide(packageName)) {
                            param.setThrowable(new android.content.pm.PackageManager.NameNotFoundException(packageName));
                            Log.i(TAG, "App getPackageInfo hidden: " + packageName);
                        }
                    }
                }
            );

            // Hook queryIntentActivities
            XposedHelpers.findAndHookMethod(pmClass, "queryIntentActivities", 
                "android.content.Intent", int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result instanceof List) {
                            List<?> list = (List<?>) result;
                            List<Object> filtered = filterResolveInfoList(list);
                            param.setResult(filtered);
                        }
                    }
                }
            );

            // Hook queryIntentServices for app
            XposedHelpers.findAndHookMethod(pmClass, "queryIntentServices", 
                "android.content.Intent", int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result instanceof List) {
                            List<?> list = (List<?>) result;
                            List<Object> filtered = filterResolveInfoList(list);
                            param.setResult(filtered);
                        }
                    }
                }
            );

            // Hook queryIntentContentProviders for app
            XposedHelpers.findAndHookMethod(pmClass, "queryIntentContentProviders", 
                "android.content.Intent", int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result instanceof List) {
                            List<?> list = (List<?>) result;
                            List<Object> filtered = filterResolveInfoList(list);
                            param.setResult(filtered);
                        }
                    }
                }
            );

            // Hook getApplicationInfo for app
            XposedHelpers.findAndHookMethod(pmClass, "getApplicationInfo", 
                String.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                        String packageName = (String) param.args[0];
                        if (shouldHide(packageName)) {
                            param.setThrowable(new android.content.pm.PackageManager.NameNotFoundException(packageName));
                            Log.i(TAG, "App getApplicationInfo hidden: " + packageName);
                        }
                    }
                }
            );

            // Hook resolveActivity
            XposedHelpers.findAndHookMethod(pmClass, "resolveActivity", 
                "android.content.Intent", int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result != null) {
                            try {
                                // 尝试检查是否是隐藏包
                                java.lang.reflect.Field pkgField = result.getClass().getField("packageName");
                                if (pkgField != null) {
                                    String packageName = (String) pkgField.get(result);
                                    if (shouldHide(packageName)) {
                                        param.setResult(null);
                                        Log.i(TAG, "resolveActivity hidden: " + packageName);
                                    }
                                }
                            } catch (Exception e) {
                                // 忽略错误
                            }
                        }
                    }
                }
            );

            // Hook resolveService
            XposedHelpers.findAndHookMethod(pmClass, "resolveService", 
                "android.content.Intent", int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result != null) {
                            try {
                                java.lang.reflect.Field pkgField = result.getClass().getField("packageName");
                                if (pkgField != null) {
                                    String packageName = (String) pkgField.get(result);
                                    if (shouldHide(packageName)) {
                                        param.setResult(null);
                                        Log.i(TAG, "resolveService hidden: " + packageName);
                                    }
                                }
                            } catch (Exception e) {
                                // 忽略错误
                            }
                        }
                    }
                }
            );

            // Hook resolveContentProvider
            XposedHelpers.findAndHookMethod(pmClass, "resolveContentProvider", 
                String.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        Object result = param.getResult();
                        if (result != null) {
                            try {
                                java.lang.reflect.Field pkgField = result.getClass().getField("packageName");
                                if (pkgField != null) {
                                    String packageName = (String) pkgField.get(result);
                                    if (shouldHide(packageName)) {
                                        param.setResult(null);
                                        Log.i(TAG, "resolveContentProvider hidden: " + packageName);
                                    }
                                }
                            } catch (Exception e) {
                                // 忽略错误
                            }
                        }
                    }
                }
            );

            // Hook getPackageUid
            XposedHelpers.findAndHookMethod(pmClass, "getPackageUid", 
                String.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                        String packageName = (String) param.args[0];
                        if (shouldHide(packageName)) {
                            param.setThrowable(new android.content.pm.PackageManager.NameNotFoundException(packageName));
                            Log.i(TAG, "getPackageUid hidden: " + packageName);
                        }
                    }
                }
            );

            // Hook getInstallerPackageName
            XposedHelpers.findAndHookMethod(pmClass, "getInstallerPackageName", 
                String.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                        String packageName = (String) param.args[0];
                        if (shouldHide(packageName)) {
                            param.setThrowable(new android.content.pm.PackageManager.NameNotFoundException(packageName));
                            Log.i(TAG, "getInstallerPackageName hidden: " + packageName);
                        }
                    }
                }
            );

            // Hook getInstalledPackagesAsUser (应用层)
            try {
                XposedHelpers.findAndHookMethod(pmClass, "getInstalledPackagesAsUser", 
                    int.class, int.class,
                    new XC_MethodHook() {
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                            Object result = param.getResult();
                            if (result instanceof List) {
                                List<?> list = (List<?>) result;
                                List<PackageInfo> filtered = filterPackageList(list);
                                param.setResult(filtered);
                            }
                        }
                    }
                );
            } catch (Exception e) {
                // 有些API可能不存在，忽略
            }

            // Hook getInstalledApplicationsAsUser (应用层)
            try {
                XposedHelpers.findAndHookMethod(pmClass, "getInstalledApplicationsAsUser", 
                    int.class, int.class,
                    new XC_MethodHook() {
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                            Object result = param.getResult();
                            if (result instanceof List) {
                                List<?> list = (List<?>) result;
                                List<ApplicationInfo> filtered = filterApplicationList(list);
                                param.setResult(filtered);
                            }
                        }
                    }
                );
            } catch (Exception e) {
                // 有些API可能不存在，忽略
            }

            Log.i(TAG, "App PackageManager hooks installed for: " + lpparam.packageName);
        } catch (Exception e) {
            Log.e(TAG, "App hook failed for " + lpparam.packageName + ": " + e.getMessage());
        }
    }

    private boolean shouldHide(String packageName) {
        if (packageName == null) return false;
        for (String pkg : HIDDEN_PACKAGES) {
            if (packageName.equals(pkg) || packageName.startsWith(pkg + ".")) {
                return true;
            }
        }
        return false;
    }

    private List<PackageInfo> filterPackageList(List<?> list) {
        List<PackageInfo> result = new ArrayList<>();
        for (Object item : list) {
            if (item instanceof PackageInfo) {
                PackageInfo pi = (PackageInfo) item;
                if (!shouldHide(pi.packageName)) {
                    result.add(pi);
                }
            }
        }
        return result;
    }

    private List<ApplicationInfo> filterApplicationList(List<?> list) {
        List<ApplicationInfo> result = new ArrayList<>();
        for (Object item : list) {
            if (item instanceof ApplicationInfo) {
                ApplicationInfo ai = (ApplicationInfo) item;
                if (!shouldHide(ai.packageName)) {
                    result.add(ai);
                }
            }
        }
        return result;
    }

    private List<Object> filterResolveInfoList(List<?> list) {
        List<Object> result = new ArrayList<>();
        try {
            for (Object item : list) {
                // 尝试通过反射获取 packageName
                String packageName = null;
                try {
                    // ResolveInfo.activityInfo.packageName 或 ResolveInfo.serviceInfo.packageName
                    java.lang.reflect.Field activityInfoField = item.getClass().getField("activityInfo");
                    if (activityInfoField != null) {
                        Object activityInfo = activityInfoField.get(item);
                        if (activityInfo != null) {
                            java.lang.reflect.Field pkgField = activityInfo.getClass().getField("packageName");
                            if (pkgField != null) {
                                packageName = (String) pkgField.get(activityInfo);
                            }
                        }
                    }
                } catch (Exception e1) {
                    try {
                        java.lang.reflect.Field serviceInfoField = item.getClass().getField("serviceInfo");
                        if (serviceInfoField != null) {
                            Object serviceInfo = serviceInfoField.get(item);
                            if (serviceInfo != null) {
                                java.lang.reflect.Field pkgField = serviceInfo.getClass().getField("packageName");
                                if (pkgField != null) {
                                    packageName = (String) pkgField.get(serviceInfo);
                                }
                            }
                        }
                    } catch (Exception e2) {
                        // 忽略，保留该项
                    }
                }

                if (packageName == null || !shouldHide(packageName)) {
                    result.add(item);
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "Filter ResolveInfo failed: " + e.getMessage());
            // 出错时返回原始列表
            return new ArrayList<>(list);
        }
        return result;
    }
}
