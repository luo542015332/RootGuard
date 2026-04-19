.class Lcom/topjohnwu/superuser/internal/RemoteFile;
.super Lcom/topjohnwu/superuser/internal/FileImpl;
.source "RemoteFile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/topjohnwu/superuser/internal/FileImpl<",
        "Lcom/topjohnwu/superuser/internal/RemoteFile;",
        ">;"
    }
.end annotation


# instance fields
.field private final fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;


# direct methods
.method constructor <init>(Lcom/topjohnwu/superuser/internal/IFileSystemService;Ljava/lang/String;)V
    .locals 0
    .param p1, "f"    # Lcom/topjohnwu/superuser/internal/IFileSystemService;
    .param p2, "path"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p2}, Lcom/topjohnwu/superuser/internal/FileImpl;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/topjohnwu/superuser/internal/IFileSystemService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "f"    # Lcom/topjohnwu/superuser/internal/IFileSystemService;
    .param p2, "parent"    # Ljava/lang/String;
    .param p3, "child"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p2, p3}, Lcom/topjohnwu/superuser/internal/FileImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    .line 42
    return-void
.end method

.method private checkAccess(I)Z
    .locals 2
    .param p1, "access"    # I

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->checkAccess(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public canExecute()Z
    .locals 1

    .line 90
    sget v0, Landroid/system/OsConstants;->X_OK:I

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->checkAccess(I)Z

    move-result v0

    return v0
.end method

.method public canRead()Z
    .locals 1

    .line 80
    sget v0, Landroid/system/OsConstants;->R_OK:I

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->checkAccess(I)Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 1

    .line 85
    sget v0, Landroid/system/OsConstants;->W_OK:I

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->checkAccess(I)Z

    move-result v0

    return v0
.end method

.method protected create(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/RemoteFile;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/topjohnwu/superuser/internal/RemoteFile;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-direct {v0, v1, p1}, Lcom/topjohnwu/superuser/internal/RemoteFile;-><init>(Lcom/topjohnwu/superuser/internal/IFileSystemService;Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/RemoteFile;->create(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/RemoteFile;

    move-result-object p1

    return-object p1
.end method

.method protected createArray(I)[Lcom/topjohnwu/superuser/internal/RemoteFile;
    .locals 1
    .param p1, "n"    # I

    .line 57
    new-array v0, p1, [Lcom/topjohnwu/superuser/internal/RemoteFile;

    return-object v0
.end method

.method protected bridge synthetic createArray(I)[Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/RemoteFile;->createArray(I)[Lcom/topjohnwu/superuser/internal/RemoteFile;

    move-result-object p1

    return-object p1
.end method

.method public createNewFile()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->createNewFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/IOResult;->tryAndGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createNewLink(Ljava/lang/String;)Z
    .locals 3
    .param p1, "existing"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->createLink(Ljava/lang/String;Ljava/lang/String;Z)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/IOResult;->tryAndGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createNewSymlink(Ljava/lang/String;)Z
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->createLink(Ljava/lang/String;Ljava/lang/String;Z)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/IOResult;->tryAndGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public delete()Z
    .locals 2

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->delete(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public deleteOnExit()V
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "deleteOnExit() is not supported in RemoteFile"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exists()Z
    .locals 1

    .line 95
    sget v0, Landroid/system/OsConstants;->F_OK:I

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->checkAccess(I)Z

    move-result v0

    return v0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->getCanonicalPath(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/IOResult;->tryAndGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/RemoteFile;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/topjohnwu/superuser/internal/RemoteFile;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/topjohnwu/superuser/internal/RemoteFile;-><init>(Lcom/topjohnwu/superuser/internal/IFileSystemService;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/RemoteFile;

    move-result-object p1

    return-object p1
.end method

.method public getFreeSpace()J
    .locals 3

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->getFreeSpace(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getTotalSpace()J
    .locals 3

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->getTotalSpace(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getUsableSpace()J
    .locals 3

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->getUsableSpace(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public isBlock()Z
    .locals 2

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->getMode(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISBLK(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isCharacter()Z
    .locals 2

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->getMode(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISCHR(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isDirectory()Z
    .locals 2

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->isDirectory(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isFile()Z
    .locals 2

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->isFile(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isHidden()Z
    .locals 2

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->isHidden(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isNamedPipe()Z
    .locals 2

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->getMode(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISFIFO(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isSocket()Z
    .locals 2

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->getMode(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISSOCK(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isSymlink()Z
    .locals 2

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->getMode(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public lastModified()J
    .locals 3

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->lastModified(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1
.end method

.method public length()J
    .locals 3

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->length(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public list()[Ljava/lang/String;
    .locals 2

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public mkdir()Z
    .locals 2

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->mkdir(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public mkdirs()Z
    .locals 2

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->mkdirs(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 342
    .local v0, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-interface {v3, v4, v5}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->openReadStream(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/topjohnwu/superuser/internal/IOResult;->checkException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 348
    nop

    .line 349
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    aget-object v1, v0, v1

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v2

    .line 347
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 343
    :catch_0
    move-exception v3

    .line 344
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 345
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    :goto_0
    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 348
    throw v1
.end method

.method public newOutputStream(Z)Ljava/io/OutputStream;
    .locals 6
    .param p1, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 357
    .local v0, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-interface {v3, v4, v5, p1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->openWriteStream(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Z)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/topjohnwu/superuser/internal/IOResult;->checkException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 363
    nop

    .line 364
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    aget-object v1, v0, v1

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v2

    .line 362
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 358
    :catch_0
    move-exception v3

    .line 359
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 360
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local p1    # "append":Z
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "append":Z
    :goto_0
    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 363
    throw v1
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 3
    .param p1, "dest"    # Ljava/io/File;

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public setExecutable(ZZ)Z
    .locals 2
    .param p1, "executable"    # Z
    .param p2, "ownerOnly"    # Z

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->setExecutable(Ljava/lang/String;ZZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public setLastModified(J)Z
    .locals 2
    .param p1, "time"    # J

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->setLastModified(Ljava/lang/String;J)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public setReadOnly()Z
    .locals 2

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->setReadOnly(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public setReadable(ZZ)Z
    .locals 2
    .param p1, "readable"    # Z
    .param p2, "ownerOnly"    # Z

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->setReadable(Ljava/lang/String;ZZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public setWritable(ZZ)Z
    .locals 2
    .param p1, "writable"    # Z
    .param p2, "ownerOnly"    # Z

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RemoteFile;->fs:Lcom/topjohnwu/superuser/internal/IFileSystemService;

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RemoteFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/topjohnwu/superuser/internal/IFileSystemService;->setWritable(Ljava/lang/String;ZZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method
