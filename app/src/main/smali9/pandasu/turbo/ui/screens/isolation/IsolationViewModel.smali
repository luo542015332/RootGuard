.class public final Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "IsolationViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIsolationViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsolationViewModel.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationViewModel\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,435:1\n230#2,5:436\n230#2,5:441\n230#2,5:446\n230#2,5:454\n230#2,5:459\n230#2,5:464\n230#2,5:469\n230#2,5:474\n230#2,5:479\n230#2,5:484\n766#3:451\n857#3,2:452\n*S KotlinDebug\n*F\n+ 1 IsolationViewModel.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationViewModel\n*L\n68#1:436,5\n143#1:441,5\n144#1:446,5\n159#1:454,5\n245#1:459,5\n274#1:464,5\n297#1:469,5\n300#1:474,5\n417#1:479,5\n432#1:484,5\n154#1:451\n154#1:452,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u0010\u001a\u00020\u0011J\u001e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017J\u0008\u0010\u0018\u001a\u00020\u0011H\u0002J\u0006\u0010\u0019\u001a\u00020\u0011J\u0006\u0010\u001a\u001a\u00020\u0011J\u0008\u0010\u001b\u001a\u00020\u0011H\u0002J\u0006\u0010\u001c\u001a\u00020\u0011J\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eJ\u0012\u0010 \u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0\u001e0!J\u000e\u0010#\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%J\u000e\u0010&\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%J\u0016\u0010\'\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010(\u001a\u00020\u0011J\u0008\u0010)\u001a\u00020\u0011H\u0002J\u0008\u0010*\u001a\u00020\u0011H\u0002J\u000e\u0010+\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010,\u001a\u00020\u0011J\u0006\u0010-\u001a\u00020\u0011J\u000e\u0010.\u001a\u00020\u00112\u0006\u0010/\u001a\u000200J\u000e\u00101\u001a\u00020\u00112\u0006\u0010$\u001a\u00020%J\u000e\u00102\u001a\u00020\u00112\u0006\u00103\u001a\u000204J\u0006\u00105\u001a\u00020\u0011J\u000e\u00106\u001a\u00020\u00112\u0006\u00107\u001a\u00020\u001fJ\u000e\u00108\u001a\u00020\u00112\u0006\u00109\u001a\u000204J\u0006\u0010:\u001a\u00020\u0011J\u000e\u0010;\u001a\u00020\u00112\u0006\u0010<\u001a\u00020=J\u000e\u0010>\u001a\u00020\u00112\u0006\u0010?\u001a\u00020@J\u000e\u0010A\u001a\u00020\u00112\u0006\u0010B\u001a\u00020\u0014R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006C"
    }
    d2 = {
        "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "isolationDataStore",
        "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
        "rootHider",
        "Lcom/pandasu/turbo/data/magisk/RootHider;",
        "oneClickIsolationHelper",
        "Lcom/pandasu/turbo/utils/OneClickIsolationHelper;",
        "(Lcom/pandasu/turbo/data/local/IsolationDataStore;Lcom/pandasu/turbo/data/magisk/RootHider;Lcom/pandasu/turbo/utils/OneClickIsolationHelper;)V",
        "_uiState",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;",
        "uiState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getUiState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "applyFullPropSpoof",
        "",
        "applyPreset",
        "packageName",
        "",
        "appName",
        "level",
        "Lcom/pandasu/turbo/data/model/IsolationLevel;",
        "checkRootPermission",
        "clearError",
        "clearIsolationLogs",
        "clearMessageAfterDelay",
        "forceDenyList",
        "getFilteredApps",
        "",
        "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
        "getIsolationEvents",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/pandasu/turbo/data/model/IsolationEvent;",
        "getPresetEmoji",
        "p",
        "Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;",
        "getPresetLabel",
        "loadAppConfig",
        "loadAppList",
        "loadSandboxStats",
        "loadSettings",
        "removeIsolation",
        "resetOneClickProgress",
        "saveConfig",
        "setActiveTab",
        "tab",
        "Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;",
        "setOneClickPreset",
        "setRootPermission",
        "hasPermission",
        "",
        "startOneClickIsolation",
        "toggleAppIsolation",
        "appInfo",
        "toggleGlobalIsolation",
        "enabled",
        "toggleSandboxRules",
        "updateConfig",
        "config",
        "Lcom/pandasu/turbo/data/model/IsolationConfig;",
        "updateSandboxRule",
        "rule",
        "Lcom/pandasu/turbo/data/model/SandboxRule;",
        "updateSearchQuery",
        "query",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final _uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;

.field private final oneClickIsolationHelper:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

.field private final rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;

.field private final uiState:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/pandasu/turbo/data/local/IsolationDataStore;Lcom/pandasu/turbo/data/magisk/RootHider;Lcom/pandasu/turbo/utils/OneClickIsolationHelper;)V
    .registers 30
    .param p1, "isolationDataStore"    # Lcom/pandasu/turbo/data/local/IsolationDataStore;
    .param p2, "rootHider"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p3, "oneClickIsolationHelper"    # Lcom/pandasu/turbo/utils/OneClickIsolationHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "isolationDataStore"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "rootHider"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "oneClickIsolationHelper"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct/range {p0 .. p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 53
    iput-object v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    .line 54
    iput-object v2, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;

    .line 55
    iput-object v3, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->oneClickIsolationHelper:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    .line 57
    new-instance v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-object v5, v4

    const/4 v6, 0x0

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

    const v24, 0x3ffff

    const/16 v25, 0x0

    invoke-direct/range {v5 .. v25}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;-><init>(ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 58
    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->uiState:Lkotlinx/coroutines/flow/StateFlow;

    .line 60
    nop

    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->loadSettings()V

    .line 62
    invoke-direct/range {p0 .. p0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->loadSandboxStats()V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->loadAppList()V

    .line 64
    invoke-direct/range {p0 .. p0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->checkRootPermission()V

    .line 65
    nop

    .line 52
    return-void
.end method

.method public static final synthetic access$clearMessageAfterDelay(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)V
    .registers 1
    .param p0, "$this"    # Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    .line 51
    invoke-direct {p0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->clearMessageAfterDelay()V

    return-void
.end method

.method public static final synthetic access$getIsolationDataStore$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/data/local/IsolationDataStore;
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    .line 51
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    return-object v0
.end method

.method public static final synthetic access$getOneClickIsolationHelper$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/utils/OneClickIsolationHelper;
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    .line 51
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->oneClickIsolationHelper:Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    return-object v0
.end method

.method public static final synthetic access$getRootHider$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lcom/pandasu/turbo/data/magisk/RootHider;
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    .line 51
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;

    return-object v0
.end method

.method public static final synthetic access$get_uiState$p(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    .line 51
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method private final checkRootPermission()V
    .registers 8

    .line 72
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$checkRootPermission$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 84
    return-void
.end method

.method private final clearMessageAfterDelay()V
    .registers 8

    .line 427
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$clearMessageAfterDelay$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$clearMessageAfterDelay$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 431
    return-void
.end method

.method private final loadSandboxStats()V
    .registers 8

    .line 94
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadSandboxStats$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadSandboxStats$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 95
    return-void
.end method

.method private final loadSettings()V
    .registers 8

    .line 87
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadSettings$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadSettings$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 91
    return-void
.end method


# virtual methods
.method public final applyFullPropSpoof()V
    .registers 8

    .line 129
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$applyFullPropSpoof$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$applyFullPropSpoof$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 139
    return-void
.end method

.method public final applyPreset(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/model/IsolationLevel;)V
    .registers 46
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "level"    # Lcom/pandasu/turbo/data/model/IsolationLevel;

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    const-string v1, "packageName"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appName"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "level"

    move-object/from16 v15, p3

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    sget-object v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual/range {p3 .. p3}, Lcom/pandasu/turbo/data/model/IsolationLevel;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_c6

    .line 272
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :pswitch_28
    new-instance v20, Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-object/from16 v1, v20

    const/4 v4, 0x0

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

    move/from16 v15, v16

    const/16 v17, 0x0

    const v18, 0xfff8

    const/16 v19, 0x0

    move-object/from16 v2, p1

    move-object v0, v3

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v19}, Lcom/pandasu/turbo/data/model/IsolationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, p2

    goto :goto_66

    .line 271
    :pswitch_4d
    move-object v0, v3

    sget-object v1, Lcom/pandasu/turbo/data/model/IsolationPresets;->INSTANCE:Lcom/pandasu/turbo/data/model/IsolationPresets;

    move-object/from16 v2, p2

    invoke-virtual {v1, v0, v2}, Lcom/pandasu/turbo/data/model/IsolationPresets;->socialPreset(Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-result-object v20

    goto :goto_66

    .line 270
    :pswitch_57
    move-object v0, v3

    sget-object v1, Lcom/pandasu/turbo/data/model/IsolationPresets;->INSTANCE:Lcom/pandasu/turbo/data/model/IsolationPresets;

    invoke-virtual {v1, v0, v2}, Lcom/pandasu/turbo/data/model/IsolationPresets;->gamingPreset(Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-result-object v20

    goto :goto_66

    .line 269
    :pswitch_5f
    move-object v0, v3

    sget-object v1, Lcom/pandasu/turbo/data/model/IsolationPresets;->INSTANCE:Lcom/pandasu/turbo/data/model/IsolationPresets;

    invoke-virtual {v1, v0, v2}, Lcom/pandasu/turbo/data/model/IsolationPresets;->bankingPreset(Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-result-object v20

    .line 268
    :goto_66
    move-object/from16 v1, v20

    .line 274
    .local v1, "preset":Lcom/pandasu/turbo/data/model/IsolationConfig;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v3, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v4, 0x0

    .line 464
    .local v4, "$i$f$update":I
    :cond_6d
    nop

    .line 465
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 466
    .local v5, "prevValue$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v6, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object/from16 v21, v6

    const/4 v7, 0x0

    .line 274
    .local v7, "$i$a$-update-IsolationViewModel$applyPreset$1":I
    const/16 v22, 0x0

    const/16 v24, 0x0

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

    const v40, 0x3fffd

    const/16 v41, 0x0

    move-object/from16 v23, v1

    invoke-static/range {v21 .. v41}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v6

    .line 466
    .end local v6    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v7    # "$i$a$-update-IsolationViewModel$applyPreset$1":I
    nop

    .line 467
    .local v6, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v3, v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 468
    nop

    .line 275
    .end local v3    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v4    # "$i$f$update":I
    .end local v5    # "prevValue$iv":Ljava/lang/Object;
    .end local v6    # "nextValue$iv":Ljava/lang/Object;
    move-object v3, v0

    check-cast v3, Landroidx/lifecycle/ViewModel;

    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$applyPreset$2;

    const/4 v7, 0x0

    invoke-direct {v3, v0, v1, v7}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$applyPreset$2;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 281
    return-void

    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_57
        :pswitch_4d
        :pswitch_28
    .end packed-switch
.end method

.method public final clearError()V
    .registers 28

    .line 432
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v1, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v2, 0x0

    .line 484
    .local v2, "$i$f$update":I
    :cond_5
    nop

    .line 485
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 486
    .local v3, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v25, v3

    check-cast v25, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v25, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object/from16 v4, v25

    const/16 v26, 0x0

    .line 432
    .local v26, "$i$a$-update-IsolationViewModel$clearError$1":I
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

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const v23, 0x3ffef

    const/16 v24, 0x0

    invoke-static/range {v4 .. v24}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v4

    .line 486
    .end local v25    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v26    # "$i$a$-update-IsolationViewModel$clearError$1":I
    nop

    .line 487
    .local v4, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v1, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 488
    nop

    .line 432
    .end local v1    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v2    # "$i$f$update":I
    .end local v3    # "prevValue$iv":Ljava/lang/Object;
    .end local v4    # "nextValue$iv":Ljava/lang/Object;
    return-void
.end method

.method public final clearIsolationLogs()V
    .registers 8

    .line 419
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$clearIsolationLogs$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$clearIsolationLogs$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 423
    return-void
.end method

.method public final forceDenyList()V
    .registers 8

    .line 116
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$forceDenyList$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$forceDenyList$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 126
    return-void
.end method

.method public final getFilteredApps()Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;"
        }
    .end annotation

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .line 148
    .local v1, "s":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    invoke-virtual {v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getSearchQuery()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toLowerCase(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .local v2, "q":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getActiveTab()Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    move-result-object v4

    sget-object v5, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_d8

    .line 152
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_38
    invoke-virtual {v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getSystemApps()Ljava/util/List;

    move-result-object v4

    goto :goto_52

    .line 151
    :pswitch_3d
    invoke-virtual {v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getUserApps()Ljava/util/List;

    move-result-object v4

    goto :goto_52

    .line 150
    :pswitch_42
    invoke-virtual {v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getUserApps()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getSystemApps()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 149
    :goto_52
    nop

    .line 154
    .local v4, "base":Ljava/util/List;
    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_5e

    const/4 v5, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v5, 0x0

    :goto_5f
    if-eqz v5, :cond_68

    move-object/from16 v16, v1

    move-object v0, v4

    move-object/from16 v17, v0

    goto/16 :goto_d6

    :cond_68
    move-object v5, v4

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 451
    .local v8, "$i$f$filter":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v5

    .local v10, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 452
    .local v11, "$i$f$filterTo":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_79
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_ce

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    .local v14, "it":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    const/4 v15, 0x0

    .line 154
    .local v15, "$i$a$-filter-IsolationViewModel$getFilteredApps$1":I
    invoke-virtual {v14}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/CharSequence;

    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v0, 0x2

    move-object/from16 v16, v1

    .end local v1    # "s":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .local v16, "s":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    const/4 v1, 0x0

    move-object/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "base":Ljava/util/List;
    .local v17, "base":Ljava/util/List;
    invoke-static {v6, v7, v4, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c1

    invoke-virtual {v14}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/CharSequence;

    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v4, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    goto :goto_c1

    :cond_bf
    move v0, v4

    goto :goto_c2

    :cond_c1
    :goto_c1
    const/4 v0, 0x1

    .line 452
    .end local v14    # "it":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    .end local v15    # "$i$a$-filter-IsolationViewModel$getFilteredApps$1":I
    :goto_c2
    if-eqz v0, :cond_c7

    invoke-interface {v9, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_c7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v4, v17

    goto :goto_79

    .line 453
    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    .end local v16    # "s":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v17    # "base":Ljava/util/List;
    .restart local v1    # "s":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .restart local v4    # "base":Ljava/util/List;
    :cond_ce
    move-object/from16 v16, v1

    move-object/from16 v17, v4

    .end local v1    # "s":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v4    # "base":Ljava/util/List;
    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$filterTo":I
    .restart local v16    # "s":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .restart local v17    # "base":Ljava/util/List;
    move-object v0, v9

    check-cast v0, Ljava/util/List;

    .line 451
    nop

    .line 154
    .end local v5    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filter":I
    :goto_d6
    return-object v0

    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3d
        :pswitch_38
    .end packed-switch
.end method

.method public final getIsolationEvents()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/model/IsolationEvent;",
            ">;>;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    invoke-virtual {v0}, Lcom/pandasu/turbo/data/local/IsolationDataStore;->getIsolationEvents()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public final getPresetEmoji(Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;)Ljava/lang/String;
    .registers 4
    .param p1, "p"    # Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 168
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_16
    const-string v0, "\ud83d\udd12"

    goto :goto_1e

    .line 167
    :pswitch_19
    const-string v0, "\u2696\ufe0f"

    goto :goto_1e

    .line 166
    :pswitch_1c
    const-string v0, "\ud83d\udd13"

    .line 169
    :goto_1e
    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method

.method public final getPresetLabel(Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;)Ljava/lang/String;
    .registers 4
    .param p1, "p"    # Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 163
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_16
    const-string v0, "\u6700\u9ad8\u9694\u79bb"

    goto :goto_1e

    .line 162
    :pswitch_19
    const-string v0, "\u4e2d\u7b49\u9694\u79bb"

    goto :goto_1e

    .line 161
    :pswitch_1c
    const-string v0, "\u57fa\u7840\u9694\u79bb"

    .line 164
    :goto_1e
    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method

.method public final getUiState()Lkotlinx/coroutines/flow/StateFlow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->uiState:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final loadAppConfig(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, p2, v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppConfig$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 235
    return-void
.end method

.method public final loadAppList()V
    .registers 8

    .line 98
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$loadAppList$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 113
    return-void
.end method

.method public final removeIsolation(Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$removeIsolation$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$removeIsolation$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 295
    return-void
.end method

.method public final resetOneClickProgress()V
    .registers 28

    .line 417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v1, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v2, 0x0

    .line 479
    .local v2, "$i$f$update":I
    :cond_5
    nop

    .line 480
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 481
    .local v3, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v25, v3

    check-cast v25, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v25, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object/from16 v4, v25

    const/16 v26, 0x0

    .line 417
    .local v26, "$i$a$-update-IsolationViewModel$resetOneClickProgress$1":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v14, Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    move-object v13, v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xf

    const/16 v20, 0x0

    invoke-direct/range {v14 .. v20}, Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;-><init>(ZIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const v23, 0x3feff

    const/16 v24, 0x0

    invoke-static/range {v4 .. v24}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v4

    .line 481
    .end local v25    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v26    # "$i$a$-update-IsolationViewModel$resetOneClickProgress$1":I
    nop

    .line 482
    .local v4, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v1, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 483
    nop

    .line 417
    .end local v1    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v2    # "$i$f$update":I
    .end local v3    # "prevValue$iv":Ljava/lang/Object;
    .end local v4    # "nextValue$iv":Ljava/lang/Object;
    return-void
.end method

.method public final saveConfig()V
    .registers 9

    .line 248
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getCurrentConfig()Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 249
    .local v0, "config":Lcom/pandasu/turbo/data/model/IsolationConfig;
    :cond_f
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v0, v5}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$saveConfig$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 265
    return-void
.end method

.method public final setActiveTab(Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;)V
    .registers 29
    .param p1, "tab"    # Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    const-string v0, "tab"

    move-object/from16 v15, p1

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v14, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/16 v22, 0x0

    .line 446
    .local v22, "$i$f$update":I
    :goto_d
    nop

    .line 447
    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 448
    .local v13, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v23, v13

    check-cast v23, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v23, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object/from16 v1, v23

    const/16 v24, 0x0

    .line 144
    .local v24, "$i$a$-update-IsolationViewModel$setActiveTab$1":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v25, v13

    .end local v13    # "prevValue$iv":Ljava/lang/Object;
    .local v25, "prevValue$iv":Ljava/lang/Object;
    move/from16 v13, v16

    move-object/from16 v26, v14

    .end local v14    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .local v26, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x3bfff

    const/16 v21, 0x0

    move-object/from16 v16, p1

    invoke-static/range {v1 .. v21}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v1

    .line 448
    .end local v23    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v24    # "$i$a$-update-IsolationViewModel$setActiveTab$1":I
    nop

    .line 449
    .local v1, "nextValue$iv":Ljava/lang/Object;
    move-object/from16 v3, v25

    move-object/from16 v2, v26

    .end local v25    # "prevValue$iv":Ljava/lang/Object;
    .end local v26    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .local v2, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .local v3, "prevValue$iv":Ljava/lang/Object;
    invoke-interface {v2, v3, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 450
    nop

    .line 144
    .end local v1    # "nextValue$iv":Ljava/lang/Object;
    .end local v2    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v3    # "prevValue$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$update":I
    return-void

    .line 449
    .restart local v1    # "nextValue$iv":Ljava/lang/Object;
    .restart local v2    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .restart local v3    # "prevValue$iv":Ljava/lang/Object;
    .restart local v22    # "$i$f$update":I
    :cond_51
    move-object/from16 v15, p1

    move-object v14, v2

    goto :goto_d
.end method

.method public final setOneClickPreset(Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;)V
    .registers 29
    .param p1, "p"    # Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    const-string v0, "p"

    move-object/from16 v15, p1

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v14, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/16 v22, 0x0

    .line 454
    .local v22, "$i$f$update":I
    :goto_d
    nop

    .line 455
    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 456
    .local v13, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v23, v13

    check-cast v23, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v23, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object/from16 v1, v23

    const/16 v24, 0x0

    .line 159
    .local v24, "$i$a$-update-IsolationViewModel$setOneClickPreset$1":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v25, v13

    .end local v13    # "prevValue$iv":Ljava/lang/Object;
    .local v25, "prevValue$iv":Ljava/lang/Object;
    move/from16 v13, v16

    move-object/from16 v26, v14

    .end local v14    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .local v26, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v15, v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x37fff

    const/16 v21, 0x0

    move-object/from16 v17, p1

    invoke-static/range {v1 .. v21}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v1

    .line 456
    .end local v23    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v24    # "$i$a$-update-IsolationViewModel$setOneClickPreset$1":I
    nop

    .line 457
    .local v1, "nextValue$iv":Ljava/lang/Object;
    move-object/from16 v3, v25

    move-object/from16 v2, v26

    .end local v25    # "prevValue$iv":Ljava/lang/Object;
    .end local v26    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .local v2, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .local v3, "prevValue$iv":Ljava/lang/Object;
    invoke-interface {v2, v3, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 458
    nop

    .line 159
    .end local v1    # "nextValue$iv":Ljava/lang/Object;
    .end local v2    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v3    # "prevValue$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$update":I
    return-void

    .line 457
    .restart local v1    # "nextValue$iv":Ljava/lang/Object;
    .restart local v2    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .restart local v3    # "prevValue$iv":Ljava/lang/Object;
    .restart local v22    # "$i$f$update":I
    :cond_4f
    move-object/from16 v15, p1

    move-object v14, v2

    goto :goto_d
.end method

.method public final setRootPermission(Z)V
    .registers 29
    .param p1, "hasPermission"    # Z

    .line 68
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v1, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v2, 0x0

    .line 436
    .local v2, "$i$f$update":I
    :cond_5
    nop

    .line 437
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 438
    .local v3, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v25, v3

    check-cast v25, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v25, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object/from16 v4, v25

    const/16 v26, 0x0

    .line 68
    .local v26, "$i$a$-update-IsolationViewModel$setRootPermission$1":I
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

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const v23, 0x3efff

    const/16 v24, 0x0

    move/from16 v17, p1

    invoke-static/range {v4 .. v24}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v4

    .line 438
    .end local v25    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v26    # "$i$a$-update-IsolationViewModel$setRootPermission$1":I
    nop

    .line 439
    .local v4, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v1, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 440
    nop

    .line 69
    .end local v1    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v2    # "$i$f$update":I
    .end local v3    # "prevValue$iv":Ljava/lang/Object;
    .end local v4    # "nextValue$iv":Ljava/lang/Object;
    return-void
.end method

.method public final startOneClickIsolation()V
    .registers 9

    .line 304
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getSelectedOneClickPreset()Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    move-result-object v0

    .line 305
    .local v0, "preset":Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v0, v5}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$startOneClickIsolation$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 415
    return-void
.end method

.method public final toggleAppIsolation(Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;)V
    .registers 9
    .param p1, "appInfo"    # Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    const-string v0, "appInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {p1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleAppIsolation: \u5f00\u59cb\u5904\u7406 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 175
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleAppIsolation$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 222
    return-void
.end method

.method public final toggleGlobalIsolation(Z)V
    .registers 9
    .param p1, "enabled"    # Z

    .line 238
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleGlobalIsolation$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel$toggleGlobalIsolation$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;ZLkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 243
    return-void
.end method

.method public final toggleSandboxRules()V
    .registers 28

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v1, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/4 v2, 0x0

    .line 469
    .local v2, "$i$f$update":I
    :cond_5
    nop

    .line 470
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 471
    .local v3, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v25, v3

    check-cast v25, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v25, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    const/16 v26, 0x0

    .line 297
    .local v26, "$i$a$-update-IsolationViewModel$toggleSandboxRules$1":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v25 .. v25}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getShowSandboxRules()Z

    move-result v4

    xor-int/lit8 v11, v4, 0x1

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

    const v23, 0x3ffbf

    const/16 v24, 0x0

    move-object/from16 v4, v25

    invoke-static/range {v4 .. v24}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v4

    .line 471
    .end local v25    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v26    # "$i$a$-update-IsolationViewModel$toggleSandboxRules$1":I
    nop

    .line 472
    .local v4, "nextValue$iv":Ljava/lang/Object;
    invoke-interface {v1, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 473
    nop

    .line 297
    .end local v1    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v2    # "$i$f$update":I
    .end local v3    # "prevValue$iv":Ljava/lang/Object;
    .end local v4    # "nextValue$iv":Ljava/lang/Object;
    return-void
.end method

.method public final updateConfig(Lcom/pandasu/turbo/data/model/IsolationConfig;)V
    .registers 29
    .param p1, "config"    # Lcom/pandasu/turbo/data/model/IsolationConfig;

    const-string v0, "config"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v15, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/16 v22, 0x0

    .line 459
    .local v22, "$i$f$update":I
    :goto_d
    nop

    .line 460
    invoke-interface {v15}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 461
    .local v14, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v23, v14

    check-cast v23, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v23, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object/from16 v1, v23

    const/16 v24, 0x0

    .line 245
    .local v24, "$i$a$-update-IsolationViewModel$updateConfig$1":I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v25, v14

    .end local v14    # "prevValue$iv":Ljava/lang/Object;
    .local v25, "prevValue$iv":Ljava/lang/Object;
    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v26, v15

    .end local v15    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .local v26, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x3fffd

    const/16 v21, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v21}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v1

    .line 461
    .end local v23    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v24    # "$i$a$-update-IsolationViewModel$updateConfig$1":I
    nop

    .line 462
    .local v1, "nextValue$iv":Ljava/lang/Object;
    move-object/from16 v3, v25

    move-object/from16 v2, v26

    .end local v25    # "prevValue$iv":Ljava/lang/Object;
    .end local v26    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .local v2, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .local v3, "prevValue$iv":Ljava/lang/Object;
    invoke-interface {v2, v3, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 463
    nop

    .line 245
    .end local v1    # "nextValue$iv":Ljava/lang/Object;
    .end local v2    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v3    # "prevValue$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$update":I
    return-void

    .line 462
    .restart local v1    # "nextValue$iv":Ljava/lang/Object;
    .restart local v2    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .restart local v3    # "prevValue$iv":Ljava/lang/Object;
    .restart local v22    # "$i$f$update":I
    :cond_4f
    move-object/from16 v3, p1

    move-object v15, v2

    goto :goto_d
.end method

.method public final updateSandboxRule(Lcom/pandasu/turbo/data/model/SandboxRule;)V
    .registers 48
    .param p1, "rule"    # Lcom/pandasu/turbo/data/model/SandboxRule;

    move-object/from16 v0, p0

    const-string v1, "rule"

    move-object/from16 v14, p1

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    invoke-virtual {v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getCurrentConfig()Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-result-object v2

    if-nez v2, :cond_18

    return-void

    .line 300
    .local v2, "c":Lcom/pandasu/turbo/data/model/IsolationConfig;
    :cond_18
    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v1, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/16 v21, 0x0

    .line 474
    .local v21, "$i$f$update":I
    :goto_1c
    nop

    .line 475
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 476
    .local v15, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v43, v15

    check-cast v43, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v43, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object/from16 v22, v43

    const/16 v44, 0x0

    .line 300
    .local v44, "$i$a$-update-IsolationViewModel$updateSandboxRule$1":I
    const/16 v23, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v45, v15

    .end local v15    # "prevValue$iv":Ljava/lang/Object;
    .local v45, "prevValue$iv":Ljava/lang/Object;
    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0xf7ff

    const/16 v20, 0x0

    move-object/from16 v14, p1

    invoke-static/range {v2 .. v20}, Lcom/pandasu/turbo/data/model/IsolationConfig;->copy$default(Lcom/pandasu/turbo/data/model/IsolationConfig;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;ILjava/lang/Object;)Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-result-object v24

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

    const v41, 0x3fffd

    const/16 v42, 0x0

    invoke-static/range {v22 .. v42}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v3

    .line 476
    .end local v43    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v44    # "$i$a$-update-IsolationViewModel$updateSandboxRule$1":I
    nop

    .line 477
    .local v3, "nextValue$iv":Ljava/lang/Object;
    move-object/from16 v4, v45

    .end local v45    # "prevValue$iv":Ljava/lang/Object;
    .local v4, "prevValue$iv":Ljava/lang/Object;
    invoke-interface {v1, v4, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 478
    nop

    .line 301
    .end local v1    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v3    # "nextValue$iv":Ljava/lang/Object;
    .end local v4    # "prevValue$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$update":I
    return-void

    .line 477
    .restart local v1    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .restart local v3    # "nextValue$iv":Ljava/lang/Object;
    .restart local v4    # "prevValue$iv":Ljava/lang/Object;
    .restart local v21    # "$i$f$update":I
    :cond_7f
    move-object/from16 v14, p1

    goto :goto_1c
.end method

.method public final updateSearchQuery(Ljava/lang/String;)V
    .registers 29
    .param p1, "query"    # Ljava/lang/String;

    const-string v0, "query"

    move-object/from16 v15, p1

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .local v14, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    const/16 v22, 0x0

    .line 441
    .local v22, "$i$f$update":I
    :goto_d
    nop

    .line 442
    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 443
    .local v13, "prevValue$iv":Ljava/lang/Object;
    move-object/from16 v23, v13

    check-cast v23, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .local v23, "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    move-object/from16 v1, v23

    const/16 v24, 0x0

    .line 143
    .local v24, "$i$a$-update-IsolationViewModel$updateSearchQuery$1":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v25, v13

    .end local v13    # "prevValue$iv":Ljava/lang/Object;
    .local v25, "prevValue$iv":Ljava/lang/Object;
    move/from16 v13, v16

    move-object/from16 v26, v14

    .end local v14    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .local v26, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    move/from16 v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x3dfff

    const/16 v21, 0x0

    move-object/from16 v15, p1

    invoke-static/range {v1 .. v21}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v1

    .line 443
    .end local v23    # "it":Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .end local v24    # "$i$a$-update-IsolationViewModel$updateSearchQuery$1":I
    nop

    .line 444
    .local v1, "nextValue$iv":Ljava/lang/Object;
    move-object/from16 v3, v25

    move-object/from16 v2, v26

    .end local v25    # "prevValue$iv":Ljava/lang/Object;
    .end local v26    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .local v2, "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .local v3, "prevValue$iv":Ljava/lang/Object;
    invoke-interface {v2, v3, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 445
    nop

    .line 143
    .end local v1    # "nextValue$iv":Ljava/lang/Object;
    .end local v2    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .end local v3    # "prevValue$iv":Ljava/lang/Object;
    .end local v22    # "$i$f$update":I
    return-void

    .line 444
    .restart local v1    # "nextValue$iv":Ljava/lang/Object;
    .restart local v2    # "$this$update$iv":Lkotlinx/coroutines/flow/MutableStateFlow;
    .restart local v3    # "prevValue$iv":Ljava/lang/Object;
    .restart local v22    # "$i$f$update":I
    :cond_4f
    move-object/from16 v15, p1

    move-object v14, v2

    goto :goto_d
.end method
