package com.github.kyuubiran.ezxhelper.init;

import android.app.AndroidAppHelper;
import android.app.Application;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.XModuleResources;
import android.content.res.XResources;
import com.github.kyuubiran.ezxhelper.utils.ArgTypes;
import com.github.kyuubiran.ezxhelper.utils.Args;
import com.github.kyuubiran.ezxhelper.utils.Log;
import com.github.kyuubiran.ezxhelper.utils.Logger;
import com.github.kyuubiran.ezxhelper.utils.MethodUtilsKt;
import com.github.kyuubiran.ezxhelper.utils.parasitics.ActivityHelper;
import com.github.kyuubiran.ezxhelper.utils.parasitics.ActivityProxyManager;
import de.robv.android.xposed.IXposedHookZygoteInit;
import de.robv.android.xposed.callbacks.XC_LoadPackage;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: EzXHelperInit.kt */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bJ(\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000eJ$\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0004J\u000e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u000eJ\u000e\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u000bJ\u000e\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u000bJ\u000e\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u0012J\u000e\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020%J\u000e\u0010&\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u000b¨\u0006'"}, d2 = {"Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;", "", "()V", "addModuleAssetPath", "", "context", "Landroid/content/Context;", "resources", "Landroid/content/res/Resources;", "initActivityProxyManager", "modulePackageName", "", "hostActivityProxyName", "moduleClassLoader", "Ljava/lang/ClassLoader;", "hostClassLoader", "initAppContext", "addPath", "", "initModuleResources", "initHandleLoadPackage", "lpparam", "Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;", "initSubActivity", "initZygote", "startupParam", "Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;", "setEzClassLoader", "classLoader", "setHostPackageName", "packageName", "setLogTag", "tag", "setLogXp", "toXp", "setLogger", "log", "Lcom/github/kyuubiran/ezxhelper/utils/Logger;", "setToastTag", "EzXHelper_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class EzXHelperInit {
    public static final EzXHelperInit INSTANCE = new EzXHelperInit();

    private EzXHelperInit() {
    }

    public final void initHandleLoadPackage(XC_LoadPackage.LoadPackageParam lpparam) {
        Intrinsics.checkNotNullParameter(lpparam, "lpparam");
        ClassLoader classLoader = lpparam.classLoader;
        Intrinsics.checkNotNullExpressionValue(classLoader, "lpparam.classLoader");
        setEzClassLoader(classLoader);
        String str = lpparam.packageName;
        Intrinsics.checkNotNullExpressionValue(str, "lpparam.packageName");
        setHostPackageName(str);
    }

    public final void initZygote(IXposedHookZygoteInit.StartupParam startupParam) {
        Intrinsics.checkNotNullParameter(startupParam, "startupParam");
        InitFields initFields = InitFields.INSTANCE;
        String str = startupParam.modulePath;
        Intrinsics.checkNotNullExpressionValue(str, "startupParam.modulePath");
        initFields.setModulePath$EzXHelper_release(str);
        InitFields initFields2 = InitFields.INSTANCE;
        XModuleResources createInstance = XModuleResources.createInstance(InitFields.INSTANCE.getModulePath(), (XResources) null);
        Intrinsics.checkNotNullExpressionValue(createInstance, "createInstance(modulePath, null)");
        initFields2.setModuleRes$EzXHelper_release((Resources) createInstance);
    }

    public final void setEzClassLoader(ClassLoader classLoader) {
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        InitFields.INSTANCE.setEzXClassLoader$EzXHelper_release(classLoader);
    }

    public final void setHostPackageName(String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        InitFields.INSTANCE.setHostPackageName$EzXHelper_release(packageName);
    }

    public static /* synthetic */ void initAppContext$default(EzXHelperInit ezXHelperInit, Context context, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            Application currentApplication = AndroidAppHelper.currentApplication();
            Intrinsics.checkNotNullExpressionValue(currentApplication, "currentApplication()");
            context = currentApplication;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        ezXHelperInit.initAppContext(context, z, z2);
    }

    public final void initAppContext(Context context, boolean addPath, boolean initModuleResources) {
        Intrinsics.checkNotNullParameter(context, "context");
        InitFields.INSTANCE.setAppContext$EzXHelper_release(context);
        if (addPath) {
            addModuleAssetPath(InitFields.INSTANCE.getAppContext());
        }
        if (initModuleResources) {
            InitFields initFields = InitFields.INSTANCE;
            Resources resources = context.getResources();
            Intrinsics.checkNotNullExpressionValue(resources, "context.resources");
            initFields.setModuleRes$EzXHelper_release(resources);
        }
    }

    public final void setLogger(Logger log) {
        Intrinsics.checkNotNullParameter(log, "log");
        Log.INSTANCE.setCurrentLogger(log);
    }

    public final void setLogXp(boolean toXp) {
        Log.INSTANCE.getCurrentLogger().setLogXp$EzXHelper_release(toXp);
    }

    public final void setLogTag(String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Log.INSTANCE.getCurrentLogger().setLogTag(tag);
    }

    public final void setToastTag(String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Log.INSTANCE.getCurrentLogger().setToastTag(tag);
    }

    public final void addModuleAssetPath(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Resources resources = context.getResources();
        Intrinsics.checkNotNullExpressionValue(resources, "context.resources");
        addModuleAssetPath(resources);
    }

    public final void addModuleAssetPath(Resources resources) {
        Intrinsics.checkNotNullParameter(resources, "resources");
        AssetManager assets = resources.getAssets();
        Intrinsics.checkNotNullExpressionValue(assets, "resources.assets");
        Object[] args$iv = {InitFields.INSTANCE.getModulePath()};
        Object[] m968constructorimpl = Args.m968constructorimpl(args$iv);
        Class[] argTypes$iv = {String.class};
        MethodUtilsKt.m977invokeMethodqz3LsZg$default(assets, "addAssetPath", m968constructorimpl, ArgTypes.m961constructorimpl(argTypes$iv), null, 8, null);
    }

    public static /* synthetic */ void initActivityProxyManager$default(EzXHelperInit ezXHelperInit, String str, String str2, ClassLoader classLoader, ClassLoader classLoader2, int i, Object obj) {
        if ((i & 8) != 0) {
            classLoader2 = AndroidAppHelper.currentApplication().getClassLoader();
            Intrinsics.checkNotNull(classLoader2);
        }
        ezXHelperInit.initActivityProxyManager(str, str2, classLoader, classLoader2);
    }

    public final void initActivityProxyManager(String modulePackageName, String hostActivityProxyName, ClassLoader moduleClassLoader, ClassLoader hostClassLoader) {
        Intrinsics.checkNotNullParameter(modulePackageName, "modulePackageName");
        Intrinsics.checkNotNullParameter(hostActivityProxyName, "hostActivityProxyName");
        Intrinsics.checkNotNullParameter(moduleClassLoader, "moduleClassLoader");
        Intrinsics.checkNotNullParameter(hostClassLoader, "hostClassLoader");
        ActivityProxyManager.INSTANCE.setMODULE_PACKAGE_NAME_ID(modulePackageName);
        ActivityProxyManager.INSTANCE.setACTIVITY_PROXY_INTENT(StringsKt.replace$default(modulePackageName, '.', '_', false, 4, (Object) null) + "_intent_proxy");
        ActivityProxyManager.INSTANCE.setHOST_ACTIVITY_PROXY_NAME(hostActivityProxyName);
        ActivityProxyManager.INSTANCE.setMODULE_CLASS_LOADER(moduleClassLoader);
        ActivityProxyManager.INSTANCE.setHOST_CLASS_LOADER(hostClassLoader);
    }

    public final void initSubActivity() {
        ActivityHelper.INSTANCE.initSubActivity$EzXHelper_release();
    }
}
