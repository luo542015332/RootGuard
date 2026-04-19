.class Lcom/topjohnwu/superuser/internal/OpenFile;
.super Ljava/lang/Object;
.source "OpenFile.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final FORCE_NO_SPLICE:Z = false


# instance fields
.field private buf:Ljava/nio/ByteBuffer;

.field fd:Ljava/io/FileDescriptor;

.field read:Ljava/io/FileDescriptor;

.field private st:Landroid/system/StructStat;

.field write:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    .line 65
    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method private getBuf()Ljava/nio/ByteBuffer;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->buf:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 51
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->buf:Ljava/nio/ByteBuffer;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 53
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->buf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private getStat()Landroid/system/StructStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->st:Landroid/system/StructStat;

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->st:Landroid/system/StructStat;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->st:Landroid/system/StructStat;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 71
    :try_start_1
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    goto :goto_0

    .end local p0    # "this":Lcom/topjohnwu/superuser/internal/OpenFile;
    :catch_0
    move-exception v0

    .line 73
    :goto_0
    :try_start_2
    iput-object v1, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->read:Ljava/io/FileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 77
    :try_start_3
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 78
    :catch_1
    move-exception v0

    :goto_1
    nop

    .line 79
    :try_start_4
    iput-object v1, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->read:Ljava/io/FileDescriptor;

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->write:Ljava/io/FileDescriptor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    .line 83
    :try_start_5
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 84
    :catch_2
    move-exception v0

    :goto_2
    nop

    .line 85
    :try_start_6
    iput-object v1, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->write:Ljava/io/FileDescriptor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 87
    :cond_2
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized ftruncate(J)V
    .locals 1
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/OpenFile;->ensureOpen()V

    .line 105
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 103
    .end local p0    # "this":Lcom/topjohnwu/superuser/internal/OpenFile;
    .end local p1    # "length":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized lseek(JI)J
    .locals 2
    .param p1, "offset"    # J
    .param p3, "whence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/OpenFile;->ensureOpen()V

    .line 91
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 89
    .end local p0    # "this":Lcom/topjohnwu/superuser/internal/OpenFile;
    .end local p1    # "offset":J
    .end local p3    # "whence":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pread(IJ)I
    .locals 10
    .param p1, "len"    # I
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->write:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_7

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 121
    cmp-long v0, p2, v3

    if-gez v0, :cond_0

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/system/Int64Ref;

    invoke-direct {v2, p2, p3}, Landroid/system/Int64Ref;-><init>(J)V

    goto :goto_0

    .line 122
    .local v4, "inOff":Landroid/system/Int64Ref;
    :goto_1
    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    iget-object v5, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->write:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    int-to-long v7, p1

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/topjohnwu/superuser/internal/FileUtils;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide v0

    .line 123
    .end local v4    # "inOff":Landroid/system/Int64Ref;
    .local v0, "result":J
    goto :goto_7

    .line 124
    .end local v0    # "result":J
    .end local p0    # "this":Lcom/topjohnwu/superuser/internal/OpenFile;
    :cond_1
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/OpenFile;->getStat()Landroid/system/StructStat;

    move-result-object v0

    .line 125
    .local v0, "st":Landroid/system/StructStat;
    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISBLK(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_4

    .line 131
    :cond_2
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/OpenFile;->getBuf()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 132
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 133
    cmp-long v2, p2, v3

    if-gez v2, :cond_3

    .line 134
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2, v1}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    goto :goto_2

    .line 136
    :cond_3
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2, v1, p2, p3}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    .line 138
    :goto_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 139
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    .line 141
    .local v2, "result":J
    long-to-int v4, v2

    .local v4, "sz":I
    :goto_3
    if-lez v4, :cond_4

    .line 142
    iget-object v5, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->write:Ljava/io/FileDescriptor;

    invoke-static {v5, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_3

    .line 141
    :cond_4
    move-wide v0, v2

    goto :goto_7

    .line 127
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "result":J
    .end local v4    # "sz":I
    :cond_5
    :goto_4
    cmp-long v1, p2, v3

    if-gez v1, :cond_6

    :goto_5
    goto :goto_6

    :cond_6
    new-instance v2, Landroid/util/MutableLong;

    invoke-direct {v2, p2, p3}, Landroid/util/MutableLong;-><init>(J)V

    goto :goto_5

    :goto_6
    move-object v1, v2

    .line 128
    .local v1, "inOff":Landroid/util/MutableLong;
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->write:Ljava/io/FileDescriptor;

    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    int-to-long v4, p1

    invoke-static {v2, v3, v1, v4, v5}, Lcom/topjohnwu/superuser/internal/FileUtils;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/util/MutableLong;J)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v1, v2

    .line 129
    .local v1, "result":J
    move-wide v0, v1

    .line 146
    .end local v1    # "result":J
    .local v0, "result":J
    :goto_7
    long-to-int v2, v0

    monitor-exit p0

    return v2

    .line 118
    .end local v0    # "result":J
    :cond_7
    :try_start_1
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .end local p1    # "len":I
    .end local p2    # "offset":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pwrite(IJZ)I
    .locals 16
    .param p1, "len"    # I
    .param p2, "offset"    # J
    .param p4, "exact"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-wide/from16 v2, p2

    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v4, v1, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/topjohnwu/superuser/internal/OpenFile;->read:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_8

    .line 152
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    const-wide/16 v6, 0x0

    if-lt v4, v5, :cond_3

    .line 153
    cmp-long v4, v2, v6

    if-gez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v8, v4

    goto :goto_1

    :cond_0
    new-instance v4, Landroid/system/Int64Ref;

    invoke-direct {v4, v2, v3}, Landroid/system/Int64Ref;-><init>(J)V

    goto :goto_0

    .line 154
    .local v8, "outOff":Landroid/system/Int64Ref;
    :goto_1
    if-eqz p4, :cond_2

    .line 155
    move/from16 v4, p1

    .line 156
    .local v4, "sz":I
    :goto_2
    if-lez v4, :cond_1

    .line 157
    int-to-long v12, v4

    iget-object v5, v1, Lcom/topjohnwu/superuser/internal/OpenFile;->read:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    int-to-long v9, v4

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/topjohnwu/superuser/internal/FileUtils;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v12, v5

    long-to-int v4, v12

    goto :goto_2

    .line 159
    .end local p0    # "this":Lcom/topjohnwu/superuser/internal/OpenFile;
    :cond_1
    monitor-exit p0

    return v0

    .line 161
    .end local v4    # "sz":I
    :cond_2
    :try_start_1
    iget-object v9, v1, Lcom/topjohnwu/superuser/internal/OpenFile;->read:Ljava/io/FileDescriptor;

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    int-to-long v13, v0

    const/4 v15, 0x0

    move-object v12, v8

    invoke-static/range {v9 .. v15}, Lcom/topjohnwu/superuser/internal/FileUtils;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v4, v4

    monitor-exit p0

    return v4

    .line 166
    .end local v8    # "outOff":Landroid/system/Int64Ref;
    :cond_3
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/topjohnwu/superuser/internal/OpenFile;->getBuf()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 167
    .local v4, "buf":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 168
    .local v5, "sz":I
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 169
    if-eqz p4, :cond_4

    .line 170
    :goto_3
    if-le v0, v5, :cond_5

    .line 171
    iget-object v8, v1, Lcom/topjohnwu/superuser/internal/OpenFile;->read:Ljava/io/FileDescriptor;

    invoke-static {v8, v4}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_3

    .line 174
    :cond_4
    iget-object v8, v1, Lcom/topjohnwu/superuser/internal/OpenFile;->read:Ljava/io/FileDescriptor;

    invoke-static {v8, v4}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v8

    move v5, v8

    .line 176
    :cond_5
    move v0, v5

    .line 177
    .end local p1    # "len":I
    .local v0, "len":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 178
    .end local p2    # "offset":J
    .local v2, "offset":J
    :goto_4
    if-lez v5, :cond_7

    .line 179
    cmp-long v8, v2, v6

    if-gez v8, :cond_6

    .line 180
    iget-object v8, v1, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v8, v4}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v8

    sub-int/2addr v5, v8

    goto :goto_4

    .line 182
    :cond_6
    iget-object v8, v1, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v8, v4, v2, v3}, Landroid/system/Os;->pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    .local v8, "w":I
    sub-int/2addr v5, v8

    .line 184
    int-to-long v9, v8

    add-long/2addr v2, v9

    .line 185
    .end local v8    # "w":I
    goto :goto_4

    .line 187
    :cond_7
    monitor-exit p0

    return v0

    .line 151
    .end local v0    # "len":I
    .end local v2    # "offset":J
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v5    # "sz":I
    .restart local p1    # "len":I
    .restart local p2    # "offset":J
    :cond_8
    :try_start_3
    new-instance v4, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v4}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    .end local p1    # "len":I
    .end local p2    # "offset":J
    .end local p4    # "exact":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized size()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/OpenFile;->ensureOpen()V

    .line 96
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    sget v1, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0

    .line 97
    .local v0, "cur":J
    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    sget v5, Landroid/system/OsConstants;->SEEK_END:I

    invoke-static {v4, v2, v3, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 98
    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    sget v5, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {v4, v2, v3, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v2

    .line 99
    .local v2, "sz":J
    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v4, v0, v1, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-wide v2

    .line 94
    .end local v0    # "cur":J
    .end local v2    # "sz":J
    .end local p0    # "this":Lcom/topjohnwu/superuser/internal/OpenFile;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized sync(Z)V
    .locals 1
    .param p1, "metadata"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/OpenFile;->ensureOpen()V

    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 113
    .end local p0    # "this":Lcom/topjohnwu/superuser/internal/OpenFile;
    :cond_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->fdatasync(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    .end local p1    # "metadata":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
