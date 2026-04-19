.class final Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->hideXposedForPackage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.pandasu.turbo.data.magisk.RootHider$hideXposedForPackage$2"
    f = "RootHider.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x3a8
    }
    m = "invokeSuspend"
    n = {
        "lsposedPath",
        "path"
    }
    s = {
        "L$0",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $packageName:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/RootHider;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;->$packageName:Ljava/lang/String;

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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;->$packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 924
    iget v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .local v4, "path":Ljava/lang/String;
    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .local v6, "lsposedPath":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_1

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;
    .end local v4    # "path":Ljava/lang/String;
    .end local v6    # "lsposedPath":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 925
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 928
    const/4 v4, 0x3

    :try_start_1
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "/data/adb/modules/zygisk_lsposed/framework/lspd.dex"

    aput-object v5, v4, v2

    .line 929
    const-string v5, "/data/adb/modules/lsposed/framework/lspd.dex"

    aput-object v5, v4, v3

    .line 928
    nop

    .line 930
    const-string v5, "/data/adb/modules/riru_lsposed/framework/lspd.dex"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 928
    nop

    .line 927
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 933
    .local v4, "lsposedPaths":Ljava/util/List;
    const-string v5, ""

    .line 934
    .local v5, "lsposedPath":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    .end local v4    # "lsposedPaths":Ljava/util/List;
    .end local v5    # "lsposedPath":Ljava/lang/String;
    .restart local v6    # "lsposedPath":Ljava/lang/String;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 936
    .local v4, "path":Ljava/lang/String;
    iget-object v7, v1, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ls "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " 2>/dev/null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v1

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;->L$1:Ljava/lang/Object;

    iput-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;->L$2:Ljava/lang/Object;

    iput v3, v1, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;->label:I

    invoke-static {v7, v8, v9}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v7, v0, :cond_0

    .line 924
    return-object v0

    .line 936
    :cond_0
    move-object v10, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v1

    move-object v1, v10

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;
    .end local v6    # "lsposedPath":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v4, "this":Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;
    .local v5, "path":Ljava/lang/String;
    .local v7, "lsposedPath":Ljava/lang/String;
    :goto_1
    :try_start_2
    check-cast p1, Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-lez p1, :cond_1

    move p1, v3

    goto :goto_2

    :cond_1
    move p1, v2

    .line 937
    .local p1, "exists":Z
    :goto_2
    if-eqz p1, :cond_2

    .line 938
    .end local v7    # "lsposedPath":Ljava/lang/String;
    move-object v6, v5

    .line 939
    .restart local v6    # "lsposedPath":Ljava/lang/String;
    move-object p1, v0

    move-object v1, v4

    goto :goto_3

    .line 937
    .end local v6    # "lsposedPath":Ljava/lang/String;
    .restart local v7    # "lsposedPath":Ljava/lang/String;
    :cond_2
    move-object p1, v0

    move-object v0, v1

    move-object v1, v4

    move-object v5, v6

    move-object v6, v7

    goto :goto_0

    .line 952
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "lsposedPath":Ljava/lang/String;
    .end local p1    # "exists":Z
    :catch_0
    move-exception p1

    move-object v1, v4

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    goto :goto_5

    .line 943
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v4    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;
    .restart local v6    # "lsposedPath":Ljava/lang/String;
    .local p1, "$result":Ljava/lang/Object;
    :cond_3
    :goto_3
    :try_start_3
    move-object v0, v6

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4

    move v2, v3

    :cond_4
    if-eqz v2, :cond_5

    .line 944
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideXposedForPackage: LSPosed found at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 947
    .end local v6    # "lsposedPath":Ljava/lang/String;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v2, v1, Lcom/pandasu/turbo/data/magisk/RootHider$hideXposedForPackage$2;->$packageName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hideXposedForPackage: Xposed hiding delegated to LSPosed module for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 949
    :cond_5
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "hideXposedForPackage: LSPosed not installed, skipping"

    invoke-virtual {v0, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 951
    :goto_4
    goto :goto_6

    .line 952
    :catch_1
    move-exception v0

    .line 953
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hideXposedForPackage failed, but not critical: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 954
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 925
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
