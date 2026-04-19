.class public final Lcom/pandasu/turbo/data/magisk/RootHider_Factory;
.super Ljava/lang/Object;
.source "RootHider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/pandasu/turbo/data/magisk/RootHider;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    .local p2, "isolationDataStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/local/IsolationDataStore;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/RootHider_Factory;->isolationDataStoreProvider:Ljavax/inject/Provider;

    .line 34
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/pandasu/turbo/data/magisk/RootHider_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
            ">;)",
            "Lcom/pandasu/turbo/data/magisk/RootHider_Factory;"
        }
    .end annotation

    .line 43
    .local p0, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    .local p1, "isolationDataStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/local/IsolationDataStore;>;"
    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider_Factory;

    invoke-direct {v0, p0, p1}, Lcom/pandasu/turbo/data/magisk/RootHider_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/pandasu/turbo/data/local/IsolationDataStore;)Lcom/pandasu/turbo/data/magisk/RootHider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isolationDataStore"    # Lcom/pandasu/turbo/data/local/IsolationDataStore;

    .line 47
    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider;

    invoke-direct {v0, p0, p1}, Lcom/pandasu/turbo/data/magisk/RootHider;-><init>(Landroid/content/Context;Lcom/pandasu/turbo/data/local/IsolationDataStore;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/pandasu/turbo/data/magisk/RootHider;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider_Factory;->isolationDataStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pandasu/turbo/data/local/IsolationDataStore;

    invoke-static {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider_Factory;->newInstance(Landroid/content/Context;Lcom/pandasu/turbo/data/local/IsolationDataStore;)Lcom/pandasu/turbo/data/magisk/RootHider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/pandasu/turbo/data/magisk/RootHider_Factory;->get()Lcom/pandasu/turbo/data/magisk/RootHider;

    move-result-object v0

    return-object v0
.end method
