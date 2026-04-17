.class final Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;
.super Lcom/pandasu/turbo/PandaSUApp_HiltComponents$ViewModelC;
.source "DaggerPandaSUApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewModelCImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;
    }
.end annotation


# instance fields
.field private final activityRetainedCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private envScoreDetailViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private isolationViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private logsViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

.field private final viewModelCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;


# direct methods
.method private constructor <init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;)V
    .registers 5
    .param p1, "singletonCImpl"    # Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "savedStateHandleParam"    # Landroidx/lifecycle/SavedStateHandle;
    .param p4, "viewModelLifecycleParam"    # Ldagger/hilt/android/ViewModelLifecycle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "savedStateHandleParam",
            "viewModelLifecycleParam"
        }
    .end annotation

    .line 432
    invoke-direct {p0}, Lcom/pandasu/turbo/PandaSUApp_HiltComponents$ViewModelC;-><init>()V

    .line 422
    iput-object p0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;

    .line 433
    iput-object p1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 434
    iput-object p2, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 436
    invoke-direct {p0, p3, p4}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->initialize(Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;)V

    .line 438
    return-void
.end method

.method synthetic constructor <init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;)V

    return-void
.end method

.method private initialize(Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;)V
    .registers 8
    .param p1, "savedStateHandleParam"    # Landroidx/lifecycle/SavedStateHandle;
    .param p2, "viewModelLifecycleParam"    # Ldagger/hilt/android/ViewModelLifecycle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "savedStateHandleParam",
            "viewModelLifecycleParam"
        }
    .end annotation

    .line 443
    new-instance v0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;I)V

    iput-object v0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->envScoreDetailViewModelProvider:Ljavax/inject/Provider;

    .line 444
    new-instance v0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;I)V

    iput-object v0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->isolationViewModelProvider:Ljavax/inject/Provider;

    .line 445
    new-instance v0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->activityRetainedCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->viewModelCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;I)V

    iput-object v0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->logsViewModelProvider:Ljavax/inject/Provider;

    .line 446
    return-void
.end method


# virtual methods
.method public getHiltViewModelMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/inject/Provider<",
            "Landroidx/lifecycle/ViewModel;",
            ">;>;"
        }
    .end annotation

    .line 450
    const/4 v0, 0x3

    invoke-static {v0}, Ldagger/internal/MapBuilder;->newMapBuilder(I)Ldagger/internal/MapBuilder;

    move-result-object v0

    const-string v1, "com.pandasu.turbo.ui.screens.envscore.EnvScoreDetailViewModel"

    iget-object v2, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->envScoreDetailViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {v0, v1, v2}, Ldagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ldagger/internal/MapBuilder;

    move-result-object v0

    const-string v1, "com.pandasu.turbo.ui.screens.isolation.IsolationViewModel"

    iget-object v2, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->isolationViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {v0, v1, v2}, Ldagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ldagger/internal/MapBuilder;

    move-result-object v0

    const-string v1, "com.pandasu.turbo.ui.screens.logs.LogsViewModel"

    iget-object v2, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;->logsViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {v0, v1, v2}, Ldagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ldagger/internal/MapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ldagger/internal/MapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
