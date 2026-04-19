.class Lcom/topjohnwu/superuser/internal/NIOFactory$1;
.super Lcom/topjohnwu/superuser/nio/FileSystemManager;
.source "NIOFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/topjohnwu/superuser/internal/NIOFactory;->createLocal()Lcom/topjohnwu/superuser/nio/FileSystemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/topjohnwu/superuser/nio/FileSystemManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile(Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/topjohnwu/superuser/internal/LocalFile;

    invoke-direct {v0, p1}, Lcom/topjohnwu/superuser/internal/LocalFile;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getFile(Ljava/lang/String;Ljava/lang/String;)Lcom/topjohnwu/superuser/nio/ExtendedFile;
    .locals 1
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "child"    # Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/topjohnwu/superuser/internal/LocalFile;

    invoke-direct {v0, p1, p2}, Lcom/topjohnwu/superuser/internal/LocalFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public openChannel(Ljava/io/File;I)Ljava/nio/channels/FileChannel;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    nop

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {p2}, Lcom/topjohnwu/superuser/internal/FileUtils;->modeToOptions(I)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method
