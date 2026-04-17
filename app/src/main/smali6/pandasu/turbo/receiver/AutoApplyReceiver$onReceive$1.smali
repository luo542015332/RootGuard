.class final Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AutoApplyReceiver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/receiver/AutoApplyReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
    value = "SMAP\nAutoApplyReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoApplyReceiver.kt\ncom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,80:1\n766#2:81\n857#2,2:82\n1855#2,2:84\n*S KotlinDebug\n*F\n+ 1 AutoApplyReceiver.kt\ncom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1\n*L\n48#1:81\n48#1:82,2\n55#1:84,2\n*E\n"
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
    c = "com.pandasu.turbo.receiver.AutoApplyReceiver$onReceive$1"
    f = "AutoApplyReceiver.kt"
    i = {
        0x2,
        0x2,
        0x2
    }
    l = {
        0x2d,
        0x2f,
        0x39
    }
    m = "invokeSuspend"
    n = {
        "successCount",
        "failCount",
        "config"
    }
    s = {
        "L$0",
        "L$1",
        "L$4"
    }
.end annotation


# instance fields
.field final synthetic $pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/receiver/AutoApplyReceiver;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/receiver/AutoApplyReceiver;Landroid/content/BroadcastReceiver$PendingResult;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/receiver/AutoApplyReceiver;",
            "Landroid/content/BroadcastReceiver$PendingResult;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->this$0:Lcom/pandasu/turbo/receiver/AutoApplyReceiver;

    iput-object p2, p0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

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

    new-instance v0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;

    iget-object v1, p0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->this$0:Lcom/pandasu/turbo/receiver/AutoApplyReceiver;

    iget-object v2, p0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;-><init>(Lcom/pandasu/turbo/receiver/AutoApplyReceiver;Landroid/content/BroadcastReceiver$PendingResult;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 42
    move-object/from16 v2, p0

    iget v0, v2, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_210

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    move-object/from16 v5, p0

    .local v5, "this":Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;
    move-object/from16 v6, p1

    .local v6, "$result":Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "$i$f$forEach":I
    const/4 v8, 0x0

    .local v8, "$i$a$-forEach-AutoApplyReceiver$onReceive$1$1":I
    iget-object v0, v5, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->L$4:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/pandasu/turbo/data/model/IsolationConfig;

    .local v9, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    iget-object v0, v5, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->L$3:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/util/Iterator;

    iget-object v0, v5, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->L$2:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/pandasu/turbo/receiver/AutoApplyReceiver;

    iget-object v0, v5, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->L$1:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lkotlin/jvm/internal/Ref$IntRef;

    .local v12, "failCount":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v0, v5, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->L$0:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    .local v13, "successCount":Lkotlin/jvm/internal/Ref$IntRef;
    :try_start_34
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_41
    .catchall {:try_start_34 .. :try_end_37} :catchall_55

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move v9, v8

    move v8, v7

    move-object v7, v6

    goto/16 :goto_12c

    .line 65
    :catch_41
    move-exception v0

    goto/16 :goto_189

    .line 42
    .end local v5    # "this":Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "$i$f$forEach":I
    .end local v8    # "$i$a$-forEach-AutoApplyReceiver$onReceive$1$1":I
    .end local v9    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v12    # "failCount":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v13    # "successCount":Lkotlin/jvm/internal/Ref$IntRef;
    :pswitch_44
    move-object/from16 v5, p0

    .restart local v5    # "this":Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;
    move-object/from16 v6, p1

    .restart local v6    # "$result":Ljava/lang/Object;
    :try_start_48
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v6

    goto :goto_89

    .end local v5    # "this":Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;
    .end local v6    # "$result":Ljava/lang/Object;
    :pswitch_4d
    move-object/from16 v5, p0

    .restart local v5    # "this":Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;
    move-object/from16 v6, p1

    .restart local v6    # "$result":Ljava/lang/Object;
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_54} :catch_58
    .catchall {:try_start_48 .. :try_end_54} :catchall_55

    goto :goto_71

    .line 75
    :catchall_55
    move-exception v0

    goto/16 :goto_209

    .line 72
    :catch_58
    move-exception v0

    goto/16 :goto_1f6

    .line 42
    .end local v5    # "this":Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;
    .end local v6    # "$result":Ljava/lang/Object;
    :pswitch_5b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .restart local v5    # "this":Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;
    move-object/from16 v6, p1

    .line 43
    .restart local v6    # "$result":Ljava/lang/Object;
    nop

    .line 45
    :try_start_63
    move-object v0, v5

    check-cast v0, Lkotlin/coroutines/Continuation;

    iput v4, v5, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->label:I

    const-wide/16 v7, 0x1388

    invoke-static {v7, v8, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_71

    .line 42
    return-object v1

    .line 47
    :cond_71
    :goto_71
    iget-object v0, v5, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->this$0:Lcom/pandasu/turbo/receiver/AutoApplyReceiver;

    invoke-virtual {v0}, Lcom/pandasu/turbo/receiver/AutoApplyReceiver;->getIsolationDataStore()Lcom/pandasu/turbo/data/local/IsolationDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->getIsolationConfigs()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    move-object v7, v5

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v3, v5, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->label:I

    invoke-static {v0, v7}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_84} :catch_58
    .catchall {:try_start_63 .. :try_end_84} :catchall_55

    if-ne v0, v1, :cond_87

    .line 42
    return-object v1

    .line 47
    :cond_87
    move-object v7, v6

    move-object v6, v0

    .line 42
    .end local v6    # "$result":Ljava/lang/Object;
    .local v7, "$result":Ljava/lang/Object;
    :goto_89
    :try_start_89
    check-cast v6, Ljava/util/List;

    move-object v0, v6

    .line 48
    .local v0, "configs":Ljava/util/List;
    move-object v6, v0

    check-cast v6, Ljava/lang/Iterable;

    move-object v0, v6

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 81
    .local v6, "$i$f$filter":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .local v0, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v8, "destination$iv$iv":Ljava/util/Collection;
    const/4 v9, 0x0

    .line 82
    .local v9, "$i$f$filterTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v0    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_9d
    :goto_9d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv$iv":Ljava/lang/Object;
    move-object v11, v0

    check-cast v11, Lcom/pandasu/turbo/data/model/IsolationConfig;

    .local v11, "it":Lcom/pandasu/turbo/data/model/IsolationConfig;
    const/4 v12, 0x0

    .line 48
    .local v12, "$i$a$-filter-AutoApplyReceiver$onReceive$1$enabledConfigs$1":I
    invoke-virtual {v11}, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled()Z

    move-result v13

    .line 82
    .end local v11    # "it":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v12    # "$i$a$-filter-AutoApplyReceiver$onReceive$1$enabledConfigs$1":I
    if-eqz v13, :cond_9d

    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9d

    .line 83
    .end local v0    # "element$iv$iv":Ljava/lang/Object;
    :cond_b5
    nop

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$i$f$filterTo":I
    move-object v0, v8

    check-cast v0, Ljava/util/List;

    .line 81
    nop

    .line 48
    .end local v6    # "$i$f$filter":I
    nop

    .line 50
    .local v0, "enabledConfigs":Ljava/util/List;
    sget-object v6, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AutoApplyReceiver: \u627e\u5230 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u4e2a\u5df2\u542f\u7528\u7684\u9694\u79bb\u914d\u7f6e"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 52
    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 53
    .local v6, "successCount":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 55
    .local v8, "failCount":Lkotlin/jvm/internal/Ref$IntRef;
    move-object v9, v0

    check-cast v9, Ljava/lang/Iterable;

    iget-object v10, v5, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->this$0:Lcom/pandasu/turbo/receiver/AutoApplyReceiver;

    .end local v0    # "enabledConfigs":Ljava/util/List;
    move-object v0, v9

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 84
    .local v9, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_f2} :catch_1f4
    .catchall {:try_start_89 .. :try_end_f2} :catchall_1f1

    move-object v13, v6

    move-object v6, v7

    move-object v12, v8

    move v7, v9

    move-object/from16 v16, v11

    move-object v11, v10

    move-object/from16 v10, v16

    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "failCount":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v9    # "$i$f$forEach":I
    .local v6, "$result":Ljava/lang/Object;
    .local v7, "$i$f$forEach":I
    .local v12, "failCount":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v13    # "successCount":Lkotlin/jvm/internal/Ref$IntRef;
    :goto_fb
    :try_start_fb
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "element$iv":Ljava/lang/Object;
    move-object v8, v0

    check-cast v8, Lcom/pandasu/turbo/data/model/IsolationConfig;
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_108} :catch_58
    .catchall {:try_start_fb .. :try_end_108} :catchall_55

    move-object v9, v8

    .end local v0    # "element$iv":Ljava/lang/Object;
    .local v9, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    const/4 v8, 0x0

    .line 56
    .local v8, "$i$a$-forEach-AutoApplyReceiver$onReceive$1$1":I
    nop

    .line 57
    :try_start_10b
    invoke-virtual {v11}, Lcom/pandasu/turbo/receiver/AutoApplyReceiver;->getRootHider()Lcom/pandasu/turbo/data/magisk/RootHider;

    move-result-object v0

    iput-object v13, v5, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->L$0:Ljava/lang/Object;

    iput-object v12, v5, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->L$1:Ljava/lang/Object;

    iput-object v11, v5, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->L$2:Ljava/lang/Object;

    iput-object v10, v5, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->L$3:Ljava/lang/Object;

    iput-object v9, v5, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->L$4:Ljava/lang/Object;

    const/4 v14, 0x3

    iput v14, v5, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->label:I

    invoke-virtual {v0, v9, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->applyIsolation(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_120} :catch_41
    .catchall {:try_start_10b .. :try_end_120} :catchall_55

    if-ne v0, v1, :cond_123

    .line 42
    return-object v1

    .line 57
    :cond_123
    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move v9, v8

    move v8, v7

    move-object v7, v6

    move-object v6, v0

    .end local v6    # "$result":Ljava/lang/Object;
    .end local v12    # "failCount":Lkotlin/jvm/internal/Ref$IntRef;
    .local v7, "$result":Ljava/lang/Object;
    .local v8, "$i$f$forEach":I
    .local v9, "$i$a$-forEach-AutoApplyReceiver$onReceive$1$1":I
    .local v10, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .local v13, "failCount":Lkotlin/jvm/internal/Ref$IntRef;
    .local v14, "successCount":Lkotlin/jvm/internal/Ref$IntRef;
    :goto_12c
    :try_start_12c
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 58
    .local v0, "result":Z
    if-eqz v0, :cond_156

    .line 59
    iget v6, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v6, v4

    iput v6, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 60
    sget-object v6, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v10}, Lcom/pandasu/turbo/data/model/IsolationConfig;->getPackageName()Ljava/lang/String;

    move-result-object v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoApplyReceiver: \u5df2\u6062\u590d\u9694\u79bb "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    goto :goto_178

    .line 62
    :cond_156
    iget v3, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 63
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v10}, Lcom/pandasu/turbo/data/model/IsolationConfig;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AutoApplyReceiver: \u6062\u590d\u5931\u8d25 "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_178} :catch_180
    .catchall {:try_start_12c .. :try_end_178} :catchall_1f1

    .line 69
    .end local v0    # "result":Z
    .end local v10    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    :goto_178
    move-object v6, v7

    move v7, v8

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    const/4 v14, 0x2

    goto :goto_1be

    .line 65
    .restart local v10    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    :catch_180
    move-exception v0

    move-object v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    .line 66
    .end local v10    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v14    # "successCount":Lkotlin/jvm/internal/Ref$IntRef;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "$result":Ljava/lang/Object;
    .local v7, "$i$f$forEach":I
    .local v8, "$i$a$-forEach-AutoApplyReceiver$onReceive$1$1":I
    .local v9, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .restart local v12    # "failCount":Lkotlin/jvm/internal/Ref$IntRef;
    .local v13, "successCount":Lkotlin/jvm/internal/Ref$IntRef;
    :goto_189
    :try_start_189
    iget v3, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 67
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v9}, Lcom/pandasu/turbo/data/model/IsolationConfig;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, v0

    .end local v0    # "e":Ljava/lang/Exception;
    .local p1, "e":Ljava/lang/Exception;
    const-string v0, "AutoApplyReceiver: \u6062\u590d\u5f02\u5e38 "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v14, 0x2

    invoke-static {v3, v0, v4, v14, v4}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    move v9, v8

    .line 69
    .end local v8    # "$i$a$-forEach-AutoApplyReceiver$onReceive$1$1":I
    .end local p1    # "e":Ljava/lang/Exception;
    .local v9, "$i$a$-forEach-AutoApplyReceiver$onReceive$1$1":I
    :goto_1be
    nop

    .line 84
    .end local v9    # "$i$a$-forEach-AutoApplyReceiver$onReceive$1$1":I
    move v3, v14

    const/4 v4, 0x1

    goto/16 :goto_fb

    .line 85
    :cond_1c3
    nop

    .line 71
    .end local v7    # "$i$f$forEach":I
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    iget v1, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v3, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AutoApplyReceiver: \u5b8c\u6210 - \u6210\u529f "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u4e2a\uff0c\u5931\u8d25 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u4e2a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_1f0} :catch_58
    .catchall {:try_start_189 .. :try_end_1f0} :catchall_55

    .end local v12    # "failCount":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v13    # "successCount":Lkotlin/jvm/internal/Ref$IntRef;
    goto :goto_200

    .line 75
    .end local v6    # "$result":Ljava/lang/Object;
    .local v7, "$result":Ljava/lang/Object;
    :catchall_1f1
    move-exception v0

    move-object v6, v7

    goto :goto_209

    .line 72
    :catch_1f4
    move-exception v0

    move-object v6, v7

    .line 73
    .end local v7    # "$result":Ljava/lang/Object;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "$result":Ljava/lang/Object;
    :goto_1f6
    :try_start_1f6
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "AutoApplyReceiver: \u5168\u5c40\u5f02\u5e38"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_200
    .catchall {:try_start_1f6 .. :try_end_200} :catchall_55

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_200
    iget-object v0, v5, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 76
    nop

    .line 77
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 75
    :goto_209
    iget-object v1, v5, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;->$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw v0

    nop

    :pswitch_data_210
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_4d
        :pswitch_44
        :pswitch_15
    .end packed-switch
.end method
