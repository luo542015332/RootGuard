.class final Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadSandboxStats$1$1;
.super Ljava/lang/Object;
.source "IsolationViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadSandboxStats$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nIsolationViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsolationViewModel.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadSandboxStats$1$1\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,435:1\n230#2,5:436\n*S KotlinDebug\n*F\n+ 1 IsolationViewModel.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadSandboxStats$1$1\n*L\n94#1:436,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "stats",
        "Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;",
        "emit",
        "(Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
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
.field final synthetic this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)V
    .registers 2

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadSandboxStats$1$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 30
    .param p1, "stats"    # Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 94
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadSandboxStats$1$1;->this$0:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    # getter for: Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    invoke-static {v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    .local v1, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v2, 0x0

    .line 436
    .local v2, "$i$f$update":I
    :cond_9
    nop

    .line 437
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 438
    .local v3, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v25, v3

    check-cast v25, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v25, "s":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object/from16 v4, v25

    const/16 v26, 0x0

    .line 94
    .local v26, "$i$a$-update-IsolationViewModel$loadSandboxStats$1$1$1":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

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

    const v23, 0x3ff7f

    const/16 v24, 0x0

    move-object/from16 v12, p1

    invoke-static/range {v4 .. v24}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v4

    .line 438
    .end local v25    # "s":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v26    # "$i$a$-update-IsolationViewModel$loadSandboxStats$1$1$1":I
    nop

    .line 439
    .local v4, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v1, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 440
    nop

    .line 94
    .end local v1    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v2    # "$i$f$update":I
    .end local v3    # "prevValue$iv":Ljava/lang/Object;
    .end local v4    # "nextValue$iv":Ljava/lang/Object;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 94
    move-object v0, p1

    check-cast v0, Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;

    invoke-virtual {p0, v0, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadSandboxStats$1$1;->emit(Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
