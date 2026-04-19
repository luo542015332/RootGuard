.class public final Lcom/github/kyuubiran/ezxhelper/utils/HookUtilsKt$hookReplace$4;
.super Lde/robv/android/xposed/XC_MethodReplacement;
.source "HookUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/kyuubiran/ezxhelper/utils/HookUtilsKt;->hookReplace(Ljava/lang/reflect/Constructor;ILkotlin/jvm/functions/Function1;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "com/github/kyuubiran/ezxhelper/utils/HookUtilsKt$hookReplace$4",
        "Lde/robv/android/xposed/XC_MethodReplacement;",
        "replaceHookedMethod",
        "",
        "param",
        "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
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
.field final synthetic $hooker:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "$priority"    # I
    .param p2, "$hooker"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/github/kyuubiran/ezxhelper/utils/HookUtilsKt$hookReplace$4;->$hooker:Lkotlin/jvm/functions/Function1;

    .line 328
    invoke-direct {p0, p1}, Lde/robv/android/xposed/XC_MethodReplacement;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected replaceHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .locals 4
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    nop

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/HookUtilsKt$hookReplace$4;->$hooker:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    .line 332
    .local v0, "thr":Ljava/lang/Throwable;
    sget-object v1, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->ex$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v0, v1

    .line 333
    .end local v0    # "thr":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method
