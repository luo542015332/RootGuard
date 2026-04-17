.class final Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$ActivityRetainedComponentViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ActivityRetainedComponentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActivityRetainedComponentViewModel"
.end annotation


# instance fields
.field private final component:Ldagger/hilt/android/components/ActivityRetainedComponent;


# direct methods
.method constructor <init>(Ldagger/hilt/android/components/ActivityRetainedComponent;)V
    .registers 2
    .param p1, "component"    # Ldagger/hilt/android/components/ActivityRetainedComponent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 62
    iput-object p1, p0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$ActivityRetainedComponentViewModel;->component:Ldagger/hilt/android/components/ActivityRetainedComponent;

    .line 63
    return-void
.end method


# virtual methods
.method getComponent()Ldagger/hilt/android/components/ActivityRetainedComponent;
    .registers 2

    .line 66
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$ActivityRetainedComponentViewModel;->component:Ldagger/hilt/android/components/ActivityRetainedComponent;

    return-object v0
.end method

.method protected onCleared()V
    .registers 3

    .line 71
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 72
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$ActivityRetainedComponentViewModel;->component:Ldagger/hilt/android/components/ActivityRetainedComponent;

    const-class v1, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$ActivityRetainedLifecycleEntryPoint;

    .line 73
    invoke-static {v0, v1}, Ldagger/hilt/EntryPoints;->get(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$ActivityRetainedLifecycleEntryPoint;

    .line 74
    invoke-interface {v0}, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager$ActivityRetainedLifecycleEntryPoint;->getActivityRetainedLifecycle()Ldagger/hilt/android/ActivityRetainedLifecycle;

    move-result-object v0

    .line 75
    .local v0, "lifecycle":Ldagger/hilt/android/ActivityRetainedLifecycle;
    move-object v1, v0

    check-cast v1, Ldagger/hilt/android/internal/lifecycle/RetainedLifecycleImpl;

    invoke-virtual {v1}, Ldagger/hilt/android/internal/lifecycle/RetainedLifecycleImpl;->dispatchOnCleared()V

    .line 76
    return-void
.end method
