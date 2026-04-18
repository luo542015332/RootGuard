package com.github.kyuubiran.ezxhelper.init;

import android.content.Context;
import android.content.res.Resources;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: InitFields.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@@X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@@X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0010@@X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0018R\u0011\u0010\u001a\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0018R\u0011\u0010\u001b\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0018R\u0011\u0010\u001c\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0018R$\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0010@@X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0013\"\u0004\b\u001f\u0010\u0015R$\u0010!\u001a\u00020 2\u0006\u0010\u0003\u001a\u00020 @@X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006&"}, d2 = {"Lcom/github/kyuubiran/ezxhelper/init/InitFields;", "", "()V", "<set-?>", "Landroid/content/Context;", "appContext", "getAppContext", "()Landroid/content/Context;", "setAppContext$EzXHelper_release", "(Landroid/content/Context;)V", "Ljava/lang/ClassLoader;", "ezXClassLoader", "getEzXClassLoader", "()Ljava/lang/ClassLoader;", "setEzXClassLoader$EzXHelper_release", "(Ljava/lang/ClassLoader;)V", "", "hostPackageName", "getHostPackageName", "()Ljava/lang/String;", "setHostPackageName$EzXHelper_release", "(Ljava/lang/String;)V", "isAppContextInited", "", "()Z", "isEzXClassLoaderInited", "isHostPackageNameInited", "isModulePathInited", "isModuleResInited", "modulePath", "getModulePath", "setModulePath$EzXHelper_release", "Landroid/content/res/Resources;", "moduleRes", "getModuleRes", "()Landroid/content/res/Resources;", "setModuleRes$EzXHelper_release", "(Landroid/content/res/Resources;)V", "EzXHelper_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class InitFields {
    public static final InitFields INSTANCE = new InitFields();
    public static Context appContext;
    public static ClassLoader ezXClassLoader;
    public static String hostPackageName;
    public static String modulePath;
    public static Resources moduleRes;

    private InitFields() {
    }

    public final Context getAppContext() {
        Context context = appContext;
        if (context != null) {
            return context;
        }
        Intrinsics.throwUninitializedPropertyAccessException("appContext");
        return null;
    }

    public final void setAppContext$EzXHelper_release(Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        appContext = context;
    }

    public final boolean isAppContextInited() {
        return appContext != null;
    }

    public final ClassLoader getEzXClassLoader() {
        ClassLoader classLoader = ezXClassLoader;
        if (classLoader != null) {
            return classLoader;
        }
        Intrinsics.throwUninitializedPropertyAccessException("ezXClassLoader");
        return null;
    }

    public final void setEzXClassLoader$EzXHelper_release(ClassLoader classLoader) {
        Intrinsics.checkNotNullParameter(classLoader, "<set-?>");
        ezXClassLoader = classLoader;
    }

    public final boolean isEzXClassLoaderInited() {
        return ezXClassLoader != null;
    }

    public final String getModulePath() {
        String str = modulePath;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("modulePath");
        return null;
    }

    public final void setModulePath$EzXHelper_release(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        modulePath = str;
    }

    public final boolean isModulePathInited() {
        return modulePath != null;
    }

    public final Resources getModuleRes() {
        Resources resources = moduleRes;
        if (resources != null) {
            return resources;
        }
        Intrinsics.throwUninitializedPropertyAccessException("moduleRes");
        return null;
    }

    public final void setModuleRes$EzXHelper_release(Resources resources) {
        Intrinsics.checkNotNullParameter(resources, "<set-?>");
        moduleRes = resources;
    }

    public final boolean isModuleResInited() {
        return moduleRes != null;
    }

    public final String getHostPackageName() {
        String str = hostPackageName;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("hostPackageName");
        return null;
    }

    public final void setHostPackageName$EzXHelper_release(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        hostPackageName = str;
    }

    public final boolean isHostPackageNameInited() {
        return hostPackageName != null;
    }
}
