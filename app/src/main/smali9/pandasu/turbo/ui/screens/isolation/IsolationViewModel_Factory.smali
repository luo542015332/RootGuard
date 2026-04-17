.class public final Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_Factory;
.super Ljava/lang/Object;
.source "IsolationViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final isolationDataStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
            ">;"
        }
    .end annotation
.end field

.field private final oneClickIsolationHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper;",
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
            "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "isolationDataStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/local/IsolationDataStore;>;"
    .local p2, "rootHiderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/magisk/RootHider;>;"
    .local p3, "oneClickIsolationHelperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/utils/OneClickIsolationHelper;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_Factory;->isolationDataStoreProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_Factory;->rootHiderProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_Factory;->oneClickIsolationHelperProvider:Ljavax/inject/Provider;

    .line 39
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_Factory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper;",
            ">;)",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_Factory;"
        }
    .end annotation

    .line 50
    .local p0, "isolationDataStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/local/IsolationDataStore;>;"
    .local p1, "rootHiderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/magisk/RootHider;>;"
    .local p2, "oneClickIsolationHelperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/utils/OneClickIsolationHelper;>;"
    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/pandasu/turbo/data/local/IsolationDataStore;Lcom/pandasu/turbo/data/magisk/RootHider;Lcom/pandasu/turbo/utils/OneClickIsolationHelper;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;
    .registers 4
    .param p0, "isolationDataStore"    # Lcom/pandasu/turbo/data/local/IsolationDataStore;
    .param p1, "rootHider"    # Lcom/pandasu/turbo/data/magisk/RootHider;
    .param p2, "oneClickIsolationHelper"    # Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    .line 55
    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    invoke-direct {v0, p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;-><init>(Lcom/pandasu/turbo/data/local/IsolationDataStore;Lcom/pandasu/turbo/data/magisk/RootHider;Lcom/pandasu/turbo/utils/OneClickIsolationHelper;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_Factory;->isolationDataStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/local/IsolationDataStore;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_Factory;->rootHiderProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_Factory;->oneClickIsolationHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    invoke-static {v0, v1, v2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_Factory;->newInstance(Lcom/pandasu/turbo/data/local/IsolationDataStore;Lcom/pandasu/turbo/data/magisk/RootHider;Lcom/pandasu/turbo/utils/OneClickIsolationHelper;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_Factory;->get()Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    move-result-object v0

    return-object v0
.end method
