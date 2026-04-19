.class public final Lcom/topjohnwu/superuser/io/SuFileInputStream;
.super Ljava/lang/Object;
.source "SuFileInputStream.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(Ljava/io/File;)Ljava/io/InputStream;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 54
    instance-of v0, p0, Lcom/topjohnwu/superuser/io/SuFile;

    if-eqz v0, :cond_0

    .line 55
    move-object v0, p0

    check-cast v0, Lcom/topjohnwu/superuser/io/SuFile;

    invoke-static {v0}, Lcom/topjohnwu/superuser/internal/IOFactory;->fifoIn(Lcom/topjohnwu/superuser/io/SuFile;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->isMainShellRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    new-instance v1, Lcom/topjohnwu/superuser/io/SuFile;

    invoke-direct {v1, p0}, Lcom/topjohnwu/superuser/io/SuFile;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcom/topjohnwu/superuser/internal/IOFactory;->fifoIn(Lcom/topjohnwu/superuser/io/SuFile;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 62
    :cond_1
    throw v0
.end method

.method public static open(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/topjohnwu/superuser/io/SuFileInputStream;->open(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
