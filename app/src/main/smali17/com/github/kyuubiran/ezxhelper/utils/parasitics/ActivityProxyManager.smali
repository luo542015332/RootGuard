.class public final Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;
.super Ljava/lang/Object;
.source "ActivityProxyManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;",
        "",
        "()V",
        "ACTIVITY_PROXY_INTENT",
        "",
        "getACTIVITY_PROXY_INTENT",
        "()Ljava/lang/String;",
        "setACTIVITY_PROXY_INTENT",
        "(Ljava/lang/String;)V",
        "HOST_ACTIVITY_PROXY_NAME",
        "getHOST_ACTIVITY_PROXY_NAME",
        "setHOST_ACTIVITY_PROXY_NAME",
        "HOST_CLASS_LOADER",
        "Ljava/lang/ClassLoader;",
        "getHOST_CLASS_LOADER",
        "()Ljava/lang/ClassLoader;",
        "setHOST_CLASS_LOADER",
        "(Ljava/lang/ClassLoader;)V",
        "MODULE_CLASS_LOADER",
        "getMODULE_CLASS_LOADER",
        "setMODULE_CLASS_LOADER",
        "MODULE_PACKAGE_NAME_ID",
        "getMODULE_PACKAGE_NAME_ID",
        "setMODULE_PACKAGE_NAME_ID",
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
.field public static ACTIVITY_PROXY_INTENT:Ljava/lang/String;

.field public static HOST_ACTIVITY_PROXY_NAME:Ljava/lang/String;

.field public static HOST_CLASS_LOADER:Ljava/lang/ClassLoader;

.field public static final INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

.field public static MODULE_CLASS_LOADER:Ljava/lang/ClassLoader;

.field public static MODULE_PACKAGE_NAME_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    invoke-direct {v0}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;-><init>()V

    sput-object v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getACTIVITY_PROXY_INTENT()Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->ACTIVITY_PROXY_INTENT:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ACTIVITY_PROXY_INTENT"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHOST_ACTIVITY_PROXY_NAME()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->HOST_ACTIVITY_PROXY_NAME:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "HOST_ACTIVITY_PROXY_NAME"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHOST_CLASS_LOADER()Ljava/lang/ClassLoader;
    .locals 1

    .line 27
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->HOST_CLASS_LOADER:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "HOST_CLASS_LOADER"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMODULE_CLASS_LOADER()Ljava/lang/ClassLoader;
    .locals 1

    .line 22
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->MODULE_CLASS_LOADER:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "MODULE_CLASS_LOADER"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMODULE_PACKAGE_NAME_ID()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->MODULE_PACKAGE_NAME_ID:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "MODULE_PACKAGE_NAME_ID"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setACTIVITY_PROXY_INTENT(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sput-object p1, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->ACTIVITY_PROXY_INTENT:Ljava/lang/String;

    return-void
.end method

.method public final setHOST_ACTIVITY_PROXY_NAME(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sput-object p1, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->HOST_ACTIVITY_PROXY_NAME:Ljava/lang/String;

    return-void
.end method

.method public final setHOST_CLASS_LOADER(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/ClassLoader;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sput-object p1, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->HOST_CLASS_LOADER:Ljava/lang/ClassLoader;

    return-void
.end method

.method public final setMODULE_CLASS_LOADER(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/ClassLoader;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sput-object p1, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->MODULE_CLASS_LOADER:Ljava/lang/ClassLoader;

    return-void
.end method

.method public final setMODULE_PACKAGE_NAME_ID(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sput-object p1, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->MODULE_PACKAGE_NAME_ID:Ljava/lang/String;

    return-void
.end method
