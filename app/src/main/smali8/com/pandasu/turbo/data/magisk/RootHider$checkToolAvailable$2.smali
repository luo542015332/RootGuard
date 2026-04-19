.class final Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->checkToolAvailable(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.pandasu.turbo.data.magisk.RootHider$checkToolAvailable$2"
    f = "RootHider.kt"
    i = {
        0x0
    }
    l = {
        0x303,
        0x309
    }
    m = "invokeSuspend"
    n = {
        "absolutePath"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $toolName:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/RootHider;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->$toolName:Ljava/lang/String;

    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->$toolName:Ljava/lang/String;

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 763
    iget v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->label:I

    const-string v2, " 2>/dev/null"

    const/4 v3, 0x0

    const-string v4, "Tool check: "

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto/16 :goto_3

    .line 786
    :catch_0
    move-exception v1

    goto/16 :goto_6

    .line 763
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .local v6, "absolutePath":Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v7, v6

    move-object v6, v1

    move-object v1, p1

    goto :goto_1

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .end local v6    # "absolutePath":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 764
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 766
    :try_start_2
    iget-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->$toolName:Ljava/lang/String;

    .line 767
    const-string v7, "ksu"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v6, "/data/adb/ksud"

    goto :goto_0

    .line 768
    :cond_0
    const-string v7, "magisk"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "/data/adb/magisk/magisk"

    goto :goto_0

    .line 769
    :cond_1
    iget-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->$toolName:Ljava/lang/String;

    .line 766
    :goto_0
    nop

    .line 771
    .restart local v6    # "absolutePath":Ljava/lang/String;
    iget-object v7, v1, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ls -la "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v1

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->L$0:Ljava/lang/Object;

    iput v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->label:I

    invoke-static {v7, v8, v9}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-ne v7, v0, :cond_2

    .line 763
    return-object v0

    .line 771
    :cond_2
    move-object v10, v1

    move-object v1, p1

    move-object p1, v7

    move-object v7, v6

    move-object v6, v10

    .line 763
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v6, "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .local v7, "absolutePath":Ljava/lang/String;
    :goto_1
    :try_start_3
    check-cast p1, Ljava/lang/String;

    .line 772
    .local p1, "result":Ljava/lang/String;
    move-object v8, p1

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_3

    move p1, v5

    goto :goto_2

    :cond_3
    move p1, v3

    .end local p1    # "result":Ljava/lang/String;
    :goto_2
    if-eqz p1, :cond_4

    .line 773
    sget-object p1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " exists"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 774
    .end local v7    # "absolutePath":Ljava/lang/String;
    move v3, v5

    goto/16 :goto_5

    .line 777
    :cond_4
    iget-object p1, v6, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v7, v6, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->$toolName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "which "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v6

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 v8, 0x0

    iput-object v8, v6, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->L$0:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v6, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->label:I

    invoke-static {p1, v2, v7}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-ne p1, v0, :cond_5

    .line 763
    return-object v0

    .line 777
    :cond_5
    move-object v0, v6

    .line 763
    .end local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    :goto_3
    :try_start_4
    check-cast p1, Ljava/lang/String;

    .line 778
    .local p1, "whichResult":Ljava/lang/String;
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_6

    move v2, v5

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    if-eqz v2, :cond_7

    .line 779
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v6, v0, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->$toolName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found via which: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 780
    .end local p1    # "whichResult":Ljava/lang/String;
    move-object v6, v0

    move v3, v5

    goto :goto_5

    .line 782
    :cond_7
    sget-object p1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v2, v0, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->$toolName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " is NOT available"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 783
    move-object v6, v0

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .restart local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    :goto_5
    goto :goto_7

    .line 786
    .end local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    :catch_1
    move-exception p1

    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    goto :goto_6

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .restart local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    :catch_2
    move-exception p1

    move-object v0, v6

    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    goto :goto_6

    .end local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .local p1, "$result":Ljava/lang/Object;
    :catch_3
    move-exception v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 787
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .local v1, "e":Ljava/lang/Exception;
    :goto_6
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget-object v5, v0, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->$toolName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is NOT available: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 788
    move-object v1, p1

    move-object v6, v0

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .restart local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    :goto_7
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 764
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
