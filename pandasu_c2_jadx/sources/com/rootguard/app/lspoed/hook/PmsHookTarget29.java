package com.rootguard.app.lspoed.hook;

import android.util.Log;
import com.rootguard.app.lspoed.HMAService;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import java.lang.reflect.Method;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PmsHookTarget29.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/rootguard/app/lspoed/hook/PmsHookTarget29;", "Lcom/rootguard/app/lspoed/hook/PmsHookTargetBase;", "service", "Lcom/rootguard/app/lspoed/HMAService;", "(Lcom/rootguard/app/lspoed/HMAService;)V", "load", "", "PandaSU-LSPosed_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes2.dex */
public class PmsHookTarget29 extends PmsHookTargetBase {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PmsHookTarget29(HMAService service) {
        super(service);
        Intrinsics.checkNotNullParameter(service, "service");
    }

    @Override // com.rootguard.app.lspoed.hook.PmsHookTargetBase, com.rootguard.app.lspoed.hook.IFrameworkHook
    public void load() {
        Object element$iv;
        Log.i("PandaSU-PmsHook29", "Loading Android 10 hooks");
        try {
            Class clazz = XposedHelpers.findClass("com.android.server.pm.AppsFilter", getService().getClass().getClassLoader());
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
                Log.e("PandaSU-PmsHook29", "shouldFilterApplication not found");
                return;
            }
            XC_MethodHook.Unhook unhook = XposedBridge.hookMethod(method, new XC_MethodHook() { // from class: com.rootguard.app.lspoed.hook.PmsHookTarget29$load$unhook$1
                protected void beforeHookedMethod(XC_MethodHook.MethodHookParam param) {
                    String[] callingApps;
                    String caller;
                    Intrinsics.checkNotNullParameter(param, "param");
                    try {
                        Object obj = param.args[0];
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
                        int callingUid = ((Integer) obj).intValue();
                        switch (callingUid) {
                            case 0:
                            case 1000:
                                return;
                            default:
                                Object targetSetting = param.args[1];
                                String targetApp = PmsHookTarget29.this.getPackageNameFromSettings(targetSetting);
                                if (targetApp != null && (callingApps = PmsHookTarget29.this.getPackagesForUid(callingUid)) != null && (caller = (String) ArraysKt.firstOrNull(callingApps)) != null && PmsHookTarget29.this.getService().shouldHide(caller, targetApp)) {
                                    param.setResult(true);
                                    Log.d("PandaSU-PmsHook29", "Filtered: " + caller + " -> " + targetApp);
                                    return;
                                }
                                return;
                        }
                    } catch (Throwable e) {
                        Log.e("PandaSU-PmsHook29", "Error in hook", e);
                    }
                    Log.e("PandaSU-PmsHook29", "Error in hook", e);
                }
            });
            List<XC_MethodHook.Unhook> hooks = getHooks();
            Intrinsics.checkNotNull(unhook);
            hooks.add(unhook);
            Log.i("PandaSU-PmsHook29", "Android 10 hooks loaded");
        } catch (Throwable e) {
            Log.e("PandaSU-PmsHook29", "Failed to load Android 10 hooks", e);
        }
    }
}
