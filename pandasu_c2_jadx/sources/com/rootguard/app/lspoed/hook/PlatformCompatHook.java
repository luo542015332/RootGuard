package com.rootguard.app.lspoed.hook;

import android.content.pm.ApplicationInfo;
import android.util.Log;
import com.github.kyuubiran.ezxhelper.utils.HookUtilsKt;
import com.github.kyuubiran.ezxhelper.utils.MethodUtilsKt;
import com.rootguard.app.lspoed.HMAService;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PlatformCompatHook.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\tH\u0016R\u0014\u0010\u0005\u001a\b\u0018\u00010\u0006R\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/rootguard/app/lspoed/hook/PlatformCompatHook;", "Lcom/rootguard/app/lspoed/hook/IFrameworkHook;", "service", "Lcom/rootguard/app/lspoed/HMAService;", "(Lcom/rootguard/app/lspoed/HMAService;)V", "hook", "Lde/robv/android/xposed/XC_MethodHook$Unhook;", "Lde/robv/android/xposed/XC_MethodHook;", "load", "", "unload", "Companion", "PandaSU-LSPosed_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes2.dex */
public final class PlatformCompatHook implements IFrameworkHook {
    private static final long APP_DATA_ISOLATION_CHANGE_ID = 143937733;
    private static final String PLATFORM_COMPAT_CLASS = "com.android.server.compat.PlatformCompat";
    private XC_MethodHook.Unhook hook;
    private final HMAService service;

    public PlatformCompatHook(HMAService service) {
        Intrinsics.checkNotNullParameter(service, "service");
        this.service = service;
    }

    @Override // com.rootguard.app.lspoed.hook.IFrameworkHook
    public void load() {
        try {
            Log.i("PandaSU-PlatformCompatHook", "Loading PlatformCompatHook...");
            XposedBridge.log("[PandaSU] Loading PlatformCompatHook...");
            this.hook = HookUtilsKt.hookBefore(MethodUtilsKt.findMethod$default(PLATFORM_COMPAT_CLASS, (ClassLoader) null, false, new Function1<Method, Boolean>() { // from class: com.rootguard.app.lspoed.hook.PlatformCompatHook$load$1
                public final Boolean invoke(Method $this$findMethod) {
                    Intrinsics.checkNotNullParameter($this$findMethod, "$this$findMethod");
                    return Boolean.valueOf(Intrinsics.areEqual($this$findMethod.getName(), "isChangeEnabled"));
                }
            }, 6, (Object) null), new Function1<XC_MethodHook.MethodHookParam, Unit>() { // from class: com.rootguard.app.lspoed.hook.PlatformCompatHook$load$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                    invoke((XC_MethodHook.MethodHookParam) p1);
                    return Unit.INSTANCE;
                }

                public final void invoke(XC_MethodHook.MethodHookParam param) {
                    Object obj;
                    long changeId;
                    HMAService hMAService;
                    HMAService hMAService2;
                    Intrinsics.checkNotNullParameter(param, "param");
                    PlatformCompatHook $this$invoke_u24lambda_u240 = PlatformCompatHook.this;
                    try {
                        Result.Companion companion = Result.Companion;
                        Object obj2 = param.args[0];
                        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Long");
                        changeId = ((Long) obj2).longValue();
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.Companion;
                        obj = Result.constructor-impl(ResultKt.createFailure(th));
                    }
                    if (changeId != 143937733) {
                        return;
                    }
                    Object obj3 = param.args[1];
                    ApplicationInfo appInfo = obj3 instanceof ApplicationInfo ? (ApplicationInfo) obj3 : null;
                    if (appInfo == null) {
                        return;
                    }
                    String app = appInfo.packageName;
                    if (!Intrinsics.areEqual(app, "com.rootguard.app")) {
                        hMAService = $this$invoke_u24lambda_u240.service;
                        if (!hMAService.getSystemApps().contains(app)) {
                            hMAService2 = $this$invoke_u24lambda_u240.service;
                            Intrinsics.checkNotNull(app);
                            if (hMAService2.isHookEnabled(app)) {
                                param.setResult(true);
                                Log.d("PandaSU-PlatformCompatHook", "Force mount data isolation: " + appInfo.uid + " " + app);
                                XposedBridge.log("[PandaSU] Force data isolation: " + app);
                            }
                            obj = Result.constructor-impl(Unit.INSTANCE);
                            Throwable it = Result.exceptionOrNull-impl(obj);
                            if (it != null) {
                                Log.e("PandaSU-PlatformCompatHook", "Error in PlatformCompatHook: " + it.getMessage());
                            }
                        }
                    }
                }
            });
            Log.i("PandaSU-PlatformCompatHook", "PlatformCompatHook loaded successfully");
            XposedBridge.log("[PandaSU] PlatformCompatHook loaded");
        } catch (Throwable e) {
            Log.e("PandaSU-PlatformCompatHook", "Failed to load PlatformCompatHook: " + e.getMessage());
            XposedBridge.log("[PandaSU] PlatformCompatHook failed: " + e.getMessage());
        }
    }

    @Override // com.rootguard.app.lspoed.hook.IFrameworkHook
    public void unload() {
        XC_MethodHook.Unhook unhook = this.hook;
        if (unhook != null) {
            unhook.unhook();
        }
        this.hook = null;
    }
}
