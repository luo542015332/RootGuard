.class public Lcom/topjohnwu/superuser/io/SuFile;
.super Lcom/topjohnwu/superuser/nio/ExtendedFile;
.source "SuFile.java"


# instance fields
.field private final escapedPath:Ljava/lang/String;

.field private mShell:Lcom/topjohnwu/superuser/Shell;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/nio/ExtendedFile;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/topjohnwu/superuser/ShellUtils;->escapedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/topjohnwu/superuser/io/SuFile;->escapedPath:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Ljava/io/File;
    .param p2, "child"    # Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/topjohnwu/superuser/io/SuFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;-><init>(Ljava/io/File;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "child"    # Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;-><init>(Ljava/io/File;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .line 109
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;-><init>(Ljava/io/File;)V

    .line 110
    return-void
.end method

.method private cmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object v0

    const-string v1, "@@"

    iget-object v2, p0, Lcom/topjohnwu/superuser/io/SuFile;->escapedPath:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/topjohnwu/superuser/ShellUtils;->fastCmd(Lcom/topjohnwu/superuser/Shell;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cmdBool(Ljava/lang/String;)Z
    .locals 3
    .param p1, "c"    # Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object v0

    const-string v1, "@@"

    iget-object v2, p0, Lcom/topjohnwu/superuser/io/SuFile;->escapedPath:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/topjohnwu/superuser/ShellUtils;->fastCmdResult(Lcom/topjohnwu/superuser/Shell;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private create(Ljava/lang/String;)Lcom/topjohnwu/superuser/io/SuFile;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/topjohnwu/superuser/io/SuFile;

    invoke-direct {v0, p1}, Lcom/topjohnwu/superuser/io/SuFile;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "s":Lcom/topjohnwu/superuser/io/SuFile;
    iget-object v1, p0, Lcom/topjohnwu/superuser/io/SuFile;->mShell:Lcom/topjohnwu/superuser/Shell;

    iput-object v1, v0, Lcom/topjohnwu/superuser/io/SuFile;->mShell:Lcom/topjohnwu/superuser/Shell;

    .line 115
    return-object v0
.end method

.method public static open(Ljava/io/File;Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 2
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "child"    # Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->isMainShellRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/topjohnwu/superuser/io/SuFile;

    invoke-direct {v0, p0, p1}, Lcom/topjohnwu/superuser/io/SuFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {}, Lcom/topjohnwu/superuser/nio/FileSystemManager;->getLocal()Lcom/topjohnwu/superuser/nio/FileSystemManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/topjohnwu/superuser/nio/FileSystemManager;->getFile(Ljava/lang/String;Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0
.end method

.method public static open(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 1
    .param p0, "pathname"    # Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->isMainShellRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/topjohnwu/superuser/io/SuFile;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/io/SuFile;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {}, Lcom/topjohnwu/superuser/nio/FileSystemManager;->getLocal()Lcom/topjohnwu/superuser/nio/FileSystemManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/topjohnwu/superuser/nio/FileSystemManager;->getFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0
.end method

.method public static open(Ljava/lang/String;Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 1
    .param p0, "parent"    # Ljava/lang/String;
    .param p1, "child"    # Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->isMainShellRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/topjohnwu/superuser/io/SuFile;

    invoke-direct {v0, p0, p1}, Lcom/topjohnwu/superuser/io/SuFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {}, Lcom/topjohnwu/superuser/nio/FileSystemManager;->getLocal()Lcom/topjohnwu/superuser/nio/FileSystemManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/topjohnwu/superuser/nio/FileSystemManager;->getFile(Ljava/lang/String;Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0
.end method

.method public static open(Ljava/net/URI;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 2
    .param p0, "uri"    # Ljava/net/URI;

    .line 87
    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->isMainShellRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/topjohnwu/superuser/io/SuFile;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/io/SuFile;-><init>(Ljava/net/URI;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {}, Lcom/topjohnwu/superuser/nio/FileSystemManager;->getLocal()Lcom/topjohnwu/superuser/nio/FileSystemManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/topjohnwu/superuser/nio/FileSystemManager;->getFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0
.end method

.method private setPerms(ZZI)Z
    .locals 5
    .param p1, "set"    # Z
    .param p2, "ownerOnly"    # Z
    .param p3, "b"    # I

    .line 461
    const-string/jumbo v0, "stat -c \'%a\' @@"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 462
    .local v0, "perms":[C
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 463
    const/4 v1, 0x0

    return v1

    .line 464
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 465
    aget-char v3, v0, v1

    add-int/lit8 v3, v3, -0x30

    .line 466
    .local v3, "perm":I
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-nez v1, :cond_2

    .line 467
    :cond_1
    or-int/2addr v3, p3

    goto :goto_1

    .line 469
    :cond_2
    not-int v4, p3

    and-int/2addr v3, v4

    .line 470
    :goto_1
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v1

    .line 464
    .end local v3    # "perm":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    .end local v1    # "i":I
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private statFS(Ljava/lang/String;)J
    .locals 6
    .param p1, "fmt"    # Ljava/lang/String;

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stat -fc \'%S "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' @@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "res":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    const-wide v3, 0x7fffffffffffffffL

    if-eq v1, v2, :cond_0

    .line 303
    return-wide v3

    .line 305
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v1, v3

    return-wide v1

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/NumberFormatException;
    return-wide v3
.end method


# virtual methods
.method public canExecute()Z
    .locals 1

    .line 161
    const-string v0, "[ -x @@ ]"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canRead()Z
    .locals 1

    .line 166
    const-string v0, "[ -r @@ ]"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 1

    .line 171
    const-string v0, "[ -w @@ ]"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clear()Z
    .locals 1

    .line 240
    const-string v0, "echo -n > @@"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public createNewFile()Z
    .locals 1

    .line 176
    const-string v0, "[ ! -e @@ ] && echo -n > @@"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public createNewLink(Ljava/lang/String;)Z
    .locals 2
    .param p1, "existing"    # Ljava/lang/String;

    .line 190
    invoke-static {p1}, Lcom/topjohnwu/superuser/ShellUtils;->escapedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ ! -d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ] && ln @@ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public createNewSymlink(Ljava/lang/String;)Z
    .locals 2
    .param p1, "target"    # Ljava/lang/String;

    .line 205
    invoke-static {p1}, Lcom/topjohnwu/superuser/ShellUtils;->escapedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ ! -d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ] && ln -s @@ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public delete()Z
    .locals 1

    .line 219
    const-string v0, "rm -f @@ || rmdir -f @@"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteOnExit()V
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported SuFile operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteRecursive()Z
    .locals 1

    .line 231
    const-string v0, "rm -rf @@"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .locals 1

    .line 253
    const-string v0, "[ -e @@ ]"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAbsoluteFile()Lcom/topjohnwu/superuser/io/SuFile;
    .locals 0

    .line 266
    return-object p0
.end method

.method public bridge synthetic getAbsoluteFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getAbsoluteFile()Lcom/topjohnwu/superuser/io/SuFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAbsoluteFile()Ljava/io/File;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getAbsoluteFile()Lcom/topjohnwu/superuser/io/SuFile;

    move-result-object v0

    return-object v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalFile()Lcom/topjohnwu/superuser/io/SuFile;
    .locals 1

    .line 291
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->create(Ljava/lang/String;)Lcom/topjohnwu/superuser/io/SuFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCanonicalFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getCanonicalFile()Lcom/topjohnwu/superuser/io/SuFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCanonicalFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getCanonicalFile()Lcom/topjohnwu/superuser/io/SuFile;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .locals 2

    .line 278
    const-string v0, "readlink -f @@"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/io/SuFile;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/topjohnwu/superuser/io/SuFile;

    invoke-direct {v0, p0, p1}, Lcom/topjohnwu/superuser/io/SuFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .local v0, "s":Lcom/topjohnwu/superuser/io/SuFile;
    iget-object v1, p0, Lcom/topjohnwu/superuser/io/SuFile;->mShell:Lcom/topjohnwu/superuser/Shell;

    iput-object v1, v0, Lcom/topjohnwu/superuser/io/SuFile;->mShell:Lcom/topjohnwu/superuser/Shell;

    .line 123
    return-object v0
.end method

.method public bridge synthetic getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/io/SuFile;->getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/io/SuFile;

    move-result-object p1

    return-object p1
.end method

.method public getEscapedPath()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/topjohnwu/superuser/io/SuFile;->escapedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeSpace()J
    .locals 2

    .line 320
    const-string v0, "%f"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->statFS(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getParentFile()Lcom/topjohnwu/superuser/io/SuFile;
    .locals 2

    .line 296
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "parent":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->create(Ljava/lang/String;)Lcom/topjohnwu/superuser/io/SuFile;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getParentFile()Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getParentFile()Lcom/topjohnwu/superuser/io/SuFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParentFile()Ljava/io/File;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getParentFile()Lcom/topjohnwu/superuser/io/SuFile;

    move-result-object v0

    return-object v0
.end method

.method public getShell()Lcom/topjohnwu/superuser/Shell;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/topjohnwu/superuser/io/SuFile;->mShell:Lcom/topjohnwu/superuser/Shell;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->getShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTotalSpace()J
    .locals 2

    .line 331
    const-string v0, "%b"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->statFS(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUsableSpace()J
    .locals 2

    .line 342
    const-string v0, "%a"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->statFS(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isBlock()Z
    .locals 1

    .line 360
    const-string v0, "[ -b @@ ]"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCharacter()Z
    .locals 1

    .line 368
    const-string v0, "[ -c @@ ]"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 347
    const-string v0, "[ -d @@ ]"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 1

    .line 352
    const-string v0, "[ -f @@ ]"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNamedPipe()Z
    .locals 1

    .line 384
    const-string v0, "[ -p @@ ]"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSocket()Z
    .locals 1

    .line 392
    const-string v0, "[ -S @@ ]"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSymlink()Z
    .locals 1

    .line 376
    const-string v0, "[ -L @@ ]"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 4

    .line 405
    :try_start_0
    const-string/jumbo v0, "stat -c \'%Y\' @@"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public length()J
    .locals 2

    .line 420
    :try_start_0
    const-string/jumbo v0, "stat -c \'%s\' @@"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 1

    .line 550
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .locals 5
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .line 562
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 563
    return-object v1

    .line 564
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ls -a "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/topjohnwu/superuser/io/SuFile;->escapedPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "cmd":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell;->newJob()Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/topjohnwu/superuser/Shell$Job;->add([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 566
    invoke-virtual {v2, v3, v1}, Lcom/topjohnwu/superuser/Shell$Job;->to(Ljava/util/List;Ljava/util/List;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v1

    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v1

    .line 567
    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 568
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 569
    .local v3, "name":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p1, :cond_2

    .line 570
    invoke-interface {p1, p0, v3}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 571
    :cond_1
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    .line 573
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 574
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :cond_3
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public listFiles()[Lcom/topjohnwu/superuser/io/SuFile;
    .locals 5

    .line 587
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 588
    return-object v1

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->list()[Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, "ss":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 591
    return-object v1

    .line 592
    :cond_1
    array-length v1, v0

    .line 593
    .local v1, "n":I
    new-array v2, v1, [Lcom/topjohnwu/superuser/io/SuFile;

    .line 594
    .local v2, "fs":[Lcom/topjohnwu/superuser/io/SuFile;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 595
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/topjohnwu/superuser/io/SuFile;->getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/io/SuFile;

    move-result-object v4

    aput-object v4, v2, v3

    .line 594
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 597
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method public listFiles(Ljava/io/FileFilter;)[Lcom/topjohnwu/superuser/io/SuFile;
    .locals 8
    .param p1, "filter"    # Ljava/io/FileFilter;

    .line 633
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->list()[Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "ss":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 635
    const/4 v1, 0x0

    return-object v1

    .line 636
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/topjohnwu/superuser/io/SuFile;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 638
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/topjohnwu/superuser/io/SuFile;->getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/io/SuFile;

    move-result-object v6

    .line 639
    .local v6, "f":Lcom/topjohnwu/superuser/io/SuFile;
    if-eqz p1, :cond_1

    invoke-interface {p1, v6}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 640
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "f":Lcom/topjohnwu/superuser/io/SuFile;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 642
    :cond_3
    new-array v2, v3, [Lcom/topjohnwu/superuser/io/SuFile;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/topjohnwu/superuser/io/SuFile;

    return-object v2
.end method

.method public listFiles(Ljava/io/FilenameFilter;)[Lcom/topjohnwu/superuser/io/SuFile;
    .locals 5
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .line 610
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 611
    return-object v1

    .line 612
    :cond_0
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/io/SuFile;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "ss":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 614
    return-object v1

    .line 615
    :cond_1
    array-length v1, v0

    .line 616
    .local v1, "n":I
    new-array v2, v1, [Lcom/topjohnwu/superuser/io/SuFile;

    .line 617
    .local v2, "fs":[Lcom/topjohnwu/superuser/io/SuFile;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 618
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/topjohnwu/superuser/io/SuFile;->getChildFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/io/SuFile;

    move-result-object v4

    aput-object v4, v2, v3

    .line 617
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 620
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method public bridge synthetic listFiles()[Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->listFiles()[Lcom/topjohnwu/superuser/io/SuFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listFiles(Ljava/io/FileFilter;)[Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/io/SuFile;->listFiles(Ljava/io/FileFilter;)[Lcom/topjohnwu/superuser/io/SuFile;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic listFiles(Ljava/io/FilenameFilter;)[Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/io/SuFile;->listFiles(Ljava/io/FilenameFilter;)[Lcom/topjohnwu/superuser/io/SuFile;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic listFiles()[Ljava/io/File;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->listFiles()[Lcom/topjohnwu/superuser/io/SuFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/io/SuFile;->listFiles(Ljava/io/FileFilter;)[Lcom/topjohnwu/superuser/io/SuFile;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/io/SuFile;->listFiles(Ljava/io/FilenameFilter;)[Lcom/topjohnwu/superuser/io/SuFile;

    move-result-object p1

    return-object p1
.end method

.method public mkdir()Z
    .locals 1

    .line 433
    const-string v0, "mkdir @@"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public mkdirs()Z
    .locals 1

    .line 445
    const-string v0, "mkdir -p @@"

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    invoke-static {p0}, Lcom/topjohnwu/superuser/internal/IOFactory;->fifoIn(Lcom/topjohnwu/superuser/io/SuFile;)Ljava/io/InputStream;

    move-result-object v0

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

    .line 654
    invoke-static {p0, p1}, Lcom/topjohnwu/superuser/internal/IOFactory;->fifoOut(Lcom/topjohnwu/superuser/io/SuFile;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 3
    .param p1, "dest"    # Ljava/io/File;

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mv -f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/topjohnwu/superuser/io/SuFile;->escapedPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/topjohnwu/superuser/ShellUtils;->escapedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "cmd":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/topjohnwu/superuser/ShellUtils;->fastCmdResult(Lcom/topjohnwu/superuser/Shell;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setExecutable(ZZ)Z
    .locals 1
    .param p1, "executable"    # Z
    .param p2, "ownerOnly"    # Z

    .line 484
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/topjohnwu/superuser/io/SuFile;->setPerms(ZZI)Z

    move-result v0

    return v0
.end method

.method public setLastModified(J)Z
    .locals 4
    .param p1, "time"    # J

    .line 536
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmm"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 537
    .local v0, "df":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "date":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ -e @@ ] && touch -t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " @@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/topjohnwu/superuser/io/SuFile;->cmdBool(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public setReadOnly()Z
    .locals 2

    .line 521
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->setWritable(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v0}, Lcom/topjohnwu/superuser/io/SuFile;->setExecutable(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setReadable(ZZ)Z
    .locals 1
    .param p1, "readable"    # Z
    .param p2, "ownerOnly"    # Z

    .line 497
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/topjohnwu/superuser/io/SuFile;->setPerms(ZZI)Z

    move-result v0

    return v0
.end method

.method public setShell(Lcom/topjohnwu/superuser/Shell;)V
    .locals 0
    .param p1, "shell"    # Lcom/topjohnwu/superuser/Shell;

    .line 142
    iput-object p1, p0, Lcom/topjohnwu/superuser/io/SuFile;->mShell:Lcom/topjohnwu/superuser/Shell;

    .line 143
    return-void
.end method

.method public setWritable(ZZ)Z
    .locals 1
    .param p1, "writable"    # Z
    .param p2, "ownerOnly"    # Z

    .line 509
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/topjohnwu/superuser/io/SuFile;->setPerms(ZZI)Z

    move-result v0

    return v0
.end method
