.class public Lrikka/hidden/compat/DisplayManagerApis;
.super Ljava/lang/Object;
.source "DisplayManagerApis.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayInfo(I)Landroid/view/DisplayInfo;
    .registers 2
    .param p0, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    sget-object v0, Lrikka/hidden/compat/Services;->displayManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p0}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public static registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    sget-object v0, Lrikka/hidden/compat/Services;->displayManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p0}, Landroid/hardware/display/IDisplayManager;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V

    .line 17
    return-void
.end method
