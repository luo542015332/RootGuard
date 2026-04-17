.class final Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;->configureMagiskHide(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2$WhenMappings;
    }
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
    c = "com.pandasu.turbo.data.magisk.RootHider$configureMagiskHide$2"
    f = "RootHider.kt"
    i = {
        0x0,
        0x1,
        0x2,
        0x3,
        0x4,
        0x5
    }
    l = {
        0x325,
        0x326,
        0x32d,
        0x33f,
        0x342,
        0x345
    }
    m = "invokeSuspend"
    n = {
        "pkg",
        "pkg",
        "pkg",
        "pkg",
        "pkg",
        "pkg"
    }
    s = {
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $config:Lcom/pandasu/turbo/data/model/IsolationConfig;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/RootHider;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/data/model/IsolationConfig;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->$config:Lcom/pandasu/turbo/data/model/IsolationConfig;

    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

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

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->$config:Lcom/pandasu/turbo/data/model/IsolationConfig;

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;-><init>(Lcom/pandasu/turbo/data/model/IsolationConfig;Lcom/pandasu/turbo/data/magisk/RootHider;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 795
    iget v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_2de

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_14
    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .local v1, "pkg":Ljava/lang/String;
    :try_start_19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1e

    goto/16 :goto_133

    .line 842
    .end local v1    # "pkg":Ljava/lang/String;
    :catch_1e
    move-exception v1

    goto/16 :goto_16f

    .line 795
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_21
    move-object v1, p0

    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .local v5, "pkg":Ljava/lang/String;
    :try_start_26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2e

    move-object v6, v5

    move-object v5, v1

    move-object v1, p1

    goto/16 :goto_e5

    .line 842
    .end local v5    # "pkg":Ljava/lang/String;
    :catch_2e
    move-exception v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_16f

    .line 795
    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_34
    move-object v1, p0

    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .restart local v5    # "pkg":Ljava/lang/String;
    :try_start_39
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_2cc

    move-object v6, v5

    move-object v5, v1

    move-object v1, p1

    goto/16 :goto_c4

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_41
    move-object v0, p0

    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .local v1, "pkg":Ljava/lang/String;
    :try_start_46
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4d

    move-object v2, v1

    move-object v1, p1

    goto/16 :goto_24a

    .line 819
    .end local v1    # "pkg":Ljava/lang/String;
    :catch_4d
    move-exception v1

    move-object v5, v0

    goto/16 :goto_27f

    .line 795
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_51
    move-object v1, p0

    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .local v2, "pkg":Ljava/lang/String;
    :try_start_56
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_2cc

    move-object v5, v1

    move-object v1, p1

    goto/16 :goto_1e8

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_5d
    move-object v1, p0

    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .restart local v5    # "pkg":Ljava/lang/String;
    :try_start_62
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_2cc

    move-object v6, v5

    move-object v5, v1

    move-object v1, p1

    goto/16 :goto_1b6

    .end local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_6a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 796
    .restart local v1    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 797
    :try_start_6f
    iget-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->$config:Lcom/pandasu/turbo/data/model/IsolationConfig;

    invoke-virtual {v5}, Lcom/pandasu/turbo/data/model/IsolationConfig;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 798
    .restart local v5    # "pkg":Ljava/lang/String;
    sget-object v6, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->INSTANCE:Lcom/pandasu/turbo/util/RootEnvironmentDetector;

    invoke-virtual {v6}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->detectRootMode()Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    move-result-object v6

    .line 800
    .local v6, "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    sget-object v7, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "configureMagiskHide: Root type detected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 802
    sget-object v7, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_2f0

    .line 851
    .end local v5    # "pkg":Ljava/lang/String;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    goto/16 :goto_2af

    .line 831
    .end local v6    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .restart local v5    # "pkg":Ljava/lang/String;
    :pswitch_ac
    iget-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v7, "ls -la /data/adb/ksu/.allowlist 2>/dev/null"

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->L$0:Ljava/lang/Object;

    const/4 v9, 0x4

    iput v9, v1, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommandOutput(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v6, v7, v8}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_bc} :catch_2cc

    if-ne v6, v0, :cond_bf

    .line 795
    return-object v0

    .line 831
    :cond_bf
    move-object v10, v1

    move-object v1, p1

    move-object p1, v6

    move-object v6, v5

    move-object v5, v10

    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v5, "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .local v6, "pkg":Ljava/lang/String;
    :goto_c4
    :try_start_c4
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_ca} :catch_2ab

    if-lez p1, :cond_ce

    move p1, v3

    goto :goto_cf

    :cond_ce
    move p1, v4

    :goto_cf
    if-eqz p1, :cond_194

    .line 832
    nop

    .line 834
    :try_start_d2
    iget-object p1, v5, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v7, "cat /data/adb/ksu/.allowlist 2>/dev/null"

    move-object v8, v5

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v6, v5, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->L$0:Ljava/lang/Object;

    const/4 v9, 0x5

    iput v9, v5, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommandOutput(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1, v7, v8}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommandOutput(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e5

    .line 795
    return-object v0

    :cond_e5
    :goto_e5
    check-cast p1, Ljava/lang/String;

    .line 835
    .local p1, "currentList":Ljava/lang/String;
    move-object v7, p1

    check-cast v7, Ljava/lang/CharSequence;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    invoke-static {v7, v8, v4, v2, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    .end local p1    # "currentList":Ljava/lang/String;
    if-nez v2, :cond_14e

    .line 837
    iget-object p1, v5, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "echo \'("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "(u:r:su:s0\' >> /data/adb/ksu/.allowlist 2>/dev/null"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v5

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v6, v5, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->L$0:Ljava/lang/Object;

    const/4 v8, 0x6

    iput v8, v5, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1, v2, v7}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_12d} :catch_16a

    if-ne p1, v0, :cond_130

    .line 795
    return-object v0

    .line 837
    :cond_130
    move-object p1, v1

    move-object v0, v5

    move-object v1, v6

    .line 838
    .end local v5    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .end local v6    # "pkg":Ljava/lang/String;
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .local v1, "pkg":Ljava/lang/String;
    .local p1, "$result":Ljava/lang/Object;
    :goto_133
    :try_start_133
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KernelSU allowlist configured for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/pandasu/turbo/utils/Logger;->i(Ljava/lang/String;)V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_14b} :catch_1e

    move-object v1, v0

    goto/16 :goto_2cb

    .line 840
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .restart local v5    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_14e
    :try_start_14e
    sget-object p1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KernelSU allowlist already contains "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_166} :catch_16a

    move-object p1, v1

    move-object v1, v5

    .end local v6    # "pkg":Ljava/lang/String;
    goto/16 :goto_2cb

    .line 842
    :catch_16a
    move-exception p1

    move-object v0, v5

    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    .line 843
    .end local v5    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .local v1, "e":Ljava/lang/Exception;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_16f
    :try_start_16f
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KernelSU allowlist configuration failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_18b} :catch_18e

    move-object v1, v0

    .end local v1    # "e":Ljava/lang/Exception;
    goto/16 :goto_2cb

    .line 856
    :catch_18e
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_2cd

    .line 846
    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .restart local v5    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    :cond_194
    :try_start_194
    sget-object p1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v0, "KernelSU allowlist file not found, skipping"

    invoke-virtual {p1, v0}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_19b} :catch_2ab

    move-object p1, v1

    move-object v1, v5

    goto/16 :goto_2cb

    .line 805
    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .local v5, "pkg":Ljava/lang/String;
    .restart local p1    # "$result":Ljava/lang/Object;
    :pswitch_19f
    :try_start_19f
    iget-object v6, v1, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v7, "magisk"

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v5, v1, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->L$0:Ljava/lang/Object;

    iput v3, v1, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->checkToolAvailable(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v6, v7, v8}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$checkToolAvailable(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1ae} :catch_2cc

    if-ne v6, v0, :cond_1b1

    .line 795
    return-object v0

    .line 805
    :cond_1b1
    move-object v10, v1

    move-object v1, p1

    move-object p1, v6

    move-object v6, v5

    move-object v5, v10

    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v5, "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .restart local v6    # "pkg":Ljava/lang/String;
    :goto_1b6
    :try_start_1b6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2a1

    .line 806
    iget-object p1, v5, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "magisk --denylist add "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " 2>/dev/null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v6, v5, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->L$0:Ljava/lang/Object;

    iput v2, v5, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1, v7, v8}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1e7

    .line 795
    return-object v0

    .line 806
    :cond_1e7
    move-object v2, v6

    .end local v6    # "pkg":Ljava/lang/String;
    .restart local v2    # "pkg":Ljava/lang/String;
    :goto_1e8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 807
    .local p1, "result":Z
    nop

    .end local p1    # "result":Z
    if-eqz p1, :cond_20d

    .line 808
    sget-object p1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Magisk denylist configured for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pandasu/turbo/utils/Logger;->i(Ljava/lang/String;)V

    move-object p1, v1

    move-object v1, v5

    goto/16 :goto_2cb

    .line 810
    :cond_20d
    sget-object p1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v6, "Magisk denylist configuration failed, trying SQLite fallback"

    invoke-virtual {p1, v6}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_214} :catch_2ab

    .line 812
    nop

    .line 813
    :try_start_215
    iget-object p1, v5, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sqlite3 /data/adb/magisk.db \"INSERT OR REPLACE INTO denylist (package_name, process) VALUES (\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\');\" 2>/dev/null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v5

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v2, v5, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->L$0:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v5, Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->runSuCommand(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1, v6, v7}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$runSuCommand(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_246
    .catch Ljava/lang/Exception; {:try_start_215 .. :try_end_246} :catch_27b

    if-ne p1, v0, :cond_249

    .line 795
    return-object v0

    .line 813
    :cond_249
    move-object v0, v5

    .end local v5    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .restart local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    :goto_24a
    :try_start_24a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 814
    .local p1, "sqliteResult":Z
    if-eqz p1, :cond_26b

    .line 815
    .end local p1    # "sqliteResult":Z
    sget-object p1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Magisk denylist configured via SQLite for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/pandasu/turbo/utils/Logger;->i(Ljava/lang/String;)V

    goto :goto_272

    .line 817
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_26b
    sget-object p1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "Both magisk and SQLite methods failed, but not critical"

    invoke-virtual {p1, v2}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_272
    .catch Ljava/lang/Exception; {:try_start_24a .. :try_end_272} :catch_275

    .line 855
    :goto_272
    move-object p1, v1

    move-object v1, v0

    goto :goto_2cb

    .line 819
    :catch_275
    move-exception p1

    move-object v5, v0

    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    goto :goto_27f

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .restart local v5    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    :catch_27b
    move-exception p1

    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    .end local v1    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :goto_27f
    move-object v0, v1

    .line 820
    .local v0, "e":Ljava/lang/Exception;
    :try_start_280
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Magisk denylist configuration failed, but not critical: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_29c
    .catch Ljava/lang/Exception; {:try_start_280 .. :try_end_29c} :catch_29e

    move-object v1, v5

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2cb

    .line 856
    :catch_29e
    move-exception v0

    move-object v1, v5

    goto :goto_2cd

    .line 824
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_2a1
    :try_start_2a1
    sget-object p1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v0, "Magisk command not available, skipping denylist (not critical)"

    invoke-virtual {p1, v0}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_2a8
    .catch Ljava/lang/Exception; {:try_start_2a1 .. :try_end_2a8} :catch_2ab

    move-object p1, v1

    move-object v1, v5

    goto :goto_2cb

    .line 856
    :catch_2ab
    move-exception v0

    move-object p1, v1

    move-object v1, v5

    goto :goto_2cd

    .line 851
    .end local v5    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$configureMagiskHide$2;
    .local v6, "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_2af
    :try_start_2af
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported root type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", skipping denylist configuration (not critical)"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_2cb
    .catch Ljava/lang/Exception; {:try_start_2af .. :try_end_2cb} :catch_2cc

    .line 855
    .end local v6    # "rootType":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :goto_2cb
    goto :goto_2d8

    .line 856
    :catch_2cc
    move-exception v0

    .line 857
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_2cd
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "configureMagiskHide failed"

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v5}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 858
    move v3, v4

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2d8
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 796
    return-object v0

    nop

    :pswitch_data_2de
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_5d
        :pswitch_51
        :pswitch_41
        :pswitch_34
        :pswitch_21
        :pswitch_14
    .end packed-switch

    :pswitch_data_2f0
    .packed-switch 0x1
        :pswitch_19f
        :pswitch_ac
    .end packed-switch
.end method
