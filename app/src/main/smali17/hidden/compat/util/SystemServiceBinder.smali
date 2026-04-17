.class public Lrikka/hidden/compat/util/SystemServiceBinder;
.super Ljava/lang/Object;
.source "SystemServiceBinder.java"

# interfaces
.implements Landroid/os/IBinder;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrikka/hidden/compat/util/SystemServiceBinder$OnGetBinderListener;,
        Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/IBinder;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# static fields
.field private static onGetBinderListener:Lrikka/hidden/compat/util/SystemServiceBinder$OnGetBinderListener;


# instance fields
.field private binderCache:Landroid/os/IBinder;

.field private final name:Ljava/lang/String;

.field private serviceCache:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final serviceCreator:Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator<",
            "TT;>;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lrikka/hidden/compat/util/SystemServiceBinder;, "Lrikka/hidden/compat/util/SystemServiceBinder<TT;>;"
    .local p2, "serviceCreator":Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;, "Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrikka/hidden/compat/util/SystemServiceBinder;->name:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lrikka/hidden/compat/util/SystemServiceBinder;->serviceCreator:Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;

    .line 40
    return-void
.end method

.method public static setOnGetBinderListener(Lrikka/hidden/compat/util/SystemServiceBinder$OnGetBinderListener;)V
    .registers 1
    .param p0, "onGetBinderListener"    # Lrikka/hidden/compat/util/SystemServiceBinder$OnGetBinderListener;

    .line 24
    sput-object p0, Lrikka/hidden/compat/util/SystemServiceBinder;->onGetBinderListener:Lrikka/hidden/compat/util/SystemServiceBinder$OnGetBinderListener;

    .line 25
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 101
    .local p0, "this":Lrikka/hidden/compat/util/SystemServiceBinder;, "Lrikka/hidden/compat/util/SystemServiceBinder<TT;>;"
    iget-object v0, p0, Lrikka/hidden/compat/util/SystemServiceBinder;->binderCache:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lrikka/hidden/compat/util/SystemServiceBinder;->binderCache:Landroid/os/IBinder;

    .line 103
    iput-object v0, p0, Lrikka/hidden/compat/util/SystemServiceBinder;->serviceCache:Landroid/os/IInterface;

    .line 104
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    .local p0, "this":Lrikka/hidden/compat/util/SystemServiceBinder;, "Lrikka/hidden/compat/util/SystemServiceBinder<TT;>;"
    invoke-virtual {p0}, Lrikka/hidden/compat/util/SystemServiceBinder;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 147
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_9

    .line 148
    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 150
    :cond_9
    return-void
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    .local p0, "this":Lrikka/hidden/compat/util/SystemServiceBinder;, "Lrikka/hidden/compat/util/SystemServiceBinder<TT;>;"
    invoke-virtual {p0}, Lrikka/hidden/compat/util/SystemServiceBinder;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 155
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_9

    .line 156
    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 158
    :cond_9
    return-void
.end method

.method public get()Landroid/os/IInterface;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lrikka/hidden/compat/util/SystemServiceBinder;, "Lrikka/hidden/compat/util/SystemServiceBinder<TT;>;"
    iget-object v0, p0, Lrikka/hidden/compat/util/SystemServiceBinder;->serviceCache:Landroid/os/IInterface;

    if-eqz v0, :cond_5

    .line 67
    return-object v0

    .line 70
    :cond_5
    invoke-virtual {p0}, Lrikka/hidden/compat/util/SystemServiceBinder;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 71
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_d

    .line 72
    const/4 v1, 0x0

    return-object v1

    .line 75
    :cond_d
    iget-object v1, p0, Lrikka/hidden/compat/util/SystemServiceBinder;->serviceCreator:Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;

    invoke-interface {v1, v0}, Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;->create(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    iput-object v1, p0, Lrikka/hidden/compat/util/SystemServiceBinder;->serviceCache:Landroid/os/IInterface;

    .line 76
    return-object v1
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 3

    .line 43
    .local p0, "this":Lrikka/hidden/compat/util/SystemServiceBinder;, "Lrikka/hidden/compat/util/SystemServiceBinder<TT;>;"
    iget-object v0, p0, Lrikka/hidden/compat/util/SystemServiceBinder;->binderCache:Landroid/os/IBinder;

    if-eqz v0, :cond_5

    .line 44
    return-object v0

    .line 47
    :cond_5
    iget-object v0, p0, Lrikka/hidden/compat/util/SystemServiceBinder;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 48
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_f

    .line 49
    const/4 v1, 0x0

    return-object v1

    .line 52
    :cond_f
    sget-object v1, Lrikka/hidden/compat/util/SystemServiceBinder;->onGetBinderListener:Lrikka/hidden/compat/util/SystemServiceBinder$OnGetBinderListener;

    if-eqz v1, :cond_17

    .line 53
    invoke-interface {v1, v0}, Lrikka/hidden/compat/util/SystemServiceBinder$OnGetBinderListener;->onGetBinder(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 57
    :cond_17
    const/4 v1, 0x0

    :try_start_18
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    .line 59
    goto :goto_1d

    .line 58
    :catchall_1c
    move-exception v1

    .line 61
    :goto_1d
    iput-object v0, p0, Lrikka/hidden/compat/util/SystemServiceBinder;->binderCache:Landroid/os/IBinder;

    .line 62
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    .local p0, "this":Lrikka/hidden/compat/util/SystemServiceBinder;, "Lrikka/hidden/compat/util/SystemServiceBinder<TT;>;"
    invoke-virtual {p0}, Lrikka/hidden/compat/util/SystemServiceBinder;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 110
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_b

    .line 111
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 113
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public isBinderAlive()Z
    .registers 3

    .line 127
    .local p0, "this":Lrikka/hidden/compat/util/SystemServiceBinder;, "Lrikka/hidden/compat/util/SystemServiceBinder<TT;>;"
    invoke-virtual {p0}, Lrikka/hidden/compat/util/SystemServiceBinder;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 128
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_b

    .line 129
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    return v1

    .line 131
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .registers 4
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    .local p0, "this":Lrikka/hidden/compat/util/SystemServiceBinder;, "Lrikka/hidden/compat/util/SystemServiceBinder<TT;>;"
    invoke-virtual {p0}, Lrikka/hidden/compat/util/SystemServiceBinder;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 163
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_9

    .line 164
    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 166
    :cond_9
    return-void
.end method

.method public pingBinder()Z
    .registers 3

    .line 118
    .local p0, "this":Lrikka/hidden/compat/util/SystemServiceBinder;, "Lrikka/hidden/compat/util/SystemServiceBinder<TT;>;"
    invoke-virtual {p0}, Lrikka/hidden/compat/util/SystemServiceBinder;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 119
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_b

    .line 120
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    return v1

    .line 122
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 137
    .local p0, "this":Lrikka/hidden/compat/util/SystemServiceBinder;, "Lrikka/hidden/compat/util/SystemServiceBinder<TT;>;"
    invoke-virtual {p0}, Lrikka/hidden/compat/util/SystemServiceBinder;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 138
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_b

    .line 139
    invoke-interface {v0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    return-object v1

    .line 141
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    .local p0, "this":Lrikka/hidden/compat/util/SystemServiceBinder;, "Lrikka/hidden/compat/util/SystemServiceBinder<TT;>;"
    invoke-virtual {p0}, Lrikka/hidden/compat/util/SystemServiceBinder;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 82
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 83
    return v1

    .line 87
    :cond_8
    :try_start_8
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/DeadObjectException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 88
    :catch_d
    move-exception v2

    .line 89
    .local v2, "e":Landroid/os/DeadObjectException;
    const/4 v3, 0x0

    iput-object v3, p0, Lrikka/hidden/compat/util/SystemServiceBinder;->binderCache:Landroid/os/IBinder;

    .line 91
    invoke-virtual {p0}, Lrikka/hidden/compat/util/SystemServiceBinder;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 92
    .local v3, "newBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_1c

    .line 93
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 96
    .end local v2    # "e":Landroid/os/DeadObjectException;
    .end local v3    # "newBinder":Landroid/os/IBinder;
    :cond_1c
    return v1
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .line 170
    .local p0, "this":Lrikka/hidden/compat/util/SystemServiceBinder;, "Lrikka/hidden/compat/util/SystemServiceBinder<TT;>;"
    invoke-virtual {p0}, Lrikka/hidden/compat/util/SystemServiceBinder;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 171
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_b

    .line 172
    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v1

    return v1

    .line 174
    :cond_b
    const/4 v1, 0x0

    return v1
.end method
