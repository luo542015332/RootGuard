.class public final Lcom/pandasu/turbo/di/AppModule_ProvideMagiskRepositoryFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvideMagiskRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/pandasu/turbo/data/repository/MagiskRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final magiskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/magisk/MagiskProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/magisk/MagiskProvider;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "magiskProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/magisk/MagiskProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/pandasu/turbo/di/AppModule_ProvideMagiskRepositoryFactory;->magiskProvider:Ljavax/inject/Provider;

    .line 31
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/pandasu/turbo/di/AppModule_ProvideMagiskRepositoryFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/magisk/MagiskProvider;",
            ">;)",
            "Lcom/pandasu/turbo/di/AppModule_ProvideMagiskRepositoryFactory;"
        }
    .end annotation

    .line 40
    .local p0, "magiskProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/magisk/MagiskProvider;>;"
    new-instance v0, Lcom/pandasu/turbo/di/AppModule_ProvideMagiskRepositoryFactory;

    invoke-direct {v0, p0}, Lcom/pandasu/turbo/di/AppModule_ProvideMagiskRepositoryFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideMagiskRepository(Lcom/pandasu/turbo/data/magisk/MagiskProvider;)Lcom/pandasu/turbo/data/repository/MagiskRepository;
    .registers 2
    .param p0, "magiskProvider"    # Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    .line 44
    sget-object v0, Lcom/pandasu/turbo/di/AppModule;->INSTANCE:Lcom/pandasu/turbo/di/AppModule;

    invoke-virtual {v0, p0}, Lcom/pandasu/turbo/di/AppModule;->provideMagiskRepository(Lcom/pandasu/turbo/data/magisk/MagiskProvider;)Lcom/pandasu/turbo/data/repository/MagiskRepository;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/repository/MagiskRepository;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/pandasu/turbo/data/repository/MagiskRepository;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/pandasu/turbo/di/AppModule_ProvideMagiskRepositoryFactory;->magiskProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    invoke-static {v0}, Lcom/pandasu/turbo/di/AppModule_ProvideMagiskRepositoryFactory;->provideMagiskRepository(Lcom/pandasu/turbo/data/magisk/MagiskProvider;)Lcom/pandasu/turbo/data/repository/MagiskRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lcom/pandasu/turbo/di/AppModule_ProvideMagiskRepositoryFactory;->get()Lcom/pandasu/turbo/data/repository/MagiskRepository;

    move-result-object v0

    return-object v0
.end method
