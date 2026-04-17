.class Lrikka/hidden/compat/Services;
.super Ljava/lang/Object;
.source "Services.java"


# static fields
.field protected static final activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrikka/hidden/compat/util/SystemServiceBinder<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field protected static final appOps:Lrikka/hidden/compat/util/SystemServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrikka/hidden/compat/util/SystemServiceBinder<",
            "Lcom/android/internal/app/IAppOpsService;",
            ">;"
        }
    .end annotation
.end field

.field protected static final batteryPropertiesRegistrar:Lrikka/hidden/compat/util/SystemServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrikka/hidden/compat/util/SystemServiceBinder<",
            "Landroid/os/IBatteryPropertiesRegistrar;",
            ">;"
        }
    .end annotation
.end field

.field protected static final deviceIdleController:Lrikka/hidden/compat/util/SystemServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrikka/hidden/compat/util/SystemServiceBinder<",
            "Landroid/os/IDeviceIdleController;",
            ">;"
        }
    .end annotation
.end field

.field protected static final displayManager:Lrikka/hidden/compat/util/SystemServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrikka/hidden/compat/util/SystemServiceBinder<",
            "Landroid/hardware/display/IDisplayManager;",
            ">;"
        }
    .end annotation
.end field

.field protected static final launcherApps:Lrikka/hidden/compat/util/SystemServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrikka/hidden/compat/util/SystemServiceBinder<",
            "Landroid/content/pm/ILauncherApps;",
            ">;"
        }
    .end annotation
.end field

.field protected static final packageManager:Lrikka/hidden/compat/util/SystemServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrikka/hidden/compat/util/SystemServiceBinder<",
            "Landroid/content/pm/IPackageManager;",
            ">;"
        }
    .end annotation
.end field

.field protected static final permissionManager:Lrikka/hidden/compat/util/SystemServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrikka/hidden/compat/util/SystemServiceBinder<",
            "Landroid/permission/IPermissionManager;",
            ">;"
        }
    .end annotation
.end field

.field protected static final userManager:Lrikka/hidden/compat/util/SystemServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrikka/hidden/compat/util/SystemServiceBinder<",
            "Landroid/os/IUserManager;",
            ">;"
        }
    .end annotation
.end field

.field protected static final windowManager:Lrikka/hidden/compat/util/SystemServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrikka/hidden/compat/util/SystemServiceBinder<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3ZwgsEf7XdcKlp3TSlPslDaBYQs(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;
    .registers 1

    invoke-static {p0}, Landroid/permission/IPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7FLR0tdoZHWhFZcTW5EyBw2Wr2g(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .registers 1

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HP7L4R0iXXfTctllrpfAf8U1XCs(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .registers 1

    invoke-static {p0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QbQFgRDQTc_Cj8vemcwO3BW57KY(Landroid/os/IBinder;)Landroid/content/pm/ILauncherApps;
    .registers 1

    invoke-static {p0}, Landroid/content/pm/ILauncherApps$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ILauncherApps;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZztB2WLC7fbGHAR3hunSrmLyfJg(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fDzLJZC5j4Q2XmrM-xlwSdMivfk(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;
    .registers 1

    invoke-static {p0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lN2KZAS5u4-_IqertEms3cWepC0(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;
    .registers 1

    invoke-static {p0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mGcDiZlWkAdQ1_y79e9J4xfXH1c(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;
    .registers 1

    invoke-static {p0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uSHhTxtqTdWJI8U0PBPHEzJBdUk(Landroid/os/IBinder;)Landroid/os/IUserManager;
    .registers 1

    invoke-static {p0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 33
    new-instance v0, Lrikka/hidden/compat/util/SystemServiceBinder;

    new-instance v1, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "appops"

    invoke-direct {v0, v2, v1}, Lrikka/hidden/compat/util/SystemServiceBinder;-><init>(Ljava/lang/String;Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;)V

    sput-object v0, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    .line 36
    new-instance v0, Lrikka/hidden/compat/util/SystemServiceBinder;

    new-instance v1, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "activity"

    invoke-direct {v0, v2, v1}, Lrikka/hidden/compat/util/SystemServiceBinder;-><init>(Ljava/lang/String;Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;)V

    sput-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    .line 44
    new-instance v0, Lrikka/hidden/compat/util/SystemServiceBinder;

    new-instance v1, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda2;-><init>()V

    const-string/jumbo v2, "user"

    invoke-direct {v0, v2, v1}, Lrikka/hidden/compat/util/SystemServiceBinder;-><init>(Ljava/lang/String;Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;)V

    sput-object v0, Lrikka/hidden/compat/Services;->userManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    .line 47
    new-instance v0, Lrikka/hidden/compat/util/SystemServiceBinder;

    new-instance v1, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "package"

    invoke-direct {v0, v2, v1}, Lrikka/hidden/compat/util/SystemServiceBinder;-><init>(Ljava/lang/String;Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;)V

    sput-object v0, Lrikka/hidden/compat/Services;->packageManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_4f

    .line 51
    new-instance v0, Lrikka/hidden/compat/util/SystemServiceBinder;

    new-instance v3, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda4;-><init>()V

    const-string v4, "permissionmgr"

    invoke-direct {v0, v4, v3}, Lrikka/hidden/compat/util/SystemServiceBinder;-><init>(Ljava/lang/String;Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;)V

    sput-object v0, Lrikka/hidden/compat/Services;->permissionManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    goto :goto_51

    .line 54
    :cond_4f
    sput-object v1, Lrikka/hidden/compat/Services;->permissionManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    .line 57
    :goto_51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_64

    .line 58
    new-instance v0, Lrikka/hidden/compat/util/SystemServiceBinder;

    new-instance v1, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda5;-><init>()V

    const-string v2, "deviceidle"

    invoke-direct {v0, v2, v1}, Lrikka/hidden/compat/util/SystemServiceBinder;-><init>(Ljava/lang/String;Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;)V

    sput-object v0, Lrikka/hidden/compat/Services;->deviceIdleController:Lrikka/hidden/compat/util/SystemServiceBinder;

    goto :goto_66

    .line 61
    :cond_64
    sput-object v1, Lrikka/hidden/compat/Services;->deviceIdleController:Lrikka/hidden/compat/util/SystemServiceBinder;

    .line 64
    :goto_66
    new-instance v0, Lrikka/hidden/compat/util/SystemServiceBinder;

    new-instance v1, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda6;-><init>()V

    const-string v2, "display"

    invoke-direct {v0, v2, v1}, Lrikka/hidden/compat/util/SystemServiceBinder;-><init>(Ljava/lang/String;Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;)V

    sput-object v0, Lrikka/hidden/compat/Services;->displayManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    .line 67
    new-instance v0, Lrikka/hidden/compat/util/SystemServiceBinder;

    new-instance v1, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda7;-><init>()V

    const-string v2, "batteryproperties"

    invoke-direct {v0, v2, v1}, Lrikka/hidden/compat/util/SystemServiceBinder;-><init>(Ljava/lang/String;Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;)V

    sput-object v0, Lrikka/hidden/compat/Services;->batteryPropertiesRegistrar:Lrikka/hidden/compat/util/SystemServiceBinder;

    .line 70
    new-instance v0, Lrikka/hidden/compat/util/SystemServiceBinder;

    new-instance v1, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda8;-><init>()V

    const-string v2, "launcherapps"

    invoke-direct {v0, v2, v1}, Lrikka/hidden/compat/util/SystemServiceBinder;-><init>(Ljava/lang/String;Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;)V

    sput-object v0, Lrikka/hidden/compat/Services;->launcherApps:Lrikka/hidden/compat/util/SystemServiceBinder;

    .line 73
    new-instance v0, Lrikka/hidden/compat/util/SystemServiceBinder;

    new-instance v1, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lrikka/hidden/compat/Services$$ExternalSyntheticLambda9;-><init>()V

    const-string/jumbo v2, "window"

    invoke-direct {v0, v2, v1}, Lrikka/hidden/compat/util/SystemServiceBinder;-><init>(Ljava/lang/String;Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;)V

    sput-object v0, Lrikka/hidden/compat/Services;->windowManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    .line 75
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .registers 2
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 37
    nop

    .line 38
    invoke-static {p0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method
