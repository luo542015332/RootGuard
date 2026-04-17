.class public final Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "EnvScoreDetailViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnvScoreDetailViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnvScoreDetailViewModel.kt\ncom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,271:1\n1855#2,2:272\n1855#2,2:274\n766#2:276\n857#2,2:277\n1549#2:279\n1620#2,3:280\n*S KotlinDebug\n*F\n+ 1 EnvScoreDetailViewModel.kt\ncom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel\n*L\n82#1:272,2\n110#1:274,2\n130#1:276\n130#1:277,2\n131#1:279\n131#1:280,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\"\u001a\u00020#J\u0006\u0010$\u001a\u00020#J\u0018\u0010%\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\'0&0\u000bJ\u0018\u0010(\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130&0\u000bJ\u0018\u0010)\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130&0\u000bJ\u0006\u0010*\u001a\u00020#J\u0006\u0010+\u001a\u00020#R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u000b0\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0019R\u0017\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0019R\u0017\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0019R\u001d\u0010 \u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u000b0\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "rootHider",
        "Lcom/pandasu/turbo/data/magisk/RootHider;",
        "detectorScanner",
        "Lcom/pandasu/turbo/util/DetectorScanner;",
        "isolationDataStore",
        "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
        "(Lcom/pandasu/turbo/data/magisk/RootHider;Lcom/pandasu/turbo/util/DetectorScanner;Lcom/pandasu/turbo/data/local/IsolationDataStore;)V",
        "_detectorResults",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;",
        "_envChecks",
        "Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;",
        "_isLoading",
        "",
        "_isScanning",
        "_message",
        "",
        "_moduleStatuses",
        "Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;",
        "detectorResults",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getDetectorResults",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "envChecks",
        "getEnvChecks",
        "isLoading",
        "isScanning",
        "message",
        "getMessage",
        "moduleStatuses",
        "getModuleStatuses",
        "autoIsolateDetectors",
        "",
        "clearMessage",
        "getDetectedProblems",
        "Lkotlin/Pair;",
        "",
        "getMissingModules",
        "getSuggestions",
        "loadData",
        "scanDetectors",
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
.field private final _detectorResults:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _envChecks:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _isScanning:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _message:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _moduleStatuses:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final detectorResults:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;",
            ">;>;"
        }
    .end annotation
.end field

.field private final detectorScanner:Lcom/pandasu/turbo/util/DetectorScanner;

.field private final envChecks:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final isLoading:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isScanning:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;

.field private final message:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final moduleStatuses:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lcom/pandasu/turbo/util/DetectorScanner;Lcom/pandasu/turbo/data/local/IsolationDataStore;)V
    .registers 6
    .param p1, "rootHider"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p2, "detectorScanner"    # Lcom/pandasu/turbo/util/DetectorScanner;
    .param p3, "isolationDataStore"    # Lcom/pandasu/turbo/data/local/IsolationDataStore;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "rootHider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectorScanner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isolationDataStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;

    .line 21
    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->detectorScanner:Lcom/pandasu/turbo/util/DetectorScanner;

    .line 22
    iput-object p3, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_envChecks:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 26
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->envChecks:Lkotlinx/coroutines/flow/StateFlow;

    .line 28
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_moduleStatuses:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 29
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->moduleStatuses:Lkotlinx/coroutines/flow/StateFlow;

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 32
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->isLoading:Lkotlinx/coroutines/flow/StateFlow;

    .line 35
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_detectorResults:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 36
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->detectorResults:Lkotlinx/coroutines/flow/StateFlow;

    .line 38
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_isScanning:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 39
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->isScanning:Lkotlinx/coroutines/flow/StateFlow;

    .line 42
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_message:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 43
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->message:Lkotlinx/coroutines/flow/StateFlow;

    .line 45
    nop

    .line 46
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "EnvScoreDetailViewModel: \u521d\u59cb\u5316\uff0c\u5f00\u59cb\u52a0\u8f7d\u6570\u636e"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->loadData()V

    .line 49
    invoke-virtual {p0}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->scanDetectors()V

    .line 50
    nop

    .line 19
    return-void
.end method

.method public static final synthetic access$getDetectorScanner$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lcom/pandasu/turbo/util/DetectorScanner;
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    .line 18
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->detectorScanner:Lcom/pandasu/turbo/util/DetectorScanner;

    return-object v0
.end method

.method public static final synthetic access$getIsolationDataStore$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lcom/pandasu/turbo/data/local/IsolationDataStore;
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    .line 18
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    return-object v0
.end method

.method public static final synthetic access$getRootHider$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lcom/pandasu/turbo/data/magisk/RootHider;
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    .line 18
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;

    return-object v0
.end method

.method public static final synthetic access$get_detectorResults$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    .line 18
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_detectorResults:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_envChecks$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    .line 18
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_envChecks:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_isLoading$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    .line 18
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_isScanning$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    .line 18
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_isScanning:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_message$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    .line 18
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_message:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_moduleStatuses$p(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    .line 18
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_moduleStatuses:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method


# virtual methods
.method public final autoIsolateDetectors()V
    .registers 8

    .line 155
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$autoIsolateDetectors$1;-><init>(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 265
    return-void
.end method

.method public final clearMessage()V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_message:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public final getDetectedProblems()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_envChecks:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 130
    nop

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 276
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 277
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_17
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    .local v7, "it":Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;
    const/4 v8, 0x0

    .line 130
    .local v8, "$i$a$-filter-EnvScoreDetailViewModel$getDetectedProblems$1":I
    invoke-virtual {v7}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getDetected()Z

    move-result v7

    .line 277
    .end local v7    # "it":Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;
    .end local v8    # "$i$a$-filter-EnvScoreDetailViewModel$getDetectedProblems$1":I
    if-eqz v7, :cond_17

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 278
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_2f
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 276
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    check-cast v2, Ljava/lang/Iterable;

    .line 131
    move-object v0, v2

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 279
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .restart local v2    # "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 280
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 281
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    .restart local v7    # "it":Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;
    const/4 v8, 0x0

    .line 131
    .local v8, "$i$a$-map-EnvScoreDetailViewModel$getDetectedProblems$2":I
    invoke-virtual {v7}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getSeverity()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 281
    .end local v7    # "it":Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;
    .end local v8    # "$i$a$-map-EnvScoreDetailViewModel$getDetectedProblems$2":I
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 282
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_6c
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 279
    nop

    .line 129
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    return-object v2
.end method

.method public final getDetectorResults()Lkotlinx/coroutines/flow/StateFlow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;",
            ">;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->detectorResults:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getEnvChecks()Lkotlinx/coroutines/flow/StateFlow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;",
            ">;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->envChecks:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getMessage()Lkotlinx/coroutines/flow/StateFlow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->message:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getMissingModules()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 108
    .local v0, "missing":Ljava/util/List;
    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_envChecks:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 110
    .local v1, "checks":Ljava/util/List;
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 274
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    .local v6, "check":Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;
    const/4 v7, 0x0

    .line 111
    .local v7, "$i$a$-forEach-EnvScoreDetailViewModel$getMissingModules$1":I
    nop

    .line 112
    invoke-virtual {v6}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getItem()Lcom/pandasu/turbo/data/model/DetectionItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pandasu/turbo/data/model/DetectionItem;->name()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    const-string v9, "Shamiko"

    move-object v10, v9

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v8, v10, v11, v12, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-virtual {v6}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getDetected()Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 113
    const-string v8, "\u9690\u85cf Root/Zygisk \u7ea7\u6a21\u5757"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_98

    .line 115
    :cond_4e
    invoke-virtual {v6}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getItem()Lcom/pandasu/turbo/data/model/DetectionItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pandasu/turbo/data/model/DetectionItem;->name()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    const-string v9, "Tricky"

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v8, v9, v11, v12, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    invoke-virtual {v6}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getDetected()Z

    move-result v8

    if-eqz v8, :cond_74

    .line 116
    const-string v8, "Tricky Store"

    const-string v9, "\u9690\u85cf Magisk \u7ba1\u7406\u5668"

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_98

    .line 118
    :cond_74
    invoke-virtual {v6}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getItem()Lcom/pandasu/turbo/data/model/DetectionItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pandasu/turbo/data/model/DetectionItem;->name()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    const-string v9, "PlayIntegrityFix"

    move-object v10, v9

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v8, v10, v11, v12, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_98

    invoke-virtual {v6}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getDetected()Z

    move-result v8

    if-eqz v8, :cond_98

    .line 119
    const-string v8, "Google \u8bbe\u5907\u5b8c\u6574\u6027\u4fee\u590d"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_98
    :goto_98
    nop

    .line 274
    .end local v6    # "check":Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;
    .end local v7    # "$i$a$-forEach-EnvScoreDetailViewModel$getMissingModules$1":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_17

    .line 275
    :cond_9c
    nop

    .line 124
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    return-object v0
.end method

.method public final getModuleStatuses()Lkotlinx/coroutines/flow/StateFlow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;",
            ">;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->moduleStatuses:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getSuggestions()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 78
    .local v0, "suggestions":Ljava/util/List;
    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_envChecks:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 79
    .local v1, "checks":Ljava/util/List;
    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->_moduleStatuses:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 82
    .local v2, "modules":Ljava/util/List;
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 272
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    .local v7, "check":Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;
    const/4 v8, 0x0

    .line 83
    .local v8, "$i$a$-forEach-EnvScoreDetailViewModel$getSuggestions$1":I
    nop

    .line 84
    invoke-virtual {v7}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getItem()Lcom/pandasu/turbo/data/model/DetectionItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pandasu/turbo/data/model/DetectionItem;->name()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    const-string v10, "Shamiko"

    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v9, v11, v12, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_57

    invoke-virtual {v7}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getDetected()Z

    move-result v9

    if-eqz v9, :cond_57

    .line 85
    const-string v9, "\u5b89\u88c5 Shamiko \u6a21\u5757\u9690\u85cf Root \u75d5\u8ff9"

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ed

    .line 87
    :cond_57
    invoke-virtual {v7}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getItem()Lcom/pandasu/turbo/data/model/DetectionItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pandasu/turbo/data/model/DetectionItem;->name()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    const-string v10, "Tricky"

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v9, v10, v12, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    invoke-virtual {v7}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getDetected()Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 88
    const-string v9, "Tricky Store"

    const-string v10, "\u5b89\u88c5 Tricky Store \u6a21\u5757\u9690\u85cf Magisk \u7ba1\u7406\u5668"

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ed

    .line 90
    :cond_7d
    invoke-virtual {v7}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getItem()Lcom/pandasu/turbo/data/model/DetectionItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pandasu/turbo/data/model/DetectionItem;->name()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    const-string v10, "PlayIntegrityFix"

    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v9, v11, v12, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a2

    invoke-virtual {v7}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getDetected()Z

    move-result v9

    if-eqz v9, :cond_a2

    .line 91
    const-string v9, "\u5b89\u88c5 PlayIntegrityFix \u4fee\u590d Google \u8bbe\u5907\u5b8c\u6574\u6027"

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ed

    .line 93
    :cond_a2
    invoke-virtual {v7}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getItem()Lcom/pandasu/turbo/data/model/DetectionItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pandasu/turbo/data/model/DetectionItem;->name()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    const-string v10, "su \u4e8c\u8fdb\u5236"

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v9, v10, v12, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c8

    invoke-virtual {v7}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getDetected()Z

    move-result v9

    if-eqz v9, :cond_c8

    .line 94
    const-string v9, "\u9690\u85cf su \u6587\u4ef6"

    const-string v10, "\u4f7f\u7528\u4e00\u952e\u9694\u79bb\u529f\u80fd\u9690\u85cf su \u6587\u4ef6"

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ed

    .line 96
    :cond_c8
    invoke-virtual {v7}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getItem()Lcom/pandasu/turbo/data/model/DetectionItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pandasu/turbo/data/model/DetectionItem;->name()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    const-string v10, "Root \u5e94\u7528"

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v9, v10, v12, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ed

    invoke-virtual {v7}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->getDetected()Z

    move-result v9

    if-eqz v9, :cond_ed

    .line 97
    const-string v9, "\u9690\u85cf Root \u5e94\u7528"

    const-string v10, "\u4f7f\u7528 Shamiko \u6216 HMA \u9690\u85cf Root \u5e94\u7528"

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_ed
    :goto_ed
    nop

    .line 272
    .end local v7    # "check":Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;
    .end local v8    # "$i$a$-forEach-EnvScoreDetailViewModel$getSuggestions$1":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_1f

    .line 273
    :cond_f1
    nop

    .line 102
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    return-object v0
.end method

.method public final isLoading()Lkotlinx/coroutines/flow/StateFlow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->isLoading:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final isScanning()Lkotlinx/coroutines/flow/StateFlow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->isScanning:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final loadData()V
    .registers 8

    .line 53
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "EnvScoreDetailViewModel: loadData() \u88ab\u8c03\u7528"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 54
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$loadData$1;-><init>(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 73
    return-void
.end method

.method public final scanDetectors()V
    .registers 8

    .line 137
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel$scanDetectors$1;-><init>(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 151
    return-void
.end method
