package com.rootguard.app.lspoed.hook;

import android.util.Log;
import com.rootguard.app.lspoed.HMAService;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.lang.reflect.Method;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: XposedBridgeHook.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0002J\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/rootguard/app/lspoed/hook/XposedBridgeHook;", "", "service", "Lcom/rootguard/app/lspoed/HMAService;", "(Lcom/rootguard/app/lspoed/HMAService;)V", "isDetectorCalling", "", "load", "", "PandaSU-LSPosed_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes2.dex */
public final class XposedBridgeHook {
    private final HMAService service;

    public XposedBridgeHook(HMAService service) {
        Intrinsics.checkNotNullParameter(service, "service");
        this.service = service;
    }

    public final void load() {
        Log.i("PandaSU-XposedBridgeHook", "Loading XposedBridgeHook (backup in system_server)");
        try {
            Method getModulesMethod = XposedBridge.class.getDeclaredMethod("getModules", new Class[0]);
            XposedBridge.hookMethod(getModulesMethod, new XC_MethodHook() { // from class: com.rootguard.app.lspoed.hook.XposedBridgeHook$load$1
                protected void beforeHookedMethod(XC_MethodHook.MethodHookParam param) {
                    boolean isDetectorCalling;
                    Intrinsics.checkNotNullParameter(param, "param");
                    isDetectorCalling = XposedBridgeHook.this.isDetectorCalling();
                    if (isDetectorCalling) {
                        Log.d("PandaSU-XposedBridgeHook", "Blocking XposedBridge.getModules() in system_server");
                        param.setResult(new ArrayList());
                    }
                }
            });
            Log.i("PandaSU-XposedBridgeHook", "Backup hook: XposedBridge.getModules");
        } catch (Throwable e) {
            Log.e("PandaSU-XposedBridgeHook", "Failed to hook XposedBridge.getModules", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x005b A[LOOP:0: B:2:0x0010->B:11:0x005b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0059 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isDetectorCalling() {
        /*
            r13 = this;
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            java.lang.StackTraceElement[] r0 = r0.getStackTrace()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            r1 = r0
            r2 = 0
            int r3 = r1.length
            r4 = 0
            r5 = r4
        L10:
            if (r5 >= r3) goto L5e
            r6 = r1[r5]
            r7 = r6
            r8 = 0
            java.lang.String r9 = r7.getClassName()
            java.lang.String r10 = "getClassName(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r10)
            java.lang.CharSequence r9 = (java.lang.CharSequence) r9
            java.lang.String r11 = "applistdetector"
            java.lang.CharSequence r11 = (java.lang.CharSequence) r11
            r12 = 1
            boolean r9 = kotlin.text.StringsKt.contains(r9, r11, r12)
            if (r9 != 0) goto L55
            java.lang.String r9 = r7.getClassName()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r10)
            java.lang.CharSequence r9 = (java.lang.CharSequence) r9
            java.lang.String r11 = "hunter"
            java.lang.CharSequence r11 = (java.lang.CharSequence) r11
            boolean r9 = kotlin.text.StringsKt.contains(r9, r11, r12)
            if (r9 != 0) goto L55
            java.lang.String r9 = r7.getClassName()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r10)
            java.lang.CharSequence r9 = (java.lang.CharSequence) r9
            java.lang.String r10 = "apecheck"
            java.lang.CharSequence r10 = (java.lang.CharSequence) r10
            boolean r9 = kotlin.text.StringsKt.contains(r9, r10, r12)
            if (r9 == 0) goto L53
            goto L55
        L53:
            r9 = r4
            goto L56
        L55:
            r9 = r12
        L56:
            if (r9 == 0) goto L5b
            r4 = r12
            goto L5f
        L5b:
            int r5 = r5 + 1
            goto L10
        L5e:
        L5f:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.lspoed.hook.XposedBridgeHook.isDetectorCalling():boolean");
    }
}
