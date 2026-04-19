.class final Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->detectRootType(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRootHider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$detectRootType$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1705:1\n1#2:1706\n1747#3,3:1707\n1747#3,3:1710\n*S KotlinDebug\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$detectRootType$2\n*L\n79#1:1707,3\n83#1:1710,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
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
    c = "com.pandasu.turbo.data.magisk.RootHider$detectRootType$2"
    f = "RootHider.kt"
    i = {}
    l = {
        0x4b,
        0x4b,
        0x4f,
        0x53
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/RootHider;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    const-string v0, "magisk"

    const-string v1, "kernelsu"

    const-string v2, "apatch"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 71
    move-object/from16 v4, p0

    iget v5, v4, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->label:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "standalone"

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v1, p0

    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;
    move-object/from16 v2, p1

    .local v2, "$result":Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "$i$f$any":I
    const/4 v10, 0x0

    .local v10, "$i$a$-any-RootHider$detectRootType$2$3":I
    iget-object v11, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/pandasu/turbo/data/magisk/RootHider;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v13, v10

    move v10, v5

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_6

    .line 88
    .end local v5    # "$i$f$any":I
    .end local v10    # "$i$a$-any-RootHider$detectRootType$2$3":I
    :catch_0
    move-exception v0

    goto/16 :goto_9

    .line 71
    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;
    .end local v2    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v2, p0

    .local v2, "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;
    move-object/from16 v5, p1

    .local v5, "$result":Ljava/lang/Object;
    const/4 v10, 0x0

    .local v10, "$i$f$any":I
    const/4 v11, 0x0

    .local v11, "$i$a$-any-RootHider$detectRootType$2$2":I
    iget-object v12, v2, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v2, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/pandasu/turbo/data/magisk/RootHider;

    :try_start_1
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v14, v11

    move v11, v10

    move-object v10, v2

    move-object v2, v5

    goto/16 :goto_3

    .line 88
    .end local v10    # "$i$f$any":I
    .end local v11    # "$i$a$-any-RootHider$detectRootType$2$2":I
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, v5

    goto/16 :goto_9

    .line 71
    .end local v2    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;
    .end local v5    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object/from16 v5, p0

    .local v5, "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;
    move-object/from16 v10, p1

    .local v10, "$result":Ljava/lang/Object;
    :try_start_2
    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v10

    goto :goto_1

    .end local v5    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;
    .end local v10    # "$result":Ljava/lang/Object;
    :pswitch_3
    move-object/from16 v5, p0

    .restart local v5    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;
    move-object/from16 v10, p1

    .restart local v10    # "$result":Ljava/lang/Object;
    invoke-static {v10}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v11, v10

    goto :goto_0

    .line 88
    :catch_2
    move-exception v0

    move-object v1, v5

    move-object v2, v10

    goto/16 :goto_9

    .line 71
    .end local v5    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;
    .end local v10    # "$result":Ljava/lang/Object;
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .restart local v5    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;
    move-object/from16 v10, p1

    .line 72
    .restart local v10    # "$result":Ljava/lang/Object;
    iget-object v11, v5, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-static {v11}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$getCachedRootType$p(Lcom/pandasu/turbo/data/magisk/RootHider;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object v0, v11

    .line 1706
    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 72
    .local v1, "$i$a$-let-RootHider$detectRootType$2$1":I
    return-object v0

    .line 73
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-RootHider$detectRootType$2$1":I
    :cond_0
    nop

    .line 75
    :try_start_3
    iget-object v11, v5, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v12, "/data/adb/apatch"

    move-object v13, v5

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput v7, v5, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->label:I

    invoke-static {v11, v12, v13}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$fileExists(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_1

    .line 71
    return-object v3

    .line 75
    :cond_1
    :goto_0
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_e

    iget-object v11, v5, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v12, "/data/adb/ap"

    move-object v13, v5

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput v6, v5, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->label:I

    invoke-static {v11, v12, v13}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$fileExists(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_2

    .line 71
    return-object v3

    .line 75
    :cond_2
    :goto_1
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3

    goto/16 :goto_8

    .line 79
    :cond_3
    invoke-static {}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$getKERNELSU_PATHS$cp()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    iget-object v11, v5, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    .local v2, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 1707
    .local v12, "$i$f$any":I
    instance-of v13, v2, Ljava/util/Collection;

    if-eqz v13, :cond_4

    move-object v13, v2

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object v2, v10

    move v10, v8

    goto :goto_4

    .line 1708
    :cond_4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v10

    move v10, v12

    move-object v12, v13

    move-object v13, v11

    .end local v12    # "$i$f$any":I
    .local v2, "$result":Ljava/lang/Object;
    .local v10, "$i$f$any":I
    :goto_2
    :try_start_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v14, v11

    check-cast v14, Ljava/lang/String;

    move-object v11, v14

    .local v11, "it":Ljava/lang/String;
    const/4 v14, 0x0

    .line 79
    .local v14, "$i$a$-any-RootHider$detectRootType$2$2":I
    iput-object v13, v5, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->L$0:Ljava/lang/Object;

    iput-object v12, v5, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->L$1:Ljava/lang/Object;

    const/4 v15, 0x3

    iput v15, v5, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->label:I

    invoke-static {v13, v11, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$fileExists(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .end local v11    # "it":Ljava/lang/String;
    if-ne v15, v3, :cond_5

    .line 71
    return-object v3

    .line 79
    :cond_5
    move v11, v10

    move-object v10, v5

    move-object v5, v15

    .end local v5    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;
    .local v10, "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;
    .local v11, "$i$f$any":I
    :goto_3
    :try_start_5
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1708
    .end local v14    # "$i$a$-any-RootHider$detectRootType$2$2":I
    if-eqz v5, :cond_6

    move-object v5, v10

    move v10, v7

    goto :goto_4

    :cond_6
    move-object v5, v10

    move v10, v11

    goto :goto_2

    .line 88
    .end local v11    # "$i$f$any":I
    :catch_3
    move-exception v0

    move-object v1, v10

    goto/16 :goto_9

    .line 1709
    .restart local v5    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;
    .local v10, "$i$f$any":I
    :cond_7
    move v10, v8

    .line 79
    .end local v10    # "$i$f$any":I
    :goto_4
    if-eqz v10, :cond_8

    .line 80
    :try_start_6
    iget-object v0, v5, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-static {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$setCachedRootType$p(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;)V

    return-object v1

    .line 83
    :cond_8
    invoke-static {}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$getMAGISK_PATHS$cp()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    iget-object v10, v5, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    .local v1, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 1710
    .restart local v11    # "$i$f$any":I
    instance-of v12, v1, Ljava/util/Collection;

    if-eqz v12, :cond_9

    move-object v12, v1

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_9

    move-object v1, v5

    move v7, v8

    goto :goto_7

    .line 1711
    :cond_9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object v1, v5

    move v5, v11

    move-object v11, v12

    move-object v12, v10

    .end local v11    # "$i$f$any":I
    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;
    .local v5, "$i$f$any":I
    :goto_5
    :try_start_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v13, v10

    check-cast v13, Ljava/lang/String;

    move-object v10, v13

    .local v10, "it":Ljava/lang/String;
    const/4 v13, 0x0

    .line 83
    .local v13, "$i$a$-any-RootHider$detectRootType$2$3":I
    iput-object v12, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->L$1:Ljava/lang/Object;

    const/4 v14, 0x4

    iput v14, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->label:I

    invoke-static {v12, v10, v1}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$fileExists(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .end local v10    # "it":Ljava/lang/String;
    if-ne v14, v3, :cond_a

    .line 71
    return-object v3

    .line 83
    :cond_a
    move v10, v5

    move-object v5, v3

    move-object v3, v2

    move-object v2, v14

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v5    # "$i$f$any":I
    .local v3, "$result":Ljava/lang/Object;
    .local v10, "$i$f$any":I
    :goto_6
    :try_start_8
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 1711
    .end local v13    # "$i$a$-any-RootHider$detectRootType$2$3":I
    if-eqz v2, :cond_b

    move-object v2, v3

    goto :goto_7

    :cond_b
    move-object v2, v3

    move-object v3, v5

    move v5, v10

    goto :goto_5

    .line 88
    .end local v10    # "$i$f$any":I
    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_9

    .line 1712
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v2    # "$result":Ljava/lang/Object;
    .restart local v5    # "$i$f$any":I
    :cond_c
    move v7, v8

    .line 83
    .end local v5    # "$i$f$any":I
    :goto_7
    if-eqz v7, :cond_d

    .line 84
    :try_start_9
    iget-object v3, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-static {v3, v0}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$setCachedRootType$p(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;)V

    return-object v0

    .line 87
    :cond_d
    iget-object v0, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-static {v0, v9}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$setCachedRootType$p(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    return-object v9

    .line 88
    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;
    .local v5, "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;
    :catch_5
    move-exception v0

    move-object v1, v5

    goto :goto_9

    .line 75
    .end local v2    # "$result":Ljava/lang/Object;
    .local v10, "$result":Ljava/lang/Object;
    :cond_e
    :goto_8
    move-object v1, v5

    .line 76
    .end local v5    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;
    :try_start_a
    iget-object v0, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-static {v0, v2}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$setCachedRootType$p(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    return-object v2

    .line 88
    :catch_6
    move-exception v0

    move-object v2, v10

    .line 89
    .end local v10    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "$result":Ljava/lang/Object;
    :goto_9
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "detectRootType failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v3, v5, v7, v6, v7}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, v1, Lcom/pandasu/turbo/data/magisk/RootHider$detectRootType$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-static {v0, v9}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$setCachedRootType$p(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;)V

    return-object v9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
