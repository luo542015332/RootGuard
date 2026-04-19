.class final Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->forceDenyList(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRootHider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1705:1\n1774#2,4:1706\n1747#2,3:1710\n*S KotlinDebug\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2\n*L\n142#1:1706,4\n143#1:1710,3\n*E\n"
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
    c = "com.pandasu.turbo.data.magisk.RootHider$forceDenyList$2"
    f = "RootHider.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x2
    }
    l = {
        0x87,
        0x8b,
        0x8c
    }
    m = "invokeSuspend"
    n = {
        "policyFile",
        "enforceFile",
        "result",
        "enforceFile",
        "result",
        "result"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

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
            "Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 128
    iget v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .local v2, "result":Ljava/util/List;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v1

    move-object v1, p1

    goto/16 :goto_2

    .line 144
    .end local v2    # "result":Ljava/util/List;
    :catch_0
    move-exception v1

    goto/16 :goto_8

    .line 128
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .local v6, "result":Ljava/util/List;
    iget-object v7, v1, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .local v7, "enforceFile":Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v8, v7

    move-object v7, v5

    move-object v5, v1

    move-object v1, p1

    goto/16 :goto_1

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;
    .end local v6    # "result":Ljava/util/List;
    .end local v7    # "enforceFile":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object v1, p0

    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .restart local v6    # "result":Ljava/util/List;
    iget-object v7, v1, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .restart local v7    # "enforceFile":Ljava/lang/String;
    iget-object v8, v1, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .local v8, "policyFile":Ljava/lang/String;
    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v1

    move-object v1, p1

    goto :goto_0

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;
    .end local v6    # "result":Ljava/util/List;
    .end local v7    # "enforceFile":Ljava/lang/String;
    .end local v8    # "policyFile":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 129
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 130
    :try_start_3
    const-string v5, "/data/adb/zygisksu/denylist_policy"

    move-object v8, v5

    .line 131
    .restart local v8    # "policyFile":Ljava/lang/String;
    const-string v5, "/data/adb/zygisksu/denylist_enforce"

    .line 132
    .local v5, "enforceFile":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    .line 135
    .restart local v6    # "result":Ljava/util/List;
    iget-object v7, v1, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v9, "magisk --denylist enable"

    move-object v10, v1

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v8, v1, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$1:Ljava/lang/Object;

    iput-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$2:Ljava/lang/Object;

    iput-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$3:Ljava/lang/Object;

    iput v3, v1, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->label:I

    invoke-static {v7, v9, v10}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-ne v7, v0, :cond_0

    .line 128
    return-object v0

    .line 135
    :cond_0
    move-object v9, v8

    move-object v8, v5

    move-object v5, v1

    move-object v1, p1

    move-object p1, v7

    move-object v7, v6

    .end local v6    # "result":Ljava/util/List;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v5, "this":Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;
    .local v7, "result":Ljava/util/List;
    .local v8, "enforceFile":Ljava/lang/String;
    .local v9, "policyFile":Ljava/lang/String;
    :goto_0
    :try_start_4
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object p1, v5, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "echo 1 > "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v10, v5

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v8, v5, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$0:Ljava/lang/Object;

    iput-object v7, v5, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$1:Ljava/lang/Object;

    iput-object v7, v5, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$2:Ljava/lang/Object;

    iput-object v2, v5, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$3:Ljava/lang/Object;

    const/4 v11, 0x2

    iput v11, v5, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->label:I

    invoke-static {p1, v6, v10}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v9    # "policyFile":Ljava/lang/String;
    if-ne p1, v0, :cond_1

    .line 128
    return-object v0

    .line 139
    :cond_1
    move-object v6, v7

    .end local v7    # "result":Ljava/util/List;
    .restart local v6    # "result":Ljava/util/List;
    :goto_1
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object p1, v5, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "echo 2 > "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v9, v5

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v6, v5, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$0:Ljava/lang/Object;

    iput-object v6, v5, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$1:Ljava/lang/Object;

    iput-object v2, v5, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->L$2:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v5, Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;->label:I

    invoke-static {p1, v7, v9}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .end local v8    # "enforceFile":Ljava/lang/String;
    if-ne p1, v0, :cond_2

    .line 128
    return-object v0

    .line 140
    :cond_2
    move-object v0, v5

    move-object v2, v6

    .end local v5    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;
    .end local v6    # "result":Ljava/util/List;
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;
    .restart local v2    # "result":Ljava/util/List;
    :goto_2
    :try_start_5
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object p1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    move-object v5, v2

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 1706
    .local v6, "$i$f$count":I
    instance-of v7, v5, Ljava/util/Collection;

    if-eqz v7, :cond_3

    move-object v7, v5

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_5

    .line 1707
    :cond_3
    const/4 v7, 0x0

    .line 1708
    .local v7, "count$iv":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v5    # "$this$count$iv":Ljava/lang/Iterable;
    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v9, v5

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move v5, v9

    .local v5, "it":Z
    const/4 v9, 0x0

    .line 142
    .local v9, "$i$a$-count-RootHider$forceDenyList$2$1":I
    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_4

    :cond_5
    move v5, v4

    .line 1708
    .end local v5    # "it":Z
    .end local v9    # "$i$a$-count-RootHider$forceDenyList$2$1":I
    :goto_4
    if-eqz v5, :cond_4

    add-int/lit8 v7, v7, 0x1

    if-gez v7, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_3

    .line 1709
    :cond_6
    nop

    .line 142
    .end local v6    # "$i$f$count":I
    .end local v7    # "count$iv":I
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ForceDenyList: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " succeeded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 143
    move-object p1, v2

    check-cast p1, Ljava/lang/Iterable;

    .end local v2    # "result":Ljava/util/List;
    .local p1, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1710
    .local v2, "$i$f$any":I
    instance-of v5, p1, Ljava/util/Collection;

    if-eqz v5, :cond_7

    move-object v5, p1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    move v3, v4

    goto :goto_7

    .line 1711
    :cond_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local p1    # "$this$any$iv":Ljava/lang/Iterable;
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .local p1, "element$iv":Ljava/lang/Object;
    move-object v6, p1

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move p1, v6

    .local p1, "it":Z
    const/4 v6, 0x0

    .line 143
    .local v6, "$i$a$-any-RootHider$forceDenyList$2$2":I
    if-eqz p1, :cond_9

    move p1, v3

    goto :goto_6

    :cond_9
    move p1, v4

    .line 1711
    .end local v6    # "$i$a$-any-RootHider$forceDenyList$2$2":I
    .end local p1    # "it":Z
    :goto_6
    if-eqz p1, :cond_8

    goto :goto_7

    .line 1712
    :cond_a
    move v3, v4

    .end local v2    # "$i$f$any":I
    :goto_7
    move v4, v3

    goto :goto_9

    .line 144
    :catch_1
    move-exception p1

    move-object v12, v1

    move-object v1, p1

    move-object p1, v12

    goto :goto_8

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;
    .local v5, "this":Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;
    :catch_2
    move-exception p1

    move-object v0, v5

    move-object v12, v1

    move-object v1, p1

    move-object p1, v12

    goto :goto_8

    .end local v5    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;
    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;
    .local p1, "$result":Ljava/lang/Object;
    :catch_3
    move-exception v0

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 145
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$forceDenyList$2;
    .local v1, "e":Ljava/lang/Exception;
    :goto_8
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "forceDenyList failed"

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v5}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, p1

    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :goto_9
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 129
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
