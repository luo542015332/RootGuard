.class final Lcom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DetectorScanner.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/util/DetectorScanner;->autoIsolateDetectors(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nDetectorScanner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DetectorScanner.kt\ncom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,262:1\n766#2:263\n857#2,2:264\n1549#2:266\n1620#2,3:267\n*S KotlinDebug\n*F\n+ 1 DetectorScanner.kt\ncom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2\n*L\n131#1:263\n131#1:264,2\n132#1:266\n132#1:267,3\n*E\n"
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
    c = "com.pandasu.turbo.util.DetectorScanner$autoIsolateDetectors$2"
    f = "DetectorScanner.kt"
    i = {}
    l = {
        0x81
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/util/DetectorScanner;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/util/DetectorScanner;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/util/DetectorScanner;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2;->this$0:Lcom/pandasu/turbo/util/DetectorScanner;

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

    new-instance v0, Lcom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2;

    iget-object v1, p0, Lcom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2;->this$0:Lcom/pandasu/turbo/util/DetectorScanner;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2;-><init>(Lcom/pandasu/turbo/util/DetectorScanner;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 128
    iget v1, p0, Lcom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_be

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_12
    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, p1

    goto :goto_2d

    .end local v0    # "this":Lcom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 129
    .local v1, "this":Lcom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lcom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2;->this$0:Lcom/pandasu/turbo/util/DetectorScanner;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, v1, Lcom/pandasu/turbo/util/DetectorScanner$autoIsolateDetectors$2;->label:I

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/util/DetectorScanner;->scanDetectors(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2b

    .line 128
    return-object v0

    .line 129
    :cond_2b
    move-object v0, p1

    move-object p1, v3

    .line 128
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_2d
    check-cast p1, Ljava/util/List;

    .line 130
    .local p1, "detected":Ljava/util/List;
    check-cast p1, Ljava/lang/Iterable;

    .line 131
    .local p1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 263
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    .local p1, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 264
    .local v5, "$i$f$filterTo":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local p1    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_3e
    :goto_3e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_63

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .local p1, "element$iv$iv":Ljava/lang/Object;
    move-object v7, p1

    check-cast v7, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;

    .local v7, "it":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    const/4 v8, 0x0

    .line 131
    .local v8, "$i$a$-filter-DetectorScanner$autoIsolateDetectors$2$autoIsolatePackages$1":I
    invoke-virtual {v7}, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;->getRiskLevel()Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    move-result-object v9

    sget-object v10, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->HIGH:Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;

    check-cast v10, Ljava/lang/Enum;

    invoke-virtual {v9, v10}, Lcom/pandasu/turbo/util/DetectorScanner$RiskLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v9

    if-ltz v9, :cond_5c

    move v7, v2

    goto :goto_5d

    .end local v7    # "it":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    :cond_5c
    const/4 v7, 0x0

    .line 264
    .end local v8    # "$i$a$-filter-DetectorScanner$autoIsolateDetectors$2$autoIsolatePackages$1":I
    :goto_5d
    if-eqz v7, :cond_3e

    invoke-interface {v4, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 265
    .end local p1    # "element$iv$iv":Ljava/lang/Object;
    :cond_63
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$filterTo":I
    move-object p1, v4

    check-cast p1, Ljava/util/List;

    .line 263
    nop

    .end local v3    # "$i$f$filter":I
    check-cast p1, Ljava/lang/Iterable;

    .line 132
    .local p1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 266
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

    .line 267
    .local v4, "$i$f$mapTo":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local p1    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    :goto_7d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_93

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 268
    .local p1, "item$iv$iv":Ljava/lang/Object;
    move-object v6, p1

    check-cast v6, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;

    .local v6, "it":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    const/4 v7, 0x0

    .line 132
    .local v7, "$i$a$-map-DetectorScanner$autoIsolateDetectors$2$autoIsolatePackages$2":I
    invoke-virtual {v6}, Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 268
    .end local v6    # "it":Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;
    .end local v7    # "$i$a$-map-DetectorScanner$autoIsolateDetectors$2$autoIsolatePackages$2":I
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 269
    .end local p1    # "item$iv$iv":Ljava/lang/Object;
    :cond_93
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$mapTo":I
    move-object p1, v3

    check-cast p1, Ljava/util/List;

    .line 266
    nop

    .line 132
    .end local v2    # "$i$f$map":I
    nop

    .line 130
    nop

    .line 134
    .local p1, "autoIsolatePackages":Ljava/util/List;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DetectorScanner: \u81ea\u52a8\u9694\u79bb "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u4e2a\u9ad8\u98ce\u9669\u68c0\u6d4b\u5668"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 135
    return-object p1

    nop

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_19
        :pswitch_12
    .end packed-switch
.end method
