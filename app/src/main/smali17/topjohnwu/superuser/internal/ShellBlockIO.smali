.class Lcom/topjohnwu/superuser/internal/ShellBlockIO;
.super Lcom/topjohnwu/superuser/internal/ShellIO;
.source "ShellBlockIO.java"


# instance fields
.field private final blockSize:J


# direct methods
.method constructor <init>(Lcom/topjohnwu/superuser/io/SuFile;Ljava/lang/String;)V
    .registers 6
    .param p1, "file"    # Lcom/topjohnwu/superuser/io/SuFile;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/ShellIO;-><init>(Lcom/topjohnwu/superuser/io/SuFile;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x1

    :try_start_4
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockdev --getsize64 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/io/SuFile;->getEscapedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 38
    invoke-static {v0}, Lcom/topjohnwu/superuser/ShellUtils;->fastCmd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_28} :catch_29

    .line 43
    .local v0, "bs":J
    goto :goto_30

    .line 40
    .end local v0    # "bs":J
    :catch_29
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide v1, 0x7fffffffffffffffL

    move-wide v0, v1

    .line 44
    .local v0, "bs":J
    :goto_30
    iput-wide v0, p0, Lcom/topjohnwu/superuser/internal/ShellBlockIO;->blockSize:J

    .line 45
    return-void
.end method


# virtual methods
.method protected alignedRead([BIIII)I
    .registers 10
    .param p1, "b"    # [B
    .param p2, "_off"    # I
    .param p3, "count"    # I
    .param p4, "skip"    # I
    .param p5, "bs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    mul-int v0, p4, p5

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/topjohnwu/superuser/internal/ShellBlockIO;->blockSize:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_e

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellBlockIO;->eof:Z

    .line 57
    const/4 v0, -0x1

    return v0

    .line 59
    :cond_e
    invoke-super/range {p0 .. p5}, Lcom/topjohnwu/superuser/internal/ShellIO;->alignedRead([BIIII)I

    move-result v0

    return v0
.end method

.method protected getConv()Ljava/lang/String;
    .registers 2

    .line 49
    const-string v0, ""

    return-object v0
.end method

.method public length()J
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/topjohnwu/superuser/internal/ShellBlockIO;->blockSize:J

    return-wide v0
.end method

.method public seek(J)V
    .registers 5
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-wide v0, p0, Lcom/topjohnwu/superuser/internal/ShellBlockIO;->blockSize:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_9

    .line 83
    iput-wide p1, p0, Lcom/topjohnwu/superuser/internal/ShellBlockIO;->fileOff:J

    .line 84
    return-void

    .line 82
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot seek pass block size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLength(J)V
    .registers 5
    .param p1, "newLength"    # J

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Block devices have fixed sizes"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-wide v0, p0, Lcom/topjohnwu/superuser/internal/ShellBlockIO;->fileOff:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/topjohnwu/superuser/internal/ShellBlockIO;->blockSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_e

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/topjohnwu/superuser/internal/ShellIO;->write([BII)V

    .line 67
    return-void

    .line 65
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot write pass block size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
