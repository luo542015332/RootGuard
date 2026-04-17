.class final Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IsolationViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->loadAppList()V
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
    value = "SMAP\nIsolationViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsolationViewModel.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,435:1\n230#2,5:436\n230#2,3:441\n233#2,2:450\n230#2,5:452\n766#3:444\n857#3,2:445\n766#3:447\n857#3,2:448\n*S KotlinDebug\n*F\n+ 1 IsolationViewModel.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1\n*L\n99#1:436,5\n102#1:441,3\n102#1:450,2\n110#1:452,5\n104#1:444\n104#1:445,2\n105#1:447\n105#1:448,2\n*E\n"
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
    c = "com.pandasu.turbo.ui.screens.isolation.IsolationViewModel$loadAppList$1"
    f = "IsolationViewModel.kt"
    i = {}
    l = {
        0x65
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
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

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

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 37

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 98
    move-object/from16 v1, p0

    iget v2, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_19e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14
    move-object/from16 v2, p0

    .local v2, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    :try_start_18
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1d

    move-object v5, v4

    goto :goto_83

    .line 109
    :catch_1d
    move-exception v0

    move-object v3, v2

    move-object v9, v4

    goto/16 :goto_13c

    .line 98
    .end local v2    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;
    .end local v4    # "$result":Ljava/lang/Object;
    :pswitch_22
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;
    move-object/from16 v4, p1

    .line 99
    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v5, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v5}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    .local v5, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v6, 0x0

    .line 436
    .local v6, "$i$f$update":I
    :goto_30
    nop

    .line 437
    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 438
    .local v7, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v29, v7

    check-cast v29, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v29, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object/from16 v8, v29

    const/16 v30, 0x0

    .line 99
    .local v30, "$i$a$-update-IsolationViewModel$loadAppList$1$1":I
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

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v27, 0x3f7ff

    const/16 v28, 0x0

    invoke-static/range {v8 .. v28}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v8

    .line 438
    .end local v29    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v30    # "$i$a$-update-IsolationViewModel$loadAppList$1$1":I
    nop

    .line 439
    .local v8, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v5, v7, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19a

    .line 440
    nop

    .line 100
    .end local v5    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v6    # "$i$f$update":I
    .end local v7    # "prevValue$iv":Ljava/lang/Object;
    .end local v8    # "nextValue$iv":Ljava/lang/Object;
    nop

    .line 101
    :try_start_6c
    iget-object v5, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->oneClickIsolationHelper:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;
    invoke-static {v5}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$getOneClickIsolationHelper$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v3, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;->label:I

    invoke-virtual {v5, v6}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->scanAllApps(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7b} :catch_1d

    if-ne v5, v0, :cond_7e

    .line 98
    return-object v0

    .line 101
    :cond_7e
    move-object/from16 v34, v5

    move-object v5, v4

    move-object/from16 v4, v34

    .line 98
    .end local v4    # "$result":Ljava/lang/Object;
    .local v5, "$result":Ljava/lang/Object;
    :goto_83
    :try_start_83
    check-cast v4, Ljava/util/List;

    move-object v0, v4

    .line 102
    .local v0, "allApps":Ljava/util/List;
    iget-object v4, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    .local v4, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v6, 0x0

    .line 441
    .restart local v6    # "$i$f$update":I
    :goto_8d
    nop

    .line 442
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 443
    .restart local v7    # "prevValue$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v8, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    const/16 v29, 0x0

    .line 103
    .local v29, "$i$a$-update-IsolationViewModel$loadAppList$1$2":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 104
    .end local v8    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object v9, v0

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 444
    .local v12, "$i$f$filter":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    check-cast v15, Ljava/util/Collection;

    .local v9, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v15, "destination$iv$iv":Ljava/util/Collection;
    const/16 v18, 0x0

    .line 445
    .local v18, "$i$f$filterTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .end local v9    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :goto_af
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_db

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v20, v9

    check-cast v20, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    .local v20, "it":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    const/16 v21, 0x0

    .line 104
    .local v21, "$i$a$-filter-IsolationViewModel$loadAppList$1$2$1":I
    invoke-virtual/range {v20 .. v20}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->isSystemApp()Z

    move-result v22

    if-nez v22, :cond_d3

    invoke-virtual/range {v20 .. v20}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v14, "com.pandasu.turbo"

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d3

    const/4 v3, 0x1

    goto :goto_d4

    .end local v20    # "it":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    :cond_d3
    const/4 v3, 0x0

    .line 445
    .end local v21    # "$i$a$-filter-IsolationViewModel$loadAppList$1$2$1":I
    :goto_d4
    if-eqz v3, :cond_d9

    invoke-interface {v15, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_d9
    const/4 v3, 0x1

    goto :goto_af

    .line 446
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_db
    nop

    .end local v15    # "destination$iv$iv":Ljava/util/Collection;
    .end local v18    # "$i$f$filterTo":I
    move-object/from16 v18, v15

    check-cast v18, Ljava/util/List;

    .line 444
    nop

    .line 105
    .end local v12    # "$i$f$filter":I
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 447
    .local v9, "$i$f$filter":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/Collection;

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .local v12, "destination$iv$iv":Ljava/util/Collection;
    const/4 v14, 0x0

    .line 448
    .local v14, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    :cond_f1
    :goto_f1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v3

    check-cast v19, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    .local v19, "it":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    const/16 v20, 0x0

    .line 105
    .local v20, "$i$a$-filter-IsolationViewModel$loadAppList$1$2$2":I
    invoke-virtual/range {v19 .. v19}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->isSystemApp()Z

    move-result v21

    .line 448
    .end local v19    # "it":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    .end local v20    # "$i$a$-filter-IsolationViewModel$loadAppList$1$2$2":I
    if-eqz v21, :cond_f1

    invoke-interface {v12, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f1

    .line 449
    .end local v3    # "element$iv$iv":Ljava/lang/Object;
    :cond_10b
    nop

    .end local v12    # "destination$iv$iv":Ljava/util/Collection;
    .end local v14    # "$i$f$filterTo":I
    move-object/from16 v19, v12

    check-cast v19, Ljava/util/List;

    .line 447
    nop

    .end local v9    # "$i$f$filter":I
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 106
    const/16 v20, 0x0

    .line 103
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v27, 0x3f1ff

    const/16 v28, 0x0

    const/4 v3, 0x0

    move-object v14, v3

    invoke-static/range {v8 .. v28}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v3

    .line 443
    .end local v29    # "$i$a$-update-IsolationViewModel$loadAppList$1$2":I
    nop

    .line 450
    .local v3, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v4, v7, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_132} :catch_139

    if-eqz v8, :cond_136

    .line 451
    nop

    .end local v0    # "allApps":Ljava/util/List;
    .end local v3    # "nextValue$iv":Ljava/lang/Object;
    .end local v4    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v6    # "$i$f$update":I
    .end local v7    # "prevValue$iv":Ljava/lang/Object;
    goto :goto_197

    .line 450
    .restart local v0    # "allApps":Ljava/util/List;
    .restart local v3    # "nextValue$iv":Ljava/lang/Object;
    .restart local v4    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .restart local v6    # "$i$f$update":I
    .restart local v7    # "prevValue$iv":Ljava/lang/Object;
    :cond_136
    const/4 v3, 0x1

    goto/16 :goto_8d

    .line 109
    .end local v0    # "allApps":Ljava/util/List;
    .end local v3    # "nextValue$iv":Ljava/lang/Object;
    .end local v4    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v6    # "$i$f$update":I
    .end local v7    # "prevValue$iv":Ljava/lang/Object;
    :catch_139
    move-exception v0

    move-object v3, v2

    move-object v9, v5

    .end local v2    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .local v3, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;
    .local v9, "$result":Ljava/lang/Object;
    :goto_13c
    move-object v10, v0

    .line 110
    .local v10, "e":Ljava/lang/Exception;
    iget-object v0, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    .local v11, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v12, 0x0

    .line 452
    .local v12, "$i$f$update":I
    :cond_144
    nop

    .line 453
    invoke-interface {v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 454
    .local v0, "prevValue$iv":Ljava/lang/Object;
    move-object v2, v0

    check-cast v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v2, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object v13, v2

    const/4 v4, 0x0

    .line 110
    .local v4, "$i$a$-update-IsolationViewModel$loadAppList$1$3":I
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u83b7\u53d6\u5e94\u7528\u5217\u8868\u5931\u8d25: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

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

    const v32, 0x3f7ef

    const/16 v33, 0x0

    invoke-static/range {v13 .. v33}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v2

    .line 454
    .end local v2    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v4    # "$i$a$-update-IsolationViewModel$loadAppList$1$3":I
    nop

    .line 455
    .local v2, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v11, v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_144

    .line 456
    move-object v2, v3

    move-object v5, v9

    .line 112
    .end local v0    # "prevValue$iv":Ljava/lang/Object;
    .end local v3    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;
    .end local v9    # "$result":Ljava/lang/Object;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v12    # "$i$f$update":I
    .local v2, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;
    .restart local v5    # "$result":Ljava/lang/Object;
    :goto_197
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 439
    .local v4, "$result":Ljava/lang/Object;
    .local v5, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .restart local v6    # "$i$f$update":I
    .restart local v7    # "prevValue$iv":Ljava/lang/Object;
    .local v8, "nextValue$iv":Ljava/lang/Object;
    :cond_19a
    const/4 v3, 0x1

    goto/16 :goto_30

    nop

    :pswitch_data_19e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_14
    .end packed-switch
.end method
