.class final Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->verifyIsolation(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.pandasu.turbo.data.magisk.RootHider$verifyIsolation$2"
    f = "RootHider.kt"
    i = {
        0x1,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3
    }
    l = {
        0x627,
        0x630,
        0x639,
        0x63a
    }
    m = "invokeSuspend"
    n = {
        "magiskHideVerified",
        "magiskHideVerified",
        "sqliteVerified",
        "magiskHideVerified",
        "sqliteVerified",
        "suHidden"
    }
    s = {
        "I$0",
        "I$0",
        "I$1",
        "I$0",
        "I$1",
        "Z$0"
    }
.end annotation


# instance fields
.field final synthetic $packageName:Ljava/lang/String;

.field I$0:I

.field I$1:I

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
            "Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1569
    move-object/from16 v2, p0

    iget v0, v2, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->label:I

    const-string v3, "\" && echo \"hidden\""

    const-string v4, "hidden"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_278

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1b
    move-object/from16 v1, p0

    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget-boolean v0, v1, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->Z$0:Z

    .local v0, "suHidden":Z
    iget v9, v1, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->I$1:I

    .local v9, "sqliteVerified":Z
    iget v10, v1, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->I$0:I

    .local v10, "magiskHideVerified":Z
    :try_start_25
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_2c

    move v12, v10

    move-object v10, v3

    goto/16 :goto_19d

    .line 1596
    .end local v0    # "suHidden":Z
    :catch_2c
    move-exception v0

    goto/16 :goto_1b7

    .line 1569
    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v9    # "sqliteVerified":Z
    .end local v10    # "magiskHideVerified":Z
    :pswitch_2f
    move-object/from16 v9, p0

    .local v9, "this":Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;
    move-object/from16 v10, p1

    .local v10, "$result":Ljava/lang/Object;
    iget v11, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->I$1:I

    .local v11, "sqliteVerified":Z
    iget v12, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->I$0:I

    .local v12, "magiskHideVerified":Z
    :try_start_37
    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3d

    move-object v0, v10

    goto/16 :goto_164

    .line 1596
    :catch_3d
    move-exception v0

    move-object v1, v9

    move-object v3, v10

    move v9, v11

    move v10, v12

    goto/16 :goto_1b7

    .line 1569
    .end local v9    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;
    .end local v10    # "$result":Ljava/lang/Object;
    .end local v11    # "sqliteVerified":Z
    .end local v12    # "magiskHideVerified":Z
    :pswitch_44
    move-object/from16 v9, p0

    .restart local v9    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;
    move-object/from16 v10, p1

    .restart local v10    # "$result":Ljava/lang/Object;
    iget v11, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->I$0:I

    .local v11, "magiskHideVerified":Z
    :try_start_4a
    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_51

    move v12, v11

    move-object v11, v10

    goto/16 :goto_f2

    .line 1586
    :catch_51
    move-exception v0

    goto/16 :goto_114

    .line 1569
    .end local v9    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;
    .end local v10    # "$result":Ljava/lang/Object;
    .end local v11    # "magiskHideVerified":Z
    :pswitch_54
    move-object/from16 v9, p0

    .restart local v9    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;
    move-object/from16 v10, p1

    .restart local v10    # "$result":Ljava/lang/Object;
    :try_start_58
    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5d

    move-object v11, v10

    goto :goto_94

    .line 1577
    :catch_5d
    move-exception v0

    goto :goto_a5

    .line 1569
    .end local v9    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;
    .end local v10    # "$result":Ljava/lang/Object;
    :pswitch_5f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v9, p0

    .restart local v9    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;
    move-object/from16 v10, p1

    .line 1570
    .restart local v10    # "$result":Ljava/lang/Object;
    nop

    .line 1571
    :try_start_67
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v11, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->$packageName:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "verifyIsolation: Verifying isolation for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_81} :catch_240

    .line 1574
    nop

    .line 1575
    :try_start_82
    iget-object v0, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v11, "magisk --denylist ls 2>/dev/null"

    move-object v12, v9

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput v7, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommandOutput(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v0, v11, v12}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8f} :catch_5d

    if-ne v0, v1, :cond_92

    .line 1569
    return-object v1

    .line 1575
    :cond_92
    move-object v11, v10

    move-object v10, v0

    .line 1569
    .end local v10    # "$result":Ljava/lang/Object;
    .local v11, "$result":Ljava/lang/Object;
    :goto_94
    :try_start_94
    check-cast v10, Ljava/lang/String;

    move-object v0, v10

    .line 1576
    .local v0, "output":Ljava/lang/String;
    move-object v10, v0

    check-cast v10, Ljava/lang/CharSequence;

    iget-object v12, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->$packageName:Ljava/lang/String;

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v10, v12, v8, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a2} :catch_a3

    .end local v0    # "output":Ljava/lang/String;
    goto :goto_c3

    .line 1577
    :catch_a3
    move-exception v0

    move-object v10, v11

    .line 1578
    .end local v11    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v10    # "$result":Ljava/lang/Object;
    :goto_a5
    :try_start_a5
    sget-object v11, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "verifyIsolation: Magisk Hide verification failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_c1} :catch_240

    .line 1579
    move-object v11, v10

    move v10, v8

    .line 1574
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "$result":Ljava/lang/Object;
    .restart local v11    # "$result":Ljava/lang/Object;
    :goto_c3
    nop

    .line 1583
    .local v10, "magiskHideVerified":Z
    nop

    .line 1584
    :try_start_c5
    iget-object v0, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v12, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->$packageName:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sqlite3 /data/adb/magisk.db \"SELECT policy FROM policies WHERE package_name=\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'\" 2>/dev/null"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v9

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput v10, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->I$0:I

    iput v6, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommandOutput(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v0, v12, v13}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_ed} :catch_10e

    if-ne v0, v1, :cond_f0

    .line 1569
    return-object v1

    .line 1584
    :cond_f0
    move v12, v10

    move-object v10, v0

    .line 1569
    .end local v10    # "magiskHideVerified":Z
    .restart local v12    # "magiskHideVerified":Z
    :goto_f2
    :try_start_f2
    check-cast v10, Ljava/lang/String;

    move-object v0, v10

    .line 1585
    .local v0, "output":Ljava/lang/String;
    move-object v10, v0

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v13, "1"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_106} :catch_10a

    .end local v0    # "output":Ljava/lang/String;
    move v0, v10

    move-object v10, v11

    move v11, v12

    goto :goto_131

    .line 1586
    :catch_10a
    move-exception v0

    move-object v10, v11

    move v11, v12

    goto :goto_114

    .end local v12    # "magiskHideVerified":Z
    .restart local v10    # "magiskHideVerified":Z
    :catch_10e
    move-exception v0

    move-object/from16 v16, v11

    move v11, v10

    move-object/from16 v10, v16

    .line 1587
    .local v0, "e":Ljava/lang/Exception;
    .local v10, "$result":Ljava/lang/Object;
    .local v11, "magiskHideVerified":Z
    :goto_114
    :try_start_114
    sget-object v12, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "verifyIsolation: SQLite verification failed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_130} :catch_240

    .line 1588
    move v0, v8

    .line 1583
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_131
    move v12, v0

    .line 1592
    .local v12, "sqliteVerified":Z
    nop

    .line 1593
    :try_start_133
    iget-object v0, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v13, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->$packageName:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mount | grep -q \"/data/local/tmp/hide_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v14, v9

    check-cast v14, Lkotlin/coroutines/Continuation;

    iput v11, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->I$0:I

    iput v12, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->I$1:I

    const/4 v15, 0x3

    iput v15, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommandOutput(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v0, v13, v14}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_15c} :catch_1b2

    if-ne v0, v1, :cond_15f

    .line 1569
    return-object v1

    .line 1593
    :cond_15f
    move/from16 v16, v12

    move v12, v11

    move/from16 v11, v16

    .local v11, "sqliteVerified":Z
    .local v12, "magiskHideVerified":Z
    :goto_164
    :try_start_164
    check-cast v0, Ljava/lang/CharSequence;

    move-object v13, v4

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v0, v13, v8, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    .line 1594
    .local v0, "suHidden":Z
    iget-object v13, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v14, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->$packageName:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mount | grep -q \"/data/local/tmp/hide_magisk_"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v9

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v12, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->I$0:I

    iput v11, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->I$1:I

    iput-boolean v0, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->Z$0:Z

    const/4 v14, 0x4

    iput v14, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommandOutput(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v13, v3, v7}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_198} :catch_3d

    if-ne v3, v1, :cond_19b

    .line 1569
    return-object v1

    .line 1594
    :cond_19b
    move-object v1, v9

    move v9, v11

    .end local v11    # "sqliteVerified":Z
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;
    .local v9, "sqliteVerified":Z
    :goto_19d
    :try_start_19d
    check-cast v3, Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v8, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a5} :catch_1ae

    .line 1595
    .local v3, "magiskHidden":Z
    if-nez v0, :cond_1ac

    if-eqz v3, :cond_1aa

    goto :goto_1ac

    :cond_1aa
    move v0, v8

    .end local v0    # "suHidden":Z
    .end local v3    # "magiskHidden":Z
    goto :goto_1d6

    :cond_1ac
    :goto_1ac
    const/4 v0, 0x1

    goto :goto_1d6

    .line 1596
    :catch_1ae
    move-exception v0

    move-object v3, v10

    move v10, v12

    goto :goto_1b7

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;
    .local v9, "this":Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;
    .local v11, "magiskHideVerified":Z
    .local v12, "sqliteVerified":Z
    :catch_1b2
    move-exception v0

    move-object v1, v9

    move-object v3, v10

    move v10, v11

    move v9, v12

    .line 1597
    .end local v11    # "magiskHideVerified":Z
    .end local v12    # "sqliteVerified":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;
    .local v3, "$result":Ljava/lang/Object;
    .local v9, "sqliteVerified":Z
    .local v10, "magiskHideVerified":Z
    :goto_1b7
    :try_start_1b7
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "verifyIsolation: Mount verification failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1d3} :catch_23c

    .line 1598
    move v0, v8

    move v12, v10

    move-object v10, v3

    .line 1592
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "$result":Ljava/lang/Object;
    .local v10, "$result":Ljava/lang/Object;
    .local v12, "magiskHideVerified":Z
    :goto_1d6
    nop

    .line 1601
    .local v0, "mountPointsVerified":Z
    if-nez v12, :cond_1e0

    if-nez v9, :cond_1e0

    if-eqz v0, :cond_1de

    goto :goto_1e0

    :cond_1de
    move v3, v8

    goto :goto_1e1

    :cond_1e0
    :goto_1e0
    const/4 v3, 0x1

    .line 1602
    .local v3, "verificationResult":Z
    :goto_1e1
    :try_start_1e1
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->$packageName:Ljava/lang/String;

    if-eqz v12, :cond_1e9

    const/4 v6, 0x1

    goto :goto_1ea

    :cond_1e9
    move v6, v8

    .end local v12    # "magiskHideVerified":Z
    :goto_1ea
    if-eqz v9, :cond_1ee

    const/4 v7, 0x1

    goto :goto_1ef

    :cond_1ee
    move v7, v8

    .end local v9    # "sqliteVerified":Z
    :goto_1ef
    if-eqz v0, :cond_1f3

    const/4 v0, 0x1

    goto :goto_1f4

    :cond_1f3
    move v0, v8

    .end local v0    # "mountPointsVerified":Z
    :goto_1f4
    if-eqz v3, :cond_1f8

    const/4 v9, 0x1

    goto :goto_1f9

    :cond_1f8
    move v9, v8

    :goto_1f9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "verifyIsolation: Result for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ": magiskHide="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sqlite="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mounts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", overall="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_237
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_237} :catch_239

    .line 1604
    nop

    .end local v3    # "verificationResult":Z
    goto :goto_26e

    .line 1605
    :catch_239
    move-exception v0

    move-object v9, v1

    goto :goto_241

    .end local v10    # "$result":Ljava/lang/Object;
    .local v3, "$result":Ljava/lang/Object;
    :catch_23c
    move-exception v0

    move-object v9, v1

    move-object v10, v3

    goto :goto_241

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .local v9, "this":Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;
    .restart local v10    # "$result":Ljava/lang/Object;
    :catch_240
    move-exception v0

    .line 1606
    .local v0, "e":Ljava/lang/Exception;
    :goto_241
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v3, v9, Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;->$packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyIsolation: Exception for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1607
    move v3, v8

    move-object v1, v9

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$verifyIsolation$2;
    :goto_26e
    if-eqz v3, :cond_272

    const/4 v7, 0x1

    goto :goto_273

    :cond_272
    move v7, v8

    :goto_273
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1570
    return-object v0

    :pswitch_data_278
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_54
        :pswitch_44
        :pswitch_2f
        :pswitch_1b
    .end packed-switch
.end method
