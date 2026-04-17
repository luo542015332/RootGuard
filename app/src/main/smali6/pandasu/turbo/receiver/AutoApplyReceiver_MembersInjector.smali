.class public final Lcom/pandasu/turbo/receiver/AutoApplyReceiver_MembersInjector;
.super Ljava/lang/Object;
.source "AutoApplyReceiver_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/pandasu/turbo/receiver/AutoApplyReceiver;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p1, "isolationDataStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/local/IsolationDataStore;>;"
    .local p2, "rootHiderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/magisk/RootHider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver_MembersInjector;->isolationDataStoreProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver_MembersInjector;->rootHiderProvider:Ljavax/inject/Provider;

    .line 33
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/pandasu/turbo/receiver/AutoApplyReceiver;",
            ">;"
        }
    .end annotation

    .line 38
    .local p0, "isolationDataStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/local/IsolationDataStore;>;"
    .local p1, "rootHiderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/magisk/RootHider;>;"
    new-instance v0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/pandasu/turbo/receiver/AutoApplyReceiver_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectIsolationDataStore(Lcom/pandasu/turbo/receiver/AutoApplyReceiver;Lcom/pandasu/turbo/data/local/IsolationDataStore;)V
    .registers 2
    .param p0, "instance"    # Lcom/pandasu/turbo/receiver/AutoApplyReceiver;
    .param p1, "isolationDataStore"    # Lcom/pandasu/turbo/data/local/IsolationDataStore;

    .line 50
    iput-object p1, p0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    .line 51
    return-void
.end method

.method public static injectRootHider(Lcom/pandasu/turbo/receiver/AutoApplyReceiver;Lcom/pandasu/turbo/data/magisk/RootHider;)V
    .registers 2
    .param p0, "instance"    # Lcom/pandasu/turbo/receiver/AutoApplyReceiver;
    .param p1, "rootHider"    # Lcom/pandasu/turbo/data/magisk/RootHider;

    .line 55
    iput-object p1, p0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;

    .line 56
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/pandasu/turbo/receiver/AutoApplyReceiver;)V
    .registers 3
    .param p1, "instance"    # Lcom/pandasu/turbo/receiver/AutoApplyReceiver;

    .line 43
    iget-object v0, p0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver_MembersInjector;->isolationDataStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/local/IsolationDataStore;

    invoke-static {p1, v0}, Lcom/pandasu/turbo/receiver/AutoApplyReceiver_MembersInjector;->injectIsolationDataStore(Lcom/pandasu/turbo/receiver/AutoApplyReceiver;Lcom/pandasu/turbo/data/local/IsolationDataStore;)V

    .line 44
    iget-object v0, p0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver_MembersInjector;->rootHiderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-static {p1, v0}, Lcom/pandasu/turbo/receiver/AutoApplyReceiver_MembersInjector;->injectRootHider(Lcom/pandasu/turbo/receiver/AutoApplyReceiver;Lcom/pandasu/turbo/data/magisk/RootHider;)V

    .line 45
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .registers 2

    .line 12
    check-cast p1, Lcom/pandasu/turbo/receiver/AutoApplyReceiver;

    invoke-virtual {p0, p1}, Lcom/pandasu/turbo/receiver/AutoApplyReceiver_MembersInjector;->injectMembers(Lcom/pandasu/turbo/receiver/AutoApplyReceiver;)V

    return-void
.end method
