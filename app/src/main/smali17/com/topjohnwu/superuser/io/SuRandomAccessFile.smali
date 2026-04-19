.class public abstract Lcom/topjohnwu/superuser/io/SuRandomAccessFile;
.super Ljava/lang/Object;
.source "SuRandomAccessFile.java"

# interfaces
.implements Ljava/io/DataInput;
.implements Ljava/io/DataOutput;
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(Ljava/io/File;Ljava/lang/String;)Lcom/topjohnwu/superuser/io/SuRandomAccessFile;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 59
    instance-of v0, p0, Lcom/topjohnwu/superuser/io/SuFile;

    if-eqz v0, :cond_0

    .line 60
    move-object v0, p0

    check-cast v0, Lcom/topjohnwu/superuser/io/SuFile;

    invoke-static {v0, p1}, Lcom/topjohnwu/superuser/internal/IOFactory;->shellIO(Lcom/topjohnwu/superuser/io/SuFile;Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/ShellIO;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/topjohnwu/superuser/internal/IOFactory;->raf(Ljava/io/File;Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/RAFWrapper;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Lcom/topjohnwu/superuser/io/SuFile;

    invoke-direct {v1, p0}, Lcom/topjohnwu/superuser/io/SuFile;-><init>(Ljava/io/File;)V

    invoke-static {v1, p1}, Lcom/topjohnwu/superuser/internal/IOFactory;->shellIO(Lcom/topjohnwu/superuser/io/SuFile;Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/ShellIO;

    move-result-object v1

    return-object v1
.end method

.method public static open(Ljava/lang/String;Ljava/lang/String;)Lcom/topjohnwu/superuser/io/SuRandomAccessFile;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/topjohnwu/superuser/io/SuRandomAccessFile;->open(Ljava/io/File;Ljava/lang/String;)Lcom/topjohnwu/superuser/io/SuRandomAccessFile;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getFilePointer()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract length()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract seek(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setLength(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
