.class public final Lcom/pandasu/turbo/di/AppModule_ProvideJsonFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvideJsonFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/di/AppModule_ProvideJsonFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lkotlinx/serialization/json/Json;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/pandasu/turbo/di/AppModule_ProvideJsonFactory;
    .registers 1

    .line 31
    invoke-static {}, Lcom/pandasu/turbo/di/AppModule_ProvideJsonFactory$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/pandasu/turbo/di/AppModule_ProvideJsonFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideJson()Lkotlinx/serialization/json/Json;
    .registers 1

    .line 35
    sget-object v0, Lcom/pandasu/turbo/di/AppModule;->INSTANCE:Lcom/pandasu/turbo/di/AppModule;

    invoke-virtual {v0}, Lcom/pandasu/turbo/di/AppModule;->provideJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/Json;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lcom/pandasu/turbo/di/AppModule_ProvideJsonFactory;->get()Lkotlinx/serialization/json/Json;

    move-result-object v0

    return-object v0
.end method

.method public get()Lkotlinx/serialization/json/Json;
    .registers 2

    .line 27
    invoke-static {}, Lcom/pandasu/turbo/di/AppModule_ProvideJsonFactory;->provideJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    return-object v0
.end method
