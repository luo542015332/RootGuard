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
    .registers 5
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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->$toolName:Ljava/lang/String;

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 763
    iget v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->label:I

    const-string v2, " 2>/dev/null"

    const/4 v3, 0x0

    const-string v4, "Tool check: "

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_166

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_17
    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1e

    move-object v1, p1

    goto/16 :goto_d4

    .line 786
    :catch_1e
    move-exception v1

    goto/16 :goto_138

    .line 763
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_21
    move-object v1, p0

    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .local v6, "absolutePath":Ljava/lang/String;
    :try_start_26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_134

    move-object v7, v6

    move-object v6, v1

    move-object v1, p1

    goto :goto_79

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .end local v6    # "absolutePath":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 764
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 766
    :try_start_32
    iget-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->$toolName:Ljava/lang/String;

    .line 767
    const-string v7, "ksu"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    const-string v6, "/data/adb/ksud"

    goto :goto_4c

    .line 768
    :cond_3f
    const-string v7, "magisk"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    const-string v6, "/data/adb/magisk/magisk"

    goto :goto_4c

    .line 769
    :cond_4a
    iget-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;->$toolName:Ljava/lang/String;

    .line 766
    :goto_4c
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

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommandOutput(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v7, v8, v9}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_71} :catch_134

    if-ne v7, v0, :cond_74

    .line 763
    return-object v0

    .line 771
    :cond_74
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
    :goto_79
    :try_start_79
    check-cast p1, Ljava/lang/String;

    .line 772
    .local p1, "result":Ljava/lang/String;
    move-object v8, p1

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_86

    move p1, v5

    goto :goto_87

    :cond_86
    move p1, v3

    .end local p1    # "result":Ljava/lang/String;
    :goto_87
    if-eqz p1, :cond_a8

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

    goto/16 :goto_128

    .line 777
    :cond_a8
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

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommandOutput(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1, v2, v7}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_d0} :catch_12e

    if-ne p1, v0, :cond_d3

    .line 763
    return-object v0

    .line 777
    :cond_d3
    move-object v0, v6

    .line 763
    .end local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    :goto_d4
    :try_start_d4
    check-cast p1, Ljava/lang/String;

    .line 778
    .local p1, "whichResult":Ljava/lang/String;
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_e1

    move v2, v5

    goto :goto_e2

    :cond_e1
    move v2, v3

    :goto_e2
    if-eqz v2, :cond_109

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

    goto :goto_128

    .line 782
    :cond_109
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
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_127} :catch_129

    .line 783
    move-object v6, v0

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .restart local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    :goto_128
    goto :goto_160

    .line 786
    .end local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    :catch_129
    move-exception p1

    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    goto :goto_138

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .restart local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    :catch_12e
    move-exception p1

    move-object v0, v6

    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    goto :goto_138

    .end local v6    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .local p1, "$result":Ljava/lang/Object;
    :catch_134
    move-exception v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 787
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$checkToolAvailable$2;
    .local v1, "e":Ljava/lang/Exception;
    :goto_138
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
    :goto_160
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 764
    return-object p1

    nop

    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_21
        :pswitch_17
    .end packed-switch
.end method
