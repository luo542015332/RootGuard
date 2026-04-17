.class final Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IsolationViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->saveConfig()V
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
    value = "SMAP\nIsolationViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsolationViewModel.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,435:1\n230#2,5:436\n230#2,5:441\n230#2,5:446\n230#2,5:451\n*S KotlinDebug\n*F\n+ 1 IsolationViewModel.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1\n*L\n250#1:436,5\n255#1:441,5\n258#1:446,5\n261#1:451,5\n*E\n"
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
    c = "com.pandasu.turbo.ui.screens.isolation.IsolationViewModel$saveConfig$1"
    f = "IsolationViewModel.kt"
    i = {}
    l = {
        0xfc,
        0xfe,
        0x101
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $config:Lcom/pandasu/turbo/data/model/IsolationConfig;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->$config:Lcom/pandasu/turbo/data/model/IsolationConfig;

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

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->$config:Lcom/pandasu/turbo/data/model/IsolationConfig;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 37

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 249
    move-object/from16 v1, p0

    iget v2, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->label:I

    packed-switch v2, :pswitch_data_1be

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_13
    move-object/from16 v2, p0

    .local v2, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    :try_start_17
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_11c

    .end local v2    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_1c
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    goto/16 :goto_b3

    .end local v2    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_26
    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2d} :catch_2e

    goto :goto_91

    .line 260
    :catch_2e
    move-exception v0

    move-object v8, v2

    move-object v9, v3

    goto/16 :goto_15b

    .line 249
    .end local v2    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_33
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;
    move-object/from16 v3, p1

    .line 250
    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v4, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    .local v4, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v5, 0x0

    .line 436
    .local v5, "$i$f$update":I
    :cond_41
    nop

    .line 437
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 438
    .local v6, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v28, v6

    check-cast v28, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v28, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object/from16 v7, v28

    const/16 v29, 0x0

    .line 250
    .local v29, "$i$a$-update-IsolationViewModel$saveConfig$1$1":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0x3fff7

    const/16 v27, 0x0

    invoke-static/range {v7 .. v27}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v7

    .line 438
    .end local v28    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v29    # "$i$a$-update-IsolationViewModel$saveConfig$1$1":I
    nop

    .line 439
    .local v7, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v4, v6, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 440
    nop

    .line 251
    .end local v4    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v5    # "$i$f$update":I
    .end local v6    # "prevValue$iv":Ljava/lang/Object;
    .end local v7    # "nextValue$iv":Ljava/lang/Object;
    nop

    .line 252
    :try_start_7c
    iget-object v4, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;
    invoke-static {v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$getIsolationDataStore$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/data/local/IsolationDataStore;

    move-result-object v4

    iget-object v5, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->$config:Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x1

    iput v7, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->label:I

    invoke-virtual {v4, v5, v6}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->saveIsolationConfig(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_91

    .line 249
    return-object v0

    .line 253
    :cond_91
    :goto_91
    iget-object v4, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->$config:Lcom/pandasu/turbo/data/model/IsolationConfig;

    invoke-virtual {v4}, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_103

    .line 254
    iget-object v4, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;
    invoke-static {v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$getRootHider$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/data/magisk/RootHider;

    move-result-object v4

    iget-object v5, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->$config:Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x2

    iput v7, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->label:I

    invoke-virtual {v4, v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->applyIsolation(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_ab} :catch_2e

    if-ne v4, v0, :cond_ae

    .line 249
    return-object v0

    .line 254
    :cond_ae
    move-object/from16 v34, v4

    move-object v4, v3

    move-object/from16 v3, v34

    .end local v3    # "$result":Ljava/lang/Object;
    .local v4, "$result":Ljava/lang/Object;
    :goto_b3
    :try_start_b3
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 255
    .local v0, "r":Z
    iget-object v3, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v3}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    .local v3, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v5, 0x0

    .line 441
    .restart local v5    # "$i$f$update":I
    :cond_c0
    nop

    .line 442
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 443
    .restart local v6    # "prevValue$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v7, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    const/16 v28, 0x0

    .line 255
    .local v28, "$i$a$-update-IsolationViewModel$saveConfig$1$2":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v0, :cond_d4

    const-string v13, "\u914d\u7f6e\u5df2\u5e94\u7528"

    goto :goto_d6

    .end local v7    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    :cond_d4
    const-string v13, "\u5e94\u7528\u5931\u8d25"

    :goto_d6
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0x3ffd7

    const/16 v27, 0x0

    invoke-static/range {v7 .. v27}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v7

    .line 443
    .end local v28    # "$i$a$-update-IsolationViewModel$saveConfig$1$2":I
    nop

    .line 444
    .local v7, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v3, v6, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_fa} :catch_ff

    if-eqz v8, :cond_c0

    .line 445
    nop

    .end local v0    # "r":Z
    .end local v3    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v5    # "$i$f$update":I
    .end local v6    # "prevValue$iv":Ljava/lang/Object;
    .end local v7    # "nextValue$iv":Ljava/lang/Object;
    goto/16 :goto_1b6

    .line 260
    :catch_ff
    move-exception v0

    move-object v8, v2

    move-object v9, v4

    goto :goto_15b

    .line 257
    .end local v4    # "$result":Ljava/lang/Object;
    .local v3, "$result":Ljava/lang/Object;
    :cond_103
    :try_start_103
    iget-object v4, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;
    invoke-static {v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$getRootHider$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/data/magisk/RootHider;

    move-result-object v4

    iget-object v5, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->$config:Lcom/pandasu/turbo/data/model/IsolationConfig;

    invoke-virtual {v5}, Lcom/pandasu/turbo/data/model/IsolationConfig;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x3

    iput v7, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->label:I

    invoke-virtual {v4, v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->removeIsolation(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_11c

    .line 249
    return-object v0

    .line 258
    :cond_11c
    :goto_11c
    iget-object v0, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    .local v0, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v4, 0x0

    .line 446
    .local v4, "$i$f$update":I
    :cond_123
    nop

    .line 447
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 448
    .local v5, "prevValue$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v6, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    const/16 v27, 0x0

    .line 258
    .local v27, "$i$a$-update-IsolationViewModel$saveConfig$1$3":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "\u9694\u79bb\u5df2\u7981\u7528"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v25, 0x3ffd7

    const/16 v26, 0x0

    invoke-static/range {v6 .. v26}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v7

    .line 448
    .end local v6    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v27    # "$i$a$-update-IsolationViewModel$saveConfig$1$3":I
    move-object v6, v7

    .line 449
    .local v6, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v0, v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_157} :catch_2e

    if-eqz v7, :cond_123

    .line 450
    move-object v4, v3

    .end local v0    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v4    # "$i$f$update":I
    .end local v5    # "prevValue$iv":Ljava/lang/Object;
    .end local v6    # "nextValue$iv":Ljava/lang/Object;
    goto :goto_1b6

    .line 260
    .end local v2    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .local v8, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;
    .local v9, "$result":Ljava/lang/Object;
    :goto_15b
    move-object v10, v0

    .line 261
    .local v10, "e":Ljava/lang/Exception;
    iget-object v0, v8, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    .local v11, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v12, 0x0

    .line 451
    .local v12, "$i$f$update":I
    :cond_163
    nop

    .line 452
    invoke-interface {v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 453
    .local v0, "prevValue$iv":Ljava/lang/Object;
    move-object v2, v0

    check-cast v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v2, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object v13, v2

    const/4 v3, 0x0

    .line 261
    .local v3, "$i$a$-update-IsolationViewModel$saveConfig$1$4":I
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5931\u8d25: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const v32, 0x3ffe7

    const/16 v33, 0x0

    invoke-static/range {v13 .. v33}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v2

    .line 453
    .end local v2    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v3    # "$i$a$-update-IsolationViewModel$saveConfig$1$4":I
    nop

    .line 454
    .local v2, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v11, v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_163

    .line 455
    move-object v2, v8

    move-object v4, v9

    .line 263
    .end local v0    # "prevValue$iv":Ljava/lang/Object;
    .end local v8    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;
    .end local v9    # "$result":Ljava/lang/Object;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v12    # "$i$f$update":I
    .local v2, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;
    .local v4, "$result":Ljava/lang/Object;
    :goto_1b6
    iget-object v0, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # invokes: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->clearMessageAfterDelay()V
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$clearMessageAfterDelay(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)V

    .line 264
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_1be
    .packed-switch 0x0
        :pswitch_33
        :pswitch_26
        :pswitch_1c
        :pswitch_13
    .end packed-switch
.end method
