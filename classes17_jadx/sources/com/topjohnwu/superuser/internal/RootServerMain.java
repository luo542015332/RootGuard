package com.topjohnwu.superuser.internal;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
class RootServerMain extends ContextWrapper implements Callable<Object[]> {
    static final String CMDLINE_START_DAEMON = "daemon";
    static final String CMDLINE_START_SERVICE = "start";
    static final String CMDLINE_STOP_SERVICE = "stop";
    private static final Method attachBaseContext;
    private static final Method getService;
    private final boolean isDaemon;
    private final int uid;

    static {
        try {
            Class<?> sm = Class.forName("android.os.ServiceManager");
            getService = sm.getDeclaredMethod("getService", String.class);
            Method declaredMethod = ContextWrapper.class.getDeclaredMethod("attachBaseContext", Context.class);
            attachBaseContext = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    static Context getSystemContext() {
        try {
            Class<?> atClazz = Class.forName("android.app.ActivityThread");
            Method systemMain = atClazz.getMethod("systemMain", new Class[0]);
            Object activityThread = systemMain.invoke(null, new Object[0]);
            Method getSystemContext = atClazz.getMethod("getSystemContext", new Class[0]);
            return (Context) getSystemContext.invoke(activityThread, new Object[0]);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getServiceName(String pkg) {
        return "libsu-" + pkg;
    }

    public static void main(String[] args) {
        System.out.close();
        System.err.close();
        if (args.length < 3) {
            System.exit(1);
        }
        Looper.prepareMainLooper();
        try {
            new RootServerMain(args);
        } catch (Exception e) {
            Log.e("IPC", "Error in IPCMain", e);
            System.exit(1);
        }
        Looper.loop();
        System.exit(1);
    }

    @Override // java.util.concurrent.Callable
    public Object[] call() {
        Object[] objs = {Integer.valueOf(this.uid), Boolean.valueOf(this.isDaemon)};
        return objs;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0086, code lost:
    
        if (r8 != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0093, code lost:
    
        java.lang.System.exit(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0091, code lost:
    
        if (r8 == false) goto L54;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0043. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0059 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public RootServerMain(java.lang.String[] r17) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.topjohnwu.superuser.internal.RootServerMain.<init>(java.lang.String[]):void");
    }

    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
    static class ResourcesWrapper extends Resources {
        public ResourcesWrapper(Resources res) throws ReflectiveOperationException {
            super(res.getAssets(), res.getDisplayMetrics(), res.getConfiguration());
            Method getImpl = Resources.class.getDeclaredMethod("getImpl", new Class[0]);
            getImpl.setAccessible(true);
            Method setImpl = Resources.class.getDeclaredMethod("setImpl", getImpl.getReturnType());
            setImpl.setAccessible(true);
            Object impl = getImpl.invoke(res, new Object[0]);
            setImpl.invoke(this, impl);
        }

        @Override // android.content.res.Resources
        public boolean getBoolean(int id) {
            try {
                return super.getBoolean(id);
            } catch (Resources.NotFoundException e) {
                return false;
            }
        }
    }
}
