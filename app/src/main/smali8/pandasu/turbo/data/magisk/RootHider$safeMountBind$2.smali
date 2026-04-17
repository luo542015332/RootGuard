.class final Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->safeMountBind(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2$WhenMappings;
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
    c = "com.pandasu.turbo.data.magisk.RootHider$safeMountBind$2"
    f = "RootHider.kt"
    i = {
        0xa,
        0xc
    }
    l = {
        0x58d,
        0x58f,
        0x596,
        0x59f,
        0x5a6,
        0x5a9,
        0x5b6,
        0x5bd,
        0x5c4,
        0x5cb,
        0x5cf,
        0x5d0,
        0x5d8,
        0x5d9,
        0x5e8,
        0x5f1,
        0x5f8,
        0x607,
        0x60e
    }
    m = "invokeSuspend"
    n = {
        "tmpDir",
        "tmpFile"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $source:Ljava/lang/String;

.field final synthetic $target:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/RootHider;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    iput-object p3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1416
    move-object/from16 v1, p0

    iget v2, v1, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    const-string v3, "mkdir -p "

    const-string v4, "busybox mount --bind "

    const-string v5, "ls "

    const-string v6, "safeMountBind: busybox mount succeeded"

    const-string v7, "mount --bind "

    const-string v9, " -> "

    const-string v12, " "

    const-string v13, " 2>/dev/null"

    packed-switch v2, :pswitch_data_764

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_23
    move-object/from16 v2, p0

    .local v2, "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    :try_start_27
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v3

    goto/16 :goto_6ea

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_2d
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v3

    goto/16 :goto_6a3

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_37
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v3

    goto/16 :goto_3b6

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_41
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v3

    goto/16 :goto_36f

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_4b
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v3

    goto/16 :goto_304

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_55
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_5c} :catch_76

    move-object v1, v3

    goto/16 :goto_61a

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_5f
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .local v4, "tmpFile":Ljava/lang/String;
    :try_start_67
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5e3

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "tmpFile":Ljava/lang/String;
    :pswitch_6c
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_73} :catch_76

    move-object v1, v3

    goto/16 :goto_589

    .line 1560
    :catch_76
    move-exception v0

    goto/16 :goto_729

    .line 1416
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_79
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .local v4, "tmpDir":Ljava/lang/String;
    :try_start_81
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_76

    goto/16 :goto_552

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "tmpDir":Ljava/lang/String;
    :pswitch_86
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    :try_start_8a
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v4

    goto/16 :goto_501

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v4    # "$result":Ljava/lang/Object;
    :pswitch_90
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v4

    goto/16 :goto_4c0

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v4    # "$result":Ljava/lang/Object;
    :pswitch_9a
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v4

    goto/16 :goto_479

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v4    # "$result":Ljava/lang/Object;
    :pswitch_a4
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_ab} :catch_ae

    move-object v15, v4

    goto/16 :goto_430

    .line 1560
    :catch_ae
    move-exception v0

    move-object v3, v4

    goto/16 :goto_729

    .line 1416
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v4    # "$result":Ljava/lang/Object;
    :pswitch_b2
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v5, p1

    .local v5, "$result":Ljava/lang/Object;
    :try_start_b6
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_29e

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v5    # "$result":Ljava/lang/Object;
    :pswitch_bb
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v5

    goto/16 :goto_246

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v5    # "$result":Ljava/lang/Object;
    :pswitch_c5
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v5

    goto/16 :goto_206

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v5    # "$result":Ljava/lang/Object;
    :pswitch_cf
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_d6} :catch_d9

    move-object v15, v5

    goto/16 :goto_1c1

    .line 1560
    :catch_d9
    move-exception v0

    move-object v3, v5

    goto/16 :goto_729

    .line 1416
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v5    # "$result":Ljava/lang/Object;
    :pswitch_dd
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v15, p1

    .local v15, "$result":Ljava/lang/Object;
    :try_start_e1
    invoke-static {v15}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v15

    goto/16 :goto_179

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v15    # "$result":Ljava/lang/Object;
    :pswitch_e7
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v15, p1

    .restart local v15    # "$result":Ljava/lang/Object;
    invoke-static {v15}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_ee} :catch_f0

    move-object v1, v15

    goto :goto_146

    .line 1560
    :catch_f0
    move-exception v0

    move-object v3, v15

    goto/16 :goto_729

    .line 1416
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    .end local v15    # "$result":Ljava/lang/Object;
    :pswitch_f4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;
    move-object/from16 v15, p1

    .line 1417
    .restart local v15    # "$result":Ljava/lang/Object;
    nop

    .line 1418
    :try_start_fc
    sget-object v11, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v10, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    iget-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "safeMountBind: Attempting mount --bind "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1421
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v10, v2

    check-cast v10, Lkotlin/coroutines/Continuation;

    const/4 v11, 0x1

    iput v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommandOutput(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v8, v10}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_146

    .line 1416
    return-object v0

    .line 1421
    :cond_146
    :goto_146
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_150

    const/4 v1, 0x1

    goto :goto_151

    :cond_150
    const/4 v1, 0x0

    .line 1422
    .local v1, "sourceExists":Z
    :goto_151
    if-nez v1, :cond_19b

    .line 1423
    .end local v1    # "sourceExists":Z
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v10, v2

    check-cast v10, Lkotlin/coroutines/Continuation;

    const/4 v11, 0x2

    iput v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v8, v10}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_179

    .line 1416
    return-object v0

    .line 1423
    :cond_179
    :goto_179
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1424
    .local v1, "mkdirResult":Z
    if-nez v1, :cond_19b

    .line 1425
    .end local v1    # "mkdirResult":Z
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "safeMountBind: Failed to create source directory "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1430
    :cond_19b
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v8, v2

    check-cast v8, Lkotlin/coroutines/Continuation;

    const/4 v10, 0x3

    iput v10, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommandOutput(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v5, v8}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_1c1

    .line 1416
    return-object v0

    .line 1430
    :cond_1c1
    :goto_1c1
    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1cb

    const/4 v1, 0x1

    goto :goto_1cc

    :cond_1cb
    const/4 v1, 0x0

    .line 1431
    .local v1, "targetExists":Z
    :goto_1cc
    nop

    .end local v1    # "targetExists":Z
    if-nez v1, :cond_1f5

    .line 1432
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "safeMountBind: Target path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " does not exist, skipping mount"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1435
    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1439
    :cond_1f5
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v5, "which mount 2>/dev/null"

    move-object v8, v2

    check-cast v8, Lkotlin/coroutines/Continuation;

    const/4 v10, 0x4

    iput v10, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v5, v8}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_206

    .line 1416
    return-object v0

    .line 1439
    :cond_206
    :goto_206
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1440
    .local v1, "mountAvailable":Z
    nop

    .end local v1    # "mountAvailable":Z
    if-nez v1, :cond_21c

    .line 1441
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "safeMountBind: mount command not available"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1442
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1446
    :cond_21c
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mount | grep -q \""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\" && echo \"mounted\""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v8, v2

    check-cast v8, Lkotlin/coroutines/Continuation;

    const/4 v10, 0x5

    iput v10, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommandOutput(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v5, v8}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_246

    .line 1416
    return-object v0

    .line 1446
    :cond_246
    :goto_246
    check-cast v5, Ljava/lang/CharSequence;

    const-string v1, "mounted"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v5, v1, v10, v8, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    .line 1447
    .local v1, "alreadyMounted":Z
    if-eqz v1, :cond_29f

    .line 1448
    .end local v1    # "alreadyMounted":Z
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "safeMountBind: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " is already mounted, trying to unmount first"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1449
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "umount -l "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v8, v2

    check-cast v8, Lkotlin/coroutines/Continuation;

    const/4 v10, 0x6

    iput v10, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v5, v8}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_29d

    .line 1416
    return-object v0

    .line 1449
    :cond_29d
    move-object v5, v15

    .line 1453
    .end local v15    # "$result":Ljava/lang/Object;
    .restart local v5    # "$result":Ljava/lang/Object;
    :goto_29e
    move-object v15, v5

    .end local v5    # "$result":Ljava/lang/Object;
    .restart local v15    # "$result":Ljava/lang/Object;
    :cond_29f
    sget-object v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->INSTANCE:Lcom/pandasu/turbo/util/RootEnvironmentDetector;

    invoke-virtual {v1}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->detectRootMode()Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    move-result-object v1

    .line 1454
    .local v1, "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "safeMountBind: Root type detected: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1456
    sget-object v5, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_790

    .line 1541
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    goto/16 :goto_65c

    .line 1510
    .end local v1    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :pswitch_2cc
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "safeMountBind: Using Magisk mount method"

    invoke-virtual {v1, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1512
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/16 v7, 0xf

    iput v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v3, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_304

    .line 1416
    return-object v0

    .line 1512
    :cond_304
    :goto_304
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1513
    .local v1, "result":Z
    nop

    .end local v1    # "result":Z
    if-eqz v1, :cond_337

    .line 1514
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    iget-object v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "safeMountBind: Successfully mounted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1515
    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1518
    :cond_337
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "safeMountBind: mount --bind failed, trying alternative methods"

    invoke-virtual {v1, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1521
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/16 v5, 0x10

    iput v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v3, v4}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_36f

    .line 1416
    return-object v0

    .line 1521
    :cond_36f
    :goto_36f
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1522
    .local v1, "busyboxResult":Z
    nop

    .end local v1    # "busyboxResult":Z
    if-eqz v1, :cond_383

    .line 1523
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1524
    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1528
    :cond_383
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ln -sf "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/16 v5, 0x11

    iput v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v3, v4}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3b6

    .line 1416
    return-object v0

    .line 1528
    :cond_3b6
    :goto_3b6
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1529
    .local v0, "symlinkResult":Z
    if-eqz v0, :cond_3cb

    .line 1530
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "safeMountBind: symlink created as fallback"

    invoke-virtual {v1, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1531
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1534
    :cond_3cb
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "safeMountBind: All Magisk mount methods failed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v4, v5}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 1535
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1459
    .end local v0    # "symlinkResult":Z
    :pswitch_3f7
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "safeMountBind: Using KernelSU mount method"

    invoke-virtual {v1, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1462
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ksu mount --bind "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x7

    iput v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v4, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_430

    .line 1416
    return-object v0

    .line 1462
    :cond_430
    :goto_430
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1463
    .local v1, "ksuResult":Z
    nop

    .end local v1    # "ksuResult":Z
    if-eqz v1, :cond_446

    .line 1464
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "safeMountBind: KernelSU mount succeeded"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1465
    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1469
    :cond_446
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "toybox mount --bind "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/16 v6, 0x8

    iput v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v4, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_479

    .line 1416
    return-object v0

    .line 1469
    :cond_479
    :goto_479
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1470
    .local v1, "toyboxResult":Z
    nop

    .end local v1    # "toyboxResult":Z
    if-eqz v1, :cond_48f

    .line 1471
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "safeMountBind: toybox mount succeeded"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1472
    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1476
    :cond_48f
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/16 v6, 0x9

    iput v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v4, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4c0

    .line 1416
    return-object v0

    .line 1476
    :cond_4c0
    :goto_4c0
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1477
    .local v1, "standardResult":Z
    nop

    .end local v1    # "standardResult":Z
    if-eqz v1, :cond_4d6

    .line 1478
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "safeMountBind: Standard mount succeeded"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1479
    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1483
    :cond_4d6
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ -d \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" ] && echo \"dir\" || echo \"file\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/16 v6, 0xa

    iput v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommandOutput(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v4, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_501

    .line 1416
    return-object v0

    .line 1483
    :cond_501
    :goto_501
    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "dir"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1484
    .local v1, "targetIsDir":Z
    nop

    .end local v1    # "targetIsDir":Z
    if-eqz v1, :cond_5a5

    .line 1486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/local/tmp/mount_"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 1487
    .local v4, "tmpDir":Ljava/lang/String;
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->L$0:Ljava/lang/Object;

    const/16 v6, 0xb

    iput v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v3, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_54e
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_54e} :catch_f0

    if-ne v1, v0, :cond_551

    .line 1416
    return-object v0

    .line 1487
    :cond_551
    move-object v3, v15

    .line 1488
    .end local v15    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_552
    :try_start_552
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->L$0:Ljava/lang/Object;

    const/16 v7, 0xc

    iput v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_581
    .catch Ljava/lang/Exception; {:try_start_552 .. :try_end_581} :catch_76

    .end local v4    # "tmpDir":Ljava/lang/String;
    if-ne v1, v0, :cond_584

    .line 1416
    return-object v0

    .line 1488
    :cond_584
    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    .end local v3    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :goto_589
    :try_start_589
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1489
    .local v0, "overlayResult":Z
    if-eqz v0, :cond_59e

    .line 1490
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "safeMountBind: Directory overlay mount succeeded"

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1491
    const/4 v3, 0x1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_59d
    .catch Ljava/lang/Exception; {:try_start_589 .. :try_end_59d} :catch_5a1

    return-object v3

    .line 1489
    :cond_59e
    move-object v3, v1

    goto/16 :goto_630

    .line 1560
    .end local v0    # "overlayResult":Z
    :catch_5a1
    move-exception v0

    move-object v3, v1

    goto/16 :goto_729

    .line 1495
    .end local v1    # "$result":Ljava/lang/Object;
    .restart local v15    # "$result":Ljava/lang/Object;
    :cond_5a5
    :try_start_5a5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/local/tmp/file_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 1496
    .local v4, "tmpFile":Ljava/lang/String;
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "touch "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->L$0:Ljava/lang/Object;

    const/16 v6, 0xd

    iput v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v3, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_5df
    .catch Ljava/lang/Exception; {:try_start_5a5 .. :try_end_5df} :catch_f0

    if-ne v1, v0, :cond_5e2

    .line 1416
    return-object v0

    .line 1496
    :cond_5e2
    move-object v3, v15

    .line 1497
    .end local v15    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_5e3
    :try_start_5e3
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->L$0:Ljava/lang/Object;

    const/16 v7, 0xe

    iput v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_612
    .catch Ljava/lang/Exception; {:try_start_5e3 .. :try_end_612} :catch_76

    .end local v4    # "tmpFile":Ljava/lang/String;
    if-ne v1, v0, :cond_615

    .line 1416
    return-object v0

    .line 1497
    :cond_615
    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :goto_61a
    :try_start_61a
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1498
    .restart local v0    # "overlayResult":Z
    if-eqz v0, :cond_62f

    .line 1499
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "safeMountBind: File overlay mount succeeded"

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1500
    const/4 v3, 0x1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_62e
    .catch Ljava/lang/Exception; {:try_start_61a .. :try_end_62e} :catch_5a1

    return-object v3

    .line 1498
    :cond_62f
    move-object v3, v1

    .line 1504
    .end local v0    # "overlayResult":Z
    .end local v1    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_630
    :try_start_630
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "safeMountBind: All KernelSU mount methods failed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, v4, v5}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 1505
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_65b
    .catch Ljava/lang/Exception; {:try_start_630 .. :try_end_65b} :catch_76

    return-object v0

    .line 1541
    .end local v3    # "$result":Ljava/lang/Object;
    .local v1, "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .restart local v15    # "$result":Ljava/lang/Object;
    :goto_65c
    :try_start_65c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "safeMountBind: Using generic mount method for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1543
    .end local v1    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/16 v7, 0x12

    iput v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v3, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_6a3

    .line 1416
    return-object v0

    .line 1543
    :cond_6a3
    :goto_6a3
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1544
    .local v1, "result":Z
    nop

    .end local v1    # "result":Z
    if-eqz v1, :cond_6b9

    .line 1545
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "safeMountBind: Generic mount succeeded"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1546
    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1550
    :cond_6b9
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/16 v5, 0x13

    iput v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v3, v4}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_6ea

    .line 1416
    return-object v0

    .line 1550
    :cond_6ea
    :goto_6ea
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1551
    .local v0, "busyboxResult":Z
    if-eqz v0, :cond_6fd

    .line 1552
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v1, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1553
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1556
    :cond_6fd
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "safeMountBind: All generic mount methods failed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v4, v5}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 1557
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_728
    .catch Ljava/lang/Exception; {:try_start_65c .. :try_end_728} :catch_f0

    return-object v1

    .line 1561
    .end local v15    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_729
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$source:Ljava/lang/String;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$safeMountBind$2;->$target:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "safeMountBind exception for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v1, v4, v5}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1562
    const/4 v1, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1417
    return-object v0

    :pswitch_data_764
    .packed-switch 0x0
        :pswitch_f4
        :pswitch_e7
        :pswitch_dd
        :pswitch_cf
        :pswitch_c5
        :pswitch_bb
        :pswitch_b2
        :pswitch_a4
        :pswitch_9a
        :pswitch_90
        :pswitch_86
        :pswitch_79
        :pswitch_6c
        :pswitch_5f
        :pswitch_55
        :pswitch_4b
        :pswitch_41
        :pswitch_37
        :pswitch_2d
        :pswitch_23
    .end packed-switch

    :pswitch_data_790
    .packed-switch 0x1
        :pswitch_3f7
        :pswitch_2cc
    .end packed-switch
.end method
