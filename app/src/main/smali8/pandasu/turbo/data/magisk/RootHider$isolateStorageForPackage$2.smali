.class final Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->isolateStorageForPackage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2$WhenMappings;
    }
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
    c = "com.pandasu.turbo.data.magisk.RootHider$isolateStorageForPackage$2"
    f = "RootHider.kt"
    i = {
        0x1,
        0x2,
        0x3,
        0x4,
        0x5,
        0x6,
        0x6,
        0x7,
        0x8,
        0x8,
        0x9,
        0x9,
        0xa,
        0xb,
        0xc
    }
    l = {
        0x3e8,
        0x3f0,
        0x3f1,
        0x3f2,
        0x3f5,
        0x3f6,
        0x3ff,
        0x401,
        0x411,
        0x412,
        0x427,
        0x429,
        0x42a
    }
    m = "invokeSuspend"
    n = {
        "isolationDir",
        "isolationDir",
        "isolationDir",
        "isolationDir",
        "isolationDir",
        "isolationDir",
        "rootType",
        "rootType",
        "isolationDir",
        "rootType",
        "rootType",
        "sdcardResult",
        "rootType",
        "rootType",
        "rootType"
    }
    s = {
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$1",
        "L$0",
        "L$0",
        "L$1",
        "L$0",
        "Z$0",
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $packageName:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/RootHider;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 995
    move-object/from16 v1, p0

    iget v2, v1, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->label:I

    const-string v3, " true"

    const-string v4, "/data"

    const/4 v5, 0x2

    const-string v6, "/sdcard"

    const-string v7, "mkdir -p "

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    packed-switch v2, :pswitch_data_50c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1f
    move-object/from16 v2, p0

    .local v2, "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget-object v0, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .local v4, "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :try_start_28
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_3a

    goto/16 :goto_458

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :pswitch_2d
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .restart local v4    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :try_start_35
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_3a

    goto/16 :goto_42b

    .line 1068
    :catch_3a
    move-exception v0

    goto/16 :goto_477

    .line 995
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :pswitch_3d
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .restart local v4    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :try_start_45
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_a3

    move-object v8, v4

    move-object v4, v3

    goto/16 :goto_3f3

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :pswitch_4c
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-boolean v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->Z$0:Z

    .local v4, "sdcardResult":Z
    iget-object v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .local v6, "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :try_start_56
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_70

    move-object v8, v6

    move-object v6, v3

    goto/16 :goto_2e7

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "sdcardResult":Z
    .end local v6    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :pswitch_5d
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .restart local v6    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    iget-object v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .local v7, "isolationDir":Ljava/lang/String;
    :try_start_69
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_70

    move-object v8, v6

    move-object v6, v3

    goto/16 :goto_2a0

    .line 1050
    .end local v6    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .end local v7    # "isolationDir":Ljava/lang/String;
    :catch_70
    move-exception v0

    goto/16 :goto_34d

    .line 995
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_73
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .local v4, "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :try_start_7b
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_80

    goto/16 :goto_3bb

    .line 1027
    .end local v4    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :catch_80
    move-exception v0

    goto/16 :goto_4af

    .line 995
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_83
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .restart local v4    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .local v5, "isolationDir":Ljava/lang/String;
    :try_start_8f
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_a3

    move-object v8, v4

    move-object v4, v3

    goto/16 :goto_377

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .end local v5    # "isolationDir":Ljava/lang/String;
    :pswitch_96
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .restart local v7    # "isolationDir":Ljava/lang/String;
    :try_start_9e
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a1} :catch_a3

    goto/16 :goto_248

    .line 1075
    .end local v7    # "isolationDir":Ljava/lang/String;
    :catch_a3
    move-exception v0

    goto/16 :goto_4e8

    .line 995
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_a6
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v7, p1

    .local v7, "$result":Ljava/lang/Object;
    iget-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .local v11, "isolationDir":Ljava/lang/String;
    :try_start_ae
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b1} :catch_c0

    goto/16 :goto_21c

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v11    # "isolationDir":Ljava/lang/String;
    :pswitch_b3
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v7, p1

    .restart local v7    # "$result":Ljava/lang/Object;
    iget-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .restart local v11    # "isolationDir":Ljava/lang/String;
    :try_start_bb
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_c0

    goto/16 :goto_1f2

    .line 1075
    .end local v11    # "isolationDir":Ljava/lang/String;
    :catch_c0
    move-exception v0

    move-object v3, v7

    goto/16 :goto_4e8

    .line 995
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v7    # "$result":Ljava/lang/Object;
    :pswitch_c4
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v11, p1

    .local v11, "$result":Ljava/lang/Object;
    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .local v12, "isolationDir":Ljava/lang/String;
    :try_start_cc
    invoke-static {v11}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cf} :catch_e7

    goto/16 :goto_1ca

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v11    # "$result":Ljava/lang/Object;
    .end local v12    # "isolationDir":Ljava/lang/String;
    :pswitch_d1
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v11, p1

    .restart local v11    # "$result":Ljava/lang/Object;
    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .restart local v12    # "isolationDir":Ljava/lang/String;
    :try_start_d9
    invoke-static {v11}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1a4

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v11    # "$result":Ljava/lang/Object;
    .end local v12    # "isolationDir":Ljava/lang/String;
    :pswitch_de
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v11, p1

    .restart local v11    # "$result":Ljava/lang/Object;
    invoke-static {v11}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_e5} :catch_e7

    move-object v12, v11

    goto :goto_136

    .line 1075
    :catch_e7
    move-exception v0

    move-object v3, v11

    goto/16 :goto_4e8

    .line 995
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v11    # "$result":Ljava/lang/Object;
    :pswitch_eb
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v11, p1

    .line 996
    .restart local v11    # "$result":Ljava/lang/Object;
    nop

    .line 997
    :try_start_f3
    sget-object v12, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isolateStorageForPackage: Starting storage isolation for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1000
    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "pm path "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " 2>/dev/null"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v14, v2

    check-cast v14, Lkotlin/coroutines/Continuation;

    iput v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommandOutput(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v12, v13, v14}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v0, :cond_136

    .line 995
    return-object v0

    :cond_136
    :goto_136
    check-cast v12, Ljava/lang/String;

    .line 1001
    .local v12, "checkApp":Ljava/lang/String;
    move-object v13, v12

    check-cast v13, Ljava/lang/CharSequence;

    .end local v12    # "checkApp":Ljava/lang/String;
    if-eqz v13, :cond_146

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_144

    goto :goto_146

    :cond_144
    move v12, v10

    goto :goto_147

    :cond_146
    :goto_146
    move v12, v8

    :goto_147
    if-eqz v12, :cond_16e

    .line 1002
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isolateStorageForPackage: App "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v9, v5, v9}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 1003
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1007
    :cond_16e
    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/data/local/tmp/isolate_storage_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1008
    .local v12, "isolationDir":Ljava/lang/String;
    iget-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v2

    check-cast v15, Lkotlin/coroutines/Continuation;

    iput-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    iput v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v13, v14, v15}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v0, :cond_1a4

    .line 995
    return-object v0

    .line 1009
    :cond_1a4
    :goto_1a4
    iget-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v2

    check-cast v15, Lkotlin/coroutines/Continuation;

    iput-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v13, v14, v15}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_1ca

    .line 995
    return-object v0

    .line 1010
    :cond_1ca
    :goto_1ca
    iget-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v13, v2

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    const/4 v14, 0x4

    iput v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v8, v7, v13}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_1ed} :catch_e7

    if-ne v7, v0, :cond_1f0

    .line 995
    return-object v0

    .line 1010
    :cond_1f0
    move-object v7, v11

    move-object v11, v12

    .line 1013
    .end local v12    # "isolationDir":Ljava/lang/String;
    .restart local v7    # "$result":Ljava/lang/Object;
    .local v11, "isolationDir":Ljava/lang/String;
    :goto_1f2
    :try_start_1f2
    iget-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "resetprop -n ro.storage.isolated."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v2

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    const/4 v14, 0x5

    iput v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v8, v12, v13}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_21c

    .line 995
    return-object v0

    .line 1014
    :cond_21c
    :goto_21c
    iget-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "resetprop -n ro.vold.secured."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v12, v2

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    const/4 v13, 0x6

    iput v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v8, v3, v12}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_243
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_243} :catch_c0

    if-ne v3, v0, :cond_246

    .line 995
    return-object v0

    .line 1014
    :cond_246
    move-object v3, v7

    move-object v7, v11

    .line 1017
    .end local v11    # "isolationDir":Ljava/lang/String;
    .restart local v3    # "$result":Ljava/lang/Object;
    .local v7, "isolationDir":Ljava/lang/String;
    :goto_248
    :try_start_248
    sget-object v8, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->INSTANCE:Lcom/pandasu/turbo/util/RootEnvironmentDetector;

    invoke-virtual {v8}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->detectRootMode()Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    move-result-object v8

    .line 1018
    .local v8, "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    sget-object v11, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isolateStorageForPackage: Root type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1020
    sget-object v11, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v8}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_52c

    .line 1057
    .end local v7    # "isolationDir":Ljava/lang/String;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;
    :try_end_273
    .catch Ljava/lang/Exception; {:try_start_248 .. :try_end_273} :catch_a3

    goto/16 :goto_4cd

    .line 1039
    .restart local v7    # "isolationDir":Ljava/lang/String;
    :pswitch_275
    nop

    .line 1041
    :try_start_276
    iget-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v2

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput-object v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    iput-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$1:Ljava/lang/Object;

    const/16 v14, 0x9

    iput v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->safeMountBind(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v11, v12, v6, v13}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$safeMountBind(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_298
    .catch Ljava/lang/Exception; {:try_start_276 .. :try_end_298} :catch_70

    if-ne v6, v0, :cond_29b

    .line 995
    return-object v0

    .line 1041
    :cond_29b
    move-object/from16 v16, v6

    move-object v6, v3

    move-object/from16 v3, v16

    .end local v3    # "$result":Ljava/lang/Object;
    .local v6, "$result":Ljava/lang/Object;
    :goto_2a0
    :try_start_2a0
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1042
    .local v3, "sdcardResult":Z
    iget-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/data/data/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v2

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$1:Ljava/lang/Object;

    iput-boolean v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->Z$0:Z

    const/16 v14, 0xa

    iput v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->safeMountBind(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v11, v4, v12, v13}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$safeMountBind(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v7    # "isolationDir":Ljava/lang/String;
    if-ne v4, v0, :cond_2e2

    .line 995
    return-object v0

    .line 1042
    :cond_2e2
    move-object/from16 v16, v4

    move v4, v3

    move-object/from16 v3, v16

    .end local v3    # "sdcardResult":Z
    .local v4, "sdcardResult":Z
    :goto_2e7
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1044
    .local v3, "dataResult":Z
    if-eqz v4, :cond_30e

    if-eqz v3, :cond_30e

    .line 1045
    .end local v3    # "dataResult":Z
    .end local v4    # "sdcardResult":Z
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Magisk storage isolation applied for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->i(Ljava/lang/String;)V

    move-object v3, v6

    goto/16 :goto_3d6

    .line 1047
    .end local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .restart local v3    # "dataResult":Z
    .restart local v4    # "sdcardResult":Z
    :cond_30e
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    if-eqz v4, :cond_316

    const/4 v4, 0x1

    goto :goto_317

    :cond_316
    move v4, v10

    .end local v4    # "sdcardResult":Z
    :goto_317
    if-eqz v3, :cond_31b

    const/4 v8, 0x1

    goto :goto_31c

    .end local v3    # "dataResult":Z
    :cond_31b
    move v8, v10

    :goto_31c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Magisk storage isolation partially failed for "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ": sdcard="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v9, v5, v9}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 1048
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_34a
    .catch Ljava/lang/Exception; {:try_start_2a0 .. :try_end_34a} :catch_34b

    return-object v0

    .line 1050
    :catch_34b
    move-exception v0

    move-object v3, v6

    .line 1051
    .end local v6    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .local v3, "$result":Ljava/lang/Object;
    :goto_34d
    :try_start_34d
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "Magisk mount bind failed"

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1052
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 1023
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v7    # "isolationDir":Ljava/lang/String;
    .restart local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :pswitch_35c
    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v5, "ksu"

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    iput-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$1:Ljava/lang/Object;

    const/4 v11, 0x7

    iput v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->checkToolAvailable(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v4, v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$checkToolAvailable(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_36e
    .catch Ljava/lang/Exception; {:try_start_34d .. :try_end_36e} :catch_a3

    if-ne v4, v0, :cond_371

    .line 995
    return-object v0

    .line 1023
    :cond_371
    move-object v5, v7

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    .end local v3    # "$result":Ljava/lang/Object;
    .end local v7    # "isolationDir":Ljava/lang/String;
    .local v4, "$result":Ljava/lang/Object;
    .restart local v5    # "isolationDir":Ljava/lang/String;
    :goto_377
    :try_start_377
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_37d
    .catch Ljava/lang/Exception; {:try_start_377 .. :try_end_37d} :catch_4ca

    if-eqz v3, :cond_4be

    .line 1024
    nop

    .line 1025
    :try_start_380
    iget-object v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ksu mount-namespace "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " --mount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/sdcard /sdcard --type bind 2>/dev/null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$1:Ljava/lang/Object;

    const/16 v9, 0x8

    iput v9, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v3, v6, v7}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3b6
    .catch Ljava/lang/Exception; {:try_start_380 .. :try_end_3b6} :catch_4ad

    .end local v5    # "isolationDir":Ljava/lang/String;
    if-ne v3, v0, :cond_3b9

    .line 995
    return-object v0

    .line 1025
    :cond_3b9
    move-object v3, v4

    move-object v4, v8

    .line 1026
    .end local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .restart local v3    # "$result":Ljava/lang/Object;
    .local v4, "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :goto_3bb
    :try_start_3bb
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KernelSU storage isolation applied for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pandasu/turbo/utils/Logger;->i(Ljava/lang/String;)V
    :try_end_3d5
    .catch Ljava/lang/Exception; {:try_start_3bb .. :try_end_3d5} :catch_80

    move-object v8, v4

    .line 1063
    .end local v4    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .restart local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :goto_3d6
    :try_start_3d6
    sget-object v4, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->MAGISK:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    if-ne v8, v4, :cond_481

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v5, "magiskpolicy"

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    const/16 v7, 0xb

    iput v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->checkToolAvailable(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v4, v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$checkToolAvailable(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3eb
    .catch Ljava/lang/Exception; {:try_start_3d6 .. :try_end_3eb} :catch_a3

    if-ne v4, v0, :cond_3ee

    .line 995
    return-object v0

    .line 1063
    :cond_3ee
    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    .end local v3    # "$result":Ljava/lang/Object;
    .local v4, "$result":Ljava/lang/Object;
    :goto_3f3
    :try_start_3f3
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_3f9
    .catch Ljava/lang/Exception; {:try_start_3f3 .. :try_end_3f9} :catch_4ca

    if-eqz v3, :cond_480

    .line 1064
    nop

    .line 1065
    :try_start_3fc
    iget-object v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "magiskpolicy --live \"allow "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isolated_storage_file:file { read write }\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    const/16 v7, 0xc

    iput v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v3, v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_426
    .catch Ljava/lang/Exception; {:try_start_3fc .. :try_end_426} :catch_474

    if-ne v3, v0, :cond_429

    .line 995
    return-object v0

    .line 1065
    :cond_429
    move-object v3, v4

    move-object v4, v8

    .line 1066
    .end local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .restart local v3    # "$result":Ljava/lang/Object;
    .local v4, "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :goto_42b
    :try_start_42b
    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "magiskpolicy --live \"deny "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " system_data_file:dir { search }\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    const/16 v8, 0xd

    iput v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v5, v6, v7}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_458

    .line 995
    return-object v0

    .line 1067
    :cond_458
    :goto_458
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELinux policy applied for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_472
    .catch Ljava/lang/Exception; {:try_start_42b .. :try_end_472} :catch_3a

    move-object v8, v4

    goto :goto_481

    .line 1068
    .end local v3    # "$result":Ljava/lang/Object;
    .local v4, "$result":Ljava/lang/Object;
    .restart local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :catch_474
    move-exception v0

    move-object v3, v4

    move-object v4, v8

    .line 1069
    .end local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .restart local v3    # "$result":Ljava/lang/Object;
    .local v4, "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :goto_477
    :try_start_477
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "SELinux policy not available, skipping"

    invoke-virtual {v0, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    move-object v8, v4

    goto :goto_481

    .line 1063
    .end local v3    # "$result":Ljava/lang/Object;
    .local v4, "$result":Ljava/lang/Object;
    .restart local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :cond_480
    move-object v3, v4

    .line 1073
    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_481
    :goto_481
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isolateStorageForPackage: Storage isolation applied for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (root: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1074
    const/4 v8, 0x1

    .end local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    goto :goto_506

    .line 1027
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    :catch_4ad
    move-exception v0

    move-object v3, v4

    .line 1028
    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_4af
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "KernelSU mount namespace failed"

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1029
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4
    :try_end_4bd
    .catch Ljava/lang/Exception; {:try_start_477 .. :try_end_4bd} :catch_a3

    return-object v4

    .line 1032
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :cond_4be
    :try_start_4be
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "KernelSU command not available, cannot apply storage isolation"

    invoke-virtual {v0, v3}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 1033
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_4c9
    .catch Ljava/lang/Exception; {:try_start_4be .. :try_end_4c9} :catch_4ca

    return-object v0

    .line 1075
    .end local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :catch_4ca
    move-exception v0

    move-object v3, v4

    goto :goto_4e8

    .line 1057
    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :goto_4cd
    :try_start_4cd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported root type for storage isolation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 1058
    .end local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_4e7
    .catch Ljava/lang/Exception; {:try_start_4cd .. :try_end_4e7} :catch_a3

    return-object v0

    .line 1076
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_4e8
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isolateStorageForPackage failed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1077
    move v8, v10

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_506
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 996
    return-object v0

    nop

    :pswitch_data_50c
    .packed-switch 0x0
        :pswitch_eb
        :pswitch_de
        :pswitch_d1
        :pswitch_c4
        :pswitch_b3
        :pswitch_a6
        :pswitch_96
        :pswitch_83
        :pswitch_73
        :pswitch_5d
        :pswitch_4c
        :pswitch_3d
        :pswitch_2d
        :pswitch_1f
    .end packed-switch

    :pswitch_data_52c
    .packed-switch 0x1
        :pswitch_35c
        :pswitch_275
    .end packed-switch
.end method
