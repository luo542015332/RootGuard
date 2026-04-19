.class Lcom/topjohnwu/superuser/internal/FileSystemService;
.super Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;
.source "FileSystemService.java"


# static fields
.field static final PIPE_CAPACITY:I = 0x10000


# instance fields
.field private final mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

.field private final streamPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/IFileSystemService$Stub;-><init>()V

    .line 45
    new-instance v0, Lcom/topjohnwu/superuser/internal/FileSystemService$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/topjohnwu/superuser/internal/FileSystemService$1;-><init>(Lcom/topjohnwu/superuser/internal/FileSystemService;I)V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    .line 198
    new-instance v0, Lcom/topjohnwu/superuser/internal/FileContainer;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/FileContainer;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    .line 199
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->streamPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic lambda$openReadStream$1(Lcom/topjohnwu/superuser/internal/OpenFile;Landroid/os/ParcelFileDescriptor;)V
    .locals 4
    .param p0, "f"    # Lcom/topjohnwu/superuser/internal/OpenFile;
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 230
    move-object v0, p0

    .line 231
    .local v0, "of":Lcom/topjohnwu/superuser/internal/OpenFile;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    invoke-static {v1}, Lcom/topjohnwu/superuser/internal/FileUtils;->createFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/topjohnwu/superuser/internal/OpenFile;->write:Ljava/io/FileDescriptor;

    .line 232
    :goto_0
    const/high16 v1, 0x10000

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/topjohnwu/superuser/internal/OpenFile;->pread(IJ)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/OpenFile;->close()V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 230
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/OpenFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "f":Lcom/topjohnwu/superuser/internal/OpenFile;
    .end local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    throw v1
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 233
    .end local v0    # "of":Lcom/topjohnwu/superuser/internal/OpenFile;
    .restart local p0    # "f":Lcom/topjohnwu/superuser/internal/OpenFile;
    .restart local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 234
    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic lambda$openWriteStream$2(Lcom/topjohnwu/superuser/internal/OpenFile;Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p0, "f"    # Lcom/topjohnwu/superuser/internal/OpenFile;
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 250
    move-object v0, p0

    .line 251
    .local v0, "of":Lcom/topjohnwu/superuser/internal/OpenFile;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    invoke-static {v1}, Lcom/topjohnwu/superuser/internal/FileUtils;->createFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/topjohnwu/superuser/internal/OpenFile;->read:Ljava/io/FileDescriptor;

    .line 252
    :goto_0
    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x10000

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/topjohnwu/superuser/internal/OpenFile;->pwrite(IJZ)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/OpenFile;->close()V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 250
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/OpenFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "f":Lcom/topjohnwu/superuser/internal/OpenFile;
    .end local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    throw v1
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 253
    .end local v0    # "of":Lcom/topjohnwu/superuser/internal/OpenFile;
    .restart local p0    # "f":Lcom/topjohnwu/superuser/internal/OpenFile;
    .restart local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 254
    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public checkAccess(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "access"    # I

    .line 148
    :try_start_0
    invoke-static {p1, p2}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    return v1
.end method

.method public close(I)V
    .locals 1
    .param p1, "handle"    # I

    .line 264
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    invoke-virtual {v0, p1}, Lcom/topjohnwu/superuser/internal/FileContainer;->remove(I)V

    .line 265
    return-void
.end method

.method public createLink(Ljava/lang/String;Ljava/lang/String;Z)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 3
    .param p1, "link"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "soft"    # Z

    .line 182
    if-eqz p3, :cond_0

    .line 183
    :try_start_0
    invoke-static {p2, p1}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {p2, p1}, Landroid/system/Os;->link(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_0
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EEXIST:I

    if-ne v1, v2, :cond_1

    .line 189
    new-instance v1, Lcom/topjohnwu/superuser/internal/IOResult;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 191
    :cond_1
    new-instance v1, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v1, v0}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public createNewFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 89
    :try_start_0
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v1, v0}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public ftruncate(IJ)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 2
    .param p1, "handle"    # I
    .param p2, "length"    # J

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    invoke-virtual {v0, p1}, Lcom/topjohnwu/superuser/internal/FileContainer;->get(I)Lcom/topjohnwu/superuser/internal/OpenFile;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/topjohnwu/superuser/internal/OpenFile;->ftruncate(J)V

    .line 308
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 309
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v1, v0}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public getCanonicalPath(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 55
    :try_start_0
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v1, v0}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public getFreeSpace(Ljava/lang/String;)J
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMode(Ljava/lang/String;)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 173
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget v0, v0, Landroid/system/StructStat;->st_mode:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    return v1
.end method

.method public getTotalSpace(Ljava/lang/String;)J
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUsableSpace(Ljava/lang/String;)J
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public isDirectory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public isHidden(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$register$0$com-topjohnwu-superuser-internal-FileSystemService(I)V
    .locals 1
    .param p1, "pid"    # I

    .line 205
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    invoke-virtual {v0, p1}, Lcom/topjohnwu/superuser/internal/FileContainer;->pidDied(I)V

    return-void
.end method

.method public lastModified(Ljava/lang/String;)J
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length(Ljava/lang/String;)J
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lseek(IJI)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 3
    .param p1, "handle"    # I
    .param p2, "offset"    # J
    .param p4, "whence"    # I

    .line 289
    :try_start_0
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    invoke-virtual {v1, p1}, Lcom/topjohnwu/superuser/internal/FileContainer;->get(I)Lcom/topjohnwu/superuser/internal/OpenFile;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Lcom/topjohnwu/superuser/internal/OpenFile;->lseek(JI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 290
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v1, v0}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public mkdir(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    return v0
.end method

.method public mkdirs(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0
.end method

.method public openChannel(Ljava/lang/String;ILjava/lang/String;)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "fifo"    # Ljava/lang/String;

    .line 212
    new-instance v0, Lcom/topjohnwu/superuser/internal/OpenFile;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/OpenFile;-><init>()V

    .line 214
    .local v0, "f":Lcom/topjohnwu/superuser/internal/OpenFile;
    :try_start_0
    sget v1, Landroid/system/OsConstants;->O_NONBLOCK:I

    or-int/2addr v1, p2

    const/16 v2, 0x1b6

    invoke-static {p1, v1, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    .line 215
    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    sget v2, Landroid/system/OsConstants;->O_NONBLOCK:I

    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {p3, v1, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/topjohnwu/superuser/internal/OpenFile;->read:Ljava/io/FileDescriptor;

    .line 216
    sget v1, Landroid/system/OsConstants;->O_WRONLY:I

    sget v3, Landroid/system/OsConstants;->O_NONBLOCK:I

    or-int/2addr v1, v3

    invoke-static {p3, v1, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/topjohnwu/superuser/internal/OpenFile;->write:Ljava/io/FileDescriptor;

    .line 217
    new-instance v1, Lcom/topjohnwu/superuser/internal/IOResult;

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    invoke-virtual {v2, v0}, Lcom/topjohnwu/superuser/internal/FileContainer;->put(Lcom/topjohnwu/superuser/internal/OpenFile;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/OpenFile;->close()V

    .line 220
    new-instance v2, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v2, v1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object v2
.end method

.method public openReadStream(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 226
    new-instance v0, Lcom/topjohnwu/superuser/internal/OpenFile;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/OpenFile;-><init>()V

    .line 228
    .local v0, "f":Lcom/topjohnwu/superuser/internal/OpenFile;
    :try_start_0
    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    .line 229
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->streamPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/topjohnwu/superuser/internal/FileSystemService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p2}, Lcom/topjohnwu/superuser/internal/FileSystemService$$ExternalSyntheticLambda1;-><init>(Lcom/topjohnwu/superuser/internal/OpenFile;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 235
    new-instance v1, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>()V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/OpenFile;->close()V

    .line 238
    new-instance v2, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v2, v1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object v2
.end method

.method public openWriteStream(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Z)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "append"    # Z

    .line 245
    new-instance v0, Lcom/topjohnwu/superuser/internal/OpenFile;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/OpenFile;-><init>()V

    .line 247
    .local v0, "f":Lcom/topjohnwu/superuser/internal/OpenFile;
    :try_start_0
    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    sget v2, Landroid/system/OsConstants;->O_WRONLY:I

    or-int/2addr v1, v2

    if-eqz p3, :cond_0

    sget v2, Landroid/system/OsConstants;->O_APPEND:I

    goto :goto_0

    :cond_0
    sget v2, Landroid/system/OsConstants;->O_TRUNC:I

    :goto_0
    or-int/2addr v1, v2

    .line 248
    .local v1, "mode":I
    const/16 v2, 0x1b6

    invoke-static {p1, v1, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, v0, Lcom/topjohnwu/superuser/internal/OpenFile;->fd:Ljava/io/FileDescriptor;

    .line 249
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->streamPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/topjohnwu/superuser/internal/FileSystemService$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p2}, Lcom/topjohnwu/superuser/internal/FileSystemService$$ExternalSyntheticLambda0;-><init>(Lcom/topjohnwu/superuser/internal/OpenFile;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 255
    new-instance v2, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v2}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>()V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 256
    .end local v1    # "mode":I
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/OpenFile;->close()V

    .line 258
    new-instance v2, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v2, v1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object v2
.end method

.method public pread(IIJ)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 2
    .param p1, "handle"    # I
    .param p2, "len"    # I
    .param p3, "offset"    # J

    .line 270
    :try_start_0
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    invoke-virtual {v1, p1}, Lcom/topjohnwu/superuser/internal/FileContainer;->get(I)Lcom/topjohnwu/superuser/internal/OpenFile;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Lcom/topjohnwu/superuser/internal/OpenFile;->pread(IJ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 271
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v1, v0}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public pwrite(IIJ)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 2
    .param p1, "handle"    # I
    .param p2, "len"    # I
    .param p3, "offset"    # J

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    invoke-virtual {v0, p1}, Lcom/topjohnwu/superuser/internal/FileContainer;->get(I)Lcom/topjohnwu/superuser/internal/OpenFile;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/topjohnwu/superuser/internal/OpenFile;->pwrite(IJZ)I

    .line 280
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 281
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v1, v0}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public register(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "client"    # Landroid/os/IBinder;

    .line 203
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 205
    .local v0, "pid":I
    :try_start_0
    new-instance v1, Lcom/topjohnwu/superuser/internal/FileSystemService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/topjohnwu/superuser/internal/FileSystemService$$ExternalSyntheticLambda2;-><init>(Lcom/topjohnwu/superuser/internal/FileSystemService;I)V

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 207
    return-void
.end method

.method public renameTo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public setExecutable(Ljava/lang/String;ZZ)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "executable"    # Z
    .param p3, "ownerOnly"    # Z

    .line 142
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0, p2, p3}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setLastModified(Ljava/lang/String;J)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "time"    # J

    .line 122
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0, p2, p3}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    return v0
.end method

.method public setReadOnly(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z

    move-result v0

    return v0
.end method

.method public setReadable(Ljava/lang/String;ZZ)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "readable"    # Z
    .param p3, "ownerOnly"    # Z

    .line 137
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0, p2, p3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setWritable(Ljava/lang/String;ZZ)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "writable"    # Z
    .param p3, "ownerOnly"    # Z

    .line 132
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0, p2, p3}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    return v0
.end method

.method public size(I)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 3
    .param p1, "handle"    # I

    .line 298
    :try_start_0
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    invoke-virtual {v1, p1}, Lcom/topjohnwu/superuser/internal/FileContainer;->get(I)Lcom/topjohnwu/superuser/internal/OpenFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/topjohnwu/superuser/internal/OpenFile;->size()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 299
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v1, v0}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public sync(IZ)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 2
    .param p1, "handle"    # I
    .param p2, "metadata"    # Z

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/FileSystemService;->openFiles:Lcom/topjohnwu/superuser/internal/FileContainer;

    invoke-virtual {v0, p1}, Lcom/topjohnwu/superuser/internal/FileContainer;->get(I)Lcom/topjohnwu/superuser/internal/OpenFile;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/topjohnwu/superuser/internal/OpenFile;->sync(Z)V

    .line 318
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 319
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lcom/topjohnwu/superuser/internal/IOResult;

    invoke-direct {v1, v0}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
