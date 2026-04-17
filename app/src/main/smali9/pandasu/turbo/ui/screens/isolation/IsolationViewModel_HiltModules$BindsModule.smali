.class public abstract Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_HiltModules$BindsModule;
.super Ljava/lang/Object;
.source "IsolationViewModel_HiltModules.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel_HiltModules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BindsModule"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public abstract binds(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)Landroidx/lifecycle/ViewModel;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation runtime Ldagger/multibindings/IntoMap;
    .end annotation

    .annotation runtime Ldagger/multibindings/StringKey;
        value = "com.pandasu.turbo.ui.screens.isolation.IsolationViewModel"
    .end annotation
.end method
