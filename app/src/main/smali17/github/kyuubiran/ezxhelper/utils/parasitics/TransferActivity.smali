.class public Lcom/github/kyuubiran/ezxhelper/utils/parasitics/TransferActivity;
.super Landroid/app/Activity;
.source "TransferActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/github/kyuubiran/ezxhelper/utils/parasitics/TransferActivity;",
        "Landroid/app/Activity;",
        "()V",
        "getClassLoader",
        "Ljava/lang/ClassLoader;",
        "onRestoreInstanceState",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 4

    .line 13
    new-instance v0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;

    .line 14
    sget-object v1, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    invoke-virtual {v1}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->getMODULE_CLASS_LOADER()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 15
    sget-object v2, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    invoke-virtual {v2}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->getHOST_CLASS_LOADER()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 13
    invoke-direct {v0, v1, v2}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/FixedClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    const-string v0, "android:viewHierarchyState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 21
    .local v0, "windowState":Landroid/os/Bundle;
    if-eqz v0, :cond_1d

    move-object v1, v0

    .local v1, "it":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 22
    .local v2, "$i$a$-let-TransferActivity$onRestoreInstanceState$1":I
    const-class v3, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/TransferActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 23
    nop

    .line 21
    .end local v1    # "it":Landroid/os/Bundle;
    .end local v2    # "$i$a$-let-TransferActivity$onRestoreInstanceState$1":I
    nop

    .line 24
    :cond_1d
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 25
    return-void
.end method
