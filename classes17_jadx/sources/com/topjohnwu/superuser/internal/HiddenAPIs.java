package com.topjohnwu.superuser.internal;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.IBinder;
import java.lang.reflect.Method;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
class HiddenAPIs {
    public static final int FLAG_RECEIVER_FROM_SHELL = 4194304;
    private static Method addService;
    private static Method attachBaseContext;
    private static Method setAppName;

    HiddenAPIs() {
    }

    static {
        try {
            Class<?> sm = Class.forName("android.os.ServiceManager");
            if (Build.VERSION.SDK_INT >= 28) {
                try {
                    addService = sm.getDeclaredMethod("addService", String.class, IBinder.class, Boolean.TYPE, Integer.TYPE);
                } catch (NoSuchMethodException e) {
                }
            }
            if (addService == null) {
                addService = sm.getDeclaredMethod("addService", String.class, IBinder.class);
            }
            Method declaredMethod = ContextWrapper.class.getDeclaredMethod("attachBaseContext", Context.class);
            attachBaseContext = declaredMethod;
            declaredMethod.setAccessible(true);
            Class<?> ddm = Class.forName("android.ddm.DdmHandleAppName");
            setAppName = ddm.getDeclaredMethod("setAppName", String.class, Integer.TYPE);
        } catch (ReflectiveOperationException e2) {
            Utils.err("IPC", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setAppName(String name) {
        try {
            setAppName.invoke(null, name, 0);
        } catch (ReflectiveOperationException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void addService(String name, IBinder service) {
        try {
            if (addService.getParameterTypes().length == 4) {
                addService.invoke(null, name, service, false, 0);
            } else {
                addService.invoke(null, name, service);
            }
        } catch (ReflectiveOperationException e) {
            Utils.err("IPC", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void attachBaseContext(Object wrapper, Context context) {
        if (wrapper instanceof ContextWrapper) {
            try {
                attachBaseContext.invoke(wrapper, context);
            } catch (ReflectiveOperationException e) {
            }
        }
    }
}
