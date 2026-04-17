.class final Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IsolationViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->loadAppConfig(Ljava/lang/String;Ljava/lang/String;)V
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
    value = "SMAP\nIsolationViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsolationViewModel.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,435:1\n230#2,5:436\n230#2,5:441\n*S KotlinDebug\n*F\n+ 1 IsolationViewModel.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1\n*L\n226#1:436,5\n232#1:441,5\n*E\n"
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
    c = "com.pandasu.turbo.ui.screens.isolation.IsolationViewModel$loadAppConfig$1"
    f = "IsolationViewModel.kt"
    i = {}
    l = {
        0xe4
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $appName:Ljava/lang/String;

.field final synthetic $packageName:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->$appName:Ljava/lang/String;

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

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->$appName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 35

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 225
    move-object/from16 v1, p0

    iget v2, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->label:I

    packed-switch v2, :pswitch_data_d8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_13
    move-object/from16 v2, p0

    .local v2, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    :try_start_17
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1c

    goto/16 :goto_8f

    .line 231
    :catch_1c
    move-exception v0

    move-object v8, v2

    move-object v9, v3

    goto :goto_90

    .line 225
    .end local v2    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_20
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;
    move-object/from16 v3, p1

    .line 226
    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v4, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    .local v4, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v5, 0x0

    .line 436
    .local v5, "$i$f$update":I
    :cond_2e
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

    .line 226
    .local v29, "$i$a$-update-IsolationViewModel$loadAppConfig$1$1":I
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
    .end local v29    # "$i$a$-update-IsolationViewModel$loadAppConfig$1$1":I
    nop

    .line 439
    .local v7, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v4, v6, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 440
    nop

    .line 227
    .end local v4    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v5    # "$i$f$update":I
    .end local v6    # "prevValue$iv":Ljava/lang/Object;
    .end local v7    # "nextValue$iv":Ljava/lang/Object;
    nop

    .line 228
    :try_start_69
    iget-object v4, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;
    invoke-static {v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$getIsolationDataStore$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/data/local/IsolationDataStore;

    move-result-object v4

    iget-object v5, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->$packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->getConfigForApp(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    new-instance v5, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1$2;

    iget-object v6, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iget-object v7, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->$packageName:Ljava/lang/String;

    iget-object v8, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->$appName:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1$2;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x1

    iput v7, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->label:I

    invoke-interface {v4, v5, v6}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_8c} :catch_1c

    if-ne v4, v0, :cond_8f

    .line 225
    return-object v0

    .line 228
    :cond_8f
    :goto_8f
    goto :goto_d4

    .line 232
    .end local v2    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .local v8, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;
    .local v9, "$result":Ljava/lang/Object;
    :goto_90
    iget-object v0, v8, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    .local v10, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v11, 0x0

    .line 441
    .local v11, "$i$f$update":I
    :cond_97
    nop

    .line 442
    invoke-interface {v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 443
    .local v0, "prevValue$iv":Ljava/lang/Object;
    move-object v2, v0

    check-cast v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v2, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object v12, v2

    const/4 v3, 0x0

    .line 232
    .local v3, "$i$a$-update-IsolationViewModel$loadAppConfig$1$3":I
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "\u52a0\u8f7d\u5931\u8d25"

    const/16 v18, 0x0

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

    const v31, 0x3ffe7

    const/16 v32, 0x0

    invoke-static/range {v12 .. v32}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v2

    .line 443
    .end local v2    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v3    # "$i$a$-update-IsolationViewModel$loadAppConfig$1$3":I
    nop

    .line 444
    .local v2, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v10, v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 445
    move-object v2, v8

    move-object v3, v9

    .line 234
    .end local v0    # "prevValue$iv":Ljava/lang/Object;
    .end local v8    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;
    .end local v9    # "$result":Ljava/lang/Object;
    .end local v10    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v11    # "$i$f$update":I
    .local v2, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;
    .local v3, "$result":Ljava/lang/Object;
    :goto_d4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_20
        :pswitch_13
    .end packed-switch
.end method
