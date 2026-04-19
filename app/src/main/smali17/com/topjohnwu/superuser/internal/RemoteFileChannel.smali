.class Lcom/topjohnwu/superuser/internal/RemoteFileChannel;
.super Ljava/nio/channels/FileChannel;
.source "RemoteFileChannel.java"


# static fields
.field private static final PIPE_CAPACITY:I = 0x10000


# instance fields
.field private final fdLock:Ljava/lang/Object;

.field private final fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

.field private final handle:I

.field private final mode:I

.field private final read:Ljava/io/FileDescriptor;

.field private final write:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>(Lcom/topjohnwu/superuser/internal/IFileSystemService;Ljava/io/File;I)V
    .locals 6
    .param p1, "fs"    # Lcom/topjohnwu/superuser/internal/IFileSystemService;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fdLock:Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 59
    iput p3, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->mode:I

    .line 60
    const/4 v0, 0x0

    .line 64
    .local v0, "fifo":Ljava/io/File;
    :try_start_0
    invoke-static {}, Lcom/topjohnwu/superuser/internal/FileUtils;->createTempFIFO()Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    .line 67
    invoke-static {p3}, Lcom/topjohnwu/superuser/internal/FileUtils;->modeToPosix(I)I

    move-result v1

    .line 68
    .local v1, "posixMode":I
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v1, v3}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->openChannel(Ljava/lang/String;ILjava/lang/String;)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/internal/IOResult;->tryAndGet()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    sget v4, Landroid/system/OsConstants;->O_NONBLOCK:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read:Ljava/io/FileDescriptor;

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->O_WRONLY:I

    sget v5, Landroid/system/OsConstants;->O_NONBLOCK:I

    or-int/2addr v3, v5

    invoke-static {v2, v3, v4}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->write:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v1    # "posixMode":I
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 81
    :cond_0
    return-void

    .line 78
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 74
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "fifo":Ljava/io/File;
    .end local p1    # "fs":Lcom/topjohnwu/superuser/internal/IFileSystemService;
    .end local p2    # "file":Ljava/io/File;
    .end local p3    # "mode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "fifo":Ljava/io/File;
    .restart local p1    # "fs":Lcom/topjohnwu/superuser/internal/IFileSystemService;
    .restart local p2    # "file":Ljava/io/File;
    .restart local p3    # "mode":I
    :goto_1
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 80
    :cond_1
    throw v1
.end method

.method private ensureOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method private read0(Ljava/nio/ByteBuffer;J)I
    .locals 8
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->begin()V

    .line 110
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 111
    .local v0, "limit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 112
    .local v1, "initial":I
    const/4 v2, 0x0

    .line 114
    .local v2, "success":Z
    move v3, v1

    .line 115
    .local v3, "pos":I
    :goto_0
    if-le v0, v3, :cond_5

    .line 117
    :try_start_0
    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fdLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 120
    :cond_0
    iget-object v5, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v6, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    sub-int v7, v0, v3

    invoke-interface {v5, v6, v7, p2, p3}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->pread(IIJ)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/topjohnwu/superuser/internal/IOResult;->tryAndGet()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 121
    .local v5, "len":I
    if-nez v5, :cond_1

    .line 122
    monitor-exit v4

    goto :goto_5

    .line 123
    :cond_1
    add-int v6, v3, v5

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 125
    const/4 v6, 0x0

    .local v6, "sz":I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 126
    iget-object v7, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read:Ljava/io/FileDescriptor;

    invoke-static {v7, p1}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_1

    .line 128
    .end local v6    # "sz":I
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    const-wide/16 v6, 0x0

    cmp-long v4, p2, v6

    if-ltz v4, :cond_3

    .line 130
    int-to-long v6, v5

    add-long/2addr p2, v6

    .line 115
    .end local v5    # "len":I
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v3, v4

    goto :goto_0

    .line 119
    :cond_4
    :goto_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 139
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->end(Z)V

    .line 119
    const/4 v4, -0x1

    return v4

    .line 128
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "limit":I
    .end local v1    # "initial":I
    .end local v2    # "success":Z
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    .end local p2    # "offset":J
    :try_start_5
    throw v5
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 138
    .end local v3    # "pos":I
    .restart local v0    # "limit":I
    .restart local v1    # "initial":I
    .restart local v2    # "success":Z
    .restart local p1    # "dst":Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":J
    :catchall_1
    move-exception v3

    goto :goto_4

    .line 135
    :catch_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    .line 136
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "limit":I
    .end local v1    # "initial":I
    .end local v2    # "success":Z
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    .end local p2    # "offset":J
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 138
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "limit":I
    .restart local v1    # "initial":I
    .restart local v2    # "success":Z
    .restart local p1    # "dst":Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":J
    :goto_4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 139
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->end(Z)V

    .line 140
    throw v3

    .line 133
    .local v3, "pos":I
    :cond_5
    :goto_5
    const/4 v2, 0x1

    .line 134
    sub-int v4, v3, v1

    .line 138
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 139
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->end(Z)V

    .line 134
    return v4
.end method

.method private readable()Z
    .locals 2

    .line 99
    iget v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->mode:I

    const/high16 v1, 0x30000000

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 104
    const/4 v0, 0x0

    return v0

    .line 102
    :sswitch_0
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x10000000 -> :sswitch_0
        0x30000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private writable()Z
    .locals 2

    .line 89
    iget v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->mode:I

    const/high16 v1, 0x30000000

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 94
    const/4 v0, 0x0

    return v0

    .line 92
    :sswitch_0
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x20000000 -> :sswitch_0
        0x30000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private write0(Ljava/nio/ByteBuffer;J)I
    .locals 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->begin()V

    .line 168
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 169
    .local v0, "remaining":I
    const/4 v1, 0x0

    .line 171
    .local v1, "success":Z
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fdLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    :try_start_1
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->write:Ljava/io/FileDescriptor;

    invoke-static {v3, p1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 177
    .local v3, "len":I
    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v5, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    invoke-interface {v4, v5, v3, p2, p3}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->pwrite(IIJ)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/topjohnwu/superuser/internal/IOResult;->checkException()V

    .line 178
    monitor-exit v2

    .line 179
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-ltz v2, :cond_1

    .line 180
    int-to-long v4, v3

    add-long/2addr p2, v4

    .line 182
    .end local v3    # "len":I
    :cond_1
    goto :goto_0

    .line 175
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    invoke-virtual {p0, v1}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->end(Z)V

    .line 175
    const/4 v2, -0x1

    return v2

    .line 178
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "remaining":I
    .end local v1    # "success":Z
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "offset":J
    :try_start_3
    throw v3
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 183
    .restart local v0    # "remaining":I
    .restart local v1    # "success":Z
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":J
    :cond_3
    const/4 v1, 0x1

    .line 184
    nop

    .line 188
    invoke-virtual {p0, v1}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->end(Z)V

    .line 184
    return v0

    .line 188
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 185
    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "remaining":I
    .end local v1    # "success":Z
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "offset":J
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 188
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "remaining":I
    .restart local v1    # "success":Z
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":J
    :goto_3
    invoke-virtual {p0, v1}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->end(Z)V

    .line 189
    throw v2
.end method


# virtual methods
.method public force(Z)V
    .locals 2
    .param p1, "metaData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    invoke-interface {v0, v1, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->sync(IZ)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/IOResult;->checkException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    nop

    .line 271
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected implCloseChannel()V
    .locals 2

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->close(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_1
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read:Ljava/io/FileDescriptor;

    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 348
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 346
    :catch_1
    move-exception v1

    .line 347
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->write:Ljava/io/FileDescriptor;

    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v1

    .line 348
    :goto_2
    :try_start_3
    monitor-exit v0

    .line 349
    return-void

    .line 348
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public lock(JJZ)Ljava/nio/channels/FileLock;
    .locals 2
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z

    .line 360
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Locking a remote file is not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .locals 2
    .param p1, "mode"    # Ljava/nio/channels/FileChannel$MapMode;
    .param p2, "position"    # J
    .param p4, "size"    # J

    .line 355
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Memory mapping a remote file is not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public position()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    sget v2, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->lseek(IJI)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/IOResult;->tryAndGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public position(J)Lcom/topjohnwu/superuser/internal/RemoteFileChannel;
    .locals 3
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 228
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->lseek(IJI)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/IOResult;->checkException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    return-object p0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 229
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/FileChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->position(J)Lcom/topjohnwu/superuser/internal/RemoteFileChannel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->position(J)Lcom/topjohnwu/superuser/internal/RemoteFileChannel;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 146
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->readable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read0(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0

    .line 147
    :cond_0
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .locals 2
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 331
    invoke-direct {p0, p1, p2, p3}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read0(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 5
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_2

    .line 155
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 156
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->readable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "sz":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_0

    .line 161
    aget-object v2, p1, v1

    const-wide/16 v3, -0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read0(Ljava/nio/ByteBuffer;J)I

    move-result v2

    add-int/2addr v0, v2

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "i":I
    :cond_0
    int-to-long v1, v0

    return-wide v1

    .line 157
    .end local v0    # "sz":I
    :cond_1
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 154
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->size(I)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/IOResult;->tryAndGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .locals 7
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 303
    invoke-interface {p1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 305
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->writable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 307
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    cmp-long v0, p4, v0

    if-ltz v0, :cond_2

    .line 310
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 311
    .local v0, "b":Ljava/nio/ByteBuffer;
    const-wide/16 v1, 0x0

    .line 312
    .local v1, "bytes":J
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_1

    .line 313
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    sub-long v5, p4, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 314
    .local v3, "limit":I
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 315
    invoke-interface {p1, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    if-gtz v4, :cond_0

    .line 316
    goto :goto_1

    .line 317
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 318
    invoke-direct {p0, v0, p2, p3}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->write0(Ljava/nio/ByteBuffer;J)I

    move-result v4

    .line 319
    .local v4, "len":I
    int-to-long v5, v4

    add-long/2addr p2, v5

    .line 320
    int-to-long v5, v4

    add-long/2addr v1, v5

    .line 321
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 322
    .end local v3    # "limit":I
    .end local v4    # "len":I
    goto :goto_0

    .line 323
    :cond_1
    :goto_1
    return-wide v1

    .line 308
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .end local v1    # "bytes":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 306
    :cond_3
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 304
    :cond_4
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 7
    .param p1, "position"    # J
    .param p3, "count"    # J
    .param p5, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 277
    invoke-interface {p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->readable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    cmp-long v0, p3, v0

    if-ltz v0, :cond_2

    .line 284
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 285
    .local v0, "b":Ljava/nio/ByteBuffer;
    const-wide/16 v1, 0x0

    .line 286
    .local v1, "bytes":J
    :goto_0
    cmp-long v3, p3, v1

    if-lez v3, :cond_1

    .line 287
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    sub-long v5, p3, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 288
    .local v3, "limit":I
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 289
    invoke-direct {p0, v0, p1, p2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read0(Ljava/nio/ByteBuffer;J)I

    move-result v4

    if-gtz v4, :cond_0

    .line 290
    goto :goto_1

    .line 291
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 292
    invoke-interface {p5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 293
    .local v4, "len":I
    int-to-long v5, v4

    add-long/2addr p1, v5

    .line 294
    int-to-long v5, v4

    add-long/2addr v1, v5

    .line 295
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 296
    .end local v3    # "limit":I
    .end local v4    # "len":I
    goto :goto_0

    .line 297
    :cond_1
    :goto_1
    return-wide v1

    .line 282
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .end local v1    # "bytes":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 280
    :cond_3
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 278
    :cond_4
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method public truncate(J)Lcom/topjohnwu/superuser/internal/RemoteFileChannel;
    .locals 2
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 251
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->writable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    invoke-interface {v0, v1, p1, p2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->ftruncate(IJ)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/IOResult;->checkException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    return-object p0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 254
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 252
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/FileChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->truncate(J)Lcom/topjohnwu/superuser/internal/RemoteFileChannel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->truncate(J)Lcom/topjohnwu/superuser/internal/RemoteFileChannel;

    move-result-object p1

    return-object p1
.end method

.method public tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 2
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z

    .line 365
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Locking a remote file is not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 195
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->writable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->write0(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0

    .line 196
    :cond_0
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 339
    invoke-direct {p0, p1, p2, p3}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->write0(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 3
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_2

    .line 204
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 205
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->writable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    const/4 v0, 0x0

    .line 209
    .local v0, "sz":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_0

    .line 210
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v0, v2

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "i":I
    :cond_0
    int-to-long v1, v0

    return-wide v1

    .line 206
    .end local v0    # "sz":I
    :cond_1
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 203
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
