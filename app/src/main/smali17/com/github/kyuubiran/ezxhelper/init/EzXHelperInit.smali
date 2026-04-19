.class public final Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;
.super Ljava/lang/Object;
.source "EzXHelperInit.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEzXHelperInit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EzXHelperInit.kt\ncom/github/kyuubiran/ezxhelper/init/EzXHelperInit\n+ 2 MethodUtils.kt\ncom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt\n*L\n1#1,186:1\n16#2:187\n19#2:188\n*S KotlinDebug\n*F\n+ 1 EzXHelperInit.kt\ncom/github/kyuubiran/ezxhelper/init/EzXHelperInit\n*L\n138#1:187\n139#1:188\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008J(\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000eJ$\u0010\u0010\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0004J\u000e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u000eJ\u000e\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u000bJ\u000e\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u000bJ\u000e\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u0012J\u000e\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020%J\u000e\u0010&\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u000b\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;",
        "",
        "()V",
        "addModuleAssetPath",
        "",
        "context",
        "Landroid/content/Context;",
        "resources",
        "Landroid/content/res/Resources;",
        "initActivityProxyManager",
        "modulePackageName",
        "",
        "hostActivityProxyName",
        "moduleClassLoader",
        "Ljava/lang/ClassLoader;",
        "hostClassLoader",
        "initAppContext",
        "addPath",
        "",
        "initModuleResources",
        "initHandleLoadPackage",
        "lpparam",
        "Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;",
        "initSubActivity",
        "initZygote",
        "startupParam",
        "Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;",
        "setEzClassLoader",
        "classLoader",
        "setHostPackageName",
        "packageName",
        "setLogTag",
        "tag",
        "setLogXp",
        "toXp",
        "setLogger",
        "log",
        "Lcom/github/kyuubiran/ezxhelper/utils/Logger;",
        "setToastTag",
        "EzXHelper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;

    invoke-direct {v0}, Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;-><init>()V

    sput-object v0, Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic initActivityProxyManager$default(Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;ILjava/lang/Object;)V
    .locals 0

    .line 155
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 159
    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplication()Landroid/app/Application;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 155
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;->initActivityProxyManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static synthetic initAppContext$default(Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;Landroid/content/Context;ZZILjava/lang/Object;)V
    .locals 1

    .line 66
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 67
    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplication()Landroid/app/Application;

    move-result-object p1

    const-string p5, "currentApplication()"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/Context;

    .line 66
    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    .line 68
    move p2, v0

    .line 66
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 69
    move p3, v0

    .line 66
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;->initAppContext(Landroid/content/Context;ZZ)V

    return-void
.end method


# virtual methods
.method public final addModuleAssetPath(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;->addModuleAssetPath(Landroid/content/res/Resources;)V

    .line 133
    return-void
.end method

.method public final addModuleAssetPath(Landroid/content/res/Resources;)V
    .locals 8
    .param p1, "resources"    # Landroid/content/res/Resources;

    const-string v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v0, "resources.assets"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    const-string v2, "addAssetPath"

    .line 138
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {v0}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getModulePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .local v0, "args$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 187
    .local v3, "$i$f$args":I
    invoke-static {v0}, Lcom/github/kyuubiran/ezxhelper/utils/Args;->constructor-impl([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 139
    .end local v0    # "args$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$args":I
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v4

    .local v0, "argTypes$iv":[Ljava/lang/Class;
    const/4 v4, 0x0

    .line 188
    .local v4, "$i$f$argTypes":I
    invoke-static {v0}, Lcom/github/kyuubiran/ezxhelper/utils/ArgTypes;->constructor-impl([Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v4

    .line 136
    .end local v0    # "argTypes$iv":[Ljava/lang/Class;
    .end local v4    # "$i$f$argTypes":I
    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/github/kyuubiran/ezxhelper/utils/MethodUtilsKt;->invokeMethod-qz3LsZg$default(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public final initActivityProxyManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V
    .locals 7
    .param p1, "modulePackageName"    # Ljava/lang/String;
    .param p2, "hostActivityProxyName"    # Ljava/lang/String;
    .param p3, "moduleClassLoader"    # Ljava/lang/ClassLoader;
    .param p4, "hostClassLoader"    # Ljava/lang/ClassLoader;

    const-string v0, "modulePackageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostActivityProxyName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleClassLoader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostClassLoader"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    invoke-virtual {v0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->setMODULE_PACKAGE_NAME_ID(Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    .line 163
    const/16 v2, 0x2e

    const/16 v3, 0x5f

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_intent_proxy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->setACTIVITY_PROXY_INTENT(Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    invoke-virtual {v0, p2}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->setHOST_ACTIVITY_PROXY_NAME(Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    invoke-virtual {v0, p3}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->setMODULE_CLASS_LOADER(Ljava/lang/ClassLoader;)V

    .line 166
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    invoke-virtual {v0, p4}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->setHOST_CLASS_LOADER(Ljava/lang/ClassLoader;)V

    .line 167
    return-void
.end method

.method public final initAppContext(Landroid/content/Context;ZZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "addPath"    # Z
    .param p3, "initModuleResources"    # Z

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {v0, p1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->setAppContext$EzXHelper_release(Landroid/content/Context;)V

    .line 72
    if-eqz p2, :cond_0

    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {v0}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;->addModuleAssetPath(Landroid/content/Context;)V

    .line 73
    :cond_0
    if-eqz p3, :cond_1

    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "context.resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->setModuleRes$EzXHelper_release(Landroid/content/res/Resources;)V

    .line 74
    :cond_1
    return-void
.end method

.method public final initHandleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 2
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    const-string v0, "lpparam"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v1, "lpparam.classLoader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;->setEzClassLoader(Ljava/lang/ClassLoader;)V

    .line 29
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v1, "lpparam.packageName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;->setHostPackageName(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public final initSubActivity()V
    .locals 1

    .line 183
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;

    invoke-virtual {v0}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityHelper;->initSubActivity$EzXHelper_release()V

    .line 184
    return-void
.end method

.method public final initZygote(Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;)V
    .locals 3
    .param p1, "startupParam"    # Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;

    const-string/jumbo v0, "startupParam"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    iget-object v1, p1, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;->modulePath:Ljava/lang/String;

    const-string/jumbo v2, "startupParam.modulePath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->setModulePath$EzXHelper_release(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    sget-object v1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {v1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getModulePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/res/XModuleResources;->createInstance(Ljava/lang/String;Landroid/content/res/XResources;)Landroid/content/res/XModuleResources;

    move-result-object v1

    const-string v2, "createInstance(modulePath, null)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->setModuleRes$EzXHelper_release(Landroid/content/res/Resources;)V

    .line 39
    return-void
.end method

.method public final setEzClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    const-string v0, "classLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {v0, p1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->setEzXClassLoader$EzXHelper_release(Ljava/lang/ClassLoader;)V

    .line 51
    return-void
.end method

.method public final setHostPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {v0, p1}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->setHostPackageName$EzXHelper_release(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public final setLogTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->setLogTag(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public final setLogXp(Z)V
    .locals 1
    .param p1, "toXp"    # Z

    .line 89
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->setLogXp$EzXHelper_release(Z)V

    .line 90
    return-void
.end method

.method public final setLogger(Lcom/github/kyuubiran/ezxhelper/utils/Logger;)V
    .locals 1
    .param p1, "log"    # Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    const-string v0, "log"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->setCurrentLogger(Lcom/github/kyuubiran/ezxhelper/utils/Logger;)V

    .line 82
    return-void
.end method

.method public final setToastTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    invoke-virtual {v0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->getCurrentLogger()Lcom/github/kyuubiran/ezxhelper/utils/Logger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Logger;->setToastTag(Ljava/lang/String;)V

    .line 106
    return-void
.end method
