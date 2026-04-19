.class Lcom/topjohnwu/superuser/internal/LocalFile;
.super Lcom/topjohnwu/superuser/internal/FileImpl;
.source "LocalFile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/topjohnwu/superuser/internal/FileImpl<",
        "Lcom/topjohnwu/superuser/internal/LocalFile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathname"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lcom/topjohnwu/superuser/internal/FileImpl;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "child"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/FileImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private createLink(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "soft"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    if-eqz p2, :cond_0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/LocalFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/LocalFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/system/Os;->link(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EEXIST:I

    if-ne v1, v2, :cond_1

    .line 141
    const/4 v1, 0x0

    return v1

    .line 139
    :cond_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected create(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/LocalFile;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/topjohnwu/superuser/internal/LocalFile;

    invoke-direct {v0, p1}, Lcom/topjohnwu/superuser/internal/LocalFile;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/LocalFile;->create(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/LocalFile;

    move-result-object p1

    return-object p1
.end method

.method protected createArray(I)[Lcom/topjohnwu/superuser/internal/LocalFile;
    .locals 1
    .param p1, "n"    # I

    .line 55
    new-array v0, p1, [Lcom/topjohnwu/superuser/internal/LocalFile;

    return-object v0
.end method

.method protected bridge synthetic createArray(I)[Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/LocalFile;->createArray(I)[Lcom/topjohnwu/superuser/internal/LocalFile;

    move-result-object p1

    return-object p1
.end method

.method public createNewLink(Ljava/lang/String;)Z
    .locals 1
    .param p1, "existing"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/topjohnwu/superuser/internal/LocalFile;->createLink(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public createNewSymlink(Ljava/lang/String;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/topjohnwu/superuser/internal/LocalFile;->createLink(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/LocalFile;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/topjohnwu/superuser/internal/LocalFile;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/LocalFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/topjohnwu/superuser/internal/LocalFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/LocalFile;->getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/LocalFile;

    move-result-object p1

    return-object p1
.end method

.method public isBlock()Z
    .locals 2

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/LocalFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    .line 62
    .local v0, "st":Landroid/system/StructStat;
    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISBLK(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 63
    .end local v0    # "st":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    return v1
.end method

.method public isCharacter()Z
    .locals 2

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/LocalFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    .line 72
    .local v0, "st":Landroid/system/StructStat;
    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISCHR(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 73
    .end local v0    # "st":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    return v1
.end method

.method public isNamedPipe()Z
    .locals 2

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/LocalFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    .line 92
    .local v0, "st":Landroid/system/StructStat;
    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISFIFO(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 93
    .end local v0    # "st":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    return v1
.end method

.method public isSocket()Z
    .locals 2

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/LocalFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    .line 102
    .local v0, "st":Landroid/system/StructStat;
    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISSOCK(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 103
    .end local v0    # "st":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    return v1
.end method

.method public isSymlink()Z
    .locals 2

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/LocalFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    .line 82
    .local v0, "st":Landroid/system/StructStat;
    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 83
    .end local v0    # "st":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    return v1
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public newOutputStream(Z)Ljava/io/OutputStream;
    .locals 1
    .param p1, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method
