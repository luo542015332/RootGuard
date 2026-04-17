.class public final Lcom/pandasu/turbo/data/repository/MagiskRepository_Factory;
.super Ljava/lang/Object;
.source "MagiskRepository_Factory.java"

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

    .line 27
    .local p1, "magiskProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/magisk/MagiskProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/pandasu/turbo/data/repository/MagiskRepository_Factory;->magiskProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/pandasu/turbo/data/repository/MagiskRepository_Factory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/pandasu/turbo/data/magisk/MagiskProvider;",
            ">;)",
            "Lcom/pandasu/turbo/data/repository/MagiskRepository_Factory;"
        }
    .end annotation

    .line 37
    .local p0, "magiskProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/pandasu/turbo/data/magisk/MagiskProvider;>;"
    new-instance v0, Lcom/pandasu/turbo/data/repository/MagiskRepository_Factory;

    invoke-direct {v0, p0}, Lcom/pandasu/turbo/data/repository/MagiskRepository_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/pandasu/turbo/data/magisk/MagiskProvider;)Lcom/pandasu/turbo/data/repository/MagiskRepository;
    .registers 2
    .param p0, "magiskProvider"    # Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    .line 41
    new-instance v0, Lcom/pandasu/turbo/data/repository/MagiskRepository;

    invoke-direct {v0, p0}, Lcom/pandasu/turbo/data/repository/MagiskRepository;-><init>(Lcom/pandasu/turbo/data/magisk/MagiskProvider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/pandasu/turbo/data/repository/MagiskRepository;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/pandasu/turbo/data/repository/MagiskRepository_Factory;->magiskProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    invoke-static {v0}, Lcom/pandasu/turbo/data/repository/MagiskRepository_Factory;->newInstance(Lcom/pandasu/turbo/data/magisk/MagiskProvider;)Lcom/pandasu/turbo/data/repository/MagiskRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lcom/pandasu/turbo/data/repository/MagiskRepository_Factory;->get()Lcom/pandasu/turbo/data/repository/MagiskRepository;

    move-result-object v0

    return-object v0
.end method
