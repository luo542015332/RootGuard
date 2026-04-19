.class public final Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt;
.super Ljava/lang/Object;
.source "AndroidUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e\u001a\n\u0010\u000f\u001a\u00020\u000c*\u00020\u0010\u001a\n\u0010\u000f\u001a\u00020\u000c*\u00020\u0011\u001a\n\u0010\u0012\u001a\u00020\u000c*\u00020\u000e\u001a9\u0010\u0013\u001a\u00020\u000c*\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00152\u0016\u0010\u0016\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00180\u0017\"\u0004\u0018\u00010\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0002\u0010\u001b\u001a\u001c\u0010\u0013\u001a\u00020\u000c*\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a\"\u001b\u0010\u0000\u001a\u00020\u00018FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0002\u0010\u0003\"\u001b\u0010\u0006\u001a\u00020\u00078FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0005\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001c"
    }
    d2 = {
        "mainHandler",
        "Landroid/os/Handler;",
        "getMainHandler",
        "()Landroid/os/Handler;",
        "mainHandler$delegate",
        "Lkotlin/Lazy;",
        "runtimeProcess",
        "Ljava/lang/Runtime;",
        "getRuntimeProcess",
        "()Ljava/lang/Runtime;",
        "runtimeProcess$delegate",
        "runOnMainThread",
        "",
        "runnable",
        "Ljava/lang/Runnable;",
        "addModuleAssetPath",
        "Landroid/content/Context;",
        "Landroid/content/res/Resources;",
        "postOnMainThread",
        "showToast",
        "msg",
        "",
        "args",
        "",
        "",
        "length",
        "",
        "(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;I)V",
        "EzXHelper_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final mainHandler$delegate:Lkotlin/Lazy;

.field private static final runtimeProcess$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$1M0rhkZer3Ue06TNdHqKF3Aptfs(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt;->showToast$lambda-1(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yTj3OuULcUkqYIYzarMXKJZjZwI(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt;->showToast$lambda-0(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 10
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt$mainHandler$2;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt$mainHandler$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt;->mainHandler$delegate:Lkotlin/Lazy;

    .line 14
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt$runtimeProcess$2;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt$runtimeProcess$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt;->runtimeProcess$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final addModuleAssetPath(Landroid/content/Context;)V
    .locals 1
    .param p0, "$this$addModuleAssetPath"    # Landroid/content/Context;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;

    invoke-virtual {v0, p0}, Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;->addModuleAssetPath(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public static final addModuleAssetPath(Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "$this$addModuleAssetPath"    # Landroid/content/res/Resources;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;

    invoke-virtual {v0, p0}, Lcom/github/kyuubiran/ezxhelper/init/EzXHelperInit;->addModuleAssetPath(Landroid/content/res/Resources;)V

    .line 66
    return-void
.end method

.method public static final getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 10
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt;->mainHandler$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public static final getRuntimeProcess()Ljava/lang/Runtime;
    .locals 2

    .line 14
    sget-object v0, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt;->runtimeProcess$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-runtimeProcess>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Runtime;

    return-object v0
.end method

.method public static final postOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "$this$postOnMainThread"    # Ljava/lang/Runnable;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    :goto_0
    return-void
.end method

.method public static final runOnMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    const-string v0, "runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method

.method public static final showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "$this$showToast"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method

.method public static final showToast(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 1
    .param p0, "$this$showToast"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public static synthetic showToast$default(Landroid/content/Context;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    .line 38
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic showToast$default(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0

    .line 48
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/github/kyuubiran/ezxhelper/utils/AndroidUtilsKt;->showToast(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;I)V

    return-void
.end method

.method private static final showToast$lambda-0(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "$this_showToast"    # Landroid/content/Context;
    .param p1, "$msg"    # Ljava/lang/String;
    .param p2, "$length"    # I

    const-string v0, "$this_showToast"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 40
    return-void
.end method

.method private static final showToast$lambda-1(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 2
    .param p0, "$this_showToast"    # Landroid/content/Context;
    .param p1, "$msg"    # Ljava/lang/String;
    .param p2, "$args"    # [Ljava/lang/Object;
    .param p3, "$length"    # I

    const-string v0, "$this_showToast"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p0, v0, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 50
    return-void
.end method
