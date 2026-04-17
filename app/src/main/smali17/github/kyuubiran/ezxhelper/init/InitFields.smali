.class public final Lcom/github/kyuubiran/ezxhelper/init/InitFields;
.super Ljava/lang/Object;
.source "InitFields.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@@X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@@X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0010@@X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0018R\u0011\u0010\u001a\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0018R\u0011\u0010\u001b\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0018R\u0011\u0010\u001c\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0018R$\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0010@@X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0013\"\u0004\u0008\u001f\u0010\u0015R$\u0010!\u001a\u00020 2\u0006\u0010\u0003\u001a\u00020 @@X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006&"
    }
    d2 = {
        "Lcom/github/kyuubiran/ezxhelper/init/InitFields;",
        "",
        "()V",
        "<set-?>",
        "Landroid/content/Context;",
        "appContext",
        "getAppContext",
        "()Landroid/content/Context;",
        "setAppContext$EzXHelper_release",
        "(Landroid/content/Context;)V",
        "Ljava/lang/ClassLoader;",
        "ezXClassLoader",
        "getEzXClassLoader",
        "()Ljava/lang/ClassLoader;",
        "setEzXClassLoader$EzXHelper_release",
        "(Ljava/lang/ClassLoader;)V",
        "",
        "hostPackageName",
        "getHostPackageName",
        "()Ljava/lang/String;",
        "setHostPackageName$EzXHelper_release",
        "(Ljava/lang/String;)V",
        "isAppContextInited",
        "",
        "()Z",
        "isEzXClassLoaderInited",
        "isHostPackageNameInited",
        "isModulePathInited",
        "isModuleResInited",
        "modulePath",
        "getModulePath",
        "setModulePath$EzXHelper_release",
        "Landroid/content/res/Resources;",
        "moduleRes",
        "getModuleRes",
        "()Landroid/content/res/Resources;",
        "setModuleRes$EzXHelper_release",
        "(Landroid/content/res/Resources;)V",
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
.field public static final INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

.field public static appContext:Landroid/content/Context;

.field public static ezXClassLoader:Ljava/lang/ClassLoader;

.field public static hostPackageName:Ljava/lang/String;

.field public static modulePath:Ljava/lang/String;

.field public static moduleRes:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-direct {v0}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;-><init>()V

    sput-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppContext()Landroid/content/Context;
    .registers 2

    .line 10
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "appContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getEzXClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 22
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->ezXClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "ezXClassLoader"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHostPackageName()Ljava/lang/String;
    .registers 2

    .line 58
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->hostPackageName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "hostPackageName"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getModulePath()Ljava/lang/String;
    .registers 2

    .line 34
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->modulePath:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "modulePath"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getModuleRes()Landroid/content/res/Resources;
    .registers 2

    .line 46
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->moduleRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "moduleRes"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isAppContextInited()Z
    .registers 2

    .line 17
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final isEzXClassLoaderInited()Z
    .registers 2

    .line 29
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->ezXClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final isHostPackageNameInited()Z
    .registers 2

    .line 65
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->hostPackageName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final isModulePathInited()Z
    .registers 2

    .line 41
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->modulePath:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final isModuleResInited()Z
    .registers 2

    .line 53
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->moduleRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final setAppContext$EzXHelper_release(Landroid/content/Context;)V
    .registers 3
    .param p1, "<set-?>"    # Landroid/content/Context;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sput-object p1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->appContext:Landroid/content/Context;

    return-void
.end method

.method public final setEzXClassLoader$EzXHelper_release(Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/ClassLoader;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sput-object p1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->ezXClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public final setHostPackageName$EzXHelper_release(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sput-object p1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->hostPackageName:Ljava/lang/String;

    return-void
.end method

.method public final setModulePath$EzXHelper_release(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sput-object p1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->modulePath:Ljava/lang/String;

    return-void
.end method

.method public final setModuleRes$EzXHelper_release(Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "<set-?>"    # Landroid/content/res/Resources;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sput-object p1, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->moduleRes:Landroid/content/res/Resources;

    return-void
.end method
