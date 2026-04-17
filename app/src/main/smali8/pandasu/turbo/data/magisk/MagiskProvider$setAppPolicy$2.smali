.class final Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MagiskProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/MagiskProvider;->setAppPolicy(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.pandasu.turbo.data.magisk.MagiskProvider$setAppPolicy$2"
    f = "MagiskProvider.kt"
    i = {}
    l = {
        0x3d5
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $policy:I

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/magisk/MagiskProvider;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->$policy:I

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->$packageName:Ljava/lang/String;

    iget v3, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->$policy:I

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;-><init>(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 24

    const-string v1, "uid_policy"

    const-string v2, "rules"

    const-string v3, "path"

    const-string v4, "pm"

    const-string v5, "kernelsu"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 978
    move-object/from16 v6, p0

    iget v7, v6, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->label:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v7, :pswitch_data_372

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1f
    move-object/from16 v7, p0

    .local v7, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;
    move-object/from16 v10, p1

    .local v10, "$result":Ljava/lang/Object;
    :try_start_23
    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_28

    move-object v11, v10

    goto :goto_46

    .line 1088
    :catch_28
    move-exception v0

    goto/16 :goto_34e

    .line 978
    .end local v7    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;
    .end local v10    # "$result":Ljava/lang/Object;
    :pswitch_2b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p0

    .restart local v7    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;
    move-object/from16 v10, p1

    .line 979
    .restart local v10    # "$result":Ljava/lang/Object;
    nop

    .line 981
    :try_start_33
    iget-object v11, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    move-object v12, v7

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput v8, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/MagiskProvider;->detectRootType(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v11, v12}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->access$detectRootType(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_28

    if-ne v11, v0, :cond_41

    .line 978
    return-object v0

    .line 981
    :cond_41
    move-object/from16 v21, v11

    move-object v11, v10

    move-object/from16 v10, v21

    .line 978
    .end local v10    # "$result":Ljava/lang/Object;
    .local v11, "$result":Ljava/lang/Object;
    :goto_46
    :try_start_46
    check-cast v10, Ljava/lang/String;

    .line 982
    .local v10, "rootType":Ljava/lang/String;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v12, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->$packageName:Ljava/lang/String;

    iget v13, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->$policy:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Setting app policy for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", policy: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", root type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 984
    nop

    .line 985
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_7d} :catch_34c

    const-string v12, "magisk"

    const-string v15, "-c"

    const-string v16, "su"

    const/4 v13, 0x5

    if-eqz v0, :cond_13a

    .line 987
    nop

    .line 988
    :try_start_87
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-array v14, v13, [Ljava/lang/String;

    aput-object v16, v14, v9

    aput-object v15, v14, v8

    const/16 v18, 0x2

    aput-object v4, v14, v18

    const/16 v17, 0x3

    aput-object v3, v14, v17

    const-string v19, "me.weishu.kernelsu"

    const/16 v20, 0x4

    aput-object v19, v14, v20

    invoke-virtual {v0, v14}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 989
    .local v0, "process":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 990
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v14
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_aa} :catch_b0

    if-nez v14, :cond_ae

    move v0, v8

    goto :goto_ce

    :cond_ae
    move v0, v9

    .end local v0    # "process":Ljava/lang/Process;
    goto :goto_ce

    .line 991
    :catch_b0
    move-exception v0

    .line 992
    .local v0, "e":Ljava/lang/Exception;
    :try_start_b1
    sget-object v14, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to check Weishu KernelSU: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_cd} :catch_34c

    .line 993
    const/4 v0, 0x0

    .line 987
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ce
    move v8, v0

    .line 995
    .local v8, "ksudbWeishu":Z
    nop

    .line 996
    :try_start_d0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v9, 0x5

    new-array v13, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v16, v13, v9

    const/4 v9, 0x1

    aput-object v15, v13, v9

    const/4 v9, 0x2

    aput-object v4, v13, v9

    const/4 v4, 0x3

    aput-object v3, v13, v4

    const-string v3, "com.tiann.kernelsu"

    const/4 v4, 0x4

    aput-object v3, v13, v4

    invoke-virtual {v0, v13}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 997
    .local v0, "process":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 998
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v3
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_f3} :catch_f9

    if-nez v3, :cond_f7

    const/4 v0, 0x1

    goto :goto_117

    :cond_f7
    const/4 v0, 0x0

    .end local v0    # "process":Ljava/lang/Process;
    goto :goto_117

    .line 999
    :catch_f9
    move-exception v0

    .line 1000
    .local v0, "e":Ljava/lang/Exception;
    :try_start_fa
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to check Tiann KernelSU: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_116} :catch_34c

    .line 1001
    const/4 v0, 0x0

    .line 995
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_117
    nop

    .line 1004
    .local v0, "ksudbTiann":Z
    nop

    .line 1005
    const-string v3, "/data/data/me.weishu.kernelsu/databases/app.db"

    if-eqz v8, :cond_125

    .line 1006
    .end local v0    # "ksudbTiann":Z
    .end local v8    # "ksudbWeishu":Z
    :try_start_11d
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "Using Weishu KernelSU manager: /data/data/me.weishu.kernelsu/databases/app.db"

    invoke-virtual {v0, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1007
    goto :goto_14b

    .line 1009
    .restart local v0    # "ksudbTiann":Z
    :cond_125
    nop

    .end local v0    # "ksudbTiann":Z
    if-eqz v0, :cond_132

    .line 1010
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Using Tiann KernelSU manager: /data/data/com.tiann.kernelsu/databases/kernelsu.db"

    invoke-virtual {v0, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1011
    const-string v3, "/data/data/com.tiann.kernelsu/databases/kernelsu.db"

    goto :goto_14b

    .line 1014
    :cond_132
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "No KernelSU manager found, defaulting to Weishu"

    invoke-virtual {v0, v4}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 1015
    goto :goto_14b

    .line 1019
    :cond_13a
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_13e} :catch_34c

    const-string v3, "/data/adb/magisk.db"

    if-eqz v0, :cond_143

    goto :goto_14b

    .line 1021
    :cond_143
    :try_start_143
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "Unknown root type, trying Magisk DB"

    invoke-virtual {v0, v4}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 1022
    nop

    .line 984
    :goto_14b
    move-object v0, v3

    .line 1026
    .local v0, "dbPath":Ljava/lang/String;
    nop

    .line 1027
    .end local v10    # "rootType":Ljava/lang/String;
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_151} :catch_34c

    const-string v4, "sqlite3"

    if-eqz v3, :cond_29e

    .line 1029
    nop

    .line 1030
    :try_start_156
    iget-object v3, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    invoke-virtual {v3}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1031
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->$packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    const-string v3, "getApplicationInfo(...)"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v5

    .line 1032
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move v3, v5

    .line 1035
    .local v3, "uid":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 1036
    const/4 v8, 0x5

    new-array v9, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v16, v9, v8

    const/4 v8, 0x1

    aput-object v15, v9, v8

    const/4 v8, 0x2

    aput-object v4, v9, v8

    const/4 v8, 0x3

    aput-object v0, v9, v8

    const-string v8, ".tables"

    const/4 v10, 0x4

    aput-object v8, v9, v10

    .line 1035
    invoke-virtual {v5, v9}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 1038
    .local v5, "tableCheck":Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const-string v9, "getInputStream(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v10, Ljava/io/Reader;

    instance-of v8, v10, Ljava/io/BufferedReader;

    if-eqz v8, :cond_1a5

    check-cast v10, Ljava/io/BufferedReader;

    goto :goto_1ad

    :cond_1a5
    new-instance v8, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v8, v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v10, v8

    :goto_1ad
    check-cast v10, Ljava/io/Reader;

    invoke-static {v10}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1039
    .local v8, "tables":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    .line 1041
    nop

    .line 1042
    .end local v5    # "tableCheck":Ljava/lang/Process;
    move-object v5, v8

    check-cast v5, Ljava/lang/CharSequence;

    move-object v9, v2

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v5, v9, v13, v12, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d2

    move-object v1, v2

    goto :goto_1e0

    .line 1043
    :cond_1d2
    move-object v2, v8

    check-cast v2, Ljava/lang/CharSequence;

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v9, 0x2

    const/4 v12, 0x0

    invoke-static {v2, v5, v12, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26a

    .line 1041
    .end local v8    # "tables":Ljava/lang/String;
    :goto_1e0
    nop

    .line 1051
    .local v1, "tableName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 1052
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v16, v5, v8

    const/4 v8, 0x1

    aput-object v15, v5, v8

    const/4 v8, 0x2

    aput-object v4, v5, v8

    const/4 v4, 0x3

    aput-object v0, v5, v4

    iget v4, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->$policy:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "REPLACE INTO "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (uid, policy) VALUES ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x4

    aput-object v4, v5, v8

    .line 1051
    .end local v0    # "dbPath":Ljava/lang/String;
    .end local v1    # "tableName":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 1054
    .local v0, "process":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 1055
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v1

    if-nez v1, :cond_235

    const/4 v0, 0x1

    goto :goto_236

    :cond_235
    const/4 v0, 0x0

    .line 1056
    .local v0, "success":Z
    :goto_236
    if-eqz v0, :cond_268

    .line 1057
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v2, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->$packageName:Ljava/lang/String;

    iget v4, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->$policy:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set KernelSU policy for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " (uid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1059
    .end local v3    # "uid":I
    :cond_268
    nop

    .end local v0    # "success":Z
    goto :goto_296

    .line 1045
    :cond_26a
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "Unknown KernelSU database structure"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 1046
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_276
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_276} :catch_277

    return-object v0

    .line 1060
    :catch_277
    move-exception v0

    .line 1061
    .local v0, "e":Ljava/lang/Exception;
    :try_start_278
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v2, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->$packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get uid for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1062
    const/4 v0, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_296
    if-eqz v0, :cond_29b

    const/4 v8, 0x1

    goto/16 :goto_347

    :cond_29b
    const/4 v8, 0x0

    goto/16 :goto_347

    .line 1065
    .local v0, "dbPath":Ljava/lang/String;
    :cond_29e
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33f

    .line 1067
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 1068
    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v16, v3, v2

    const/4 v2, 0x1

    aput-object v15, v3, v2

    const/4 v2, 0x2

    aput-object v4, v3, v2

    const/4 v2, 0x3

    aput-object v0, v3, v2

    iget v2, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->$policy:I

    iget-object v5, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->$packageName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UPDATE policies SET policy="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " WHERE package_name=\'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v3, v5

    .line 1067
    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 1070
    .local v1, "process":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 1073
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v2

    if-eqz v2, :cond_33c

    .line 1074
    .end local v1    # "process":Ljava/lang/Process;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 1075
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v16, v2, v3

    const/4 v3, 0x1

    aput-object v15, v2, v3

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const/4 v4, 0x3

    aput-object v0, v2, v4

    iget-object v4, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->$packageName:Ljava/lang/String;

    iget v5, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->$policy:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT INTO policies (package_name, policy, logging, notification) VALUES (\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\', "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 1, 1)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v2, v5

    .line 1074
    .end local v0    # "dbPath":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 1077
    .local v0, "insertProcess":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 1078
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v1

    if-nez v1, :cond_33a

    move v8, v3

    goto :goto_347

    :cond_33a
    const/4 v8, 0x0

    .end local v0    # "insertProcess":Ljava/lang/Process;
    goto :goto_347

    .line 1073
    .local v0, "dbPath":Ljava/lang/String;
    .restart local v1    # "process":Ljava/lang/Process;
    :cond_33c
    const/4 v3, 0x1

    .line 1080
    .end local v0    # "dbPath":Ljava/lang/String;
    .end local v1    # "process":Ljava/lang/Process;
    move v8, v3

    goto :goto_347

    .line 1084
    :cond_33f
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "Unknown root type, cannot set app policy"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 1085
    const/4 v8, 0x0

    :goto_347
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_34b
    .catch Ljava/lang/Exception; {:try_start_278 .. :try_end_34b} :catch_34c

    .line 1026
    return-object v0

    .line 1088
    :catch_34c
    move-exception v0

    move-object v10, v11

    .line 1089
    .end local v11    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .local v10, "$result":Ljava/lang/Object;
    :goto_34e
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v2, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$setAppPolicy$2;->$packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set app policy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1090
    const/4 v1, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 979
    return-object v0

    nop

    :pswitch_data_372
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
