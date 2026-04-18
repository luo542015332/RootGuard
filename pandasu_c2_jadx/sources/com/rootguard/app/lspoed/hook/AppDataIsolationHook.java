package com.rootguard.app.lspoed.hook;

import android.os.Binder;
import android.os.SystemProperties;
import android.util.Log;
import com.github.kyuubiran.ezxhelper.utils.HookUtilsKt;
import com.github.kyuubiran.ezxhelper.utils.MethodUtilsKt;
import com.rootguard.app.lspoed.HMAService;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AppDataIsolationHook.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\"\u0010\t\u001a\u0002H\n\"\u0004\b\u0000\u0010\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\n0\fH\u0082\b¢\u0006\u0002\u0010\rJ\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016R\u0018\u0010\u0005\u001a\f\u0012\b\u0012\u00060\u0007R\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/rootguard/app/lspoed/hook/AppDataIsolationHook;", "Lcom/rootguard/app/lspoed/hook/IFrameworkHook;", "service", "Lcom/rootguard/app/lspoed/HMAService;", "(Lcom/rootguard/app/lspoed/HMAService;)V", "hooks", "", "Lde/robv/android/xposed/XC_MethodHook$Unhook;", "Lde/robv/android/xposed/XC_MethodHook;", "binderLocalScope", "T", "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "load", "", "unload", "Companion", "PandaSU-LSPosed_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes2.dex */
public final class AppDataIsolationHook implements IFrameworkHook {
    private static final String APPDATA_ISOLATION_ENABLED = "mAppDataIsolationEnabled";
    private static final String FUSE_PROP = "persist.sys.fuse";
    private static final String PROCESS_LIST_CLASS = "com.android.server.am.ProcessList";
    private static final String STORAGE_MANAGER_SERVICE_CLASS = "com.android.server.StorageManagerService";
    private static final String VOLD_APPDATA_ISOLATION_ENABLED = "mVoldAppDataIsolationEnabled";
    private final List<XC_MethodHook.Unhook> hooks;
    private final HMAService service;

    public AppDataIsolationHook(HMAService service) {
        Intrinsics.checkNotNullParameter(service, "service");
        this.service = service;
        this.hooks = new ArrayList();
    }

    @Override // com.rootguard.app.lspoed.hook.IFrameworkHook
    public void load() {
        Log.i("PandaSU-AppDataIsolationHook", "Loading AppDataIsolationHook...");
        XposedBridge.log("[PandaSU] Loading AppDataIsolationHook...");
        final HMAService.Config config = this.service.getConfig();
        boolean fuseEnabled = SystemProperties.getBoolean(FUSE_PROP, false);
        Log.i("PandaSU-AppDataIsolationHook", "FUSE enabled: " + fuseEnabled);
        XposedBridge.log("[PandaSU] FUSE enabled: " + fuseEnabled);
        try {
            Method startProcessMethod = MethodUtilsKt.findMethodOrNull$default(PROCESS_LIST_CLASS, (ClassLoader) null, false, new Function1<Method, Boolean>() { // from class: com.rootguard.app.lspoed.hook.AppDataIsolationHook$load$startProcessMethod$1
                public final Boolean invoke(Method $this$findMethodOrNull) {
                    Intrinsics.checkNotNullParameter($this$findMethodOrNull, "$this$findMethodOrNull");
                    return Boolean.valueOf(Intrinsics.areEqual($this$findMethodOrNull.getName(), "startProcess"));
                }
            }, 6, (Object) null);
            if (startProcessMethod == null) {
                Log.e("PandaSU-AppDataIsolationHook", "startProcess method not found in ProcessList");
                XposedBridge.log("[PandaSU] startProcess method not found in ProcessList");
            } else {
                Log.i("PandaSU-AppDataIsolationHook", "Found startProcess method, hooking...");
                XposedBridge.log("[PandaSU] Found startProcess method, hooking...");
                XC_MethodHook.Unhook it = HookUtilsKt.hookBefore(startProcessMethod, new Function1<XC_MethodHook.MethodHookParam, Unit>() { // from class: com.rootguard.app.lspoed.hook.AppDataIsolationHook$load$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                        invoke((XC_MethodHook.MethodHookParam) p1);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(XC_MethodHook.MethodHookParam param) {
                        Intrinsics.checkNotNullParameter(param, "param");
                        try {
                            if (config.getAltAppDataIsolation()) {
                                boolean isEnabled = XposedHelpers.getBooleanField(param.thisObject, "mAppDataIsolationEnabled");
                                Log.d("PandaSU-AppDataIsolationHook", "AppDataIsolation current value: " + isEnabled);
                                if (!isEnabled) {
                                    XposedHelpers.setBooleanField(param.thisObject, "mAppDataIsolationEnabled", true);
                                    Log.i("PandaSU-AppDataIsolationHook", "Forced app data isolation enabled!");
                                    XposedBridge.log("[PandaSU] Forced app data isolation enabled!");
                                }
                            }
                        } catch (Throwable e) {
                            Log.e("PandaSU-AppDataIsolationHook", "Error in startProcess hook: " + e.getMessage());
                        }
                    }
                });
                this.hooks.add(it);
            }
        } catch (Throwable e) {
            Log.e("PandaSU-AppDataIsolationHook", "Failed to hook startProcess: " + e.getMessage());
            XposedBridge.log("[PandaSU] Failed to hook startProcess: " + e.getMessage());
        }
        try {
            Method needsIsolationMethod = MethodUtilsKt.findMethodOrNull$default(PROCESS_LIST_CLASS, (ClassLoader) null, false, new Function1<Method, Boolean>() { // from class: com.rootguard.app.lspoed.hook.AppDataIsolationHook$load$needsIsolationMethod$1
                public final Boolean invoke(Method $this$findMethodOrNull) {
                    Intrinsics.checkNotNullParameter($this$findMethodOrNull, "$this$findMethodOrNull");
                    return Boolean.valueOf(Intrinsics.areEqual($this$findMethodOrNull.getName(), "needsStorageDataIsolation"));
                }
            }, 6, (Object) null);
            if (needsIsolationMethod == null) {
                Log.e("PandaSU-AppDataIsolationHook", "needsStorageDataIsolation method not found");
                XposedBridge.log("[PandaSU] needsStorageDataIsolation method not found");
            } else {
                Log.i("PandaSU-AppDataIsolationHook", "Found needsStorageDataIsolation method, hooking...");
                XposedBridge.log("[PandaSU] Found needsStorageDataIsolation method, hooking...");
                XC_MethodHook.Unhook it2 = HookUtilsKt.hookAfter(needsIsolationMethod, new Function1<XC_MethodHook.MethodHookParam, Unit>() { // from class: com.rootguard.app.lspoed.hook.AppDataIsolationHook$load$3
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                        invoke((XC_MethodHook.MethodHookParam) p1);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(XC_MethodHook.MethodHookParam param) {
                        Object it3;
                        HMAService hMAService;
                        Object obj;
                        boolean z;
                        HMAService hMAService2;
                        HMAService hMAService3;
                        Class<?> cls;
                        Intrinsics.checkNotNullParameter(param, "param");
                        try {
                            Object[] objArr = param.args;
                            Intrinsics.checkNotNullExpressionValue(objArr, "args");
                            int length = objArr.length;
                            int i = 0;
                            while (true) {
                                if (i >= length) {
                                    it3 = null;
                                    break;
                                }
                                it3 = objArr[i];
                                Object it4 = (it3 == null || !Intrinsics.areEqual(it3.getClass().getSimpleName(), "ProcessRecord")) ? null : 1;
                                if (it4 != null) {
                                    break;
                                } else {
                                    i++;
                                }
                            }
                            if (it3 != null) {
                                Object app = it3;
                                int uid = XposedHelpers.getIntField(app, "uid");
                                Object objectField = XposedHelpers.getObjectField(app, "processName");
                                String processName = objectField instanceof String ? (String) objectField : null;
                                Log.d("PandaSU-AppDataIsolationHook", "needsStorageDataIsolation: uid=" + uid + ", process=" + processName);
                                AppDataIsolationHook appDataIsolationHook = AppDataIsolationHook.this;
                                long identity$iv = Binder.clearCallingIdentity();
                                hMAService = appDataIsolationHook.service;
                                Object pms = hMAService.getPms();
                                Method getPackagesForUid = (pms == null || (cls = pms.getClass()) == null) ? null : cls.getDeclaredMethod("getPackagesForUid", Integer.TYPE);
                                if (getPackagesForUid != null) {
                                    getPackagesForUid.setAccessible(true);
                                }
                                if (getPackagesForUid != null) {
                                    hMAService3 = appDataIsolationHook.service;
                                    obj = getPackagesForUid.invoke(hMAService3.getPms(), Integer.valueOf(uid));
                                } else {
                                    obj = null;
                                }
                                Object[] packages = obj instanceof String[] ? (String[]) obj : null;
                                Binder.restoreCallingIdentity(identity$iv);
                                if (packages != null) {
                                    Log.d("PandaSU-AppDataIsolationHook", "Packages for uid " + uid + ": " + ArraysKt.joinToString$default(packages, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63, (Object) null));
                                    if (ArraysKt.contains(packages, "com.rootguard.app")) {
                                        param.setResult(false);
                                        Log.d("PandaSU-AppDataIsolationHook", "Skip isolation for PandaSU");
                                        return;
                                    }
                                    if (config.getSkipSystemAppDataIsolation()) {
                                        AppDataIsolationHook appDataIsolationHook2 = AppDataIsolationHook.this;
                                        int length2 = packages.length;
                                        int i2 = 0;
                                        while (true) {
                                            if (i2 < length2) {
                                                Object element$iv = packages[i2];
                                                hMAService2 = appDataIsolationHook2.service;
                                                if (hMAService2.getSystemApps().contains(element$iv)) {
                                                    z = true;
                                                    break;
                                                }
                                                i2++;
                                            } else {
                                                z = false;
                                                break;
                                            }
                                        }
                                        if (z) {
                                            param.setResult(false);
                                            Log.d("PandaSU-AppDataIsolationHook", "Skip isolation for system app");
                                        }
                                    }
                                }
                            }
                        } catch (Throwable e2) {
                            Log.e("PandaSU-AppDataIsolationHook", "Error in needsStorageDataIsolation hook: " + e2.getMessage());
                        }
                    }
                });
                this.hooks.add(it2);
            }
        } catch (Throwable e2) {
            Log.e("PandaSU-AppDataIsolationHook", "Failed to hook needsStorageDataIsolation: " + e2.getMessage());
        }
        Log.i("PandaSU-AppDataIsolationHook", "AppDataIsolationHook loaded with " + this.hooks.size() + " hooks");
        XposedBridge.log("[PandaSU] AppDataIsolationHook loaded with " + this.hooks.size() + " hooks");
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

    private final <T> T binderLocalScope(Function0<? extends T> block) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        T t = (T) block.invoke();
        Binder.restoreCallingIdentity(clearCallingIdentity);
        return t;
    }
}
