.class final Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MagiskProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/MagiskProvider;->getAppPolicies(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "Lcom/pandasu/turbo/data/magisk/AppPolicy;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMagiskProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagiskProvider.kt\ncom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1344:1\n1855#2:1345\n1856#2:1348\n1855#2,2:1349\n13309#3,2:1346\n*S KotlinDebug\n*F\n+ 1 MagiskProvider.kt\ncom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2\n*L\n570#1:1345\n570#1:1348\n605#1:1349,2\n581#1:1346,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/pandasu/turbo/data/magisk/AppPolicy;",
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
    c = "com.pandasu.turbo.data.magisk.MagiskProvider$getAppPolicies$2"
    f = "MagiskProvider.kt"
    i = {
        0x0
    }
    l = {
        0x1bc
    }
    m = "invokeSuspend"
    n = {
        "policies"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/magisk/MagiskProvider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;-><init>(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/AppPolicy;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 31

    const-string v1, "uid_policy"

    const-string v2, "rules"

    const-string v3, "path"

    const-string v4, "pm"

    const-string v5, "kernelsu"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 437
    move-object/from16 v6, p0

    iget v7, v6, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;->label:I

    const/4 v8, 0x1

    packed-switch v7, :pswitch_data_648

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1e
    move-object/from16 v7, p0

    .local v7, "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;
    move-object/from16 v9, p1

    .local v9, "$result":Ljava/lang/Object;
    iget-object v0, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;->L$0:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/util/List;

    .local v10, "policies":Ljava/util/List;
    :try_start_27
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_639

    move-object v11, v10

    move-object v10, v9

    goto :goto_59

    .end local v7    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;
    .end local v9    # "$result":Ljava/lang/Object;
    .end local v10    # "policies":Ljava/util/List;
    :pswitch_2d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p0

    .restart local v7    # "this":Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;
    move-object/from16 v9, p1

    .line 438
    .restart local v9    # "$result":Ljava/lang/Object;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/List;

    .line 440
    .restart local v10    # "policies":Ljava/util/List;
    nop

    .line 441
    :try_start_3c
    sget-object v11, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v12, "========== Starting getAppPolicies() =========="

    invoke-virtual {v11, v12}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 444
    iget-object v11, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    move-object v12, v7

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v10, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;->L$0:Ljava/lang/Object;

    iput v8, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/MagiskProvider;->detectRootType(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v11, v12}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->access$detectRootType(Lcom/pandasu/turbo/data/magisk/MagiskProvider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_50} :catch_639

    if-ne v11, v0, :cond_53

    .line 437
    return-object v0

    .line 444
    :cond_53
    move-object/from16 v28, v10

    move-object v10, v9

    move-object v9, v11

    move-object/from16 v11, v28

    .line 437
    .end local v9    # "$result":Ljava/lang/Object;
    .local v10, "$result":Ljava/lang/Object;
    .local v11, "policies":Ljava/util/List;
    :goto_59
    :try_start_59
    check-cast v9, Ljava/lang/String;

    .line 445
    .local v9, "rootType":Ljava/lang/String;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Detected root type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 447
    nop

    .line 448
    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_78} :catch_632

    const-string v12, "magisk"

    const-string v13, "-c"

    const-string v14, "su"

    const/4 v15, 0x5

    if-eqz v0, :cond_184

    .line 449
    :try_start_81
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v8, "Root type is KernelSU, detecting manager..."

    invoke-virtual {v0, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_88} :catch_632

    .line 452
    nop

    .line 453
    :try_start_89
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-array v8, v15, [Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v14, v8, v19

    const/16 v16, 0x1

    aput-object v13, v8, v16

    const/16 v18, 0x2

    aput-object v4, v8, v18

    const/16 v17, 0x3

    aput-object v3, v8, v17

    const-string v20, "me.weishu.kernelsu"

    const/16 v21, 0x4

    aput-object v20, v8, v21

    invoke-virtual {v0, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 454
    .local v0, "process":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 455
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v8

    if-nez v8, :cond_b4

    const/4 v0, 0x1

    goto :goto_b5

    :cond_b4
    const/4 v0, 0x0

    .line 456
    .local v0, "success":Z
    :goto_b5
    if-nez v0, :cond_be

    .line 457
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v15, "Weishu KernelSU not found via pm path"

    invoke-virtual {v8, v15}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_be} :catch_c0

    .line 459
    :cond_be
    nop

    .end local v0    # "success":Z
    goto :goto_e0

    .line 460
    :catch_c0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c1
    sget-object v8, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v0

    .end local v0    # "e":Ljava/lang/Exception;
    .local v21, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to check Weishu KernelSU: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_df} :catch_632

    .line 462
    const/4 v0, 0x0

    .line 452
    .end local v21    # "e":Ljava/lang/Exception;
    :goto_e0
    move v6, v0

    .line 465
    .local v6, "ksudbWeishu":Z
    nop

    .line 466
    :try_start_e2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v8, 0x5

    new-array v15, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v14, v15, v8

    const/4 v8, 0x1

    aput-object v13, v15, v8

    const/4 v8, 0x2

    aput-object v4, v15, v8

    const/4 v4, 0x3

    aput-object v3, v15, v4

    const-string v3, "com.tiann.kernelsu"

    const/4 v4, 0x4

    aput-object v3, v15, v4

    invoke-virtual {v0, v15}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 467
    .local v0, "process":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 468
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v3

    if-nez v3, :cond_109

    const/4 v0, 0x1

    goto :goto_10a

    :cond_109
    const/4 v0, 0x0

    .line 469
    .local v0, "success":Z
    :goto_10a
    if-nez v0, :cond_113

    .line 470
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "Tiann KernelSU not found via pm path"

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_113} :catch_115

    .line 472
    :cond_113
    nop

    .end local v0    # "success":Z
    goto :goto_133

    .line 473
    :catch_115
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    :try_start_116
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to check Tiann KernelSU: "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 475
    const/4 v0, 0x0

    .line 465
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_133
    nop

    .line 478
    .local v0, "ksudbTiann":Z
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    if-eqz v6, :cond_13a

    const/4 v4, 0x1

    goto :goto_13b

    :cond_13a
    const/4 v4, 0x0

    :goto_13b
    if-eqz v0, :cond_13f

    const/4 v8, 0x1

    goto :goto_140

    :cond_13f
    const/4 v8, 0x0

    :goto_140
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_145} :catch_632

    move-object/from16 v21, v10

    .end local v10    # "$result":Ljava/lang/Object;
    .local v21, "$result":Ljava/lang/Object;
    :try_start_147
    const-string v10, "ksudbWeishu: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ", ksudbTiann: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_162} :catch_62d

    .line 480
    nop

    .line 481
    const-string v3, "/data/data/me.weishu.kernelsu/databases/app.db"

    if-eqz v6, :cond_16f

    .line 482
    .end local v0    # "ksudbTiann":Z
    .end local v6    # "ksudbWeishu":Z
    :try_start_167
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "Using Weishu KernelSU manager: /data/data/me.weishu.kernelsu/databases/app.db"

    invoke-virtual {v0, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 483
    goto :goto_1b5

    .line 485
    .restart local v0    # "ksudbTiann":Z
    :cond_16f
    nop

    .end local v0    # "ksudbTiann":Z
    if-eqz v0, :cond_17c

    .line 486
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Using Tiann KernelSU manager: /data/data/com.tiann.kernelsu/databases/kernelsu.db"

    invoke-virtual {v0, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 487
    const-string v3, "/data/data/com.tiann.kernelsu/databases/kernelsu.db"

    goto :goto_1b5

    .line 490
    :cond_17c
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "No KernelSU manager found, defaulting to Weishu"

    invoke-virtual {v0, v4}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 491
    goto :goto_1b5

    .line 495
    .end local v21    # "$result":Ljava/lang/Object;
    .restart local v10    # "$result":Ljava/lang/Object;
    :cond_184
    move-object/from16 v21, v10

    .end local v10    # "$result":Ljava/lang/Object;
    .restart local v21    # "$result":Ljava/lang/Object;
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_18a} :catch_62d

    const-string v3, "/data/adb/magisk.db"

    if-eqz v0, :cond_196

    .line 496
    :try_start_18e
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "Root type is Magisk, using: /data/adb/magisk.db"

    invoke-virtual {v0, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 497
    goto :goto_1b5

    .line 500
    :cond_196
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown root type ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "), trying Magisk DB: /data/adb/magisk.db"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 501
    nop

    .line 447
    :goto_1b5
    move-object v0, v3

    .line 505
    .local v0, "dbPath":Ljava/lang/String;
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Database path: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 508
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking if database exists: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 509
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const/4 v4, 0x5

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v14, v6, v4

    const/4 v4, 0x1

    aput-object v13, v6, v4

    const-string v4, "test"

    const/4 v8, 0x2

    aput-object v4, v6, v8

    const-string v4, "-f"

    const/4 v8, 0x3

    aput-object v4, v6, v8

    const/4 v4, 0x4

    aput-object v0, v6, v4

    invoke-virtual {v3, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 510
    .local v3, "checkDbProcess":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 512
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Database check exit code: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v4

    if-eqz v4, :cond_242

    .line 515
    .end local v3    # "checkDbProcess":Ljava/lang/Process;
    .end local v9    # "rootType":Ljava/lang/String;
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database file not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 516
    .end local v0    # "dbPath":Ljava/lang/String;
    return-object v11

    .line 519
    .restart local v0    # "dbPath":Ljava/lang/String;
    .restart local v9    # "rootType":Ljava/lang/String;
    :cond_242
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "Database file exists, proceeding to query"

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 522
    nop

    .line 523
    .end local v9    # "rootType":Ljava/lang/String;
    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_24e} :catch_62d

    const-string v4, "|"

    const/16 v5, 0x2000

    const-string v6, "getInputStream(...)"

    const-string v8, "sqlite3"

    if-eqz v3, :cond_520

    .line 524
    :try_start_258
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v9, "Querying KernelSU database..."

    invoke-virtual {v3, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 531
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v9, "Checking database tables..."

    invoke-virtual {v3, v9}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 532
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 533
    const/4 v9, 0x5

    new-array v10, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v14, v10, v9

    const/4 v9, 0x1

    aput-object v13, v10, v9

    const/4 v9, 0x2

    aput-object v8, v10, v9

    const/4 v9, 0x3

    aput-object v0, v10, v9

    const-string v9, ".tables"

    const/4 v12, 0x4

    aput-object v9, v10, v12

    .line 532
    invoke-virtual {v3, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 535
    .local v3, "tableCheck":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v12, Ljava/io/Reader;

    instance-of v9, v12, Ljava/io/BufferedReader;

    if-eqz v9, :cond_299

    check-cast v12, Ljava/io/BufferedReader;

    goto :goto_29f

    :cond_299
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v12, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v12, v9

    :goto_29f
    check-cast v12, Ljava/io/Reader;

    invoke-static {v12}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 536
    .local v9, "tables":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 538
    sget-object v10, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "KernelSU database tables: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 539
    sget-object v10, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Table check exit code: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 541
    .end local v3    # "tableCheck":Ljava/lang/Process;
    nop

    .line 542
    move-object v3, v9

    check-cast v3, Ljava/lang/CharSequence;

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const/4 v12, 0x2

    const/4 v15, 0x0

    invoke-static {v3, v5, v15, v12, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ff

    .line 543
    .end local v9    # "tables":Ljava/lang/String;
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Found \'rules\' table"

    invoke-virtual {v1, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 544
    move-object v1, v2

    goto :goto_315

    .line 546
    .restart local v9    # "tables":Ljava/lang/String;
    :cond_2ff
    move-object v2, v9

    check-cast v2, Ljava/lang/CharSequence;

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v5, 0x2

    const/4 v12, 0x0

    invoke-static {v2, v3, v12, v5, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_507

    .line 547
    .end local v9    # "tables":Ljava/lang/String;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Found \'uid_policy\' table"

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 548
    nop

    .line 541
    :goto_315
    nop

    .line 556
    .local v1, "tableName":Ljava/lang/String;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using table: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 558
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Executing query: SELECT uid, policy FROM "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 559
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 560
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v14, v3, v5

    const/4 v5, 0x1

    aput-object v13, v3, v5

    const/4 v5, 0x2

    aput-object v8, v3, v5

    const/4 v5, 0x3

    aput-object v0, v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT uid, policy FROM "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    aput-object v5, v3, v8

    .line 559
    .end local v0    # "dbPath":Ljava/lang/String;
    .end local v1    # "tableName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 562
    .local v0, "process":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Reader;

    instance-of v1, v3, Ljava/io/BufferedReader;

    if-eqz v1, :cond_38a

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_392

    :cond_38a
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v1

    :goto_392
    check-cast v3, Ljava/io/Reader;

    invoke-static {v3}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, "output":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 565
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query exit code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 566
    .end local v0    # "process":Ljava/lang/Process;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query output length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " characters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 567
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query output lines: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lines"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 568
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query output preview: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 570
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v2, v7, Lcom/pandasu/turbo/data/magisk/MagiskProvider$getAppPolicies$2;->this$0:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    .end local v1    # "output":Ljava/lang/String;
    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1345
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_430
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_503

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv":Ljava/lang/Object;
    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    .local v0, "line":Ljava/lang/String;
    const/4 v5, 0x0

    .line 571
    .local v5, "$i$a$-forEach-MagiskProvider$getAppPolicies$2$1":I
    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v8, v6

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x6

    const/16 v27, 0x0

    move-object/from16 v23, v8

    invoke-static/range {v22 .. v27}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v6

    .line 572
    .local v0, "parts":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x2

    if-lt v6, v8, :cond_4f8

    .line 574
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_471

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_472

    :cond_471
    const/4 v6, 0x0

    .line 575
    .local v6, "uid":I
    :goto_472
    const/4 v8, 0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_484

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_483
    .catch Ljava/lang/Exception; {:try_start_258 .. :try_end_483} :catch_62d

    goto :goto_485

    :cond_484
    const/4 v8, 0x0

    .end local v0    # "parts":Ljava/util/List;
    :goto_485
    move v0, v8

    .line 578
    .local v0, "policy":I
    nop

    .line 579
    :try_start_487
    invoke-virtual {v2}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 580
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v8, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 581
    .local v8, "packages":[Ljava/lang/String;
    if-eqz v8, :cond_4c7

    .local v8, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1346
    .local v9, "$i$f$forEach":I
    array-length v10, v8

    const/4 v12, 0x0

    :goto_499
    if-ge v12, v10, :cond_4c1

    aget-object v13, v8, v12
    :try_end_49d
    .catch Ljava/lang/Exception; {:try_start_487 .. :try_end_49d} :catch_4cc

    .local v13, "element$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "packageName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 582
    .local v15, "$i$a$-forEach-MagiskProvider$getAppPolicies$2$1$1":I
    nop

    .line 583
    move/from16 p1, v1

    .end local v1    # "$i$f$forEach":I
    .local p1, "$i$f$forEach":I
    :try_start_4a2
    new-instance v1, Lcom/pandasu/turbo/data/magisk/AppPolicy;

    .line 584
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_4a7
    .catch Ljava/lang/Exception; {:try_start_4a2 .. :try_end_4a7} :catch_4bd

    .line 585
    nop

    .line 586
    nop

    .line 587
    nop

    .line 583
    move-object/from16 v17, v2

    const/4 v2, 0x1

    :try_start_4ad
    invoke-direct {v1, v14, v0, v2, v2}, Lcom/pandasu/turbo/data/magisk/AppPolicy;-><init>(Ljava/lang/String;III)V

    .line 582
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b3
    .catch Ljava/lang/Exception; {:try_start_4ad .. :try_end_4b3} :catch_4bb

    .line 590
    nop

    .line 1346
    .end local v13    # "element$iv":Ljava/lang/Object;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "$i$a$-forEach-MagiskProvider$getAppPolicies$2$1$1":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p1

    move-object/from16 v2, v17

    goto :goto_499

    .line 591
    .end local v0    # "policy":I
    .end local v8    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v9    # "$i$f$forEach":I
    :catch_4bb
    move-exception v0

    goto :goto_4d1

    :catch_4bd
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_4d1

    .line 1346
    .end local p1    # "$i$f$forEach":I
    .restart local v0    # "policy":I
    .restart local v1    # "$i$f$forEach":I
    .restart local v8    # "$this$forEach$iv":[Ljava/lang/Object;
    .restart local v9    # "$i$f$forEach":I
    :cond_4c1
    move/from16 p1, v1

    move-object/from16 v17, v2

    .line 1347
    .end local v0    # "policy":I
    .end local v1    # "$i$f$forEach":I
    .restart local p1    # "$i$f$forEach":I
    nop

    .end local v8    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v9    # "$i$f$forEach":I
    goto :goto_4fc

    .line 581
    .end local p1    # "$i$f$forEach":I
    .restart local v0    # "policy":I
    .restart local v1    # "$i$f$forEach":I
    .local v8, "packages":[Ljava/lang/String;
    :cond_4c7
    move/from16 p1, v1

    move-object/from16 v17, v2

    .end local v0    # "policy":I
    .end local v1    # "$i$f$forEach":I
    .end local v8    # "packages":[Ljava/lang/String;
    .restart local p1    # "$i$f$forEach":I
    goto :goto_4fc

    .line 591
    .end local p1    # "$i$f$forEach":I
    .restart local v1    # "$i$f$forEach":I
    :catch_4cc
    move-exception v0

    move/from16 p1, v1

    move-object/from16 v17, v2

    .line 592
    .end local v1    # "$i$f$forEach":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local p1    # "$i$f$forEach":I
    :goto_4d1
    :try_start_4d1
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get package for uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    goto :goto_4fc

    .line 572
    .end local v6    # "uid":I
    .end local p1    # "$i$f$forEach":I
    .local v0, "parts":Ljava/util/List;
    .restart local v1    # "$i$f$forEach":I
    :cond_4f8
    move/from16 p1, v1

    move-object/from16 v17, v2

    .line 595
    .end local v0    # "parts":Ljava/util/List;
    .end local v1    # "$i$f$forEach":I
    .restart local p1    # "$i$f$forEach":I
    :goto_4fc
    nop

    .line 1345
    .end local v5    # "$i$a$-forEach-MagiskProvider$getAppPolicies$2$1":I
    move/from16 v1, p1

    move-object/from16 v2, v17

    goto/16 :goto_430

    .line 1348
    .end local p1    # "$i$f$forEach":I
    .restart local v1    # "$i$f$forEach":I
    :cond_503
    move/from16 p1, v1

    .end local v1    # "$i$f$forEach":I
    goto/16 :goto_608

    .line 551
    .local v9, "tables":Ljava/lang/String;
    :cond_507
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown KernelSU database structure, tables: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 552
    .end local v9    # "tables":Ljava/lang/String;
    return-object v11

    .line 597
    .local v0, "dbPath":Ljava/lang/String;
    :cond_520
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_601

    .line 599
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 600
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    const/4 v3, 0x1

    aput-object v13, v2, v3

    const/4 v3, 0x2

    aput-object v8, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const-string v3, "SELECT package_name, policy, logging, notification FROM policies"

    const/4 v5, 0x4

    aput-object v3, v2, v5

    .line 599
    .end local v0    # "dbPath":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 602
    .local v0, "process":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Reader;

    instance-of v1, v3, Ljava/io/BufferedReader;

    if-eqz v1, :cond_559

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_561

    :cond_559
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v1

    :goto_561
    check-cast v3, Ljava/io/Reader;

    invoke-static {v3}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "output":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 605
    nop

    .end local v0    # "process":Ljava/lang/Process;
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .end local v1    # "output":Ljava/lang/String;
    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1349
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_579
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5ff

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv":Ljava/lang/Object;
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    .local v0, "line":Ljava/lang/String;
    const/4 v3, 0x0

    .line 606
    .local v3, "$i$a$-forEach-MagiskProvider$getAppPolicies$2$2":I
    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/CharSequence;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v6, v5

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x6

    const/16 v27, 0x0

    move-object/from16 v23, v6

    invoke-static/range {v22 .. v27}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    .line 607
    .local v0, "parts":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_5f8

    .line 608
    nop

    .line 609
    new-instance v5, Lcom/pandasu/turbo/data/magisk/AppPolicy;

    .line 610
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 611
    const/4 v10, 0x1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_5c6

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v12, v19

    goto :goto_5c7

    :cond_5c6
    move v12, v8

    .line 612
    :goto_5c7
    const/4 v13, 0x2

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_5db

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v14, v16

    goto :goto_5dc

    :cond_5db
    move v14, v10

    .line 613
    :goto_5dc
    const/4 v15, 0x3

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    if-eqz v16, :cond_5f0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    goto :goto_5f1

    .end local v0    # "parts":Ljava/util/List;
    :cond_5f0
    move v0, v10

    .line 609
    :goto_5f1
    invoke-direct {v5, v9, v12, v14, v0}, Lcom/pandasu/turbo/data/magisk/AppPolicy;-><init>(Ljava/lang/String;III)V

    .line 608
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5fc

    .line 607
    .restart local v0    # "parts":Ljava/util/List;
    :cond_5f8
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v13, 0x2

    const/4 v15, 0x3

    .line 617
    .end local v0    # "parts":Ljava/util/List;
    :goto_5fc
    nop

    .line 1349
    .end local v3    # "$i$a$-forEach-MagiskProvider$getAppPolicies$2$2":I
    goto/16 :goto_579

    .line 1350
    :cond_5ff
    nop

    .end local v1    # "$i$f$forEach":I
    goto :goto_608

    .line 620
    :cond_601
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "Unknown root type, cannot query app policies"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 624
    :goto_608
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " app policies"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_62a
    .catch Ljava/lang/Exception; {:try_start_4d1 .. :try_end_62a} :catch_62d

    move-object/from16 v10, v21

    goto :goto_646

    .line 625
    :catch_62d
    move-exception v0

    move-object v10, v11

    move-object/from16 v9, v21

    goto :goto_63a

    .end local v21    # "$result":Ljava/lang/Object;
    .restart local v10    # "$result":Ljava/lang/Object;
    :catch_632
    move-exception v0

    move-object/from16 v21, v10

    move-object v10, v11

    move-object/from16 v9, v21

    .end local v10    # "$result":Ljava/lang/Object;
    .restart local v21    # "$result":Ljava/lang/Object;
    goto :goto_63a

    .end local v11    # "policies":Ljava/util/List;
    .end local v21    # "$result":Ljava/lang/Object;
    .local v9, "$result":Ljava/lang/Object;
    .local v10, "policies":Ljava/util/List;
    :catch_639
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/Exception;
    :goto_63a
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "Failed to get app policies"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v11, v10

    move-object v10, v9

    .line 629
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "$result":Ljava/lang/Object;
    .local v10, "$result":Ljava/lang/Object;
    .restart local v11    # "policies":Ljava/util/List;
    :goto_646
    return-object v11

    nop

    :pswitch_data_648
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
