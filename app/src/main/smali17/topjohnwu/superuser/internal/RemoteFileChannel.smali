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
    .registers 10
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
    :try_start_f
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
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_4f} :catch_59
    .catch Landroid/system/ErrnoException; {:try_start_f .. :try_end_4f} :catch_57
    .catchall {:try_start_f .. :try_end_4f} :catchall_55

    .line 78
    .end local v1    # "posixMode":I
    if-eqz v0, :cond_54

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 81
    :cond_54
    return-void

    .line 78
    :catchall_55
    move-exception v1

    goto :goto_60

    .line 74
    :catch_57
    move-exception v1

    goto :goto_5a

    :catch_59
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    :goto_5a
    :try_start_5a
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "fifo":Ljava/io/File;
    .end local p1    # "fs":Lcom/topjohnwu/superuser/internal/IFileSystemService;
    .end local p2    # "file":Ljava/io/File;
    .end local p3    # "mode":I
    throw v2
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_55

    .line 78
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "fifo":Ljava/io/File;
    .restart local p1    # "fs":Lcom/topjohnwu/superuser/internal/IFileSystemService;
    .restart local p2    # "file":Ljava/io/File;
    .restart local p3    # "mode":I
    :goto_60
    if-eqz v0, :cond_65

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 80
    :cond_65
    throw v1
.end method

.method private ensureOpen()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 86
    return-void

    .line 85
    :cond_7
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method private read0(Ljava/nio/ByteBuffer;J)I
    .registers 12
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
    :goto_d
    if-le v0, v3, :cond_74

    .line 117
    :try_start_f
    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fdLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_f .. :try_end_12} :catch_66
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_64
    .catchall {:try_start_f .. :try_end_12} :catchall_62

    .line 118
    :try_start_12
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_56

    .line 120
    :cond_1f
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
    if-nez v5, :cond_37

    .line 122
    monitor-exit v4

    goto :goto_74

    .line 123
    :cond_37
    add-int v6, v3, v5

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 125
    const/4 v6, 0x0

    .local v6, "sz":I
    :goto_3d
    if-ge v6, v5, :cond_47

    .line 126
    iget-object v7, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read:Ljava/io/FileDescriptor;

    invoke-static {v7, p1}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_3d

    .line 128
    .end local v6    # "sz":I
    :cond_47
    monitor-exit v4
    :try_end_48
    .catchall {:try_start_12 .. :try_end_48} :catchall_5f

    .line 129
    const-wide/16 v6, 0x0

    cmp-long v4, p2, v6

    if-ltz v4, :cond_50

    .line 130
    int-to-long v6, v5

    add-long/2addr p2, v6

    .line 115
    .end local v5    # "len":I
    :cond_50
    :try_start_50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4
    :try_end_54
    .catch Landroid/system/ErrnoException; {:try_start_50 .. :try_end_54} :catch_66
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_54} :catch_64
    .catchall {:try_start_50 .. :try_end_54} :catchall_62

    move v3, v4

    goto :goto_d

    .line 119
    :cond_56
    :goto_56
    :try_start_56
    monitor-exit v4
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_5f

    .line 138
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 139
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->end(Z)V

    .line 119
    const/4 v4, -0x1

    return v4

    .line 128
    :catchall_5f
    move-exception v5

    :try_start_60
    monitor-exit v4
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    .end local v0    # "limit":I
    .end local v1    # "initial":I
    .end local v2    # "success":Z
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    .end local p2    # "offset":J
    :try_start_61
    throw v5
    :try_end_62
    .catch Landroid/system/ErrnoException; {:try_start_61 .. :try_end_62} :catch_66
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_62} :catch_64
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    .line 138
    .end local v3    # "pos":I
    .restart local v0    # "limit":I
    .restart local v1    # "initial":I
    .restart local v2    # "success":Z
    .restart local p1    # "dst":Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":J
    :catchall_62
    move-exception v3

    goto :goto_6d

    .line 135
    :catch_64
    move-exception v3

    goto :goto_67

    :catch_66
    move-exception v3

    .line 136
    .local v3, "e":Ljava/lang/Exception;
    :goto_67
    :try_start_67
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "limit":I
    .end local v1    # "initial":I
    .end local v2    # "success":Z
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    .end local p2    # "offset":J
    throw v4
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_62

    .line 138
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "limit":I
    .restart local v1    # "initial":I
    .restart local v2    # "success":Z
    .restart local p1    # "dst":Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":J
    :goto_6d
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 139
    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->end(Z)V

    .line 140
    throw v3

    .line 133
    .local v3, "pos":I
    :cond_74
    :goto_74
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
    .registers 3

    .line 99
    iget v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->mode:I

    const/high16 v1, 0x30000000

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_c

    .line 104
    const/4 v0, 0x0

    return v0

    .line 102
    :sswitch_a
    const/4 v0, 0x1

    return v0

    :sswitch_data_c
    .sparse-switch
        0x10000000 -> :sswitch_a
        0x30000000 -> :sswitch_a
    .end sparse-switch
.end method

.method private writable()Z
    .registers 3

    .line 89
    iget v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->mode:I

    const/high16 v1, 0x30000000

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_c

    .line 94
    const/4 v0, 0x0

    return v0

    .line 92
    :sswitch_a
    const/4 v0, 0x1

    return v0

    :sswitch_data_c
    .sparse-switch
        0x20000000 -> :sswitch_a
        0x30000000 -> :sswitch_a
    .end sparse-switch
.end method

.method private write0(Ljava/nio/ByteBuffer;J)I
    .registers 10
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
    :goto_8
    :try_start_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 173
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fdLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_11
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_11} :catch_4c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_4a
    .catchall {:try_start_8 .. :try_end_11} :catchall_48

    .line 174
    :try_start_11
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_39

    .line 176
    :cond_1e
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

    if-ltz v2, :cond_38

    .line 180
    int-to-long v4, v3

    add-long/2addr p2, v4

    .line 182
    .end local v3    # "len":I
    :cond_38
    goto :goto_8

    .line 175
    :cond_39
    :goto_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_3f

    .line 188
    invoke-virtual {p0, v1}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->end(Z)V

    .line 175
    const/4 v2, -0x1

    return v2

    .line 178
    :catchall_3f
    move-exception v3

    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    .end local v0    # "remaining":I
    .end local v1    # "success":Z
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "offset":J
    :try_start_41
    throw v3
    :try_end_42
    .catch Landroid/system/ErrnoException; {:try_start_41 .. :try_end_42} :catch_4c
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_42} :catch_4a
    .catchall {:try_start_41 .. :try_end_42} :catchall_48

    .line 183
    .restart local v0    # "remaining":I
    .restart local v1    # "success":Z
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":J
    :cond_42
    const/4 v1, 0x1

    .line 184
    nop

    .line 188
    invoke-virtual {p0, v1}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->end(Z)V

    .line 184
    return v0

    .line 188
    :catchall_48
    move-exception v2

    goto :goto_53

    .line 185
    :catch_4a
    move-exception v2

    goto :goto_4d

    :catch_4c
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/Exception;
    :goto_4d
    :try_start_4d
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "remaining":I
    .end local v1    # "success":Z
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "offset":J
    throw v3
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_48

    .line 188
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "remaining":I
    .restart local v1    # "success":Z
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":J
    :goto_53
    invoke-virtual {p0, v1}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->end(Z)V

    .line 189
    throw v2
.end method


# virtual methods
.method public force(Z)V
    .registers 4
    .param p1, "metaData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 267
    :try_start_3
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    invoke-interface {v0, v1, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->sync(IZ)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/IOResult;->checkException()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_10

    .line 270
    nop

    .line 271
    return-void

    .line 268
    :catch_10
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected implCloseChannel()V
    .registers 3

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->close(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    .line 345
    :goto_9
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_c
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read:Ljava/io/FileDescriptor;

    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_11
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_11} :catch_14
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_15

    .line 348
    :catchall_12
    move-exception v1

    goto :goto_1e

    .line 346
    :catch_14
    move-exception v1

    .line 347
    :goto_15
    :try_start_15
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->write:Ljava/io/FileDescriptor;

    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1a
    .catch Landroid/system/ErrnoException; {:try_start_15 .. :try_end_1a} :catch_1b
    .catchall {:try_start_15 .. :try_end_1a} :catchall_12

    goto :goto_1c

    :catch_1b
    move-exception v1

    .line 348
    :goto_1c
    :try_start_1c
    monitor-exit v0

    .line 349
    return-void

    .line 348
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_12

    throw v1
.end method

.method public lock(JJZ)Ljava/nio/channels/FileLock;
    .registers 8
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
    .registers 8
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
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 219
    :try_start_3
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
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_19} :catch_1a

    return-wide v0

    .line 220
    :catch_1a
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public position(J)Lcom/topjohnwu/superuser/internal/RemoteFileChannel;
    .registers 6
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

    if-ltz v0, :cond_1e

    .line 231
    :try_start_9
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->lseek(IJI)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/IOResult;->checkException()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    .line 232
    return-object p0

    .line 233
    :catch_17
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 229
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/FileChannel;
    .registers 3
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
    .registers 3
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
    .registers 4
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

    if-eqz v0, :cond_10

    .line 148
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read0(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0

    .line 147
    :cond_10
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .registers 6
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

    if-ltz v0, :cond_e

    .line 330
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 331
    invoke-direct {p0, p1, p2, p3}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read0(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0

    .line 329
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 9
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    if-ltz p2, :cond_2b

    if-ltz p3, :cond_2b

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_2b

    .line 155
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 156
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->readable()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "sz":I
    move v1, p2

    .local v1, "i":I
    :goto_13
    add-int v2, p2, p3

    if-ge v1, v2, :cond_23

    .line 161
    aget-object v2, p1, v1

    const-wide/16 v3, -0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->read0(Ljava/nio/ByteBuffer;J)I

    move-result v2

    add-int/2addr v0, v2

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 163
    .end local v1    # "i":I
    :cond_23
    int-to-long v1, v0

    return-wide v1

    .line 157
    .end local v0    # "sz":I
    :cond_25
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 154
    :cond_2b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public size()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 242
    :try_start_3
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->size(I)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/IOResult;->tryAndGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_16

    return-wide v0

    .line 243
    :catch_16
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .registers 13
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

    if-eqz v0, :cond_57

    .line 305
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->writable()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 307
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4b

    cmp-long v0, p4, v0

    if-ltz v0, :cond_4b

    .line 310
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 311
    .local v0, "b":Ljava/nio/ByteBuffer;
    const-wide/16 v1, 0x0

    .line 312
    .local v1, "bytes":J
    :goto_21
    cmp-long v3, p4, v1

    if-lez v3, :cond_4a

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

    if-gtz v4, :cond_3b

    .line 316
    goto :goto_4a

    .line 317
    :cond_3b
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
    goto :goto_21

    .line 323
    :cond_4a
    :goto_4a
    return-wide v1

    .line 308
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .end local v1    # "bytes":J
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 306
    :cond_51
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 304
    :cond_57
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .registers 13
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

    if-eqz v0, :cond_57

    .line 279
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->readable()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 281
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4b

    cmp-long v0, p3, v0

    if-ltz v0, :cond_4b

    .line 284
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 285
    .local v0, "b":Ljava/nio/ByteBuffer;
    const-wide/16 v1, 0x0

    .line 286
    .local v1, "bytes":J
    :goto_21
    cmp-long v3, p3, v1

    if-lez v3, :cond_4a

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

    if-gtz v4, :cond_3b

    .line 290
    goto :goto_4a

    .line 291
    :cond_3b
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
    goto :goto_21

    .line 297
    :cond_4a
    :goto_4a
    return-wide v1

    .line 282
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .end local v1    # "bytes":J
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 280
    :cond_51
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 278
    :cond_57
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method public truncate(J)Lcom/topjohnwu/superuser/internal/RemoteFileChannel;
    .registers 5
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

    if-ltz v0, :cond_28

    .line 253
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->writable()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 256
    :try_start_f
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    iget v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->handle:I

    invoke-interface {v0, v1, p1, p2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->ftruncate(IJ)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/IOResult;->checkException()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1b

    .line 257
    return-object p0

    .line 258
    :catch_1b
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 254
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 252
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/FileChannel;
    .registers 3
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
    .registers 3
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
    .registers 8
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
    .registers 4
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

    if-eqz v0, :cond_10

    .line 197
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->write0(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0

    .line 196
    :cond_10
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .registers 6
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

    if-ltz v0, :cond_e

    .line 338
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 339
    invoke-direct {p0, p1, p2, p3}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->write0(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0

    .line 337
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .registers 7
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    if-ltz p2, :cond_29

    if-ltz p3, :cond_29

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_29

    .line 204
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->ensureOpen()V

    .line 205
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->writable()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 207
    const/4 v0, 0x0

    .line 209
    .local v0, "sz":I
    move v1, p2

    .local v1, "i":I
    :goto_13
    add-int v2, p2, p3

    if-ge v1, v2, :cond_21

    .line 210
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/topjohnwu/superuser/internal/RemoteFileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v0, v2

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 212
    .end local v1    # "i":I
    :cond_21
    int-to-long v1, v0

    return-wide v1

    .line 206
    .end local v0    # "sz":I
    :cond_23
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 203
    :cond_29
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
