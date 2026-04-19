.class public final Lcom/topjohnwu/superuser/io/SuFileOutputStream;
.super Ljava/lang/Object;
.source "SuFileOutputStream.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/topjohnwu/superuser/io/SuFileOutputStream;->open(Ljava/io/File;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static open(Ljava/io/File;Z)Ljava/io/OutputStream;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 70
    instance-of v0, p0, Lcom/topjohnwu/superuser/io/SuFile;

    if-eqz v0, :cond_0

    .line 71
    move-object v0, p0

    check-cast v0, Lcom/topjohnwu/superuser/io/SuFile;

    invoke-static {v0, p1}, Lcom/topjohnwu/superuser/internal/IOFactory;->fifoOut(Lcom/topjohnwu/superuser/io/SuFile;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->isMainShellRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    new-instance v1, Lcom/topjohnwu/superuser/io/SuFile;

    invoke-direct {v1, p0}, Lcom/topjohnwu/superuser/io/SuFile;-><init>(Ljava/io/File;)V

    invoke-static {v1, p1}, Lcom/topjohnwu/superuser/internal/IOFactory;->fifoOut(Lcom/topjohnwu/superuser/io/SuFile;Z)Ljava/io/OutputStream;

    move-result-object v1

    return-object v1

    .line 78
    :cond_1
    throw v0
.end method

.method public static open(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/topjohnwu/superuser/io/SuFileOutputStream;->open(Ljava/io/File;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static open(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/topjohnwu/superuser/io/SuFileOutputStream;->open(Ljava/io/File;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
