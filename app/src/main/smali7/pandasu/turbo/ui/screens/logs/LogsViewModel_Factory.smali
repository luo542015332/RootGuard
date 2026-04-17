.class public final Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel_Factory;
.super Ljava/lang/Object;
.source "LogsViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel_Factory;
    .registers 1

    .line 29
    invoke-static {}, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel_Factory$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;
    .registers 1

    .line 33
    new-instance v0, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;

    invoke-direct {v0}, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;
    .registers 2

    .line 25
    invoke-static {}, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel_Factory;->newInstance()Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel_Factory;->get()Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;

    move-result-object v0

    return-object v0
.end method
