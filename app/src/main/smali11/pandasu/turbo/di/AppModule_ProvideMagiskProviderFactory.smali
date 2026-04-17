.class public final Lcom/pandasu/turbo/di/AppModule_ProvideMagiskProviderFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvideMagiskProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/pandasu/turbo/data/magisk/MagiskProvider;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/pandasu/turbo/di/AppModule_ProvideMagiskProviderFactory;->contextProvider:Ljavax/inject/Provider;

    .line 31
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/pandasu/turbo/di/AppModule_ProvideMagiskProviderFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/pandasu/turbo/di/AppModule_ProvideMagiskProviderFactory;"
        }
    .end annotation

    .line 39
    .local p0, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    new-instance v0, Lcom/pandasu/turbo/di/AppModule_ProvideMagiskProviderFactory;

    invoke-direct {v0, p0}, Lcom/pandasu/turbo/di/AppModule_ProvideMagiskProviderFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideMagiskProvider(Landroid/content/Context;)Lcom/pandasu/turbo/data/magisk/MagiskProvider;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 43
    sget-object v0, Lcom/pandasu/turbo/di/AppModule;->INSTANCE:Lcom/pandasu/turbo/di/AppModule;

    invoke-virtual {v0, p0}, Lcom/pandasu/turbo/di/AppModule;->provideMagiskProvider(Landroid/content/Context;)Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/pandasu/turbo/data/magisk/MagiskProvider;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/pandasu/turbo/di/AppModule_ProvideMagiskProviderFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/pandasu/turbo/di/AppModule_ProvideMagiskProviderFactory;->provideMagiskProvider(Landroid/content/Context;)Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lcom/pandasu/turbo/di/AppModule_ProvideMagiskProviderFactory;->get()Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    move-result-object v0

    return-object v0
.end method
