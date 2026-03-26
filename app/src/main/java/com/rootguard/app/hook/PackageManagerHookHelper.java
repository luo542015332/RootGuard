package com.rootguard.app.hook;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;

/**
 * PackageManager Hook 辅助类
 * 通过动态代理拦截 PackageManager 的方法，过滤掉隐藏的包
 */
public class PackageManagerHookHelper {

    private static final String TAG = "PandaSU-PMHook";
    private static final String TARGET_PACKAGE = "com.rootguard.app";

    // 需要隐藏的包名关键词
    private static final String[] HIDE_KEYWORDS = {
            // ========== Root 框架 ==========
            // LSPosed
            "lsposed", "lspd", "org.lsposed", "com.lsposed", "org.lsposed.manager", "org.lsposed.lspd", "lsposedmanager",
            // Riru
            "riru", "com.rikk.rikk", "com.rikk.blocksms", "com.rikk.whatsapp",
            // Xposed
            "xposed", "de.robv.android.xposed", "org.meowcat.edxposed", "org.meowcat.edxposed.manager",
            // Magisk
            "magisk", "com.topjohnwu.magisk", "com.topjohnwu.magisk.delta", "com.topjohnwu.magisk.dtok",
            // KernelSU
            "kernelsu", "ksu", "me.weishu.kernelsu", "me.weishu.kernelsu.ui", "me.weishu.exp",
            // APatch
            "apatch", "com.apatch", "npf.android", "com.npftech",
            // SuperSU
            "supersu", "eu.chainfire.supersu", "com.noshufou.android.su", "com.koushikdutta.superuser",
            // KingRoot
            "kingroot", "com.kingroot", "com.kingouser", "com.kingroot.kinguser",
            // 百度 root
            "com.baidu", "com.qihoo", "com.shuame",

            // ========== 检测工具 ==========
            // AppList Detector
            "icu.nullptr.applistdetector",
            // Hunter
            "com.zhenxi.hunter", "zhenxi.hunter",
            // Ruru
            "com.github.byxiaorun.ruru", "byxiaorun.ruru",
            // Securify
            "com.RabahX.Securify",
            // TB Checker
            "krypton.tbsafetychecker",
            // Momo
            "momo", "com.momo",
            // 核心破解
            "leaname", "com.android.leaname", "com.leaname",
            // 爱玩机/Scene
            "scene", "aliuoud", "com.aliuoud", "com.now", "now",
            // 360
            "com.qihoo360", "com.qihoo.security", "com.qihoo.appstore",
            // LBE
            "com.lbe.security", "com.lbe.securitymirror",

            // ========== 隐藏/隔离工具 ==========
            // HMA (Hide My Applist)
            "hidemyapplist", "com.tsng.hidemyapplist", "com.tsng.hma", "hmaplugin",
            // 冰箱
            "icebox", "com.catchingnow", "com.icebox",
            // 隔离沙盒
            "sandbox", "isolated", "hide", "ghost", "cloner", "dual",
            // Shizuku
            "shizuku", "moe.shizuku.privileged", "rikka",
            // Asylum
            "asylum", "com.asylum", "npf.asylum",
            // 多开分身
            "multiclone", "com.clone", "parallel", "dualapp", "com.dualapp",

            // ========== 银行类 ==========
            // 国有大行
            "com.icbc", "com.ccb", "com.boc", "com.abc", "com.bankcomm",
            // 招商/民生/兴业
            "cmbc", "com.cmbc", "cib", "com.cib",
            // 邮储/浦发/中信
            "psbc", "spdb", "com.spdb", "citic", "com.citic",
            // 平安/广发/光大/华夏
            "pingan", "com.pingan", "cgb", "com.cgb", "cebbank", "com.ceb", "hxbank", "com.hxb",
            // 浙商/渤海/恒丰
            "czbank", "com.czbank", "bohaib", "com.bohaib",
            // 农商/信用社
            "srcb", "zjnx", "nxbank",

            // ========== 支付/金融类 ==========
            // 微信/QQ (已移除)
            // 支付宝
            "com.alipay.mobile.quinox", "com.eg.android.AlipayGphone", "alipay",
            // 京东金融
            "com.jd.jrapp", "com.jd.paying", "jdjr",
            // 云闪付/银联
            "com.unionpay", "com.chinamworld", "cmbcfinance",
            // 抖音支付
            "com.ss.android.ugc.pay", "com.bytedance.pay",
            // 拼多多
            "com.xunmeng.pinduoduo", "pinduoduo",
            // 美团
            "com.sankuai.meituan", "meituan", "dianping",
            // 网易支付
            "com.netease.game", "neteasepay",
            // 翼支付/沃支付
            "com.bestpay", "woPay", "com.wo.pay",
            // 壹钱包/平安付
            "com.onebank", "yqb",
            // 财付通
            "tenpay", "qwallet", "com.tenpay.wallet",
            // 快捷支付
            "quickpay", "unionpay",

            // ========== 游戏类 ==========
            // 腾讯游戏
            "com.tencent.tmgp.sgame", "com.tencent.tmgp.pubgmhd", "com.tencent.tmgp.cf",
            "com.tencent.tmgp.cod", "com.tencent.tmgp.wuxia",
            // 网易游戏
            "com.miHoYo.GenshinImpact", "com.miHoYo.enterprise.GenshinImpact", "com.netease.onmyoji",
            "com.netease.wyhmxy", "com.netease.Immortal", "com.netease.qmzs",
            // 米哈游
            "com.mihoyo.hyperion", "com.mihoyo.崩坏星穹铁道", "com.mihoyo.hkrpg",
            // 阿里游戏
            "com.aligames", "aligames",
            // 完美世界
            "com.wantu", "perfect", "com.perfectworld",
            // 游族
            "com.youzu", "youzu",
            // 盛大
            "com.shanda", "shanda",
            // 360游戏
            "com.qihoo.game", "game.qihoo",
            // 百度游戏
            "com.baidu.game", "baidugame",
            // OPPO/vivo游戏
            "com.oppo.game", "com.vivo.game",
            // 华为游戏
            "com.huawei.game",

            // ========== 通用关键词 ==========
            // Root 相关
            "su", "supersu", "superruser", "root", "kingoroot", "rootuser", "rootmaster",
            // Hook/注入相关
            "frida", "xhook", "libxhook", "substrate", "inlinehook", "hook",
            // 检测防御相关
            "detector", "detection", "checker", "safety", "integrity", "safetynet",
            "attestation", "playintegrity", "verify", "rootcloak", "rootcloakplus"
    };

    private static Context sCurrentContext = null;

    /**
     * JNI 入口 - 被 native 模块调用
     * @param context Application Context
     */
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

    /**
     * 执行 Hook
     */
    private static void hookPackageManager() {
        try {
            // 获取系统 PackageManager
            PackageManager systemPM = sCurrentContext.getPackageManager();

            // 通过反射获取 mPM 字段（实际系统 PackageManager）
            Class<?> activityThreadClass = Class.forName("android.app.ActivityThread");
            Method currentActivityThread = activityThreadClass.getMethod("currentActivityThread");
            Object currentThread = currentActivityThread.invoke(null);

            // 获取 sPackageManager
            Field sPackageManagerField = activityThreadClass.getDeclaredField("sPackageManager");
            sPackageManagerField.setAccessible(true);
            final PackageManager originalPM = (PackageManager) sPackageManagerField.get(currentThread);

            // 创建代理
            InvocationHandler handler = new InvocationHandler() {
                @Override
                public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                    String methodName = method.getName();

                    try {
                        // 拦截 getInstalledPackages
                        if (methodName.equals("getInstalledPackages")) {
                            Log.d(TAG, "getInstalledPackages intercepted");
                            List<PackageInfo> result = (List<PackageInfo>) method.invoke(originalPM, args);
                            return filterPackageList(result);
                        }

                        // 拦截 getInstalledPackagesAsUser
                        if (methodName.equals("getInstalledPackagesAsUser")) {
                            Log.d(TAG, "getInstalledPackagesAsUser intercepted");
                            List<PackageInfo> result = (List<PackageInfo>) method.invoke(originalPM, args);
                            return filterPackageList(result);
                        }

                        // 拦截 getPackageInfo
                        if (methodName.equals("getPackageInfo")) {
                            if (args != null && args.length > 0 && args[0] != null) {
                                String packageName = args[0].toString();
                                if (shouldHidePackage(packageName)) {
                                    Log.d(TAG, "Blocking getPackageInfo for: " + packageName);
                                    throw new PackageManager.NameNotFoundException(packageName);
                                }
                            }
                        }

                        // 拦截 queryIntentActivities
                        if (methodName.equals("queryIntentActivities")) {
                            if (args != null && args.length > 1 && args[0] != null) {
                                android.content.Intent intent = (android.content.Intent) args[0];
                                if (intent != null && "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS".equals(intent.getAction())) {
                                    Log.d(TAG, "Blocking battery optimization query");
                                    return new ArrayList<>();
                                }
                            }
                        }

                        // 拦截 getApplicationInfo
                        if (methodName.equals("getApplicationInfo")) {
                            if (args != null && args.length > 0 && args[0] != null) {
                                String packageName = args[0].toString();
                                if (shouldHidePackage(packageName)) {
                                    Log.d(TAG, "Blocking getApplicationInfo for: " + packageName);
                                    throw new PackageManager.NameNotFoundException(packageName);
                                }
                            }
                        }

                    } catch (PackageManager.NameNotFoundException e) {
                        throw e;
                    } catch (Exception e) {
                        Log.e(TAG, "Error in invoke: " + e.getMessage());
                    }

                    return method.invoke(originalPM, args);
                }
            };

            // 创建代理对象
            Class<?> iPackageManagerClass = Class.forName("android.content.pm.IPackageManager");
            Object proxyPM = Proxy.newProxyInstance(
                    iPackageManagerClass.getClassLoader(),
                    new Class<?>[] { iPackageManagerClass },
                    handler);

            // 替换 sPackageManager
            sPackageManagerField.set(currentThread, proxyPM);

            // 替换 Context 的 mPackageManager
            Field mPMField = Context.class.getDeclaredField("mPackageManager");
            mPMField.setAccessible(true);
            mPMField.set(sCurrentContext, proxyPM);

            Log.i(TAG, "PackageManager replaced successfully");

        } catch (Exception e) {
            Log.e(TAG, "Failed to hook PackageManager: " + e.getMessage(), e);
        }
    }

    /**
     * 过滤包列表
     */
    private static List<PackageInfo> filterPackageList(List<PackageInfo> originalList) {
        if (originalList == null) return null;

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

    /**
     * 判断是否应该隐藏包
     */
    private static boolean shouldHidePackage(String packageName) {
        if (packageName == null) return false;

        String lowerName = packageName.toLowerCase();

        for (String keyword : HIDE_KEYWORDS) {
            if (lowerName.contains(keyword)) {
                Log.d(TAG, "Hiding package: " + packageName + " (matched: " + keyword + ")");
                return true;
            }
        }

        return false;
    }

    /**
     * JNI 回调 - 初始化 Hook
     * 由 native 模块调用
     */
    public static void jniInit(android.content.Context context) {
        init(context);
    }
}