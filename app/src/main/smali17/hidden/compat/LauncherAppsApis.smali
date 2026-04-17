.class public Lrikka/hidden/compat/LauncherAppsApis;
.super Ljava/lang/Object;
.source "LauncherAppsApis.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOnAppsChangedListener(Ljava/lang/String;Landroid/content/pm/IOnAppsChangedListener;)V
    .registers 3
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "listener"    # Landroid/content/pm/IOnAppsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    invoke-static {}, Lrikka/buildcompat/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 12
    sget-object v0, Lrikka/hidden/compat/Services;->launcherApps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ILauncherApps;

    invoke-interface {v0, p0, p1}, Landroid/content/pm/ILauncherApps;->addOnAppsChangedListener(Ljava/lang/String;Landroid/content/pm/IOnAppsChangedListener;)V

    goto :goto_1d

    .line 14
    :cond_12
    sget-object v0, Lrikka/hidden/compat/Services;->launcherApps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ILauncherApps;

    invoke-interface {v0, p1}, Landroid/content/pm/ILauncherApps;->addOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V

    .line 16
    :goto_1d
    return-void
.end method

.method public static removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    .registers 2
    .param p0, "listener"    # Landroid/content/pm/IOnAppsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    sget-object v0, Lrikka/hidden/compat/Services;->launcherApps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ILauncherApps;

    invoke-interface {v0, p0}, Landroid/content/pm/ILauncherApps;->removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V

    .line 20
    return-void
.end method
