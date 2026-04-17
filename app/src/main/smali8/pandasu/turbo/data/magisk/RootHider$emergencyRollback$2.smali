.class final Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->emergencyRollback(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRootHider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1705:1\n1855#2,2:1706\n1855#2,2:1708\n*S KotlinDebug\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2\n*L\n1681#1:1706,2\n1685#1:1708,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
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
    c = "com.pandasu.turbo.data.magisk.RootHider$emergencyRollback$2"
    f = "RootHider.kt"
    i = {}
    l = {
        0x692,
        0x695,
        0x698,
        0x699,
        0x69a,
        0x69b,
        0x69e,
        0x69f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $executedOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $packageName:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/RootHider;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->$executedOperations:Ljava/util/List;

    iput-object p3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->$executedOperations:Ljava/util/List;

    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1675
    move-object/from16 v1, p0

    iget v2, v1, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x6

    const-string v8, "umount -l "

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-string v11, " 2>/dev/null || true"

    packed-switch v2, :pswitch_data_294

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    move-object/from16 v2, p0

    .local v2, "this":Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    :try_start_20
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_254

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_25
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_22b

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_2e
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_201

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_37
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1d9

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_40
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1b1

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_49
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_50} :catch_52

    goto/16 :goto_189

    .line 1698
    :catch_52
    move-exception v0

    goto/16 :goto_271

    .line 1675
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_55
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    const/4 v12, 0x0

    .local v12, "$i$f$forEach":I
    const/4 v13, 0x0

    .local v13, "$i$a$-forEach-RootHider$emergencyRollback$2$2":I
    iget-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/util/Iterator;

    iget-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/pandasu/turbo/data/magisk/RootHider;

    :try_start_63
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_69

    move-object v6, v4

    goto/16 :goto_15a

    .line 1698
    .end local v12    # "$i$f$forEach":I
    .end local v13    # "$i$a$-forEach-RootHider$emergencyRollback$2$2":I
    :catch_69
    move-exception v0

    move-object v3, v4

    goto/16 :goto_271

    .line 1675
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;
    .end local v4    # "$result":Ljava/lang/Object;
    :pswitch_6d
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;
    move-object/from16 v12, p1

    .local v12, "$result":Ljava/lang/Object;
    const/4 v13, 0x0

    .local v13, "$i$f$forEach":I
    const/4 v14, 0x0

    .local v14, "$i$a$-forEach-RootHider$emergencyRollback$2$1":I
    iget-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->L$1:Ljava/lang/Object;

    check-cast v15, Ljava/util/Iterator;

    iget-object v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/pandasu/turbo/data/magisk/RootHider;

    :try_start_7b
    invoke-static {v12}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_85

    move-object/from16 v16, v12

    move-object v12, v6

    move-object/from16 v6, v16

    goto/16 :goto_115

    .line 1698
    .end local v13    # "$i$f$forEach":I
    .end local v14    # "$i$a$-forEach-RootHider$emergencyRollback$2$1":I
    :catch_85
    move-exception v0

    move-object v3, v12

    goto/16 :goto_271

    .line 1675
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;
    .end local v12    # "$result":Ljava/lang/Object;
    :pswitch_89
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;
    move-object/from16 v6, p1

    .line 1676
    .local v6, "$result":Ljava/lang/Object;
    nop

    .line 1677
    :try_start_91
    sget-object v12, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->$packageName:Ljava/lang/String;

    iget-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->$executedOperations:Ljava/util/List;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "emergencyRollback: Emergency cleanup for "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, ", executed: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7, v10, v9, v10}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 1680
    new-array v7, v5, [Ljava/lang/String;

    const-string v12, "/system/bin/su"

    const/4 v13, 0x0

    aput-object v12, v7, v13

    const-string v12, "/system/xbin/su"

    aput-object v12, v7, v4

    const-string v12, "/sbin/su"

    aput-object v12, v7, v9

    .line 1681
    const-string v12, "/data/adb/magisk"

    aput-object v12, v7, v3

    .line 1680
    nop

    .line 1681
    const-string v12, "/data/adb/modules"

    const/4 v13, 0x4

    aput-object v12, v7, v13

    .line 1680
    nop

    .line 1681
    const-string v12, "/sbin/.magisk"

    const/4 v13, 0x5

    aput-object v12, v7, v13

    .line 1680
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 1681
    .local v7, "$this$forEach$iv":Ljava/lang/Iterable;
    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const/4 v13, 0x0

    .line 1706
    .restart local v13    # "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v15, v14

    .end local v7    # "$this$forEach$iv":Ljava/lang/Iterable;
    :goto_e4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_118

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v14, v7

    check-cast v14, Ljava/lang/String;

    move-object v7, v14

    .local v7, "path":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1682
    .restart local v14    # "$i$a$-forEach-RootHider$emergencyRollback$2$1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->L$0:Ljava/lang/Object;

    iput-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->L$1:Ljava/lang/Object;

    iput v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v12, v5, v2}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v7    # "path":Ljava/lang/String;
    if-ne v5, v0, :cond_115

    .line 1675
    return-object v0

    .line 1683
    :cond_115
    :goto_115
    nop

    .line 1706
    .end local v14    # "$i$a$-forEach-RootHider$emergencyRollback$2$1":I
    const/4 v5, 0x6

    goto :goto_e4

    .line 1707
    :cond_118
    nop

    .line 1685
    .end local v13    # "$i$f$forEach":I
    # getter for: Lcom/pandasu/turbo/data/magisk/RootHider;->BUSYBOX_PATHS:Ljava/util/List;
    invoke-static {}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$getBUSYBOX_PATHS$cp()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    .local v4, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 1708
    .local v7, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v15, v5

    move-object v14, v12

    move v12, v7

    .end local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    .local v12, "$i$f$forEach":I
    :goto_129
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .local v4, "it":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1685
    .local v13, "$i$a$-forEach-RootHider$emergencyRollback$2$2":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->L$0:Ljava/lang/Object;

    iput-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->L$1:Ljava/lang/Object;

    iput v9, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v15, v5, v2}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v4    # "it":Ljava/lang/String;
    if-ne v5, v0, :cond_15a

    .line 1675
    return-object v0

    .line 1685
    :cond_15a
    :goto_15a
    nop

    .line 1708
    .end local v13    # "$i$a$-forEach-RootHider$emergencyRollback$2$2":I
    goto :goto_129

    .line 1709
    :cond_15c
    nop

    .line 1688
    .end local v12    # "$i$f$forEach":I
    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->$packageName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rm -rf /data/local/tmp/hide_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v7, v2

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v10, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->L$0:Ljava/lang/Object;

    iput-object v10, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->L$1:Ljava/lang/Object;

    iput v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v4, v5, v7}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_185} :catch_26f

    if-ne v3, v0, :cond_188

    .line 1675
    return-object v0

    .line 1688
    :cond_188
    move-object v3, v6

    .line 1689
    .end local v6    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_189
    :try_start_189
    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->$packageName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rm -rf /data/local/tmp/hide_magisk_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x4

    iput v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v4, v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_1b1

    .line 1675
    return-object v0

    .line 1690
    :cond_1b1
    :goto_1b1
    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->$packageName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rm -rf /data/local/tmp/hide_bb_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x5

    iput v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v4, v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_1d9

    .line 1675
    return-object v0

    .line 1691
    :cond_1d9
    :goto_1d9
    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->$packageName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rm -rf /data/local/tmp/isolate_storage_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x6

    iput v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v4, v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_201

    .line 1675
    return-object v0

    .line 1694
    :cond_201
    :goto_201
    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->$packageName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sqlite3 /data/adb/magisk.db \"DELETE FROM policies WHERE package_name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'\" 2>/dev/null || true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x7

    iput v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v4, v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_22b

    .line 1675
    return-object v0

    .line 1695
    :cond_22b
    :goto_22b
    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v5, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->$packageName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "magisk --denylist rm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/16 v7, 0x8

    iput v7, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v4, v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_254

    .line 1675
    return-object v0

    .line 1697
    :cond_254
    :goto_254
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$emergencyRollback$2;->$packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "emergencyRollback: Emergency cleanup completed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_26e
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_26e} :catch_52

    goto :goto_290

    .line 1698
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v6    # "$result":Ljava/lang/Object;
    :catch_26f
    move-exception v0

    move-object v3, v6

    .line 1699
    .end local v6    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_271
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "emergencyRollback: Critical exception during emergency cleanup: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1701
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_290
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_294
    .packed-switch 0x0
        :pswitch_89
        :pswitch_6d
        :pswitch_55
        :pswitch_49
        :pswitch_40
        :pswitch_37
        :pswitch_2e
        :pswitch_25
        :pswitch_1c
    .end packed-switch
.end method
