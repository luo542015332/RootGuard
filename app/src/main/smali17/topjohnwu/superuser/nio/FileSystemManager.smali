.class public abstract Lcom/topjohnwu/superuser/nio/FileSystemManager;
.super Ljava/lang/Object;
.source "FileSystemManager.java"


# static fields
.field private static final LOCAL:Lcom/topjohnwu/superuser/nio/FileSystemManager;

.field public static final MODE_APPEND:I = 0x2000000

.field public static final MODE_CREATE:I = 0x8000000

.field public static final MODE_READ_ONLY:I = 0x10000000

.field public static final MODE_READ_WRITE:I = 0x30000000

.field public static final MODE_TRUNCATE:I = 0x4000000

.field public static final MODE_WRITE_ONLY:I = 0x20000000

.field private static fsService:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 75
    invoke-static {}, Lcom/topjohnwu/superuser/internal/NIOFactory;->createLocal()Lcom/topjohnwu/superuser/nio/FileSystemManager;

    move-result-object v0

    sput-object v0, Lcom/topjohnwu/superuser/nio/FileSystemManager;->LOCAL:Lcom/topjohnwu/superuser/nio/FileSystemManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocal()Lcom/topjohnwu/superuser/nio/FileSystemManager;
    .registers 1

    .line 105
    sget-object v0, Lcom/topjohnwu/superuser/nio/FileSystemManager;->LOCAL:Lcom/topjohnwu/superuser/nio/FileSystemManager;

    return-object v0
.end method

.method public static getRemote(Landroid/os/IBinder;)Lcom/topjohnwu/superuser/nio/FileSystemManager;
    .registers 2
    .param p0, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-static {p0}, Lcom/topjohnwu/superuser/internal/NIOFactory;->createRemote(Landroid/os/IBinder;)Lcom/topjohnwu/superuser/nio/FileSystemManager;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getService()Landroid/os/Binder;
    .registers 2

    const-class v0, Lcom/topjohnwu/superuser/nio/FileSystemManager;

    monitor-enter v0

    .line 95
    :try_start_3
    sget-object v1, Lcom/topjohnwu/superuser/nio/FileSystemManager;->fsService:Landroid/os/Binder;

    if-nez v1, :cond_d

    .line 96
    invoke-static {}, Lcom/topjohnwu/superuser/internal/NIOFactory;->createFsService()Lcom/topjohnwu/superuser/internal/FileSystemService;

    move-result-object v1

    sput-object v1, Lcom/topjohnwu/superuser/nio/FileSystemManager;->fsService:Landroid/os/Binder;

    .line 97
    :cond_d
    sget-object v1, Lcom/topjohnwu/superuser/nio/FileSystemManager;->fsService:Landroid/os/Binder;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-object v1

    .line 94
    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final getFile(Ljava/io/File;Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .registers 4
    .param p1, "parent"    # Ljava/io/File;
    .param p2, "child"    # Ljava/lang/String;

    .line 147
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {p0, v0, p2}, Lcom/topjohnwu/superuser/nio/FileSystemManager;->getFile(Ljava/lang/String;Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public abstract getFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
.end method

.method public abstract getFile(Ljava/lang/String;Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
.end method

.method public final getFile(Ljava/net/URI;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;

    .line 155
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/nio/FileSystemManager;->getFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    return-object v0
.end method

.method public abstract openChannel(Ljava/io/File;I)Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final openChannel(Ljava/lang/String;I)Ljava/nio/channels/FileChannel;
    .registers 4
    .param p1, "pathname"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/topjohnwu/superuser/nio/FileSystemManager;->openChannel(Ljava/io/File;I)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method
