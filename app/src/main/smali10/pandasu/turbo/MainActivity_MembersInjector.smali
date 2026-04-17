.class public final Lcom/pandasu/turbo/MainActivity_MembersInjector;
.super Ljava/lang/Object;
.source "MainActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/pandasu/turbo/MainActivity;",
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

.field private final rootHiderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsDataStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/local/SettingsDataStore;",
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
            "Lcom/pandasu/turbo/data/local/SettingsDataStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p1, "settingsDataStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/local/SettingsDataStore;>;"
    .local p2, "isolationDataStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/local/IsolationDataStore;>;"
    .local p3, "rootHiderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/magisk/RootHider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/pandasu/turbo/MainActivity_MembersInjector;->settingsDataStoreProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p2, p0, Lcom/pandasu/turbo/MainActivity_MembersInjector;->isolationDataStoreProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/pandasu/turbo/MainActivity_MembersInjector;->rootHiderProvider:Ljavax/inject/Provider;

    .line 38
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/local/SettingsDataStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/pandasu/turbo/MainActivity;",
            ">;"
        }
    .end annotation

    .line 44
    .local p0, "settingsDataStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/local/SettingsDataStore;>;"
    .local p1, "isolationDataStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/local/IsolationDataStore;>;"
    .local p2, "rootHiderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/magisk/RootHider;>;"
    new-instance v0, Lcom/pandasu/turbo/MainActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/pandasu/turbo/MainActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectIsolationDataStore(Lcom/pandasu/turbo/MainActivity;Lcom/pandasu/turbo/data/local/IsolationDataStore;)V
    .registers 2
    .param p0, "instance"    # Lcom/pandasu/turbo/MainActivity;
    .param p1, "isolationDataStore"    # Lcom/pandasu/turbo/data/local/IsolationDataStore;

    .line 63
    iput-object p1, p0, Lcom/pandasu/turbo/MainActivity;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    .line 64
    return-void
.end method

.method public static injectRootHider(Lcom/pandasu/turbo/MainActivity;Lcom/pandasu/turbo/data/magisk/RootHider;)V
    .registers 2
    .param p0, "instance"    # Lcom/pandasu/turbo/MainActivity;
    .param p1, "rootHider"    # Lcom/pandasu/turbo/data/magisk/RootHider;

    .line 68
    iput-object p1, p0, Lcom/pandasu/turbo/MainActivity;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;

    .line 69
    return-void
.end method

.method public static injectSettingsDataStore(Lcom/pandasu/turbo/MainActivity;Lcom/pandasu/turbo/data/local/SettingsDataStore;)V
    .registers 2
    .param p0, "instance"    # Lcom/pandasu/turbo/MainActivity;
    .param p1, "settingsDataStore"    # Lcom/pandasu/turbo/data/local/SettingsDataStore;

    .line 57
    iput-object p1, p0, Lcom/pandasu/turbo/MainActivity;->settingsDataStore:Lcom/pandasu/turbo/data/local/SettingsDataStore;

    .line 58
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/pandasu/turbo/MainActivity;)V
    .registers 3
    .param p1, "instance"    # Lcom/pandasu/turbo/MainActivity;

    .line 49
    iget-object v0, p0, Lcom/pandasu/turbo/MainActivity_MembersInjector;->settingsDataStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;

    invoke-static {p1, v0}, Lcom/pandasu/turbo/MainActivity_MembersInjector;->injectSettingsDataStore(Lcom/pandasu/turbo/MainActivity;Lcom/pandasu/turbo/data/local/SettingsDataStore;)V

    .line 50
    iget-object v0, p0, Lcom/pandasu/turbo/MainActivity_MembersInjector;->isolationDataStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/local/IsolationDataStore;

    invoke-static {p1, v0}, Lcom/pandasu/turbo/MainActivity_MembersInjector;->injectIsolationDataStore(Lcom/pandasu/turbo/MainActivity;Lcom/pandasu/turbo/data/local/IsolationDataStore;)V

    .line 51
    iget-object v0, p0, Lcom/pandasu/turbo/MainActivity_MembersInjector;->rootHiderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-static {p1, v0}, Lcom/pandasu/turbo/MainActivity_MembersInjector;->injectRootHider(Lcom/pandasu/turbo/MainActivity;Lcom/pandasu/turbo/data/magisk/RootHider;)V

    .line 52
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .registers 2

    .line 13
    check-cast p1, Lcom/pandasu/turbo/MainActivity;

    invoke-virtual {p0, p1}, Lcom/pandasu/turbo/MainActivity_MembersInjector;->injectMembers(Lcom/pandasu/turbo/MainActivity;)V

    return-void
.end method
