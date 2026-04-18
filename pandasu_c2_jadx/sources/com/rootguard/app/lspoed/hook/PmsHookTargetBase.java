package com.rootguard.app.lspoed.hook;

import android.util.Log;
import com.rootguard.app.lspoed.HMAService;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PmsHookTargetBase.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0004J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0010H\u0004J\u001d\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0004¢\u0006\u0002\u0010\u0017J \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u0016H\u0004J\b\u0010\u001d\u001a\u00020\u0019H\u0016J\b\u0010\u001e\u001a\u00020\u0019H\u0016R\u001e\u0010\u0005\u001a\f\u0012\b\u0012\u00060\u0007R\u00020\b0\u0006X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u001f"}, d2 = {"Lcom/rootguard/app/lspoed/hook/PmsHookTargetBase;", "Lcom/rootguard/app/lspoed/hook/IFrameworkHook;", "service", "Lcom/rootguard/app/lspoed/HMAService;", "(Lcom/rootguard/app/lspoed/HMAService;)V", "hooks", "", "Lde/robv/android/xposed/XC_MethodHook$Unhook;", "Lde/robv/android/xposed/XC_MethodHook;", "getHooks", "()Ljava/util/List;", "getService", "()Lcom/rootguard/app/lspoed/HMAService;", "getPackageNameFromPackageState", "", "ps", "", "getPackageNameFromSettings", "packageSettings", "getPackagesForUid", "", "uid", "", "(I)[Ljava/lang/String;", "hookShouldFilterApplication", "", "className", "callingUidIndex", "targetIndex", "load", "unload", "PandaSU-LSPosed_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes2.dex */
public class PmsHookTargetBase implements IFrameworkHook {
    private final List<XC_MethodHook.Unhook> hooks;
    private final HMAService service;

    public PmsHookTargetBase(HMAService service) {
        Intrinsics.checkNotNullParameter(service, "service");
        this.service = service;
        this.hooks = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final HMAService getService() {
        return this.service;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final List<XC_MethodHook.Unhook> getHooks() {
        return this.hooks;
    }

    @Override // com.rootguard.app.lspoed.hook.IFrameworkHook
    public void load() {
        Log.i("PandaSU-PmsHookBase", "Loading base hooks");
    }

    @Override // com.rootguard.app.lspoed.hook.IFrameworkHook
    public void unload() {
        Iterable $this$forEach$iv = this.hooks;
        for (Object element$iv : $this$forEach$iv) {
            XC_MethodHook.Unhook it = (XC_MethodHook.Unhook) element$iv;
            it.unhook();
        }
        this.hooks.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String getPackageNameFromSettings(Object packageSettings) {
        if (packageSettings == null) {
            return null;
        }
        try {
            Field nameField = packageSettings.getClass().getDeclaredField("name");
            nameField.setAccessible(true);
            Object obj = nameField.get(packageSettings);
            if (obj instanceof String) {
                return (String) obj;
            }
            return null;
        } catch (NoSuchFieldException e) {
            try {
                Method method = packageSettings.getClass().getMethod("getPackageName", new Class[0]);
                Object invoke = method.invoke(packageSettings, new Object[0]);
                if (invoke instanceof String) {
                    return (String) invoke;
                }
                return null;
            } catch (Throwable th) {
                return null;
            }
        } catch (Throwable th2) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String getPackageNameFromPackageState(Object ps) {
        if (ps == null) {
            return null;
        }
        try {
            Method method = ps.getClass().getMethod("getPackageName", new Class[0]);
            Object invoke = method.invoke(ps, new Object[0]);
            if (invoke instanceof String) {
                return (String) invoke;
            }
            return null;
        } catch (Throwable th) {
            try {
                Field nameField = ps.getClass().getDeclaredField("name");
                nameField.setAccessible(true);
                Object obj = nameField.get(ps);
                if (obj instanceof String) {
                    return (String) obj;
                }
                return null;
            } catch (Throwable e2) {
                Log.w("PandaSU-PmsHookBase", "Could not get package name from PackageStateInternal: " + e2);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String[] getPackagesForUid(int uid) {
        Class<?> cls;
        try {
            Object pms = this.service.getPms();
            Method method = (pms == null || (cls = pms.getClass()) == null) ? null : cls.getMethod("getPackagesForUid", Integer.TYPE);
            Object invoke = method != null ? method.invoke(this.service.getPms(), Integer.valueOf(uid)) : null;
            if (invoke instanceof String[]) {
                return (String[]) invoke;
            }
            return null;
        } catch (Throwable e) {
            Log.e("PandaSU-PmsHookBase", "getPackagesForUid failed", e);
            return null;
        }
    }

    protected final void hookShouldFilterApplication(String className, final int callingUidIndex, final int targetIndex) {
        Object element$iv;
        Intrinsics.checkNotNullParameter(className, "className");
        try {
            Class clazz = XposedHelpers.findClass(className, this.service.getClass().getClassLoader());
            Object[] declaredMethods = clazz.getDeclaredMethods();
            Intrinsics.checkNotNullExpressionValue(declaredMethods, "getDeclaredMethods(...)");
            Object[] $this$firstOrNull$iv = declaredMethods;
            int length = $this$firstOrNull$iv.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    element$iv = $this$firstOrNull$iv[i];
                    Method it = (Method) element$iv;
                    if (Intrinsics.areEqual(it.getName(), "shouldFilterApplication")) {
                        break;
                    } else {
                        i++;
                    }
                } else {
                    element$iv = null;
                    break;
                }
            }
            Method method = (Method) element$iv;
            if (method == null) {
                Log.e("PandaSU-PmsHookBase", "shouldFilterApplication method not found in " + className);
                return;
            }
            XC_MethodHook.Unhook unhook = XposedBridge.hookMethod(method, new XC_MethodHook() { // from class: com.rootguard.app.lspoed.hook.PmsHookTargetBase$hookShouldFilterApplication$unhook$1
                protected void beforeHookedMethod(XC_MethodHook.MethodHookParam param) {
                    String[] callingApps;
                    String caller;
                    Intrinsics.checkNotNullParameter(param, "param");
                    try {
                        Object obj = param.args[callingUidIndex];
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
                        int callingUid = ((Integer) obj).intValue();
                        switch (callingUid) {
                            case 0:
                            case 1000:
                                return;
                            default:
                                Object targetSetting = param.args[targetIndex];
                                String targetApp = this.getPackageNameFromSettings(targetSetting);
                                if (targetApp != null && (callingApps = this.getPackagesForUid(callingUid)) != null && (caller = (String) ArraysKt.firstOrNull(callingApps)) != null && this.getService().shouldHide(caller, targetApp)) {
                                    param.setResult(true);
                                    Log.d("PandaSU-PmsHookBase", "Filtered: " + caller + " -> " + targetApp);
                                    return;
                                }
                                return;
                        }
                    } catch (Throwable e) {
                        Log.e("PandaSU-PmsHookBase", "Error in shouldFilterApplication hook", e);
                    }
                    Log.e("PandaSU-PmsHookBase", "Error in shouldFilterApplication hook", e);
                }
            });
            List<XC_MethodHook.Unhook> list = this.hooks;
            Intrinsics.checkNotNull(unhook);
            list.add(unhook);
            Log.i("PandaSU-PmsHookBase", "Hooked shouldFilterApplication in " + className);
        } catch (Throwable e) {
            Log.e("PandaSU-PmsHookBase", "Failed to hook shouldFilterApplication", e);
        }
    }
}
