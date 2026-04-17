.class public final Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel_Factory;
.super Ljava/lang/Object;
.source "EnvScoreDetailViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final detectorScannerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/util/DetectorScanner;",
            ">;"
        }
    .end annotation
.end field

.field private final isolationDataStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
            ">;"
        }
    .end annotation
.end field

.field private final rootHiderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/util/DetectorScanner;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "rootHiderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/magisk/RootHider;>;"
    .local p2, "detectorScannerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/util/DetectorScanner;>;"
    .local p3, "isolationDataStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/local/IsolationDataStore;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel_Factory;->rootHiderProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel_Factory;->detectorScannerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel_Factory;->isolationDataStoreProvider:Ljavax/inject/Provider;

    .line 39
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel_Factory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/util/DetectorScanner;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
            ">;)",
            "Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel_Factory;"
        }
    .end annotation

    .line 49
    .local p0, "rootHiderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/magisk/RootHider;>;"
    .local p1, "detectorScannerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/util/DetectorScanner;>;"
    .local p2, "isolationDataStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/local/IsolationDataStore;>;"
    new-instance v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/pandasu/turbo/data/magisk/RootHider;Lcom/pandasu/turbo/util/DetectorScanner;Lcom/pandasu/turbo/data/local/IsolationDataStore;)Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;
    .registers 4
    .param p0, "rootHider"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p1, "detectorScanner"    # Lcom/pandasu/turbo/util/DetectorScanner;
    .param p2, "isolationDataStore"    # Lcom/pandasu/turbo/data/local/IsolationDataStore;

    .line 54
    new-instance v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-direct {v0, p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;-><init>(Lcom/pandasu/turbo/data/magisk/RootHider;Lcom/pandasu/turbo/util/DetectorScanner;Lcom/pandasu/turbo/data/local/IsolationDataStore;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel_Factory;->rootHiderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel_Factory;->detectorScannerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pandasu/turbo/util/DetectorScanner;

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel_Factory;->isolationDataStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pandasu/turbo/data/local/IsolationDataStore;

    invoke-static {v0, v1, v2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel_Factory;->newInstance(Lcom/pandasu/turbo/data/magisk/RootHider;Lcom/pandasu/turbo/util/DetectorScanner;Lcom/pandasu/turbo/data/local/IsolationDataStore;)Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel_Factory;->get()Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    move-result-object v0

    return-object v0
.end method
