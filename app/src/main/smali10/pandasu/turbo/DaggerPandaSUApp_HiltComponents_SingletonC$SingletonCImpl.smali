.class final Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;
.super Lcom/pandasu/turbo/PandaSUApp_HiltComponents$SingletonC;
.source "DaggerPandaSUApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonCImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;
    }
.end annotation


# instance fields
.field private final applicationContextModule:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

.field private detectorScannerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/util/DetectorScanner;",
            ">;"
        }
    .end annotation
.end field

.field private isolationDataStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
            ">;"
        }
    .end annotation
.end field

.field private oneClickIsolationHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private provideSettingsDataStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/local/SettingsDataStore;",
            ">;"
        }
    .end annotation
.end field

.field private rootHiderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            ">;"
        }
    .end annotation
.end field

.field private final singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetapplicationContextModule(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;
    .registers 1

    iget-object p0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->applicationContextModule:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdetectorScannerProvider(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .registers 1

    iget-object p0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->detectorScannerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisolationDataStoreProvider(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .registers 1

    iget-object p0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->isolationDataStoreProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoneClickIsolationHelperProvider(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .registers 1

    iget-object p0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->oneClickIsolationHelperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprovideSettingsDataStoreProvider(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .registers 1

    iget-object p0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->provideSettingsDataStoreProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrootHiderProvider(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;
    .registers 1

    iget-object p0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->rootHiderProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method private constructor <init>(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)V
    .registers 2
    .param p1, "applicationContextModuleParam"    # Ldagger/hilt/android/internal/modules/ApplicationContextModule;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "applicationContextModuleParam"
        }
    .end annotation

    .line 572
    invoke-direct {p0}, Lcom/pandasu/turbo/PandaSUApp_HiltComponents$SingletonC;-><init>()V

    .line 560
    iput-object p0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 573
    iput-object p1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->applicationContextModule:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    .line 574
    invoke-direct {p0, p1}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->initialize(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)V

    .line 576
    return-void
.end method

.method synthetic constructor <init>(Ldagger/hilt/android/internal/modules/ApplicationContextModule;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;-><init>(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)V

    return-void
.end method

.method private initialize(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)V
    .registers 5
    .param p1, "applicationContextModuleParam"    # Ldagger/hilt/android/internal/modules/ApplicationContextModule;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "applicationContextModuleParam"
        }
    .end annotation

    .line 580
    new-instance v0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->isolationDataStoreProvider:Ljavax/inject/Provider;

    .line 581
    new-instance v0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->rootHiderProvider:Ljavax/inject/Provider;

    .line 582
    new-instance v0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->provideSettingsDataStoreProvider:Ljavax/inject/Provider;

    .line 583
    new-instance v0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->detectorScannerProvider:Ljavax/inject/Provider;

    .line 584
    new-instance v0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->oneClickIsolationHelperProvider:Ljavax/inject/Provider;

    .line 585
    return-void
.end method

.method private injectAutoApplyReceiver2(Lcom/pandasu/turbo/receiver/AutoApplyReceiver;)Lcom/pandasu/turbo/receiver/AutoApplyReceiver;
    .registers 3
    .param p1, "instance"    # Lcom/pandasu/turbo/receiver/AutoApplyReceiver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->isolationDataStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/local/IsolationDataStore;

    invoke-static {p1, v0}, Lcom/pandasu/turbo/receiver/AutoApplyReceiver_MembersInjector;->injectIsolationDataStore(Lcom/pandasu/turbo/receiver/AutoApplyReceiver;Lcom/pandasu/turbo/data/local/IsolationDataStore;)V

    .line 613
    iget-object v0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->rootHiderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-static {p1, v0}, Lcom/pandasu/turbo/receiver/AutoApplyReceiver_MembersInjector;->injectRootHider(Lcom/pandasu/turbo/receiver/AutoApplyReceiver;Lcom/pandasu/turbo/data/magisk/RootHider;)V

    .line 614
    return-object p1
.end method


# virtual methods
.method public getDisableFragmentGetContextFix()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 598
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public injectAutoApplyReceiver(Lcom/pandasu/turbo/receiver/AutoApplyReceiver;)V
    .registers 2
    .param p1, "arg0"    # Lcom/pandasu/turbo/receiver/AutoApplyReceiver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 593
    invoke-direct {p0, p1}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->injectAutoApplyReceiver2(Lcom/pandasu/turbo/receiver/AutoApplyReceiver;)Lcom/pandasu/turbo/receiver/AutoApplyReceiver;

    .line 594
    return-void
.end method

.method public injectPandaSUApp(Lcom/pandasu/turbo/PandaSUApp;)V
    .registers 2
    .param p1, "arg0"    # Lcom/pandasu/turbo/PandaSUApp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 589
    return-void
.end method

.method public retainedComponentBuilder()Ldagger/hilt/android/internal/builders/ActivityRetainedComponentBuilder;
    .registers 4

    .line 603
    new-instance v0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCBuilder;

    iget-object v1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCBuilder;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCBuilder-IA;)V

    return-object v0
.end method

.method public serviceComponentBuilder()Ldagger/hilt/android/internal/builders/ServiceComponentBuilder;
    .registers 4

    .line 608
    new-instance v0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ServiceCBuilder;

    iget-object v1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ServiceCBuilder;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ServiceCBuilder-IA;)V

    return-object v0
.end method
