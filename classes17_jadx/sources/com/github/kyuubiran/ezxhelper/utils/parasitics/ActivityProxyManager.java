package com.github.kyuubiran.ezxhelper.utils.parasitics;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ActivityProxyManager.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\b¨\u0006\u0018"}, d2 = {"Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;", "", "()V", "ACTIVITY_PROXY_INTENT", "", "getACTIVITY_PROXY_INTENT", "()Ljava/lang/String;", "setACTIVITY_PROXY_INTENT", "(Ljava/lang/String;)V", "HOST_ACTIVITY_PROXY_NAME", "getHOST_ACTIVITY_PROXY_NAME", "setHOST_ACTIVITY_PROXY_NAME", "HOST_CLASS_LOADER", "Ljava/lang/ClassLoader;", "getHOST_CLASS_LOADER", "()Ljava/lang/ClassLoader;", "setHOST_CLASS_LOADER", "(Ljava/lang/ClassLoader;)V", "MODULE_CLASS_LOADER", "getMODULE_CLASS_LOADER", "setMODULE_CLASS_LOADER", "MODULE_PACKAGE_NAME_ID", "getMODULE_PACKAGE_NAME_ID", "setMODULE_PACKAGE_NAME_ID", "EzXHelper_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class ActivityProxyManager {
    public static String ACTIVITY_PROXY_INTENT;
    public static String HOST_ACTIVITY_PROXY_NAME;
    public static ClassLoader HOST_CLASS_LOADER;
    public static final ActivityProxyManager INSTANCE = new ActivityProxyManager();
    public static ClassLoader MODULE_CLASS_LOADER;
    public static String MODULE_PACKAGE_NAME_ID;

    private ActivityProxyManager() {
    }

    public final String getACTIVITY_PROXY_INTENT() {
        String str = ACTIVITY_PROXY_INTENT;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("ACTIVITY_PROXY_INTENT");
        return null;
    }

    public final void setACTIVITY_PROXY_INTENT(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        ACTIVITY_PROXY_INTENT = str;
    }

    public final String getMODULE_PACKAGE_NAME_ID() {
        String str = MODULE_PACKAGE_NAME_ID;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("MODULE_PACKAGE_NAME_ID");
        return null;
    }

    public final void setMODULE_PACKAGE_NAME_ID(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        MODULE_PACKAGE_NAME_ID = str;
    }

    public final String getHOST_ACTIVITY_PROXY_NAME() {
        String str = HOST_ACTIVITY_PROXY_NAME;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("HOST_ACTIVITY_PROXY_NAME");
        return null;
    }

    public final void setHOST_ACTIVITY_PROXY_NAME(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        HOST_ACTIVITY_PROXY_NAME = str;
    }

    public final ClassLoader getMODULE_CLASS_LOADER() {
        ClassLoader classLoader = MODULE_CLASS_LOADER;
        if (classLoader != null) {
            return classLoader;
        }
        Intrinsics.throwUninitializedPropertyAccessException("MODULE_CLASS_LOADER");
        return null;
    }

    public final void setMODULE_CLASS_LOADER(ClassLoader classLoader) {
        Intrinsics.checkNotNullParameter(classLoader, "<set-?>");
        MODULE_CLASS_LOADER = classLoader;
    }

    public final ClassLoader getHOST_CLASS_LOADER() {
        ClassLoader classLoader = HOST_CLASS_LOADER;
        if (classLoader != null) {
            return classLoader;
        }
        Intrinsics.throwUninitializedPropertyAccessException("HOST_CLASS_LOADER");
        return null;
    }

    public final void setHOST_CLASS_LOADER(ClassLoader classLoader) {
        Intrinsics.checkNotNullParameter(classLoader, "<set-?>");
        HOST_CLASS_LOADER = classLoader;
    }
}
