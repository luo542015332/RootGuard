.class final Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->getIsolatedApps(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRootHider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1705:1\n766#2:1706\n857#2,2:1707\n1549#2:1709\n1620#2,3:1710\n*S KotlinDebug\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2\n*L\n1165#1:1706\n1165#1:1707,2\n1165#1:1709\n1165#1:1710,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "com.pandasu.turbo.data.magisk.RootHider$getIsolatedApps$2"
    f = "RootHider.kt"
    i = {}
    l = {
        0x48c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/RootHider;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1162
    iget v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_b8

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_12
    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_19

    move-object v1, v0

    move-object v0, p1

    goto :goto_33

    .line 1166
    :catch_19
    move-exception v1

    goto/16 :goto_af

    .line 1162
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 1163
    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 1164
    :try_start_21
    iget-object v3, v1, Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v4, "sqlite3 /data/adb/magisk.db \"SELECT package_name FROM denylist\""

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v2, v1, Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommandOutput(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v3, v4, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2e} :catch_ad

    if-ne v3, v0, :cond_31

    .line 1162
    return-object v0

    .line 1164
    :cond_31
    move-object v0, p1

    move-object p1, v3

    .line 1162
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_33
    :try_start_33
    check-cast p1, Ljava/lang/String;

    .line 1165
    .local p1, "output":Ljava/lang/String;
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    move-object p1, v3

    .local p1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 1706
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    .local p1, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1707
    .local v5, "$i$f$filterTo":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local p1    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_4c
    :goto_4c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .local p1, "element$iv$iv":Ljava/lang/Object;
    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    .local v7, "it":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1165
    .local v8, "$i$a$-filter-RootHider$getIsolatedApps$2$1":I
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_65

    move v7, v2

    goto :goto_66

    .end local v7    # "it":Ljava/lang/String;
    :cond_65
    const/4 v7, 0x0

    .line 1707
    .end local v8    # "$i$a$-filter-RootHider$getIsolatedApps$2$1":I
    :goto_66
    if-eqz v7, :cond_4c

    invoke-interface {v4, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 1708
    .end local p1    # "element$iv$iv":Ljava/lang/Object;
    :cond_6c
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$filterTo":I
    move-object p1, v4

    check-cast p1, Ljava/util/List;

    .line 1706
    nop

    .end local v3    # "$i$f$filter":I
    check-cast p1, Ljava/lang/Iterable;

    .line 1165
    .local p1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1709
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    .local p1, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 1710
    .local v4, "$i$f$mapTo":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local p1    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    :goto_86
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 1711
    .local p1, "item$iv$iv":Ljava/lang/Object;
    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    .local v6, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1165
    .local v7, "$i$a$-map-RootHider$getIsolatedApps$2$2":I
    move-object v8, v6

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1711
    .end local v6    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-map-RootHider$getIsolatedApps$2$2":I
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_86

    .line 1712
    .end local p1    # "item$iv$iv":Ljava/lang/Object;
    :cond_a3
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$mapTo":I
    move-object p1, v3

    check-cast p1, Ljava/util/List;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_a7} :catch_a9

    .line 1709
    nop

    .end local v2    # "$i$f$map":I
    goto :goto_b7

    .line 1166
    :catch_a9
    move-exception p1

    move-object p1, v0

    move-object v0, v1

    goto :goto_af

    .end local v0    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :catch_ad
    move-exception v0

    move-object v0, v1

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;
    .local v0, "this":Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;
    :goto_af
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v10, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, v10

    .line 1163
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$getIsolatedApps$2;
    :goto_b7
    return-object p1

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_12
    .end packed-switch
.end method
