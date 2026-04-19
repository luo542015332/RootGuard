.class public final Lcom/github/kyuubiran/ezxhelper/utils/parasitics/IActivityManagerHandler;
.super Ljava/lang/Object;
.source "ActivityHelper.kt"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityHelper.kt\ncom/github/kyuubiran/ezxhelper/utils/parasitics/IActivityManagerHandler\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,586:1\n1627#2,6:587\n*S KotlinDebug\n*F\n+ 1 ActivityHelper.kt\ncom/github/kyuubiran/ezxhelper/utils/parasitics/IActivityManagerHandler\n*L\n559#1:587,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J4\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\nH\u0096\u0002\u00a2\u0006\u0002\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/github/kyuubiran/ezxhelper/utils/parasitics/IActivityManagerHandler;",
        "Ljava/lang/reflect/InvocationHandler;",
        "mOrigin",
        "",
        "(Ljava/lang/Object;)V",
        "invoke",
        "proxy",
        "method",
        "Ljava/lang/reflect/Method;",
        "args",
        "",
        "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;",
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


# instance fields
.field private final mOrigin:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "mOrigin"    # Ljava/lang/Object;

    const-string v0, "mOrigin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/IActivityManagerHandler;->mOrigin:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 558
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 559
    const/4 v0, -0x1

    if-eqz p3, :cond_2

    move-object v2, p3

    .local v2, "$this$indexOfFirst$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 587
    .local v3, "$i$f$indexOfFirst":I
    const/4 v4, 0x0

    .local v4, "index$iv":I
    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_1

    .line 588
    aget-object v6, v2, v4

    .local v6, "it":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 559
    .local v7, "$i$a$-indexOfFirst-IActivityManagerHandler$invoke$index$1":I
    instance-of v6, v6, Landroid/content/Intent;

    .end local v6    # "it":Ljava/lang/Object;
    .end local v7    # "$i$a$-indexOfFirst-IActivityManagerHandler$invoke$index$1":I
    if-eqz v6, :cond_0

    .line 589
    goto :goto_1

    .line 587
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 592
    .end local v4    # "index$iv":I
    :cond_1
    move v4, v0

    .line 559
    .end local v2    # "$this$indexOfFirst$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$indexOfFirst":I
    :goto_1
    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    move v2, v4

    .line 560
    .local v2, "index":I
    if-eq v2, v0, :cond_4

    .line 561
    if-eqz p3, :cond_4

    move-object v0, p3

    .local v0, "it":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 562
    .local v3, "$i$a$-let-IActivityManagerHandler$invoke$1":I
    aget-object v4, v0, v2

    const-string v5, "null cannot be cast to non-null type android.content.Intent"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/content/Intent;

    .line 563
    .local v4, "raw":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 564
    .local v5, "component":Landroid/content/ComponentName;
    if-eqz v5, :cond_3

    .line 565
    sget-object v6, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/InitFields;

    invoke-virtual {v6}, Lcom/github/kyuubiran/ezxhelper/init/InitFields;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 566
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "component.className"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    invoke-virtual {v7}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->getMODULE_PACKAGE_NAME_ID()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v6, v7, v1, v8, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 568
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 569
    .local v6, "wrapper":Landroid/content/Intent;
    nop

    .line 570
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 571
    sget-object v8, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    invoke-virtual {v8}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->getHOST_ACTIVITY_PROXY_NAME()Ljava/lang/String;

    move-result-object v8

    .line 569
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    sget-object v7, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;

    invoke-virtual {v7}, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/ActivityProxyManager;->getACTIVITY_PROXY_INTENT()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    check-cast v8, Landroid/os/Parcelable;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 574
    aput-object v6, v0, v2

    .line 576
    .end local v6    # "wrapper":Landroid/content/Intent;
    :cond_3
    nop

    .line 561
    .end local v0    # "it":[Ljava/lang/Object;
    .end local v3    # "$i$a$-let-IActivityManagerHandler$invoke$1":I
    .end local v4    # "raw":Landroid/content/Intent;
    .end local v5    # "component":Landroid/content/ComponentName;
    nop

    .line 579
    .end local v2    # "index":I
    :cond_4
    nop

    .line 580
    if-eqz p3, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/IActivityManagerHandler;->mOrigin:Ljava/lang/Object;

    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/parasitics/IActivityManagerHandler;->mOrigin:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "e.targetException"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method
