.class public Lrikka/hidden/compat/UserManagerApis;
.super Ljava/lang/Object;
.source "UserManagerApis.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserIdsNoThrow()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 79
    const/4 v0, 0x1

    invoke-static {v0, v0, v0}, Lrikka/hidden/compat/UserManagerApis;->getUserIdsNoThrow(ZZZ)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getUserIdsNoThrow(ZZZ)Ljava/util/Collection;
    .locals 4
    .param p0, "excludePartial"    # Z
    .param p1, "excludeDying"    # Z
    .param p2, "excludePreCreated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 85
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lrikka/hidden/compat/UserManagerApis;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 86
    .local v2, "it":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    nop

    .end local v2    # "it":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 90
    :cond_0
    goto :goto_1

    .line 88
    :catchall_0
    move-exception v1

    .line 89
    .local v1, "ignored":Ljava/lang/Throwable;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v1    # "ignored":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method

.method public static getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p0, "userId"    # I

    .line 73
    sget-object v0, Lrikka/hidden/compat/Services;->userManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/IUserManager;

    .line 74
    .local v0, "um":Landroid/os/IUserManager;
    invoke-interface {v0, p0}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getUsers(ZZZ)Ljava/util/List;
    .locals 3
    .param p0, "excludePartial"    # Z
    .param p1, "excludeDying"    # Z
    .param p2, "excludePreCreated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    sget-object v0, Lrikka/hidden/compat/Services;->userManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/IUserManager;

    .line 29
    .local v0, "um":Landroid/os/IUserManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 30
    invoke-interface {v0, p0, p1, p2}, Landroid/os/IUserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_0

    .line 33
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_0

    .line 34
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    invoke-interface {v0, p0, p1, p2}, Landroid/os/IUserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    .line 38
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_0
    return-object v1
.end method

.method public static getUsersNoThrow(ZZZ)Ljava/util/List;
    .locals 2
    .param p0, "excludePartial"    # Z
    .param p1, "excludeDying"    # Z
    .param p2, "excludePreCreated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lrikka/hidden/compat/UserManagerApis;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v1

    .line 47
    :goto_0
    return-object v0
.end method

.method public static isUserStorageAvailable(I)Z
    .locals 1
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    nop

    .line 62
    sget-object v0, Lrikka/hidden/compat/Services;->userManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/IUserManager;

    invoke-interface {v0, p0}, Landroid/os/IUserManager;->isUserRunning(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lrikka/hidden/compat/Services;->userManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    .line 63
    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/IUserManager;

    invoke-interface {v0, p0}, Landroid/os/IUserManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    return v0
.end method

.method public static isUserUnlocked(I)Z
    .locals 1
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    nop

    .line 52
    sget-object v0, Lrikka/hidden/compat/Services;->userManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/IUserManager;

    invoke-interface {v0, p0}, Landroid/os/IUserManager;->isUserUnlocked(I)Z

    move-result v0

    return v0
.end method
