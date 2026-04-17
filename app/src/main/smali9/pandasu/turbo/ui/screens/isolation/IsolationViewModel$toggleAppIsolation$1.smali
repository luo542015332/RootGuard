.class final Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IsolationViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->toggleAppIsolation(Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;)V
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
    value = "SMAP\nIsolationViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsolationViewModel.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,435:1\n230#2,5:436\n230#2,5:441\n230#2,5:446\n230#2,5:451\n*S KotlinDebug\n*F\n+ 1 IsolationViewModel.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1\n*L\n183#1:436,5\n200#1:441,5\n213#1:446,5\n219#1:451,5\n*E\n"
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
    c = "com.pandasu.turbo.ui.screens.isolation.IsolationViewModel$toggleAppIsolation$1"
    f = "IsolationViewModel.kt"
    i = {
        0x1,
        0x3
    }
    l = {
        0xbd,
        0xc2,
        0xc5,
        0xcf,
        0xd2
    }
    m = "invokeSuspend"
    n = {
        "existing",
        "config"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $appInfo:Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->$appInfo:Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

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

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->$appInfo:Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 34

    const-string v0, ", isEnabled="

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 175
    move-object/from16 v2, p0

    iget v3, v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->label:I

    const-string v4, "toggleAppIsolation: UI \u72b6\u6001\u5df2\u66f4\u65b0"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v3, :pswitch_data_3ba

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1b
    move-object/from16 v1, p0

    .local v1, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    :try_start_1f
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_3b

    move-object v5, v3

    goto/16 :goto_2c4

    .end local v1    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_25
    move-object/from16 v3, p0

    .local v3, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;
    move-object/from16 v5, p1

    .local v5, "$result":Ljava/lang/Object;
    iget-object v0, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/pandasu/turbo/data/model/IsolationConfig;

    .local v0, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    :try_start_2d
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_4c

    goto/16 :goto_2a6

    .end local v0    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v3    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;
    .end local v5    # "$result":Ljava/lang/Object;
    :pswitch_32
    move-object/from16 v1, p0

    .restart local v1    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    :try_start_36
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3b

    goto/16 :goto_1c3

    .line 217
    :catch_3b
    move-exception v0

    goto/16 :goto_351

    .line 175
    .end local v1    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_3e
    move-object/from16 v3, p0

    .local v3, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-object v0, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/pandasu/turbo/data/model/IsolationConfig;

    .local v0, "existing":Lcom/pandasu/turbo/data/model/IsolationConfig;
    :try_start_46
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4c

    move-object v9, v5

    goto/16 :goto_164

    .line 217
    .end local v0    # "existing":Lcom/pandasu/turbo/data/model/IsolationConfig;
    :catch_4c
    move-exception v0

    move-object v1, v3

    move-object v3, v5

    goto/16 :goto_351

    .line 175
    .end local v3    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;
    .end local v5    # "$result":Ljava/lang/Object;
    :pswitch_51
    move-object/from16 v3, p0

    .restart local v3    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;
    move-object/from16 v9, p1

    .local v9, "$result":Ljava/lang/Object;
    :try_start_55
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_5b

    move-object v10, v9

    goto/16 :goto_107

    .line 217
    :catch_5b
    move-exception v0

    move-object v1, v3

    move-object v3, v9

    goto/16 :goto_351

    .line 175
    .end local v3    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;
    .end local v9    # "$result":Ljava/lang/Object;
    :pswitch_60
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .restart local v3    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;
    move-object/from16 v9, p1

    .line 176
    .restart local v9    # "$result":Ljava/lang/Object;
    nop

    .line 178
    :try_start_68
    iget-object v10, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    invoke-virtual {v10}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->getUiState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v10

    invoke-interface {v10}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    invoke-virtual {v10}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getHasRootPermission()Z

    move-result v10

    .line 179
    .local v10, "hasRootPermission":Z
    sget-object v11, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    if-eqz v10, :cond_7e

    move v12, v7

    goto :goto_7f

    :cond_7e
    move v12, v6

    :goto_7f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "toggleAppIsolation: \u4f7f\u7528\u6743\u9650\u72b6\u6001 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 181
    nop

    .end local v10    # "hasRootPermission":Z
    if-nez v10, :cond_e8

    .line 182
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "toggleAppIsolation: \u6ca1\u6709 Root \u6743\u9650\uff0c\u64cd\u4f5c\u65e0\u6cd5\u6267\u884c"

    invoke-static {v0, v1, v8, v5, v8}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 183
    iget-object v0, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    .local v0, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v1, 0x0

    .line 436
    .local v1, "$i$f$update":I
    :cond_a6
    nop

    .line 437
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 438
    .local v4, "prevValue$iv":Ljava/lang/Object;
    move-object v10, v4

    check-cast v10, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v10, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    const/4 v5, 0x0

    .line 183
    .local v5, "$i$a$-update-IsolationViewModel$toggleAppIsolation$1$1":I
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "\u6ca1\u6709 Root \u6743\u9650\uff0c\u8bf7\u5148\u5728 Root \u7ba1\u7406\u5668\u4e2d\u6388\u4e88\u6743\u9650"

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

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const v29, 0x3ffef

    const/16 v30, 0x0

    invoke-static/range {v10 .. v30}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v6

    .line 438
    .end local v5    # "$i$a$-update-IsolationViewModel$toggleAppIsolation$1$1":I
    .end local v10    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object v5, v6

    .line 439
    .local v5, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v0, v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 440
    nop

    .line 184
    .end local v0    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v1    # "$i$f$update":I
    .end local v4    # "prevValue$iv":Ljava/lang/Object;
    .end local v5    # "nextValue$iv":Ljava/lang/Object;
    iget-object v0, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # invokes: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->clearMessageAfterDelay()V
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$clearMessageAfterDelay(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)V

    .line 185
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 187
    :cond_e8
    sget-object v10, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v11, "toggleAppIsolation: Root \u6743\u9650\u68c0\u67e5\u901a\u8fc7"

    invoke-virtual {v10, v11}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 189
    iget-object v10, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;
    invoke-static {v10}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$getIsolationDataStore$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/data/local/IsolationDataStore;

    move-result-object v10

    iget-object v11, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->$appInfo:Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    invoke-virtual {v11}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object v12, v3

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput v7, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->label:I

    invoke-virtual {v10, v11, v12}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->getConfigForAppSync(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_107

    .line 175
    return-object v1

    :cond_107
    :goto_107
    check-cast v10, Lcom/pandasu/turbo/data/model/IsolationConfig;

    .line 190
    .local v10, "existing":Lcom/pandasu/turbo/data/model/IsolationConfig;
    sget-object v11, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    if-eqz v10, :cond_116

    invoke-virtual {v10}, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled()Z

    move-result v12

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto :goto_117

    :cond_116
    move-object v12, v8

    :goto_117
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "toggleAppIsolation: \u73b0\u6709\u914d\u7f6e\u68c0\u67e5\u7ed3\u679c: existing="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 192
    if-eqz v10, :cond_22e

    invoke-virtual {v10}, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_22e

    .line 193
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v11, "toggleAppIsolation: \u6267\u884c\u79fb\u9664\u9694\u79bb"

    invoke-virtual {v0, v11}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 194
    iget-object v0, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$getRootHider$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/data/magisk/RootHider;

    move-result-object v0

    iget-object v11, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->$appInfo:Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    invoke-virtual {v11}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object v12, v3

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v10, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->L$0:Ljava/lang/Object;

    iput v5, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->label:I

    invoke-virtual {v0, v11, v12}, Lcom/pandasu/turbo/data/magisk/RootHider;->removeIsolation(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_15b} :catch_5b

    if-ne v5, v1, :cond_15e

    .line 175
    return-object v1

    .line 194
    :cond_15e
    move-object v0, v10

    move-object/from16 v31, v9

    move-object v9, v5

    move-object/from16 v5, v31

    .end local v9    # "$result":Ljava/lang/Object;
    .end local v10    # "existing":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .local v0, "existing":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .local v5, "$result":Ljava/lang/Object;
    :goto_164
    :try_start_164
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 195
    .local v9, "removeResult":Z
    sget-object v10, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    if-eqz v9, :cond_170

    move v6, v7

    nop

    .end local v9    # "removeResult":Z
    :cond_170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toggleAppIsolation: removeIsolation \u7ed3\u679c: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 197
    iget-object v6, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;
    invoke-static {v6}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$getIsolationDataStore$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/data/local/IsolationDataStore;

    move-result-object v6

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

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0xfffb

    const/16 v29, 0x0

    move-object v11, v0

    invoke-static/range {v11 .. v29}, Lcom/pandasu/turbo/data/model/IsolationConfig;->copy$default(Lcom/pandasu/turbo/data/model/IsolationConfig;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;ILjava/lang/Object;)Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-result-object v7

    move-object v9, v3

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v8, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->label:I

    invoke-virtual {v6, v7, v9}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->saveIsolationConfig(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_1be} :catch_4c

    .end local v0    # "existing":Lcom/pandasu/turbo/data/model/IsolationConfig;
    if-ne v6, v1, :cond_1c1

    .line 175
    return-object v1

    .line 197
    :cond_1c1
    move-object v1, v3

    move-object v3, v5

    .line 198
    .end local v5    # "$result":Ljava/lang/Object;
    .local v1, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;
    .local v3, "$result":Ljava/lang/Object;
    :goto_1c3
    :try_start_1c3
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "toggleAppIsolation: \u914d\u7f6e\u5df2\u4fdd\u5b58\u4e3a\u7981\u7528"

    invoke-virtual {v0, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 200
    iget-object v0, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iget-object v5, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->$appInfo:Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    .local v0, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v6, 0x0

    .line 441
    .local v6, "$i$f$update":I
    :cond_1d3
    nop

    .line 442
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 443
    .local v7, "prevValue$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v8, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    const/16 v29, 0x0

    .line 200
    .local v29, "$i$a$-update-IsolationViewModel$toggleAppIsolation$1$2":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u5df2\u53d6\u6d88 "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " \u7684\u9694\u79bb"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

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

    const/16 v26, 0x0

    const v27, 0x3ffdf

    const/16 v28, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v28}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v9

    .line 443
    .end local v8    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v29    # "$i$a$-update-IsolationViewModel$toggleAppIsolation$1$2":I
    move-object v8, v9

    .line 444
    .local v8, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v0, v7, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d3

    .line 445
    nop

    .line 201
    .end local v0    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v6    # "$i$f$update":I
    .end local v7    # "prevValue$iv":Ljava/lang/Object;
    .end local v8    # "nextValue$iv":Ljava/lang/Object;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_22c
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_22c} :catch_3b

    goto/16 :goto_349

    .line 203
    .end local v1    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;
    .local v3, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;
    .local v9, "$result":Ljava/lang/Object;
    :cond_22e
    :try_start_22e
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v10, "toggleAppIsolation: \u6267\u884c\u5e94\u7528\u9694\u79bb"

    invoke-virtual {v5, v10}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 204
    iget-object v5, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->oneClickIsolationHelper:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;
    invoke-static {v5}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$getOneClickIsolationHelper$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    move-result-object v5

    iget-object v10, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->$appInfo:Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    iget-object v11, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v11}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    invoke-interface {v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    invoke-virtual {v11}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getSelectedOneClickPreset()Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->generateIsolationConfig(Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;)Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-result-object v5

    .line 205
    .local v5, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    sget-object v10, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v5}, Lcom/pandasu/turbo/data/model/IsolationConfig;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/pandasu/turbo/data/model/IsolationConfig;->isEnabled()Z

    move-result v12

    invoke-virtual {v5}, Lcom/pandasu/turbo/data/model/IsolationConfig;->getSandboxRule()Lcom/pandasu/turbo/data/model/SandboxRule;

    move-result-object v13

    if-eqz v13, :cond_266

    invoke-virtual {v13}, Lcom/pandasu/turbo/data/model/SandboxRule;->getLevel()Lcom/pandasu/turbo/data/model/SandboxLevel;

    move-result-object v13

    goto :goto_267

    :cond_266
    move-object v13, v8

    :goto_267
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "toggleAppIsolation: \u751f\u6210\u7684\u914d\u7f6e: packageName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", sandboxRule.level="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 207
    iget-object v0, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$getIsolationDataStore$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/data/local/IsolationDataStore;

    move-result-object v0

    move-object v10, v3

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v5, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->L$0:Ljava/lang/Object;

    const/4 v11, 0x4

    iput v11, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->label:I

    invoke-virtual {v0, v5, v10}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->saveIsolationConfig(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2a1
    .catch Ljava/lang/Exception; {:try_start_22e .. :try_end_2a1} :catch_5b

    if-ne v0, v1, :cond_2a4

    .line 175
    return-object v1

    .line 207
    :cond_2a4
    move-object v0, v5

    move-object v5, v9

    .line 208
    .end local v9    # "$result":Ljava/lang/Object;
    .local v0, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .local v5, "$result":Ljava/lang/Object;
    :goto_2a6
    :try_start_2a6
    sget-object v9, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v10, "toggleAppIsolation: \u914d\u7f6e\u5df2\u4fdd\u5b58"

    invoke-virtual {v9, v10}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 210
    iget-object v9, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;
    invoke-static {v9}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$getRootHider$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/data/magisk/RootHider;

    move-result-object v9

    move-object v10, v3

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v8, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x5

    iput v8, v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->label:I

    invoke-virtual {v9, v0, v10}, Lcom/pandasu/turbo/data/magisk/RootHider;->applyIsolation(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2bf
    .catch Ljava/lang/Exception; {:try_start_2a6 .. :try_end_2bf} :catch_4c

    .end local v0    # "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    if-ne v8, v1, :cond_2c2

    .line 175
    return-object v1

    .line 210
    :cond_2c2
    move-object v1, v3

    move-object v3, v8

    .end local v3    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;
    .restart local v1    # "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;
    :goto_2c4
    :try_start_2c4
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 211
    .local v0, "applyResult":Z
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    if-eqz v0, :cond_2d0

    move v6, v7

    nop

    .end local v0    # "applyResult":Z
    :cond_2d0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleAppIsolation: applyIsolation \u7ed3\u679c: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 213
    iget-object v0, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iget-object v3, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->$appInfo:Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    .local v0, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v6, 0x0

    .line 446
    .restart local v6    # "$i$f$update":I
    :cond_2ef
    nop

    .line 447
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 448
    .restart local v7    # "prevValue$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v8, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    const/16 v29, 0x0

    .line 213
    .local v29, "$i$a$-update-IsolationViewModel$toggleAppIsolation$1$3":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u5df2\u4e3a "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " \u542f\u7528\u9694\u79bb"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

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

    const/16 v26, 0x0

    const v27, 0x3ffdf

    const/16 v28, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v28}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v9

    .line 448
    .end local v8    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v29    # "$i$a$-update-IsolationViewModel$toggleAppIsolation$1$3":I
    move-object v8, v9

    .line 449
    .local v8, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v0, v7, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2ef

    .line 450
    nop

    .line 214
    .end local v0    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v6    # "$i$f$update":I
    .end local v7    # "prevValue$iv":Ljava/lang/Object;
    .end local v8    # "nextValue$iv":Ljava/lang/Object;
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_348
    .catch Ljava/lang/Exception; {:try_start_2c4 .. :try_end_348} :catch_34f

    move-object v3, v5

    .line 216
    .end local v5    # "$result":Ljava/lang/Object;
    .local v3, "$result":Ljava/lang/Object;
    :goto_349
    :try_start_349
    iget-object v0, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # invokes: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->clearMessageAfterDelay()V
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$clearMessageAfterDelay(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)V
    :try_end_34e
    .catch Ljava/lang/Exception; {:try_start_349 .. :try_end_34e} :catch_3b

    goto :goto_3b7

    .line 217
    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v5    # "$result":Ljava/lang/Object;
    :catch_34f
    move-exception v0

    move-object v3, v5

    .line 218
    .end local v5    # "$result":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_351
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "toggleAppIsolation: \u64cd\u4f5c\u5931\u8d25"

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    iget-object v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    .local v4, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v5, 0x0

    .line 451
    .local v5, "$i$f$update":I
    :cond_362
    nop

    .line 452
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 453
    .local v6, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v28, v6

    check-cast v28, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v28, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object/from16 v7, v28

    const/16 v29, 0x0

    .line 219
    .local v29, "$i$a$-update-IsolationViewModel$toggleAppIsolation$1$4":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u64cd\u4f5c\u5931\u8d25: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

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

    const v26, 0x3ffef

    const/16 v27, 0x0

    invoke-static/range {v7 .. v27}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v7

    .line 453
    .end local v28    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v29    # "$i$a$-update-IsolationViewModel$toggleAppIsolation$1$4":I
    nop

    .line 454
    .local v7, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v4, v6, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_362

    .line 455
    nop

    .line 219
    .end local v4    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v5    # "$i$f$update":I
    .end local v6    # "prevValue$iv":Ljava/lang/Object;
    .end local v7    # "nextValue$iv":Ljava/lang/Object;
    iget-object v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # invokes: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->clearMessageAfterDelay()V
    invoke-static {v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$clearMessageAfterDelay(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)V

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3b7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_3ba
    .packed-switch 0x0
        :pswitch_60
        :pswitch_51
        :pswitch_3e
        :pswitch_32
        :pswitch_25
        :pswitch_1b
    .end packed-switch
.end method
