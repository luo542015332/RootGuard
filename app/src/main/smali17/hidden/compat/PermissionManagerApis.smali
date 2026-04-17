.class public Lrikka/hidden/compat/PermissionManagerApis;
.super Ljava/lang/Object;
.source "PermissionManagerApis.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Ljava/lang/String;I)I
    .registers 4
    .param p0, "permName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_13

    .line 22
    sget-object v0, Lrikka/hidden/compat/Services;->packageManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p0, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 24
    :cond_13
    sget-object v0, Lrikka/hidden/compat/Services;->permissionManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/permission/IPermissionManager;

    invoke-interface {v0, p0, p1}, Landroid/permission/IPermissionManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p0, "permName"    # Ljava/lang/String;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_13

    .line 98
    sget-object v0, Lrikka/hidden/compat/Services;->packageManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 99
    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_26

    .line 100
    sget-object v0, Lrikka/hidden/compat/Services;->permissionManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/permission/IPermissionManager;

    invoke-interface {v0, p0, p1, p2}, Landroid/permission/IPermissionManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 102
    :cond_26
    sget-object v0, Lrikka/hidden/compat/Services;->packageManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p0, "permissionName"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_13

    .line 108
    sget-object v0, Lrikka/hidden/compat/Services;->permissionManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1, p0, p2}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 109
    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_26

    .line 110
    sget-object v0, Lrikka/hidden/compat/Services;->permissionManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/permission/IPermissionManager;

    invoke-interface {v0, p0, p1, p2}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 112
    :cond_26
    sget-object v0, Lrikka/hidden/compat/Services;->packageManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/pm/IPackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 4
    .param p0, "groupName"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_13

    .line 130
    sget-object v0, Lrikka/hidden/compat/Services;->permissionManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/permission/IPermissionManager;

    invoke-interface {v0, p0, p1}, Landroid/permission/IPermissionManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0

    .line 132
    :cond_13
    sget-object v0, Lrikka/hidden/compat/Services;->packageManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p0, p1}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .registers 5
    .param p0, "permissionName"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_13

    .line 138
    sget-object v0, Lrikka/hidden/compat/Services;->permissionManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/permission/IPermissionManager;

    invoke-interface {v0, p0, p1, p2}, Landroid/permission/IPermissionManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0

    .line 139
    :cond_13
    nop

    .line 140
    sget-object v0, Lrikka/hidden/compat/Services;->packageManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/pm/IPackageManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const-string v0, "default:0"

    invoke-static {p0, p1, v0, p2}, Lrikka/hidden/compat/PermissionManagerApis;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method public static grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "persistentDeviceId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_20

    .line 34
    sget-object v0, Lrikka/hidden/compat/Services;->permissionManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/permission/IPermissionManager;

    .line 35
    .local v0, "perm":Landroid/permission/IPermissionManager;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :try_start_11
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_14
    .catch Ljava/lang/NoSuchMethodError; {:try_start_11 .. :try_end_14} :catch_15

    .line 47
    goto :goto_1f

    .line 40
    :catch_15
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    const/4 v2, 0x0

    :try_start_17
    invoke-interface {v0, p0, p1, v2, p3}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodError; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 46
    goto :goto_1f

    .line 44
    :catch_1b
    move-exception v2

    .line 45
    .local v2, "e2":Ljava/lang/NoSuchMethodError;
    invoke-interface {v0, p0, p1, p3}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    .end local v0    # "perm":Landroid/permission/IPermissionManager;
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    .end local v2    # "e2":Ljava/lang/NoSuchMethodError;
    :goto_1f
    goto :goto_43

    :cond_20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_35

    .line 49
    sget-object v0, Lrikka/hidden/compat/Services;->permissionManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/permission/IPermissionManager;

    .line 50
    .restart local v0    # "perm":Landroid/permission/IPermissionManager;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-interface {v0, p0, p1, p3}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    .end local v0    # "perm":Landroid/permission/IPermissionManager;
    goto :goto_43

    .line 53
    :cond_35
    sget-object v0, Lrikka/hidden/compat/Services;->packageManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IPackageManager;

    .line 54
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-interface {v0, p0, p1, p3}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    :goto_43
    return-void
.end method

.method public static revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const-string v0, "default:0"

    invoke-static {p0, p1, v0, p2}, Lrikka/hidden/compat/PermissionManagerApis;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public static revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "persistentDeviceId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-lt v0, v1, :cond_35

    .line 65
    sget-object v0, Lrikka/hidden/compat/Services;->permissionManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/permission/IPermissionManager;

    .line 66
    .local v0, "perm":Landroid/permission/IPermissionManager;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const/4 v8, 0x0

    :try_start_13
    move-object v1, v8

    check-cast v1, Ljava/lang/String;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-interface/range {v3 .. v8}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodError; {:try_start_13 .. :try_end_1e} :catch_1f

    .line 78
    goto :goto_34

    .line 71
    :catch_1f
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_22
    move-object v3, v8

    check-cast v3, Ljava/lang/String;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move v7, p3

    invoke-interface/range {v3 .. v8}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_22 .. :try_end_2c} :catch_2d

    .line 77
    goto :goto_34

    .line 75
    :catch_2d
    move-exception v3

    .line 76
    .local v3, "e2":Ljava/lang/NoSuchMethodError;
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, p0, p1, p3, v2}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    .end local v0    # "perm":Landroid/permission/IPermissionManager;
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    .end local v3    # "e2":Ljava/lang/NoSuchMethodError;
    :goto_34
    goto :goto_60

    :cond_35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_52

    .line 80
    sget-object v0, Lrikka/hidden/compat/Services;->permissionManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/permission/IPermissionManager;

    .line 81
    .restart local v0    # "perm":Landroid/permission/IPermissionManager;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :try_start_46
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p0, p1, p3, v2}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_46 .. :try_end_4c} :catch_4d

    .line 87
    goto :goto_51

    .line 85
    :catch_4d
    move-exception v1

    .line 86
    .restart local v1    # "e":Ljava/lang/NoSuchMethodError;
    invoke-interface {v0, p0, p1, p3}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    .end local v0    # "perm":Landroid/permission/IPermissionManager;
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :goto_51
    goto :goto_60

    .line 89
    :cond_52
    sget-object v0, Lrikka/hidden/compat/Services;->packageManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IPackageManager;

    .line 90
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-interface {v0, p0, p1, p3}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    :goto_60
    return-void
.end method

.method public static updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V
    .registers 14
    .param p0, "permissionName"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flagMask"    # I
    .param p3, "flagValues"    # I
    .param p4, "checkAdjustPolicyFlagPermission"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_19

    .line 118
    sget-object v0, Lrikka/hidden/compat/Services;->permissionManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/IPermissionManager;

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V

    goto :goto_5c

    .line 119
    :cond_19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_32

    .line 120
    sget-object v0, Lrikka/hidden/compat/Services;->permissionManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/IPermissionManager;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V

    goto :goto_5c

    .line 121
    :cond_32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_4b

    .line 122
    sget-object v0, Lrikka/hidden/compat/Services;->packageManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/IPackageManager;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Landroid/content/pm/IPackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V

    goto :goto_5c

    .line 124
    :cond_4b
    sget-object v0, Lrikka/hidden/compat/Services;->packageManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/IPackageManager;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    .line 126
    :goto_5c
    return-void
.end method
