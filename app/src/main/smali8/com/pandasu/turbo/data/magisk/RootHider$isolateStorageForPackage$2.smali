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
    .locals 1
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
    .locals 3
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
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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
    .locals 17

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

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget-object v0, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .local v4, "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_12

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .restart local v4    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :try_start_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_11

    .line 1068
    :catch_0
    move-exception v0

    goto/16 :goto_13

    .line 995
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :pswitch_2
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .restart local v4    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :try_start_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v8, v4

    move-object v4, v3

    goto/16 :goto_10

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :pswitch_3
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-boolean v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->Z$0:Z

    .local v4, "sdcardResult":Z
    iget-object v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .local v6, "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :try_start_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v8, v6

    move-object v6, v3

    goto/16 :goto_9

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "sdcardResult":Z
    .end local v6    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :pswitch_4
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
    :try_start_4
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v8, v6

    move-object v6, v3

    goto/16 :goto_8

    .line 1050
    .end local v6    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .end local v7    # "isolationDir":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto/16 :goto_c

    .line 995
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_5
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .local v4, "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :try_start_5
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_e

    .line 1027
    .end local v4    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :catch_2
    move-exception v0

    goto/16 :goto_15

    .line 995
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_6
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
    :try_start_6
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object v8, v4

    move-object v4, v3

    goto/16 :goto_d

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .end local v5    # "isolationDir":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .restart local v7    # "isolationDir":Ljava/lang/String;
    :try_start_7
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_7

    .line 1075
    .end local v7    # "isolationDir":Ljava/lang/String;
    :catch_3
    move-exception v0

    goto/16 :goto_17

    .line 995
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_8
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v7, p1

    .local v7, "$result":Ljava/lang/Object;
    iget-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .local v11, "isolationDir":Ljava/lang/String;
    :try_start_8
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_6

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v11    # "isolationDir":Ljava/lang/String;
    :pswitch_9
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v7, p1

    .restart local v7    # "$result":Ljava/lang/Object;
    iget-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .restart local v11    # "isolationDir":Ljava/lang/String;
    :try_start_9
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_5

    .line 1075
    .end local v11    # "isolationDir":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object v3, v7

    goto/16 :goto_17

    .line 995
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v7    # "$result":Ljava/lang/Object;
    :pswitch_a
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v11, p1

    .local v11, "$result":Ljava/lang/Object;
    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .local v12, "isolationDir":Ljava/lang/String;
    :try_start_a
    invoke-static {v11}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_4

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v11    # "$result":Ljava/lang/Object;
    .end local v12    # "isolationDir":Ljava/lang/String;
    :pswitch_b
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v11, p1

    .restart local v11    # "$result":Ljava/lang/Object;
    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .restart local v12    # "isolationDir":Ljava/lang/String;
    :try_start_b
    invoke-static {v11}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v11    # "$result":Ljava/lang/Object;
    .end local v12    # "isolationDir":Ljava/lang/String;
    :pswitch_c
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v11, p1

    .restart local v11    # "$result":Ljava/lang/Object;
    invoke-static {v11}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    move-object v12, v11

    goto :goto_0

    .line 1075
    :catch_5
    move-exception v0

    move-object v3, v11

    goto/16 :goto_17

    .line 995
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    .end local v11    # "$result":Ljava/lang/Object;
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;
    move-object/from16 v11, p1

    .line 996
    .restart local v11    # "$result":Ljava/lang/Object;
    nop

    .line 997
    :try_start_c
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

    invoke-static {v12, v13, v14}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v0, :cond_0

    .line 995
    return-object v0

    :cond_0
    :goto_0
    check-cast v12, Ljava/lang/String;

    .line 1001
    .local v12, "checkApp":Ljava/lang/String;
    move-object v13, v12

    check-cast v13, Ljava/lang/CharSequence;

    .end local v12    # "checkApp":Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_1

    goto :goto_1

    :cond_1
    move v12, v10

    goto :goto_2

    :cond_2
    :goto_1
    move v12, v8

    :goto_2
    if-eqz v12, :cond_3

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
    :cond_3
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

    invoke-static {v13, v14, v15}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v0, :cond_4

    .line 995
    return-object v0

    .line 1009
    :cond_4
    :goto_3
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

    invoke-static {v13, v14, v15}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_5

    .line 995
    return-object v0

    .line 1010
    :cond_5
    :goto_4
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

    invoke-static {v8, v7, v13}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    if-ne v7, v0, :cond_6

    .line 995
    return-object v0

    .line 1010
    :cond_6
    move-object v7, v11

    move-object v11, v12

    .line 1013
    .end local v12    # "isolationDir":Ljava/lang/String;
    .restart local v7    # "$result":Ljava/lang/Object;
    .local v11, "isolationDir":Ljava/lang/String;
    :goto_5
    :try_start_d
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

    invoke-static {v8, v12, v13}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_7

    .line 995
    return-object v0

    .line 1014
    :cond_7
    :goto_6
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

    invoke-static {v8, v3, v12}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    if-ne v3, v0, :cond_8

    .line 995
    return-object v0

    .line 1014
    :cond_8
    move-object v3, v7

    move-object v7, v11

    .line 1017
    .end local v11    # "isolationDir":Ljava/lang/String;
    .restart local v3    # "$result":Ljava/lang/Object;
    .local v7, "isolationDir":Ljava/lang/String;
    :goto_7
    :try_start_e
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

    packed-switch v11, :pswitch_data_1

    .line 1057
    .end local v7    # "isolationDir":Ljava/lang/String;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_16

    .line 1039
    .restart local v7    # "isolationDir":Ljava/lang/String;
    :pswitch_e
    nop

    .line 1041
    :try_start_f
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

    invoke-static {v11, v12, v6, v13}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$safeMountBind(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    if-ne v6, v0, :cond_9

    .line 995
    return-object v0

    .line 1041
    :cond_9
    move-object/from16 v16, v6

    move-object v6, v3

    move-object/from16 v3, v16

    .end local v3    # "$result":Ljava/lang/Object;
    .local v6, "$result":Ljava/lang/Object;
    :goto_8
    :try_start_10
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

    invoke-static {v11, v4, v12, v13}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$safeMountBind(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v7    # "isolationDir":Ljava/lang/String;
    if-ne v4, v0, :cond_a

    .line 995
    return-object v0

    .line 1042
    :cond_a
    move-object/from16 v16, v4

    move v4, v3

    move-object/from16 v3, v16

    .end local v3    # "sdcardResult":Z
    .local v4, "sdcardResult":Z
    :goto_9
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1044
    .local v3, "dataResult":Z
    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

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

    goto/16 :goto_f

    .line 1047
    .end local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .restart local v3    # "dataResult":Z
    .restart local v4    # "sdcardResult":Z
    :cond_b
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->$packageName:Ljava/lang/String;

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_a

    :cond_c
    move v4, v10

    .end local v4    # "sdcardResult":Z
    :goto_a
    if-eqz v3, :cond_d

    const/4 v8, 0x1

    goto :goto_b

    .end local v3    # "dataResult":Z
    :cond_d
    move v8, v10

    :goto_b
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
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    return-object v0

    .line 1050
    :catch_6
    move-exception v0

    move-object v3, v6

    .line 1051
    .end local v6    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .local v3, "$result":Ljava/lang/Object;
    :goto_c
    :try_start_11
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
    :pswitch_f
    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v5, "ksu"

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    iput-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$1:Ljava/lang/Object;

    const/4 v11, 0x7

    iput v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->label:I

    invoke-static {v4, v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$checkToolAvailable(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    if-ne v4, v0, :cond_e

    .line 995
    return-object v0

    .line 1023
    :cond_e
    move-object v5, v7

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    .end local v3    # "$result":Ljava/lang/Object;
    .end local v7    # "isolationDir":Ljava/lang/String;
    .local v4, "$result":Ljava/lang/Object;
    .restart local v5    # "isolationDir":Ljava/lang/String;
    :goto_d
    :try_start_12
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    if-eqz v3, :cond_15

    .line 1024
    nop

    .line 1025
    :try_start_13
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

    invoke-static {v3, v6, v7}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    .end local v5    # "isolationDir":Ljava/lang/String;
    if-ne v3, v0, :cond_f

    .line 995
    return-object v0

    .line 1025
    :cond_f
    move-object v3, v4

    move-object v4, v8

    .line 1026
    .end local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .restart local v3    # "$result":Ljava/lang/Object;
    .local v4, "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :goto_e
    :try_start_14
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
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    move-object v8, v4

    .line 1063
    .end local v4    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .restart local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :goto_f
    :try_start_15
    sget-object v4, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->MAGISK:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    if-ne v8, v4, :cond_14

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v5, "magiskpolicy"

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->L$0:Ljava/lang/Object;

    const/16 v7, 0xb

    iput v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$isolateStorageForPackage$2;->label:I

    invoke-static {v4, v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$checkToolAvailable(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3

    if-ne v4, v0, :cond_10

    .line 995
    return-object v0

    .line 1063
    :cond_10
    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    .end local v3    # "$result":Ljava/lang/Object;
    .local v4, "$result":Ljava/lang/Object;
    :goto_10
    :try_start_16
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9

    if-eqz v3, :cond_13

    .line 1064
    nop

    .line 1065
    :try_start_17
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

    invoke-static {v3, v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7

    if-ne v3, v0, :cond_11

    .line 995
    return-object v0

    .line 1065
    :cond_11
    move-object v3, v4

    move-object v4, v8

    .line 1066
    .end local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .restart local v3    # "$result":Ljava/lang/Object;
    .local v4, "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :goto_11
    :try_start_18
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

    invoke-static {v5, v6, v7}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_12

    .line 995
    return-object v0

    .line 1067
    :cond_12
    :goto_12
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
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    move-object v8, v4

    goto :goto_14

    .line 1068
    .end local v3    # "$result":Ljava/lang/Object;
    .local v4, "$result":Ljava/lang/Object;
    .restart local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :catch_7
    move-exception v0

    move-object v3, v4

    move-object v4, v8

    .line 1069
    .end local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .restart local v3    # "$result":Ljava/lang/Object;
    .local v4, "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :goto_13
    :try_start_19
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "SELinux policy not available, skipping"

    invoke-virtual {v0, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    move-object v8, v4

    goto :goto_14

    .line 1063
    .end local v3    # "$result":Ljava/lang/Object;
    .local v4, "$result":Ljava/lang/Object;
    .restart local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :cond_13
    move-object v3, v4

    .line 1073
    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_14
    :goto_14
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
    goto :goto_18

    .line 1027
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    :catch_8
    move-exception v0

    move-object v3, v4

    .line 1028
    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_15
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "KernelSU mount namespace failed"

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1029
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3

    return-object v4

    .line 1032
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :cond_15
    :try_start_1a
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "KernelSU command not available, cannot apply storage isolation"

    invoke-virtual {v0, v3}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 1033
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9

    return-object v0

    .line 1075
    .end local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :catch_9
    move-exception v0

    move-object v3, v4

    goto :goto_17

    .line 1057
    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v8    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :goto_16
    :try_start_1b
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
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_3

    return-object v0

    .line 1076
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_17
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
    :goto_18
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 996
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method
