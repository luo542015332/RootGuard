.class final Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1$2;
.super Ljava/lang/Object;
.source "IsolationViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIsolationViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsolationViewModel.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1$2\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,435:1\n230#2,5:436\n*S KotlinDebug\n*F\n+ 1 IsolationViewModel.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1$2\n*L\n229#1:436,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "config",
        "Lcom/pandasu/turbo/data/model/IsolationConfig;",
        "emit",
        "(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $appName:Ljava/lang/String;

.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1$2;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1$2;->$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1$2;->$appName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 51
    .param p1, "config"    # Lcom/pandasu/turbo/data/model/IsolationConfig;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1$2;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    .local v1, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    iget-object v4, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1$2;->$packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1$2;->$appName:Ljava/lang/String;

    const/16 v21, 0x0

    .line 436
    .local v21, "$i$f$update":I
    :goto_e
    nop

    .line 437
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 438
    .local v15, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v43, v15

    check-cast v43, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v43, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    const/16 v44, 0x0

    .line 229
    .local v44, "$i$a$-update-IsolationViewModel$loadAppConfig$1$2$1":I
    const/16 v23, 0x0

    if-nez p1, :cond_47

    new-instance v22, Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-object/from16 v2, v22

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v45, v15

    .end local v15    # "prevValue$iv":Ljava/lang/Object;
    .local v45, "prevValue$iv":Ljava/lang/Object;
    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0xfffc

    const/16 v20, 0x0

    move-object/from16 v46, v3

    move-object v3, v4

    move-object/from16 v47, v4

    move-object/from16 v4, v46

    invoke-direct/range {v2 .. v20}, Lcom/pandasu/turbo/data/model/IsolationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v24, v22

    goto :goto_4f

    .end local v45    # "prevValue$iv":Ljava/lang/Object;
    .restart local v15    # "prevValue$iv":Ljava/lang/Object;
    :cond_47
    move-object/from16 v46, v3

    move-object/from16 v47, v4

    move-object/from16 v45, v15

    .end local v15    # "prevValue$iv":Ljava/lang/Object;
    .restart local v45    # "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v24, p1

    :goto_4f
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const v41, 0x3fff5

    const/16 v42, 0x0

    move-object/from16 v22, v43

    invoke-static/range {v22 .. v42}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v2

    .line 438
    .end local v43    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v44    # "$i$a$-update-IsolationViewModel$loadAppConfig$1$2$1":I
    nop

    .line 439
    .local v2, "nextValue$iv":Ljava/lang/Object;
    move-object/from16 v3, v45

    .end local v45    # "prevValue$iv":Ljava/lang/Object;
    .local v3, "prevValue$iv":Ljava/lang/Object;
    invoke-interface {v1, v3, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 440
    nop

    .line 230
    .end local v1    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v2    # "nextValue$iv":Ljava/lang/Object;
    .end local v3    # "prevValue$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$update":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 439
    .restart local v1    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .restart local v2    # "nextValue$iv":Ljava/lang/Object;
    .restart local v3    # "prevValue$iv":Ljava/lang/Object;
    .restart local v21    # "$i$f$update":I
    :cond_87
    move-object/from16 v3, v46

    move-object/from16 v4, v47

    goto :goto_e
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 228
    move-object v0, p1

    check-cast v0, Lcom/pandasu/turbo/data/model/IsolationConfig;

    invoke-virtual {p0, v0, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1$2;->emit(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
