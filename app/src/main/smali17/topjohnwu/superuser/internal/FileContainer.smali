.class Lcom/topjohnwu/superuser/internal/FileContainer;
.super Ljava/lang/Object;
.source "FileContainer.java"


# static fields
.field private static final ERROR_MSG:Ljava/lang/String; = "Requested file was not opened!"


# instance fields
.field private final files:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/topjohnwu/superuser/internal/OpenFile;",
            ">;>;"
        }
    .end annotation
.end field

.field private nextHandle:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/topjohnwu/superuser/internal/FileContainer;->nextHandle:I

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/FileContainer;->files:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method declared-synchronized get(I)Lcom/topjohnwu/superuser/internal/OpenFile;
    .registers 7
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 36
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 37
    .local v0, "pid":I
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/FileContainer;->files:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 38
    .local v1, "pidFiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/topjohnwu/superuser/internal/OpenFile;>;"
    if-eqz v1, :cond_21

    .line 40
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/topjohnwu/superuser/internal/OpenFile;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_29

    .line 41
    .local v2, "h":Lcom/topjohnwu/superuser/internal/OpenFile;
    if-eqz v2, :cond_19

    .line 43
    monitor-exit p0

    return-object v2

    .line 42
    :cond_19
    :try_start_19
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Requested file was not opened!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 39
    .end local v2    # "h":Lcom/topjohnwu/superuser/internal/OpenFile;
    .end local p0    # "this":Lcom/topjohnwu/superuser/internal/FileContainer;
    :cond_21
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Requested file was not opened!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_29

    .line 35
    .end local v0    # "pid":I
    .end local v1    # "pidFiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/topjohnwu/superuser/internal/OpenFile;>;"
    .end local p1    # "handle":I
    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pidDied(I)V
    .registers 5
    .param p1, "pid"    # I

    monitor-enter p0

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileContainer;->files:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_27

    .line 74
    .local v0, "pidFiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/topjohnwu/superuser/internal/OpenFile;>;"
    if-nez v0, :cond_d

    .line 75
    monitor-exit p0

    return-void

    .line 76
    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/FileContainer;->files:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 77
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 78
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/topjohnwu/superuser/internal/OpenFile;

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/internal/OpenFile;->close()V
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_27

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 80
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/topjohnwu/superuser/internal/FileContainer;
    :cond_25
    monitor-exit p0

    return-void

    .line 72
    .end local v0    # "pidFiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/topjohnwu/superuser/internal/OpenFile;>;"
    .end local p1    # "pid":I
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized put(Lcom/topjohnwu/superuser/internal/OpenFile;)I
    .registers 6
    .param p1, "h"    # Lcom/topjohnwu/superuser/internal/OpenFile;

    monitor-enter p0

    .line 47
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 48
    .local v0, "pid":I
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/FileContainer;->files:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 49
    .local v1, "pidFiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/topjohnwu/superuser/internal/OpenFile;>;"
    if-nez v1, :cond_1a

    .line 50
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 51
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/FileContainer;->files:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    .end local p0    # "this":Lcom/topjohnwu/superuser/internal/FileContainer;
    :cond_1a
    iget v2, p0, Lcom/topjohnwu/superuser/internal/FileContainer;->nextHandle:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/topjohnwu/superuser/internal/FileContainer;->nextHandle:I

    .line 54
    .local v2, "handle":I
    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 55
    monitor-exit p0

    return v2

    .line 46
    .end local v0    # "pid":I
    .end local v1    # "pidFiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/topjohnwu/superuser/internal/OpenFile;>;"
    .end local v2    # "handle":I
    .end local p1    # "h":Lcom/topjohnwu/superuser/internal/OpenFile;
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized remove(I)V
    .registers 6
    .param p1, "handle"    # I

    monitor-enter p0

    .line 59
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 60
    .local v0, "pid":I
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/FileContainer;->files:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_2a

    .line 61
    .local v1, "pidFiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/topjohnwu/superuser/internal/OpenFile;>;"
    if-nez v1, :cond_11

    .line 62
    monitor-exit p0

    return-void

    .line 63
    :cond_11
    :try_start_11
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/topjohnwu/superuser/internal/OpenFile;
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_2a

    .line 64
    .local v2, "h":Lcom/topjohnwu/superuser/internal/OpenFile;
    if-nez v2, :cond_1b

    .line 65
    monitor-exit p0

    return-void

    .line 66
    :cond_1b
    :try_start_1b
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 67
    monitor-enter v2
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_2a

    .line 68
    :try_start_1f
    invoke-virtual {v2}, Lcom/topjohnwu/superuser/internal/OpenFile;->close()V

    .line 69
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_25

    .line 70
    monitor-exit p0

    return-void

    .line 69
    :catchall_25
    move-exception v3

    :goto_26
    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_28

    :try_start_27
    throw v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_2a

    .end local p0    # "this":Lcom/topjohnwu/superuser/internal/FileContainer;
    :catchall_28
    move-exception v3

    goto :goto_26

    .line 58
    .end local v0    # "pid":I
    .end local v1    # "pidFiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/topjohnwu/superuser/internal/OpenFile;>;"
    .end local v2    # "h":Lcom/topjohnwu/superuser/internal/OpenFile;
    .end local p1    # "handle":I
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
