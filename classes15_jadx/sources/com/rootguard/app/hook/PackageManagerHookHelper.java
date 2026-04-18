package com.rootguard.app.hook;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes15.dex */
public class PackageManagerHookHelper {
    private static final String TAG = "PandaSU-PMHook";
    private static final String TARGET_PACKAGE = "com.rootguard.app";
    private static final String[] HIDE_KEYWORDS = {"lsposed", "lspd", "org.lsposed", "com.lsposed", "org.lsposed.manager", "org.lsposed.lspd", "lsposedmanager", "riru", "com.rikk.rikk", "com.rikk.blocksms", "com.rikk.whatsapp", "xposed", "de.robv.android.xposed", "org.meowcat.edxposed", "org.meowcat.edxposed.manager", "magisk", "com.topjohnwu.magisk", "com.topjohnwu.magisk.delta", "com.topjohnwu.magisk.dtok", "kernelsu", "ksu", "me.weishu.kernelsu", "me.weishu.kernelsu.ui", "me.weishu.exp", "apatch", "com.apatch", "npf.android", "com.npftech", "supersu", "eu.chainfire.supersu", "com.noshufou.android.su", "com.koushikdutta.superuser", "kingroot", "com.kingroot", "com.kingouser", "com.kingroot.kinguser", "com.baidu", "com.qihoo", "com.shuame", "icu.nullptr.applistdetector", "com.zhenxi.hunter", "zhenxi.hunter", "com.github.byxiaorun.ruru", "byxiaorun.ruru", "com.RabahX.Securify", "krypton.tbsafetychecker", "momo", "com.momo", "leaname", "com.android.leaname", "com.leaname", "scene", "aliuoud", "com.aliuoud", "com.now", "now", "com.qihoo360", "com.qihoo.security", "com.qihoo.appstore", "com.lbe.security", "com.lbe.securitymirror", "hidemyapplist", "com.tsng.hidemyapplist", "com.tsng.hma", "hmaplugin", "icebox", "com.catchingnow", "com.icebox", "sandbox", "isolated", "hide", "ghost", "cloner", "dual", "shizuku", "moe.shizuku.privileged", "rikka", "asylum", "com.asylum", "npf.asylum", "multiclone", "com.clone", "parallel", "dualapp", "com.dualapp", "com.icbc", "com.ccb", "com.boc", "com.abc", "com.bankcomm", "cmbc", "com.cmbc", "cib", "com.cib", "psbc", "spdb", "com.spdb", "citic", "com.citic", "pingan", "com.pingan", "cgb", "com.cgb", "cebbank", "com.ceb", "hxbank", "com.hxb", "czbank", "com.czbank", "bohaib", "com.bohaib", "srcb", "zjnx", "nxbank", "com.alipay.mobile.quinox", "com.eg.android.AlipayGphone", "alipay", "com.jd.jrapp", "com.jd.paying", "jdjr", "com.unionpay", "com.chinamworld", "cmbcfinance", "com.ss.android.ugc.pay", "com.bytedance.pay", "com.xunmeng.pinduoduo", "pinduoduo", "com.sankuai.meituan", "meituan", "dianping", "com.netease.game", "neteasepay", "com.bestpay", "woPay", "com.wo.pay", "com.onebank", "yqb", "tenpay", "qwallet", "com.tenpay.wallet", "quickpay", "unionpay", "com.tencent.tmgp.sgame", "com.tencent.tmgp.pubgmhd", "com.tencent.tmgp.cf", "com.tencent.tmgp.cod", "com.tencent.tmgp.wuxia", "com.miHoYo.GenshinImpact", "com.miHoYo.enterprise.GenshinImpact", "com.netease.onmyoji", "com.netease.wyhmxy", "com.netease.Immortal", "com.netease.qmzs", "com.mihoyo.hyperion", "com.mihoyo.崩坏星穹铁道", "com.mihoyo.hkrpg", "com.aligames", "aligames", "com.wantu", "perfect", "com.perfectworld", "com.youzu", "youzu", "com.shanda", "shanda", "com.qihoo.game", "game.qihoo", "com.baidu.game", "baidugame", "com.oppo.game", "com.vivo.game", "com.huawei.game", "su", "supersu", "superruser", "root", "kingoroot", "rootuser", "rootmaster", "frida", "xhook", "libxhook", "substrate", "inlinehook", "hook", "detector", "detection", "checker", "safety", "integrity", "safetynet", "attestation", "playintegrity", "verify", "rootcloak", "rootcloakplus"};
    private static Context sCurrentContext = null;

    public static void init(Context context) {
        try {
            Log.i(TAG, "PackageManagerHookHelper.init() called");
            sCurrentContext = context.getApplicationContext();
            hookPackageManager();
            Log.i(TAG, "PackageManager hook installed successfully");
        } catch (Exception e) {
            Log.e(TAG, "Failed to init PackageManager hook: " + e.getMessage(), e);
        }
    }

    private static void hookPackageManager() {
        try {
            sCurrentContext.getPackageManager();
            Class<?> activityThreadClass = Class.forName("android.app.ActivityThread");
            Method currentActivityThread = activityThreadClass.getMethod("currentActivityThread", new Class[0]);
            Object currentThread = currentActivityThread.invoke(null, new Object[0]);
            Field sPackageManagerField = activityThreadClass.getDeclaredField("sPackageManager");
            sPackageManagerField.setAccessible(true);
            final PackageManager originalPM = (PackageManager) sPackageManagerField.get(currentThread);
            InvocationHandler handler = new InvocationHandler() { // from class: com.rootguard.app.hook.PackageManagerHookHelper.1
                @Override // java.lang.reflect.InvocationHandler
                public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                    Intent intent;
                    String methodName = method.getName();
                    try {
                    } catch (PackageManager.NameNotFoundException e) {
                        throw e;
                    } catch (Exception e2) {
                        Log.e(PackageManagerHookHelper.TAG, "Error in invoke: " + e2.getMessage());
                    }
                    if (methodName.equals("getInstalledPackages")) {
                        Log.d(PackageManagerHookHelper.TAG, "getInstalledPackages intercepted");
                        List<PackageInfo> result = (List) method.invoke(originalPM, args);
                        return PackageManagerHookHelper.filterPackageList(result);
                    }
                    if (methodName.equals("getInstalledPackagesAsUser")) {
                        Log.d(PackageManagerHookHelper.TAG, "getInstalledPackagesAsUser intercepted");
                        List<PackageInfo> result2 = (List) method.invoke(originalPM, args);
                        return PackageManagerHookHelper.filterPackageList(result2);
                    }
                    if (methodName.equals("getPackageInfo") && args != null && args.length > 0 && args[0] != null) {
                        String packageName = args[0].toString();
                        if (PackageManagerHookHelper.shouldHidePackage(packageName)) {
                            Log.d(PackageManagerHookHelper.TAG, "Blocking getPackageInfo for: " + packageName);
                            throw new PackageManager.NameNotFoundException(packageName);
                        }
                    }
                    if (methodName.equals("queryIntentActivities") && args != null && args.length > 1 && args[0] != null && (intent = (Intent) args[0]) != null && "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS".equals(intent.getAction())) {
                        Log.d(PackageManagerHookHelper.TAG, "Blocking battery optimization query");
                        return new ArrayList();
                    }
                    if (methodName.equals("getApplicationInfo") && args != null && args.length > 0 && args[0] != null) {
                        String packageName2 = args[0].toString();
                        if (PackageManagerHookHelper.shouldHidePackage(packageName2)) {
                            Log.d(PackageManagerHookHelper.TAG, "Blocking getApplicationInfo for: " + packageName2);
                            throw new PackageManager.NameNotFoundException(packageName2);
                        }
                    }
                    return method.invoke(originalPM, args);
                }
            };
            Class<?> iPackageManagerClass = Class.forName("android.content.pm.IPackageManager");
            Object proxyPM = Proxy.newProxyInstance(iPackageManagerClass.getClassLoader(), new Class[]{iPackageManagerClass}, handler);
            sPackageManagerField.set(currentThread, proxyPM);
            Field mPMField = Context.class.getDeclaredField("mPackageManager");
            mPMField.setAccessible(true);
            mPMField.set(sCurrentContext, proxyPM);
            Log.i(TAG, "PackageManager replaced successfully");
        } catch (Exception e) {
            Log.e(TAG, "Failed to hook PackageManager: " + e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<PackageInfo> filterPackageList(List<PackageInfo> originalList) {
        if (originalList == null) {
            return null;
        }
        List<PackageInfo> filtered = new ArrayList<>();
        int hiddenCount = 0;
        for (PackageInfo info : originalList) {
            if (!shouldHidePackage(info.packageName)) {
                filtered.add(info);
            } else {
                hiddenCount++;
            }
        }
        if (hiddenCount > 0) {
            Log.i(TAG, "Filtered " + hiddenCount + " packages, remaining: " + filtered.size());
        }
        return filtered;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean shouldHidePackage(String packageName) {
        if (packageName == null) {
            return false;
        }
        String lowerName = packageName.toLowerCase();
        for (String keyword : HIDE_KEYWORDS) {
            if (lowerName.contains(keyword)) {
                Log.d(TAG, "Hiding package: " + packageName + " (matched: " + keyword + ")");
                return true;
            }
        }
        return false;
    }

    public static void jniInit(Context context) {
        init(context);
    }
}
