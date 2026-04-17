.class public Lrikka/hidden/compat/DeviceIdleControllerApis;
.super Ljava/lang/Object;
.source "DeviceIdleControllerApis.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPowerSaveTempWhitelistApp(Ljava/lang/String;JIILjava/lang/String;)V
    .registers 14
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "userId"    # I
    .param p4, "reasonCode"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_18

    .line 11
    sget-object v0, Lrikka/hidden/compat/Services;->deviceIdleController:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/IDeviceIdleController;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JIILjava/lang/String;)V

    goto :goto_2e

    .line 12
    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2e

    .line 13
    sget-object v0, Lrikka/hidden/compat/Services;->deviceIdleController:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/IDeviceIdleController;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    .line 15
    :cond_2e
    :goto_2e
    return-void
.end method
