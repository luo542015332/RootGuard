.class public final Lcom/github/kyuubiran/ezxhelper/utils/HookUtilsKt$hookAfter$4;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "HookUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/kyuubiran/ezxhelper/utils/HookUtilsKt;->hookAfter(Ljava/lang/reflect/Constructor;ILkotlin/jvm/functions/Function1;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "com/github/kyuubiran/ezxhelper/utils/HookUtilsKt$hookAfter$4",
        "Lde/robv/android/xposed/XC_MethodHook;",
        "afterHookedMethod",
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
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .registers 3
    .param p1, "$priority"    # I
    .param p2, "$hooker"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/github/kyuubiran/ezxhelper/utils/HookUtilsKt$hookAfter$4;->$hooker:Lkotlin/jvm/functions/Function1;

    .line 216
    invoke-direct {p0, p1}, Lde/robv/android/xposed/XC_MethodHook;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    nop

    .line 218
    :try_start_6
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/HookUtilsKt$hookAfter$4;->$hooker:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    goto :goto_14

    .line 219
    :catchall_c
    move-exception v0

    .line 220
    .local v0, "thr":Ljava/lang/Throwable;
    sget-object v1, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->ex$default(Lcom/github/kyuubiran/ezxhelper/utils/Log;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 221
    .end local v0    # "thr":Ljava/lang/Throwable;
    :goto_14
    return-void
.end method
