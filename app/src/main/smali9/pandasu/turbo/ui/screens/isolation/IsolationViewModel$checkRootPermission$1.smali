.class final Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IsolationViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->checkRootPermission()V
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
    value = "SMAP\nIsolationViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsolationViewModel.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,435:1\n230#2,5:436\n230#2,5:441\n*S KotlinDebug\n*F\n+ 1 IsolationViewModel.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1\n*L\n77#1:436,5\n81#1:441,5\n*E\n"
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
    c = "com.pandasu.turbo.ui.screens.isolation.IsolationViewModel$checkRootPermission$1"
    f = "IsolationViewModel.kt"
    i = {}
    l = {
        0x4b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

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

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 34

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 72
    move-object/from16 v1, p0

    iget v2, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_f8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14
    move-object/from16 v2, p0

    .local v2, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    :try_start_18
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1d

    move-object v5, v4

    goto :goto_3f

    .line 78
    :catch_1d
    move-exception v0

    goto/16 :goto_ab

    .line 72
    .end local v2    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;
    .end local v4    # "$result":Ljava/lang/Object;
    :pswitch_20
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;
    move-object/from16 v4, p1

    .line 73
    .restart local v4    # "$result":Ljava/lang/Object;
    nop

    .line 75
    :try_start_28
    iget-object v5, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;
    invoke-static {v5}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$getRootHider$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/data/magisk/RootHider;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v3, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;->label:I

    invoke-virtual {v5, v6}, Lcom/pandasu/turbo/data/magisk/RootHider;->checkSelfRootPermission(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_37} :catch_1d

    if-ne v5, v0, :cond_3a

    .line 72
    return-object v0

    .line 75
    :cond_3a
    move-object/from16 v31, v5

    move-object v5, v4

    move-object/from16 v4, v31

    .end local v4    # "$result":Ljava/lang/Object;
    .local v5, "$result":Ljava/lang/Object;
    :goto_3f
    :try_start_3f
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 76
    .local v0, "hasPermission":Z
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const/4 v6, 0x0

    if-eqz v0, :cond_4c

    move v7, v3

    goto :goto_4d

    :cond_4c
    move v7, v6

    :goto_4d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IsolationViewModel: \u521d\u59cb\u5316\u6743\u9650\u68c0\u67e5\u7ed3\u679c = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 77
    iget-object v4, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    .local v4, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v7, 0x0

    .line 436
    .local v7, "$i$f$update":I
    :cond_6a
    nop

    .line 437
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 438
    .local v8, "prevValue$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v9, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    const/16 v30, 0x0

    .line 77
    .local v30, "$i$a$-update-IsolationViewModel$checkRootPermission$1$1":I
    const/4 v10, 0x0

    const/4 v11, 0x0

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

    if-eqz v0, :cond_8b

    move/from16 v22, v3

    goto :goto_8d

    .end local v9    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    :cond_8b
    move/from16 v22, v6

    :goto_8d
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0x3efff

    const/16 v29, 0x0

    invoke-static/range {v9 .. v29}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v9

    .line 438
    .end local v30    # "$i$a$-update-IsolationViewModel$checkRootPermission$1$1":I
    nop

    .line 439
    .local v9, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v4, v8, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_a5} :catch_a9

    if-eqz v10, :cond_6a

    .line 440
    nop

    .end local v0    # "hasPermission":Z
    .end local v4    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v7    # "$i$f$update":I
    .end local v8    # "prevValue$iv":Ljava/lang/Object;
    .end local v9    # "nextValue$iv":Ljava/lang/Object;
    goto :goto_f5

    .line 78
    :catch_a9
    move-exception v0

    move-object v4, v5

    .line 79
    .end local v5    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .local v4, "$result":Ljava/lang/Object;
    :goto_ab
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "IsolationViewModel: \u6743\u9650\u68c0\u67e5\u5931\u8d25"

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v3, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    .local v0, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v3, 0x0

    .line 441
    .local v3, "$i$f$update":I
    :cond_bc
    nop

    .line 442
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 443
    .local v5, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v27, v5

    check-cast v27, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v27, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object/from16 v6, v27

    const/16 v28, 0x0

    .line 81
    .local v28, "$i$a$-update-IsolationViewModel$checkRootPermission$1$2":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

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

    const v25, 0x3efff

    const/16 v26, 0x0

    invoke-static/range {v6 .. v26}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v6

    .line 443
    .end local v27    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v28    # "$i$a$-update-IsolationViewModel$checkRootPermission$1$2":I
    nop

    .line 444
    .local v6, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v0, v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 445
    move-object v5, v4

    .line 83
    .end local v0    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v3    # "$i$f$update":I
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v6    # "nextValue$iv":Ljava/lang/Object;
    .local v5, "$result":Ljava/lang/Object;
    :goto_f5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_20
        :pswitch_14
    .end packed-switch
.end method
