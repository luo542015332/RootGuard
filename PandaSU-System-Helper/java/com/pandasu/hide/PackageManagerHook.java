package com.pandasu.hide;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;

import java.lang.reflect.Method;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;

/**
 * PackageManager Hook 辅助类
 * 用于拦截并过滤 PackageManager 返回的应用列表
 */
public class PackageManagerHook {

    private static final String TAG = "PandaSU-PMHook";
    private static final String TARGET_PACKAGE = "com.pandasu.hide";

    // 需要隐藏的包名关键词
    private static final String[] HIDE_KEYWORDS = {
            "lsposed",
            "lspd",
            "org.lsposed",
            "com.lsposed",
            "riru",
            "xposed",
            "edxposed",
            "magisk",
            "kernelsu",
            "ksu",
            "apatch",
            "shamiko",
            "scene",
            "aliuoud",  // Scene
            "now",      // 爱玩机
            "leaname"   // 核心破解
    };

    /**
     * 初始化 Hook
     */
    public static void init(Context context) {
        try {
            Log.i(TAG, "Initializing PackageManager Hook...");

            // 获取 PackageManager
            PackageManager pm = context.getPackageManager();

            // Hook getInstalledPackages
            hookGetInstalledPackages(pm);

            // Hook queryIntentActivities
            hookQueryIntentActivities(pm);

            // Hook getPackageInfo
            hookGetPackageInfo(pm);

            Log.i(TAG, "PackageManager Hook initialized successfully");
        } catch (Exception e) {
            Log.e(TAG, "Failed to initialize: " + e.getMessage(), e);
        }
    }

    /**
     * Hook getInstalledPackages 方法
     */
    private static void hookGetInstalledPackages(PackageManager pm) {
        try {
            Method getInstalledPackages = PackageManager.class.getMethod(
                    "getInstalledPackages", int.class);

            // 创建 InvocationHandler 来拦截调用
            InvocationHandler handler = new InvocationHandler() {
                @Override
                public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                    if ("getInstalledPackages".equals(method.getName())) {
                        Log.d(TAG, "getInstalledPackages called, filtering results...");

                        // 调用原始方法获取结果
                        Object result = method.invoke(pm, args);

                        if (result instanceof List) {
                            @SuppressWarnings("unchecked")
                            List<PackageInfo> originalList = (List<PackageInfo>) result;
                            List<PackageInfo> filteredList = filterPackageList(originalList);

                            Log.d(TAG, "Filtered " + (originalList.size() - filteredList.size())
                                    + " packages from " + originalList.size());

                            return filteredList;
                        }

                        return result;
                    }

                    // 其他方法直接放行
                    return method.invoke(pm, args);
                }
            };

            // 替换 PackageManager
            replacePackageManager(pm, handler);

            Log.i(TAG, "getInstalledPackages hooked");
        } catch (Exception e) {
            Log.e(TAG, "Failed to hook getInstalledPackages: " + e.getMessage(), e);
        }
    }

    /**
     * Hook queryIntentActivities 方法
     */
    private static void hookQueryIntentActivities(PackageManager pm) {
        try {
            // 这个方法用于检测 Xposed 模块
            Method queryIntentActivities = PackageManager.class.getMethod(
                    "queryIntentActivities",
                    android.content.Intent.class,
                    int.class);

            InvocationHandler handler = new InvocationHandler() {
                @Override
                public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                    if ("queryIntentActivities".equals(method.getName())) {
                        // 检查是否在检测 Xposed
                        if (args != null && args.length > 0 && args[0] != null) {
                            android.content.Intent intent = (android.content.Intent) args[0];
                            String action = intent.getAction();
                            if (action != null && action.contains("xposed")) {
                                Log.d(TAG, "Blocking Xposed intent query");
                                return new ArrayList<>();
                            }
                        }

                        Object result = method.invoke(pm, args);

                        if (result instanceof List) {
                            @SuppressWarnings("unchecked")
                            List<android.content.pm.ResolveInfo> originalList =
                                    (List<android.content.pm.ResolveInfo>) result;
                            // 过滤 Xposed 相关的 ResolveInfo
                            List<android.content.pm.ResolveInfo> filteredList =
                                    filterResolveInfoList(originalList);
                            return filteredList;
                        }

                        return result;
                    }

                    return method.invoke(pm, args);
                }
            };

            replacePackageManager(pm, handler);

            Log.i(TAG, "queryIntentActivities hooked");
        } catch (Exception e) {
            Log.e(TAG, "Failed to hook queryIntentActivities: " + e.getMessage(), e);
        }
    }

    /**
     * Hook getPackageInfo 方法
     */
    private static void hookGetPackageInfo(PackageManager pm) {
        try {
            Method getPackageInfo = PackageManager.class.getMethod(
                    "getPackageInfo", String.class, int.class);

            InvocationHandler handler = new InvocationHandler() {
                @Override
                public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                    if ("getPackageInfo".equals(method.getName())) {
                        if (args != null && args.length > 0 && args[0] != null) {
                            String packageName = (String) args[0];
                            if (shouldHidePackage(packageName)) {
                                Log.d(TAG, "Blocking getPackageInfo for: " + packageName);
                                // 抛出异常表示包不存在
                                throw new PackageManager.NameNotFoundException(packageName);
                            }
                        }
                    }

                    return method.invoke(pm, args);
                }
            };

            replacePackageManager(pm, handler);

            Log.i(TAG, "getPackageInfo hooked");
        } catch (Exception e) {
            Log.e(TAG, "Failed to hook getPackageInfo: " + e.getMessage(), e);
        }
    }

    /**
     * 替换 PackageManager 实例
     */
    private static void replacePackageManager(PackageManager pm, InvocationHandler handler) {
        try {
            // 获取 Context 的 PackageManager
            Context ctx = (Context) pm.getClass().getMethod("getContext").invoke(pm);

            // 创建代理对象
            Object proxy = Proxy.newProxyInstance(
                    PackageManager.class.getClassLoader(),
                    new Class<?>[] { PackageManager.class },
                    handler);

            // 反射替换 mPM 字段
            Class<?> contextImplClass = ctx.getClass();
            java.lang.reflect.Field mPMField = contextImplClass.getDeclaredField("mPM");
            mPMField.setAccessible(true);
            mPMField.set(ctx, proxy);

            Log.d(TAG, "PackageManager replaced with proxy");
        } catch (Exception e) {
            Log.e(TAG, "Failed to replace PackageManager: " + e.getMessage(), e);
        }
    }

    /**
     * 过滤包列表
     */
    private static List<PackageInfo> filterPackageList(List<PackageInfo> originalList) {
        List<PackageInfo> filtered = new ArrayList<>();

        for (PackageInfo info : originalList) {
            if (!shouldHidePackage(info.packageName)) {
                filtered.add(info);
            }
        }

        return filtered;
    }

    /**
     * 过滤 ResolveInfo 列表
     */
    private static List<android.content.pm.ResolveInfo> filterResolveInfoList(
            List<android.content.pm.ResolveInfo> originalList) {
        List<android.content.pm.ResolveInfo> filtered = new ArrayList<>();

        for (android.content.pm.ResolveInfo info : originalList) {
            if (info.activityInfo != null && info.activityInfo.packageName != null) {
                if (!shouldHidePackage(info.activityInfo.packageName)) {
                    filtered.add(info);
                }
            } else {
                filtered.add(info);
            }
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
     * JNI 入口 - 被 native 代码调用
     */
    public static void jniInit(android.content.Context context) {
        init(context);
    }
}