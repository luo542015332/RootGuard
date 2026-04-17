.class final Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->findDirectoriesContaining(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRootHider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1705:1\n766#2:1706\n857#2,2:1707\n766#2:1709\n857#2,2:1710\n13309#3,2:1712\n*S KotlinDebug\n*F\n+ 1 RootHider.kt\ncom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2\n*L\n106#1:1706\n106#1:1707,2\n107#1:1709\n107#1:1710,2\n113#1:1712,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
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
    c = "com.pandasu.turbo.data.magisk.RootHider$findDirectoriesContaining$2"
    f = "RootHider.kt"
    i = {
        0x0
    }
    l = {
        0x67
    }
    m = "invokeSuspend"
    n = {
        "results"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $basePath:Ljava/lang/String;

.field final synthetic $keyword:Ljava/lang/String;

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
            "Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->$basePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->$keyword:Ljava/lang/String;

    iput-object p3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->$basePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->$keyword:Ljava/lang/String;

    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 94
    iget v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_17a

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_13
    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .local v1, "results":Ljava/util/List;
    :try_start_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1f

    move-object v4, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_74

    .line 120
    :catch_1f
    move-exception v2

    goto/16 :goto_14e

    .line 94
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;
    .end local v1    # "results":Ljava/util/List;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 95
    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 96
    .local v4, "results":Ljava/util/List;
    nop

    .line 98
    :try_start_2e
    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->$basePath:Ljava/lang/String;

    const-string v6, "/data/adb/"

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v6, v2, v7, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    .line 100
    .local v5, "needsRoot":Z
    nop

    .end local v5    # "needsRoot":Z
    if-eqz v5, :cond_fd

    .line 102
    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->$basePath:Ljava/lang/String;

    iget-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->$keyword:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ls -d \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\"/* 2>/dev/null | grep -i \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" || echo \'\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "cmd":Ljava/lang/String;
    iget-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->L$0:Ljava/lang/Object;

    iput v3, v1, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommandOutput(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v6, v5, v7}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_6f} :catch_14b

    .end local v5    # "cmd":Ljava/lang/String;
    if-ne v6, v0, :cond_72

    .line 94
    return-object v0

    .line 103
    :cond_72
    move-object v0, p1

    move-object p1, v6

    .line 94
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_74
    :try_start_74
    check-cast p1, Ljava/lang/String;

    .line 104
    .local p1, "output":Ljava/lang/String;
    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_f5

    .line 105
    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    move-object p1, v5

    .line 106
    .local p1, "$this$filter$iv":Ljava/lang/Iterable;
    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->$keyword:Ljava/lang/String;

    const/4 v6, 0x0

    .line 1706
    .local v6, "$i$f$filter":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    .local p1, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 1707
    .local v8, "$i$f$filterTo":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local p1    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_99
    :goto_99
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .local p1, "element$iv$iv":Ljava/lang/Object;
    move-object v10, p1

    check-cast v10, Ljava/lang/String;

    .local v10, "it":Ljava/lang/String;
    const/4 v11, 0x0

    .line 106
    .local v11, "$i$a$-filter-RootHider$findDirectoriesContaining$2$1":I
    move-object v12, v10

    check-cast v12, Ljava/lang/CharSequence;

    move-object v13, v5

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v12, v13, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v12

    .line 1707
    .end local v10    # "it":Ljava/lang/String;
    .end local v11    # "$i$a$-filter-RootHider$findDirectoriesContaining$2$1":I
    if-eqz v12, :cond_99

    invoke-interface {v7, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_99

    .line 1708
    .end local p1    # "element$iv$iv":Ljava/lang/Object;
    :cond_b7
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$i$f$filterTo":I
    move-object p1, v7

    check-cast p1, Ljava/util/List;

    .line 1706
    nop

    .end local v6    # "$i$f$filter":I
    check-cast p1, Ljava/lang/Iterable;

    .line 107
    .local p1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1709
    .local v5, "$i$f$filter":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    .local p1, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 1710
    .local v7, "$i$f$filterTo":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local p1    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_cb
    :goto_cb
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_eb

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .local p1, "element$iv$iv":Ljava/lang/Object;
    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    .local v9, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 107
    .local v10, "$i$a$-filter-RootHider$findDirectoriesContaining$2$2":I
    move-object v11, v9

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e4

    move v9, v3

    goto :goto_e5

    :cond_e4
    move v9, v2

    .line 1710
    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-filter-RootHider$findDirectoriesContaining$2$2":I
    :goto_e5
    if-eqz v9, :cond_cb

    invoke-interface {v6, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_cb

    .line 1711
    .end local p1    # "element$iv$iv":Ljava/lang/Object;
    :cond_eb
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$i$f$filterTo":I
    move-object p1, v6

    check-cast p1, Ljava/util/List;

    .line 1709
    nop

    .end local v5    # "$i$f$filter":I
    check-cast p1, Ljava/util/Collection;

    .line 105
    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_f5} :catch_f8

    .line 123
    :cond_f5
    move-object p1, v0

    goto/16 :goto_179

    .line 120
    :catch_f8
    move-exception v2

    move-object p1, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_14e

    .line 111
    .end local v0    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :cond_fd
    :try_start_fd
    new-instance v0, Ljava/io/File;

    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->$basePath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_179

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_179

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .end local v0    # "baseDir":Ljava/io/File;
    if-eqz v5, :cond_179

    iget-object v0, v1, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->$keyword:Ljava/lang/String;

    .local v5, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1712
    .local v6, "$i$f$forEach":I
    array-length v7, v5

    :goto_11a
    if-ge v2, v7, :cond_149

    aget-object v8, v5, v2

    .local v8, "dir":Ljava/io/File;
    const/4 v9, 0x0

    .line 114
    .local v9, "$i$a$-forEach-RootHider$findDirectoriesContaining$2$3":I
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_145

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "getName(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/CharSequence;

    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v10, v11, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v10

    if-eqz v10, :cond_145

    .line 115
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "getAbsolutePath(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_145} :catch_14b

    .line 117
    .end local v8    # "dir":Ljava/io/File;
    :cond_145
    nop

    .line 1712
    .end local v9    # "$i$a$-forEach-RootHider$findDirectoriesContaining$2$3":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_11a

    .line 1713
    :cond_149
    nop

    .end local v5    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$forEach":I
    goto :goto_179

    .line 120
    :catch_14b
    move-exception v2

    move-object v0, v1

    move-object v1, v4

    .line 121
    .end local v4    # "results":Ljava/util/List;
    .local v0, "this":Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;
    .local v1, "results":Ljava/util/List;
    .local v2, "e":Ljava/lang/Exception;
    :goto_14e
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v4, v0, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->$basePath:Ljava/lang/String;

    iget-object v5, v0, Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;->$keyword:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findDirectoriesContaining failed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " with keyword "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v1

    move-object v1, v0

    .line 123
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;
    .end local v2    # "e":Ljava/lang/Exception;
    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$findDirectoriesContaining$2;
    .restart local v4    # "results":Ljava/util/List;
    :cond_179
    :goto_179
    return-object v4

    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_22
        :pswitch_13
    .end packed-switch
.end method
