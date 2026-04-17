.class public final Lcom/topjohnwu/superuser/internal/NIOFactory;
.super Ljava/lang/Object;
.source "NIOFactory.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFsService()Lcom/topjohnwu/superuser/internal/FileSystemService;
    .registers 1

    .line 124
    new-instance v0, Lcom/topjohnwu/superuser/internal/FileSystemService;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/FileSystemService;-><init>()V

    return-object v0
.end method

.method public static createLocal()Lcom/topjohnwu/superuser/nio/FileSystemManager;
    .registers 1

    .line 47
    new-instance v0, Lcom/topjohnwu/superuser/internal/NIOFactory$1;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/NIOFactory$1;-><init>()V

    return-object v0
.end method

.method public static createRemote(Landroid/os/IBinder;)Lcom/topjohnwu/superuser/nio/FileSystemManager;
    .registers 4
    .param p0, "b"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    invoke-static {p0}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/topjohnwu/superuser/internal/IFileSystemService;

    move-result-object v0

    .line 98
    .local v0, "fs":Lcom/topjohnwu/superuser/internal/IFileSystemService;
    if-eqz v0, :cond_14

    .line 101
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->register(Landroid/os/IBinder;)V

    .line 102
    new-instance v1, Lcom/topjohnwu/superuser/internal/NIOFactory$2;

    invoke-direct {v1, v0}, Lcom/topjohnwu/superuser/internal/NIOFactory$2;-><init>(Lcom/topjohnwu/superuser/internal/IFileSystemService;)V

    return-object v1

    .line 99
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The IBinder provided is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
