.class final Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->rollbackOperations(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nRootHider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1705:1\n1855#2:1706\n1855#2,2:1707\n1855#2,2:1709\n1855#2,2:1711\n1856#2:1713\n*S KotlinDebug\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2\n*L\n1623#1:1706\n1632#1:1707,2\n1638#1:1709,2\n1644#1:1711,2\n1623#1:1713\n*E\n"
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
    c = "com.pandasu.turbo.data.magisk.RootHider$rollbackOperations$2"
    f = "RootHider.kt"
    i = {
        0x5,
        0x6
    }
    l = {
        0x65c,
        0x661,
        0x667,
        0x66c,
        0x670,
        0x675,
        0x676,
        0x677,
        0x67e,
        0x67f,
        0x680
    }
    m = "invokeSuspend"
    n = {
        "isolationDir",
        "isolationDir"
    }
    s = {
        "L$4",
        "L$4"
    }
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

.field final synthetic $operationResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $packageName:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/RootHider;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->$executedOperations:Ljava/util/List;

    iput-object p3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iput-object p4, p0, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->$operationResults:Ljava/util/Map;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10
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

    new-instance v6, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->$executedOperations:Ljava/util/List;

    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v4, p0, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->$operationResults:Ljava/util/Map;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1618
    move-object/from16 v1, p0

    iget v2, v1, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->label:I

    const-string v5, "umount -l "

    const-string v7, " 2>/dev/null"

    packed-switch v2, :pswitch_data_58a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_17
    move-object/from16 v2, p0

    .local v2, "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    :try_start_1b
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_53f

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_20
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_516

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_29
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_30} :catch_32

    goto/16 :goto_4ed

    .line 1667
    :catch_32
    move-exception v0

    goto/16 :goto_55c

    .line 1618
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_35
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    move-object/from16 v8, p1

    .local v8, "$result":Ljava/lang/Object;
    const/4 v9, 0x0

    .local v9, "$i$f$forEach":I
    const/4 v10, 0x0

    .local v10, "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    iget-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$2:Ljava/lang/Object;

    check-cast v12, Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$0:Ljava/lang/Object;

    check-cast v14, Ljava/util/Map;

    :try_start_4b
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_cd

    goto/16 :goto_4ad

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    .end local v8    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$f$forEach":I
    .end local v10    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    :pswitch_50
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    move-object/from16 v8, p1

    .restart local v8    # "$result":Ljava/lang/Object;
    const/4 v9, 0x0

    .restart local v9    # "$i$f$forEach":I
    const/4 v10, 0x0

    .restart local v10    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    iget-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$4:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .local v11, "isolationDir":Ljava/lang/String;
    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$2:Ljava/lang/Object;

    check-cast v13, Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$0:Ljava/lang/Object;

    check-cast v15, Ljava/util/Map;

    :try_start_6a
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_cd

    move-object v3, v8

    goto/16 :goto_47b

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    .end local v8    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$f$forEach":I
    .end local v10    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    .end local v11    # "isolationDir":Ljava/lang/String;
    :pswitch_70
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    move-object/from16 v8, p1

    .restart local v8    # "$result":Ljava/lang/Object;
    const/4 v9, 0x0

    .restart local v9    # "$i$f$forEach":I
    const/4 v10, 0x0

    .restart local v10    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    iget-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$4:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .restart local v11    # "isolationDir":Ljava/lang/String;
    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$2:Ljava/lang/Object;

    check-cast v13, Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$0:Ljava/lang/Object;

    check-cast v15, Ljava/util/Map;

    :try_start_8a
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_cd

    move-object v3, v8

    goto/16 :goto_450

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    .end local v8    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$f$forEach":I
    .end local v10    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    .end local v11    # "isolationDir":Ljava/lang/String;
    :pswitch_90
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    move-object/from16 v8, p1

    .restart local v8    # "$result":Ljava/lang/Object;
    const/4 v9, 0x0

    .restart local v9    # "$i$f$forEach":I
    const/4 v10, 0x0

    .restart local v10    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    iget-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$2:Ljava/lang/Object;

    check-cast v12, Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$0:Ljava/lang/Object;

    check-cast v14, Ljava/util/Map;

    :try_start_a6
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_cd

    goto/16 :goto_286

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    .end local v8    # "$result":Ljava/lang/Object;
    .end local v9    # "$i$f$forEach":I
    .end local v10    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    :pswitch_ab
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    move-object/from16 v8, p1

    .restart local v8    # "$result":Ljava/lang/Object;
    const/4 v9, 0x0

    .restart local v9    # "$i$f$forEach":I
    const/4 v10, 0x0

    .restart local v10    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    const/4 v11, 0x0

    .local v11, "$i$f$forEach":I
    const/4 v12, 0x0

    .local v12, "$i$a$-forEach-RootHider$rollbackOperations$2$1$3":I
    iget-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$4:Ljava/lang/Object;

    check-cast v13, Ljava/util/Iterator;

    iget-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$3:Ljava/lang/Object;

    check-cast v14, Ljava/util/Iterator;

    iget-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$2:Ljava/lang/Object;

    check-cast v15, Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    :try_start_c7
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ca} :catch_cd

    move-object v3, v8

    goto/16 :goto_3e1

    .line 1667
    .end local v9    # "$i$f$forEach":I
    .end local v10    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    .end local v11    # "$i$f$forEach":I
    .end local v12    # "$i$a$-forEach-RootHider$rollbackOperations$2$1$3":I
    :catch_cd
    move-exception v0

    move-object v3, v8

    goto/16 :goto_55c

    .line 1618
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    .end local v8    # "$result":Ljava/lang/Object;
    :pswitch_d1
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "$i$f$forEach":I
    const/4 v8, 0x0

    .local v8, "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    const/4 v9, 0x0

    .restart local v9    # "$i$f$forEach":I
    const/4 v10, 0x0

    .local v10, "$i$a$-forEach-RootHider$rollbackOperations$2$1$2":I
    iget-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$4:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$2:Ljava/lang/Object;

    check-cast v13, Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$0:Ljava/lang/Object;

    check-cast v15, Ljava/util/Map;

    :try_start_ed
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f0} :catch_55a

    move-object v3, v4

    const/4 v1, 0x3

    goto/16 :goto_367

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$forEach":I
    .end local v8    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    .end local v9    # "$i$f$forEach":I
    .end local v10    # "$i$a$-forEach-RootHider$rollbackOperations$2$1$2":I
    :pswitch_f4
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .restart local v6    # "$i$f$forEach":I
    const/4 v8, 0x0

    .restart local v8    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    const/4 v9, 0x0

    .restart local v9    # "$i$f$forEach":I
    const/4 v10, 0x0

    .local v10, "$i$a$-forEach-RootHider$rollbackOperations$2$1$1":I
    iget-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$4:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$2:Ljava/lang/Object;

    check-cast v13, Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$0:Ljava/lang/Object;

    check-cast v15, Ljava/util/Map;

    :try_start_110
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_113} :catch_55a

    move-object v3, v4

    goto/16 :goto_21b

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$forEach":I
    .end local v8    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    .end local v9    # "$i$f$forEach":I
    .end local v10    # "$i$a$-forEach-RootHider$rollbackOperations$2$1$1":I
    :pswitch_116
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .restart local v6    # "$i$f$forEach":I
    const/4 v8, 0x0

    .restart local v8    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    iget-object v9, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$2:Ljava/lang/Object;

    check-cast v10, Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/util/Map;

    :try_start_12c
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_12f} :catch_55a

    goto/16 :goto_2e1

    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$forEach":I
    .end local v8    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    :pswitch_131
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;
    move-object/from16 v4, p1

    .line 1619
    .restart local v4    # "$result":Ljava/lang/Object;
    nop

    .line 1620
    :try_start_139
    sget-object v6, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->$packageName:Ljava/lang/String;

    iget-object v9, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->$executedOperations:Ljava/util/List;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "rollbackOperations: Starting rollback for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", executed: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1623
    iget-object v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->$executedOperations:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    iget-object v8, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->$operationResults:Ljava/util/Map;

    iget-object v9, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->$packageName:Ljava/lang/String;

    iget-object v10, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    .local v6, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 1706
    .restart local v11    # "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v15, v8

    move-object v14, v9

    move-object v13, v10

    move v9, v11

    .end local v6    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$forEach":I
    .restart local v9    # "$i$f$forEach":I
    :goto_172
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    .local v6, "operation":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1624
    .local v10, "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v11, 0x0

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b2

    .line 1625
    nop

    .end local v6    # "operation":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_5a6

    :goto_198
    goto/16 :goto_4b2

    :sswitch_19a
    const-string v3, "hideSuBinary"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a3

    goto :goto_198

    .line 1631
    :cond_1a3
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rollbackOperations: Rolling back hideSuBinary for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1632
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const-string v3, "/system/bin/su"

    aput-object v3, v6, v11

    const-string v3, "/system/xbin/su"

    const/4 v8, 0x1

    aput-object v3, v6, v8

    const-string v3, "/sbin/su"

    const/4 v8, 0x2

    aput-object v3, v6, v8

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 1707
    .local v6, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_1d7} :catch_55a

    move-object v3, v4

    move-object v11, v8

    move v8, v10

    move/from16 v16, v9

    move v9, v6

    move/from16 v6, v16

    .end local v4    # "$result":Ljava/lang/Object;
    .end local v10    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    .local v3, "$result":Ljava/lang/Object;
    .restart local v8    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    :goto_1df
    :try_start_1df
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_224

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    move-object v4, v10

    .local v4, "path":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1633
    .local v10, "$i$a$-forEach-RootHider$rollbackOperations$2$1$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$0:Ljava/lang/Object;

    iput-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$3:Ljava/lang/Object;

    iput-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$4:Ljava/lang/Object;
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_20d} :catch_22c

    move-object/from16 p1, v3

    const/4 v3, 0x2

    .end local v3    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_210
    iput v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v13, v1, v2}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_210 .. :try_end_216} :catch_21f

    .end local v4    # "path":Ljava/lang/String;
    if-ne v1, v0, :cond_219

    .line 1618
    return-object v0

    .line 1633
    :cond_219
    move-object/from16 v3, p1

    .line 1634
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_21b
    nop

    .line 1707
    .end local v10    # "$i$a$-forEach-RootHider$rollbackOperations$2$1$1":I
    move-object/from16 v1, p0

    goto :goto_1df

    .line 1667
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$forEach":I
    .end local v8    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    .end local v9    # "$i$f$forEach":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :catch_21f
    move-exception v0

    move-object/from16 v3, p1

    goto/16 :goto_55c

    .line 1708
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v6    # "$i$f$forEach":I
    .restart local v8    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    .restart local v9    # "$i$f$forEach":I
    :cond_224
    move-object/from16 p1, v3

    .end local v3    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    move-object/from16 v4, p1

    move v9, v6

    move v10, v8

    .end local v9    # "$i$f$forEach":I
    goto/16 :goto_4b2

    .line 1667
    .end local v6    # "$i$f$forEach":I
    .end local v8    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :catch_22c
    move-exception v0

    move-object/from16 p1, v3

    .end local v3    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    goto/16 :goto_55c

    .line 1625
    .end local p1    # "$result":Ljava/lang/Object;
    .local v4, "$result":Ljava/lang/Object;
    .restart local v9    # "$i$f$forEach":I
    .local v10, "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    :sswitch_231
    :try_start_231
    const-string v1, "disableRootAccess"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23b

    goto/16 :goto_198

    .line 1647
    :cond_23b
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rollbackOperations: Rolling back disableRootAccess for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sqlite3 /data/adb/magisk.db \"DELETE FROM policies WHERE package_name=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'\" 2>/dev/null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$0:Ljava/lang/Object;

    iput-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$3:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$4:Ljava/lang/Object;

    const/4 v3, 0x5

    iput v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v13, v1, v2}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_281

    .line 1618
    return-object v0

    .line 1648
    :cond_281
    move-object v8, v4

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    .end local v4    # "$result":Ljava/lang/Object;
    .local v8, "$result":Ljava/lang/Object;
    :goto_286
    move-object v4, v8

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    goto/16 :goto_4b2

    .line 1625
    .end local v8    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    :sswitch_28d
    const-string v1, "configureMagiskHide"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_297

    goto/16 :goto_198

    .line 1627
    :cond_297
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rollbackOperations: Rolling back configureMagiskHide for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "magisk --denylist rm "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$0:Ljava/lang/Object;

    iput-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$3:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$4:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v13, v1, v2}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2db

    .line 1618
    return-object v0

    .line 1628
    :cond_2db
    move v6, v9

    move v8, v10

    move-object v9, v12

    move-object v10, v13

    move-object v11, v14

    move-object v12, v15

    .end local v9    # "$i$f$forEach":I
    .end local v10    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    .restart local v6    # "$i$f$forEach":I
    .local v8, "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    :goto_2e1
    move-object v13, v10

    move-object v14, v11

    move-object v15, v12

    move v10, v8

    move-object v12, v9

    move v9, v6

    goto/16 :goto_4b2

    .line 1625
    .end local v6    # "$i$f$forEach":I
    .end local v8    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    .restart local v9    # "$i$f$forEach":I
    .restart local v10    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    :sswitch_2e9
    const-string v1, "hideMagisk"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f3

    goto/16 :goto_198

    .line 1637
    :cond_2f3
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rollbackOperations: Rolling back hideMagisk for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1638
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "/data/adb/magisk"

    aput-object v1, v3, v11

    const-string v1, "/data/adb/modules"

    const/4 v6, 0x1

    aput-object v1, v3, v6

    const-string v1, "/sbin/.magisk"

    const/4 v8, 0x2

    aput-object v1, v3, v8

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 1709
    .local v3, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6
    :try_end_327
    .catch Ljava/lang/Exception; {:try_start_231 .. :try_end_327} :catch_55a

    move-object v11, v6

    move v6, v9

    move v9, v3

    move-object v3, v4

    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$result":Ljava/lang/Object;
    .local v3, "$result":Ljava/lang/Object;
    .restart local v6    # "$i$f$forEach":I
    :goto_32b
    :try_start_32b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    .local v1, "path":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1639
    .local v4, "$i$a$-forEach-RootHider$rollbackOperations$2$1$2":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$0:Ljava/lang/Object;

    iput-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$3:Ljava/lang/Object;

    iput-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$4:Ljava/lang/Object;

    move-object/from16 p1, v1

    const/4 v1, 0x3

    .end local v1    # "path":Ljava/lang/String;
    .local p1, "path":Ljava/lang/String;
    iput v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v13, v8, v2}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_362
    .catch Ljava/lang/Exception; {:try_start_32b .. :try_end_362} :catch_32

    .end local p1    # "path":Ljava/lang/String;
    if-ne v8, v0, :cond_365

    .line 1618
    return-object v0

    .line 1639
    :cond_365
    move v8, v10

    move v10, v4

    .line 1640
    .end local v4    # "$i$a$-forEach-RootHider$rollbackOperations$2$1$2":I
    .restart local v8    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    .local v10, "$i$a$-forEach-RootHider$rollbackOperations$2$1$2":I
    :goto_367
    nop

    .line 1709
    .end local v10    # "$i$a$-forEach-RootHider$rollbackOperations$2$1$2":I
    move v10, v8

    const/4 v8, 0x2

    goto :goto_32b

    .line 1710
    .end local v8    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    .local v10, "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    :cond_36b
    const/4 v1, 0x3

    move-object v4, v3

    move v9, v6

    .end local v9    # "$i$f$forEach":I
    goto/16 :goto_4b2

    .line 1625
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$forEach":I
    .local v4, "$result":Ljava/lang/Object;
    .restart local v9    # "$i$f$forEach":I
    :sswitch_370
    const/4 v1, 0x3

    :try_start_371
    const-string v3, "hideBusybox"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37b

    goto/16 :goto_198

    .line 1643
    :cond_37b
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rollbackOperations: Rolling back hideBusybox for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1644
    # getter for: Lcom/pandasu/turbo/data/magisk/RootHider;->BUSYBOX_PATHS:Ljava/util/List;
    invoke-static {}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$getBUSYBOX_PATHS$cp()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 1711
    .restart local v6    # "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8
    :try_end_39e
    .catch Ljava/lang/Exception; {:try_start_371 .. :try_end_39e} :catch_55a

    move-object v3, v4

    move v11, v6

    move-object v6, v14

    move-object v4, v15

    move-object v14, v12

    move-object v15, v13

    move-object v13, v8

    .end local v4    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$forEach":I
    .local v3, "$result":Ljava/lang/Object;
    .restart local v11    # "$i$f$forEach":I
    :goto_3a5
    :try_start_3a5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3e4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v12, v8

    check-cast v12, Ljava/lang/String;

    move-object v8, v12

    .local v8, "it":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1644
    .restart local v12    # "$i$a$-forEach-RootHider$rollbackOperations$2$1$3":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$1:Ljava/lang/Object;

    iput-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$2:Ljava/lang/Object;

    iput-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$3:Ljava/lang/Object;

    iput-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$4:Ljava/lang/Object;
    :try_end_3d3
    .catch Ljava/lang/Exception; {:try_start_3a5 .. :try_end_3d3} :catch_22c

    move-object/from16 p1, v3

    .end local v3    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v3, 0x4

    :try_start_3d6
    iput v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v15, v1, v2}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3dc
    .catch Ljava/lang/Exception; {:try_start_3d6 .. :try_end_3dc} :catch_21f

    .end local v8    # "it":Ljava/lang/String;
    if-ne v1, v0, :cond_3df

    .line 1618
    return-object v0

    .line 1644
    :cond_3df
    move-object/from16 v3, p1

    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_3e1
    nop

    .line 1711
    .end local v12    # "$i$a$-forEach-RootHider$rollbackOperations$2$1$3":I
    const/4 v1, 0x3

    goto :goto_3a5

    .line 1712
    :cond_3e4
    move-object/from16 p1, v3

    .end local v3    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    move-object v12, v14

    move-object v13, v15

    move-object v15, v4

    move-object v14, v6

    move-object/from16 v4, p1

    .end local v11    # "$i$f$forEach":I
    goto/16 :goto_4b2

    .line 1625
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    :sswitch_3ee
    :try_start_3ee
    const-string v1, "isolateStorage"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f8

    goto/16 :goto_198

    .line 1651
    :cond_3f8
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rollbackOperations: Rolling back isolateStorage for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 1652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/local/tmp/isolate_storage_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1653
    .local v1, "isolationDir":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/sdcard 2>/dev/null"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$0:Ljava/lang/Object;

    iput-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$3:Ljava/lang/Object;

    iput-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$4:Ljava/lang/Object;

    const/4 v6, 0x6

    iput v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v13, v3, v2}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_44b
    .catch Ljava/lang/Exception; {:try_start_3ee .. :try_end_44b} :catch_55a

    if-ne v3, v0, :cond_44e

    .line 1618
    return-object v0

    .line 1653
    :cond_44e
    move-object v11, v1

    move-object v3, v4

    .line 1654
    .end local v1    # "isolationDir":Ljava/lang/String;
    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    .local v11, "isolationDir":Ljava/lang/String;
    :goto_450
    :try_start_450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "umount -l /data/data/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$0:Ljava/lang/Object;

    iput-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$3:Ljava/lang/Object;

    iput-object v11, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$4:Ljava/lang/Object;

    const/4 v4, 0x7

    iput v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v13, v1, v2}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_47b

    .line 1618
    return-object v0

    .line 1655
    :cond_47b
    :goto_47b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rm -rf "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v15, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$0:Ljava/lang/Object;

    iput-object v14, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$3:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$4:Ljava/lang/Object;

    const/16 v4, 0x8

    iput v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v13, v1, v2}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4a5
    .catch Ljava/lang/Exception; {:try_start_450 .. :try_end_4a5} :catch_32

    .end local v11    # "isolationDir":Ljava/lang/String;
    if-ne v1, v0, :cond_4a8

    .line 1618
    return-object v0

    .line 1655
    :cond_4a8
    move-object v8, v3

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    .end local v3    # "$result":Ljava/lang/Object;
    .local v8, "$result":Ljava/lang/Object;
    :goto_4ad
    move-object v4, v8

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    .line 1659
    .end local v8    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    :cond_4b2
    :goto_4b2
    nop

    .line 1706
    .end local v10    # "$i$a$-forEach-RootHider$rollbackOperations$2$1":I
    move-object/from16 v1, p0

    goto/16 :goto_172

    .line 1713
    :cond_4b7
    nop

    .line 1662
    .end local v9    # "$i$f$forEach":I
    :try_start_4b8
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v3, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->$packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rm -rf /data/local/tmp/hide_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$1:Ljava/lang/Object;

    iput-object v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$2:Ljava/lang/Object;

    iput-object v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$3:Ljava/lang/Object;

    iput-object v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->L$4:Ljava/lang/Object;

    const/16 v6, 0x9

    iput v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v3, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4e9
    .catch Ljava/lang/Exception; {:try_start_4b8 .. :try_end_4e9} :catch_55a

    if-ne v1, v0, :cond_4ec

    .line 1618
    return-object v0

    .line 1662
    :cond_4ec
    move-object v3, v4

    .line 1663
    .end local v4    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_4ed
    :try_start_4ed
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->$packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rm -rf /data/local/tmp/hide_magisk_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/16 v6, 0xa

    iput v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v4, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_516

    .line 1618
    return-object v0

    .line 1664
    :cond_516
    :goto_516
    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->$packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rm -rf /data/local/tmp/hide_bb_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/16 v6, 0xb

    iput v6, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v1, v4, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_53f

    .line 1618
    return-object v0

    .line 1666
    :cond_53f
    :goto_53f
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v1, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->$packageName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rollbackOperations: Rollback completed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_559
    .catch Ljava/lang/Exception; {:try_start_4ed .. :try_end_559} :catch_32

    goto :goto_587

    .line 1667
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    :catch_55a
    move-exception v0

    move-object v3, v4

    .line 1668
    .end local v4    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_55c
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v4, v2, Lcom/pandasu/turbo/data/magisk/RootHider$rollbackOperations$2;->$packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rollbackOperations: Exception during rollback for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v1, v4, v5}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1670
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_587
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_58a
    .packed-switch 0x0
        :pswitch_131
        :pswitch_116
        :pswitch_f4
        :pswitch_d1
        :pswitch_ab
        :pswitch_90
        :pswitch_70
        :pswitch_50
        :pswitch_35
        :pswitch_29
        :pswitch_20
        :pswitch_17
    .end packed-switch

    :sswitch_data_5a6
    .sparse-switch
        -0x63148cb0 -> :sswitch_3ee
        0x7296990 -> :sswitch_370
        0x99ede30 -> :sswitch_2e9
        0x26036036 -> :sswitch_28d
        0x45d1edee -> :sswitch_231
        0x6f7e1465 -> :sswitch_19a
    .end sparse-switch
.end method
