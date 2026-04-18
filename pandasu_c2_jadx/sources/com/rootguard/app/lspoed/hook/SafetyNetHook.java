package com.rootguard.app.lspoed.hook;

import android.util.Log;
import com.rootguard.app.lspoed.HMAService;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SafetyNetHook.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\t\u001a\u00020\nH\u0002J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\f\u001a\u00020\nH\u0016R\u0018\u0010\u0005\u001a\f\u0012\b\u0012\u00060\u0007R\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/rootguard/app/lspoed/hook/SafetyNetHook;", "Lcom/rootguard/app/lspoed/hook/IFrameworkHook;", "service", "Lcom/rootguard/app/lspoed/HMAService;", "(Lcom/rootguard/app/lspoed/HMAService;)V", "hooks", "", "Lde/robv/android/xposed/XC_MethodHook$Unhook;", "Lde/robv/android/xposed/XC_MethodHook;", "hookSystemProperties", "", "load", "unload", "PandaSU-LSPosed_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes2.dex */
public final class SafetyNetHook implements IFrameworkHook {
    private final List<XC_MethodHook.Unhook> hooks;
    private final HMAService service;

    public SafetyNetHook(HMAService service) {
        Intrinsics.checkNotNullParameter(service, "service");
        this.service = service;
        this.hooks = new ArrayList();
    }

    @Override // com.rootguard.app.lspoed.hook.IFrameworkHook
    public void load() {
        try {
            Log.i("PandaSU-SafetyNetHook", "Loading SafetyNetHook...");
            XposedBridge.log("[PandaSU] Loading SafetyNetHook...");
            hookSystemProperties();
            Log.i("PandaSU-SafetyNetHook", "SafetyNetHook loaded successfully");
            XposedBridge.log("[PandaSU] SafetyNetHook loaded");
        } catch (Throwable e) {
            Log.e("PandaSU-SafetyNetHook", "Failed to load SafetyNetHook: " + e.getMessage());
            XposedBridge.log("[PandaSU] SafetyNetHook failed: " + e.getMessage());
        }
    }

    private final void hookSystemProperties() {
        try {
            Class systemPropertiesClass = Class.forName("android.os.SystemProperties");
            try {
                Method getMethod = systemPropertiesClass.getDeclaredMethod("get", String.class);
                List<XC_MethodHook.Unhook> list = this.hooks;
                XC_MethodHook.Unhook hookMethod = XposedBridge.hookMethod(getMethod, new XC_MethodHook() { // from class: com.rootguard.app.lspoed.hook.SafetyNetHook$hookSystemProperties$1
                    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0022. Please report as an issue. */
                    protected void afterHookedMethod(XC_MethodHook.MethodHookParam param) {
                        Intrinsics.checkNotNullParameter(param, "param");
                        try {
                            Object obj = param.args[0];
                            String key = obj instanceof String ? (String) obj : null;
                            if (key == null) {
                                return;
                            }
                            switch (key.hashCode()) {
                                case -925222118:
                                    if (key.equals("ro.boot.vbmeta.device_state")) {
                                        param.setResult("locked");
                                        Log.d("PandaSU-SafetyNetHook", "Faked " + key + " to: locked");
                                        return;
                                    }
                                    return;
                                case -678158345:
                                    if (key.equals("ro.adb.secure")) {
                                        param.setResult("1");
                                        Log.d("PandaSU-SafetyNetHook", "Faked " + key + " to: 1");
                                        return;
                                    }
                                    return;
                                case -533714913:
                                    if (key.equals("ro.debuggable")) {
                                        param.setResult("0");
                                        Log.d("PandaSU-SafetyNetHook", "Faked " + key + " to: 0");
                                        return;
                                    }
                                    return;
                                case -490700519:
                                    if (!key.equals("ro.boot.veritymode")) {
                                        return;
                                    }
                                    param.setResult("enforcing");
                                    Log.d("PandaSU-SafetyNetHook", "Faked " + key + " to: enforcing");
                                    return;
                                case 400236012:
                                    if (!key.equals("ro.boot.verifiedbootstate")) {
                                        return;
                                    }
                                    param.setResult("enforcing");
                                    Log.d("PandaSU-SafetyNetHook", "Faked " + key + " to: enforcing");
                                    return;
                                case 784020458:
                                    if (key.equals("ro.build.tags")) {
                                        param.setResult("release-keys");
                                        Log.d("PandaSU-SafetyNetHook", "Faked " + key + " to: release-keys");
                                        return;
                                    }
                                    return;
                                case 1551230024:
                                    if (key.equals("ro.secure")) {
                                        param.setResult("1");
                                        Log.d("PandaSU-SafetyNetHook", "Faked " + key + " to: 1");
                                        return;
                                    }
                                    return;
                                default:
                                    return;
                            }
                        } catch (Throwable th) {
                        }
                    }
                });
                Intrinsics.checkNotNullExpressionValue(hookMethod, "hookMethod(...)");
                list.add(hookMethod);
            } catch (Throwable e) {
                Log.w("PandaSU-SafetyNetHook", "Could not hook SystemProperties.get(String): " + e.getMessage());
            }
            try {
                Method getMethod2 = systemPropertiesClass.getDeclaredMethod("get", String.class, String.class);
                List<XC_MethodHook.Unhook> list2 = this.hooks;
                XC_MethodHook.Unhook hookMethod2 = XposedBridge.hookMethod(getMethod2, new XC_MethodHook() { // from class: com.rootguard.app.lspoed.hook.SafetyNetHook$hookSystemProperties$2
                    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x001c. Please report as an issue. */
                    protected void afterHookedMethod(XC_MethodHook.MethodHookParam param) {
                        Intrinsics.checkNotNullParameter(param, "param");
                        try {
                            Object obj = param.args[0];
                            String key = obj instanceof String ? (String) obj : null;
                            if (key == null) {
                                return;
                            }
                            switch (key.hashCode()) {
                                case -925222118:
                                    if (key.equals("ro.boot.vbmeta.device_state")) {
                                        param.setResult("locked");
                                        return;
                                    }
                                    return;
                                case -678158345:
                                    if (key.equals("ro.adb.secure")) {
                                        param.setResult("1");
                                        return;
                                    }
                                    return;
                                case -533714913:
                                    if (key.equals("ro.debuggable")) {
                                        param.setResult("0");
                                        return;
                                    }
                                    return;
                                case -490700519:
                                    if (!key.equals("ro.boot.veritymode")) {
                                        return;
                                    }
                                    param.setResult("enforcing");
                                    return;
                                case 400236012:
                                    if (!key.equals("ro.boot.verifiedbootstate")) {
                                        return;
                                    }
                                    param.setResult("enforcing");
                                    return;
                                case 784020458:
                                    if (key.equals("ro.build.tags")) {
                                        param.setResult("release-keys");
                                        return;
                                    }
                                    return;
                                case 1551230024:
                                    if (key.equals("ro.secure")) {
                                        param.setResult("1");
                                        return;
                                    }
                                    return;
                                default:
                                    return;
                            }
                        } catch (Throwable th) {
                        }
                    }
                });
                Intrinsics.checkNotNullExpressionValue(hookMethod2, "hookMethod(...)");
                list2.add(hookMethod2);
            } catch (Throwable e2) {
                Log.w("PandaSU-SafetyNetHook", "Could not hook SystemProperties.get(String, String): " + e2.getMessage());
            }
        } catch (Throwable e3) {
            Log.w("PandaSU-SafetyNetHook", "Could not hook SystemProperties: " + e3.getMessage());
        }
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
}
