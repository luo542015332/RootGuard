.class final Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$load$3;
.super Lkotlin/jvm/internal/Lambda;
.source "PmsHookTarget36.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPmsHookTarget36.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PmsHookTarget36.kt\ncom/pandasu/turbo/lspoed/hook/PmsHookTarget36$load$3\n+ 2 PmsHookTarget36.kt\ncom/pandasu/turbo/lspoed/hook/PmsHookTarget36\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,99:1\n93#2,4:100\n1282#3,2:104\n*S KotlinDebug\n*F\n+ 1 PmsHookTarget36.kt\ncom/pandasu/turbo/lspoed/hook/PmsHookTarget36$load$3\n*L\n59#1:100,4\n64#1:104,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "param",
        "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36;)V
    .registers 3

    iput-object p1, p0, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$load$3;->this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "p1"    # Ljava/lang/Object;

    .line 44
    move-object v0, p1

    check-cast v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    invoke-virtual {p0, v0}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$load$3;->invoke(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 20
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    move-object/from16 v1, p1

    const-string v0, " -> "

    const-string v2, "PandaSU-PmsHook36"

    const-string v3, "param"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36$load$3;->this$0:Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36;

    :try_start_f
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .local v4, "$this$invoke_u24lambda_u242":Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36;
    const/4 v5, 0x0

    .line 47
    .local v5, "$i$a$-runCatching-PmsHookTarget36$load$3$1":I
    iget-object v6, v1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v8, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 48
    .local v6, "callingUid":I
    sparse-switch v6, :sswitch_data_100

    .line 51
    iget-object v8, v1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    goto :goto_29

    .line 48
    :sswitch_28
    return-void

    .line 51
    :goto_29
    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v4, v8}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36;->getPackageNameFromPackageState(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 52
    .local v8, "targetApp":Ljava/lang/String;
    if-nez v8, :cond_38

    .line 53
    const-string v0, "Failed to get target package name"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 58
    :cond_38
    iget-object v9, v1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    .line 59
    .local v9, "snapshot":Ljava/lang/Object;
    move-object v11, v4

    .local v11, "this_$iv":Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36;
    const/4 v12, 0x0

    .line 100
    .local v12, "$i$f$binderLocalScope":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 101
    .local v13, "identity$iv":J
    const/4 v15, 0x0

    .line 60
    .local v15, "$i$a$-binderLocalScope-PmsHookTarget36$load$3$1$callingApps$1":I
    # invokes: Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36;->getGetPackagesForUidMethod()Ljava/lang/reflect/Method;
    invoke-static {v4}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36;->access$getGetPackagesForUidMethod(Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v3, v16

    invoke-virtual {v10, v9, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 101
    .end local v15    # "$i$a$-binderLocalScope-PmsHookTarget36$load$3$1$callingApps$1":I
    nop

    .line 102
    .local v3, "result$iv":Ljava/lang/Object;
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    nop

    .line 59
    .end local v3    # "result$iv":Ljava/lang/Object;
    .end local v11    # "this_$iv":Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36;
    .end local v12    # "$i$f$binderLocalScope":I
    .end local v13    # "identity$iv":J
    if-nez v3, :cond_60

    .line 61
    return-void

    .line 64
    .local v3, "callingApps":[Ljava/lang/String;
    :cond_60
    move-object v10, v3

    .local v10, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v11, 0x0

    .line 104
    .local v11, "$i$f$firstOrNull":I
    array-length v12, v10

    move/from16 v13, v16

    :goto_65
    if-ge v13, v12, :cond_7b

    aget-object v14, v10, v13

    .local v14, "element$iv":Ljava/lang/Object;
    move-object v15, v14

    .local v15, "it":Ljava/lang/String;
    const/16 v16, 0x0

    .line 64
    .local v16, "$i$a$-firstOrNull-PmsHookTarget36$load$3$1$caller$1":I
    invoke-virtual {v4}, Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36;->getService()Lcom/pandasu/turbo/lspoed/HMAService;

    move-result-object v7

    invoke-virtual {v7, v15, v8}, Lcom/pandasu/turbo/lspoed/HMAService;->shouldHide(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 104
    .end local v15    # "it":Ljava/lang/String;
    .end local v16    # "$i$a$-firstOrNull-PmsHookTarget36$load$3$1$caller$1":I
    if-eqz v7, :cond_77

    goto :goto_7c

    .end local v14    # "element$iv":Ljava/lang/Object;
    :cond_77
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x1

    goto :goto_65

    .line 105
    :cond_7b
    const/4 v14, 0x0

    .line 64
    .end local v10    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v11    # "$i$f$firstOrNull":I
    :goto_7c
    move-object v7, v14

    .line 65
    .local v7, "caller":Ljava/lang/String;
    if-eqz v7, :cond_c3

    .line 66
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v1, v10}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 67
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Filtered: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[PandaSU] Filtered: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 70
    :cond_c3
    nop

    .end local v3    # "callingApps":[Ljava/lang/String;
    .end local v4    # "$this$invoke_u24lambda_u242":Lcom/pandasu/turbo/lspoed/hook/PmsHookTarget36;
    .end local v5    # "$i$a$-runCatching-PmsHookTarget36$load$3$1":I
    .end local v6    # "callingUid":I
    .end local v7    # "caller":Ljava/lang/String;
    .end local v8    # "targetApp":Ljava/lang/String;
    .end local v9    # "snapshot":Ljava/lang/Object;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_ca
    .catchall {:try_start_f .. :try_end_ca} :catchall_cb

    goto :goto_d6

    :catchall_cb
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    :goto_d6
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_fe

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 71
    .local v3, "$i$a$-onFailure-PmsHookTarget36$load$3$2":I
    const-string v4, "Error in shouldFilterApplication hook"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PandaSU] Error in shouldFilterApplication: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 73
    nop

    .line 70
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-onFailure-PmsHookTarget36$load$3$2":I
    nop

    .line 74
    :cond_fe
    return-void

    nop

    :sswitch_data_100
    .sparse-switch
        0x0 -> :sswitch_28
        0x3e8 -> :sswitch_28
    .end sparse-switch
.end method
