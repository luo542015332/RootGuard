package com.topjohnwu.superuser.internal;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
class RootServerMain extends ContextWrapper implements Callable {
    public static final Method c;
    public static final Method d;
    public final int a;
    public final boolean b;

    static {
        try {
            c = Class.forName("android.os.ServiceManager").getDeclaredMethod("getService", String.class);
            Method declaredMethod = ContextWrapper.class.getDeclaredMethod("attachBaseContext", Context.class);
            d = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0098, code lost:
    
        if (r14 != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x009a, code lost:
    
        java.lang.System.exit(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ae, code lost:
    
        if (r14 != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00bb, code lost:
    
        if (r14 == false) goto L74;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0046. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:40:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public RootServerMain(java.lang.String[] r14) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.topjohnwu.superuser.internal.RootServerMain.<init>(java.lang.String[]):void");
    }

    public static void main(String[] strArr) {
        System.out.close();
        System.err.close();
        if (strArr.length < 3) {
            System.exit(1);
        }
        Looper.prepareMainLooper();
        try {
            new RootServerMain(strArr);
        } catch (Exception e) {
            Log.e("IPC", "Error in IPCMain", e);
            System.exit(1);
        }
        Looper.loop();
        System.exit(1);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return new Object[]{Integer.valueOf(this.a), Boolean.valueOf(this.b)};
    }
}
