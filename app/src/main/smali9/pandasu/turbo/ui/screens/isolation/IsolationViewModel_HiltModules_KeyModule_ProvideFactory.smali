.class public final Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_HiltModules_KeyModule_ProvideFactory;
.super Ljava/lang/Object;
.source "IsolationViewModel_HiltModules_KeyModule_ProvideFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_HiltModules_KeyModule_ProvideFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_HiltModules_KeyModule_ProvideFactory;
    .registers 1

    .line 30
    invoke-static {}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_HiltModules_KeyModule_ProvideFactory$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_HiltModules_KeyModule_ProvideFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provide()Ljava/lang/String;
    .registers 1

    .line 34
    invoke-static {}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_HiltModules$KeyModule;->provide()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-virtual {p0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_HiltModules_KeyModule_ProvideFactory;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 2

    .line 26
    invoke-static {}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_HiltModules_KeyModule_ProvideFactory;->provide()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
