.class public Lrikka/hidden/compat/BatteryPropertiesRegistrarApis;
.super Ljava/lang/Object;
.source "BatteryPropertiesRegistrarApis.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntProperty(I)I
    .registers 5
    .param p0, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    invoke-static {p0}, Lrikka/hidden/compat/BatteryPropertiesRegistrarApis;->queryProperty(I)J

    move-result-wide v0

    .line 35
    .local v0, "value":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    .line 36
    const/high16 v2, -0x80000000

    return v2

    .line 39
    :cond_d
    long-to-int v2, v0

    return v2
.end method

.method public static getLongProperty(I)J
    .registers 3
    .param p0, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lrikka/hidden/compat/BatteryPropertiesRegistrarApis;->queryProperty(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static queryProperty(I)J
    .registers 5
    .param p0, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    new-instance v0, Landroid/os/BatteryProperty;

    invoke-direct {v0}, Landroid/os/BatteryProperty;-><init>()V

    .line 18
    .local v0, "prop":Landroid/os/BatteryProperty;
    sget-object v1, Lrikka/hidden/compat/Services;->batteryPropertiesRegistrar:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v1}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/os/IBatteryPropertiesRegistrar;

    .line 19
    .local v1, "batteryPropertiesRegistrar":Landroid/os/IBatteryPropertiesRegistrar;
    if-nez v1, :cond_12

    .line 20
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2

    .line 23
    :cond_12
    invoke-interface {v1, p0, v0}, Landroid/os/IBatteryPropertiesRegistrar;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result v2

    if-nez v2, :cond_1d

    .line 24
    invoke-virtual {v0}, Landroid/os/BatteryProperty;->getLong()J

    move-result-wide v2

    .local v2, "ret":J
    goto :goto_1f

    .line 26
    .end local v2    # "ret":J
    :cond_1d
    const-wide/high16 v2, -0x8000000000000000L

    .line 29
    .restart local v2    # "ret":J
    :goto_1f
    return-wide v2
.end method

.method public static scheduleUpdate()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    sget-object v0, Lrikka/hidden/compat/Services;->batteryPropertiesRegistrar:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/IBatteryPropertiesRegistrar;

    invoke-interface {v0}, Landroid/os/IBatteryPropertiesRegistrar;->scheduleUpdate()V

    .line 49
    return-void
.end method
