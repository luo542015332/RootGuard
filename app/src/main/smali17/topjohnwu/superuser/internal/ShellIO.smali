.class Lcom/topjohnwu/superuser/internal/ShellIO;
.super Lcom/topjohnwu/superuser/io/SuRandomAccessFile;
.source "ShellIO.java"

# interfaces
.implements Lcom/topjohnwu/superuser/internal/DataInputImpl;
.implements Lcom/topjohnwu/superuser/internal/DataOutputImpl;


# static fields
.field private static final TAG:Ljava/lang/String; = "SHELLIO"


# instance fields
.field eof:Z

.field private final file:Lcom/topjohnwu/superuser/io/SuFile;

.field fileOff:J

.field private readOnly:Z


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

    .line 48
    invoke-direct {p0}, Lcom/topjohnwu/superuser/io/SuRandomAccessFile;-><init>()V

    .line 49
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "No such file or directory"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "fnf":Ljava/io/FileNotFoundException;
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->file:Lcom/topjohnwu/superuser/io/SuFile;

    .line 51
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/io/SuFile;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_64

    .line 53
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    .line 54
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_66

    :cond_1e
    goto :goto_3e

    :sswitch_1f
    const-string v1, "rw"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x2

    goto :goto_3f

    :sswitch_29
    const-string/jumbo v1, "w"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v2

    goto :goto_3f

    :sswitch_34
    const-string v1, "r"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    goto :goto_3f

    :goto_3e
    const/4 v1, -0x1

    :goto_3f
    packed-switch v1, :pswitch_data_74

    goto :goto_63

    .line 65
    :pswitch_43
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/io/SuFile;->exists()Z

    move-result v1

    if-nez v1, :cond_63

    invoke-virtual {p1}, Lcom/topjohnwu/superuser/io/SuFile;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_50

    goto :goto_63

    .line 66
    :cond_50
    throw v0

    .line 61
    :pswitch_51
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/io/SuFile;->clear()Z

    move-result v1

    if-eqz v1, :cond_58

    goto :goto_63

    .line 62
    :cond_58
    throw v0

    .line 56
    :pswitch_59
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/io/SuFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 58
    iput-boolean v2, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->readOnly:Z

    .line 59
    goto :goto_63

    .line 57
    :cond_62
    throw v0

    .line 69
    :cond_63
    :goto_63
    return-void

    .line 52
    :cond_64
    throw v0

    nop

    :sswitch_data_66
    .sparse-switch
        0x72 -> :sswitch_34
        0x77 -> :sswitch_29
        0xe45 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_59
        :pswitch_51
        :pswitch_43
    .end packed-switch
.end method

.method static get(Lcom/topjohnwu/superuser/io/SuFile;Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/ShellIO;
    .registers 3
    .param p0, "file"    # Lcom/topjohnwu/superuser/io/SuFile;
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->isBlock()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 44
    new-instance v0, Lcom/topjohnwu/superuser/internal/ShellBlockIO;

    invoke-direct {v0, p0, p1}, Lcom/topjohnwu/superuser/internal/ShellBlockIO;-><init>(Lcom/topjohnwu/superuser/io/SuFile;Ljava/lang/String;)V

    return-object v0

    .line 45
    :cond_c
    new-instance v0, Lcom/topjohnwu/superuser/internal/ShellIO;

    invoke-direct {v0, p0, p1}, Lcom/topjohnwu/superuser/internal/ShellIO;-><init>(Lcom/topjohnwu/superuser/io/SuFile;Ljava/lang/String;)V

    return-object v0
.end method

.method private write0([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->file:Lcom/topjohnwu/superuser/io/SuFile;

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/io/SuFile;->getShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object v0

    new-instance v1, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda1;-><init>(Lcom/topjohnwu/superuser/internal/ShellIO;I[BI)V

    invoke-virtual {v0, v1}, Lcom/topjohnwu/superuser/Shell;->execTask(Lcom/topjohnwu/superuser/Shell$Task;)V

    .line 113
    iget-wide v0, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    .line 114
    return-void
.end method


# virtual methods
.method protected alignedRead([BIIII)I
    .registers 22
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

    .line 164
    move-object/from16 v9, p0

    iget-boolean v0, v9, Lcom/topjohnwu/superuser/internal/ShellIO;->eof:Z

    const/4 v10, 0x0

    if-eqz v0, :cond_8

    .line 165
    return v10

    .line 166
    :cond_8
    const/4 v11, 0x1

    new-array v12, v11, [I

    .line 167
    .local v12, "total":[I
    mul-int v13, p3, p5

    .line 168
    .local v13, "len":I
    iget-object v0, v9, Lcom/topjohnwu/superuser/internal/ShellIO;->file:Lcom/topjohnwu/superuser/io/SuFile;

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/io/SuFile;->getShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object v14

    new-instance v15, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p4

    move/from16 v5, p3

    move v6, v13

    move-object v7, v12

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda2;-><init>(Lcom/topjohnwu/superuser/internal/ShellIO;IIIII[I[B)V

    invoke-virtual {v14, v15}, Lcom/topjohnwu/superuser/Shell;->execTask(Lcom/topjohnwu/superuser/Shell$Task;)V

    .line 186
    aget v0, v12, v10

    if-eqz v0, :cond_32

    aget v0, v12, v10

    if-eq v0, v13, :cond_34

    .line 187
    :cond_32
    iput-boolean v11, v9, Lcom/topjohnwu/superuser/internal/ShellIO;->eof:Z

    .line 188
    :cond_34
    aget v0, v12, v10

    return v0
.end method

.method public close()V
    .registers 1

    .line 282
    return-void
.end method

.method protected getConv()Ljava/lang/String;
    .registers 2

    .line 72
    const-string v0, "conv=notrunc"

    return-object v0
.end method

.method public getFilePointer()J
    .registers 3

    .line 269
    iget-wide v0, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    return-wide v0
.end method

.method synthetic lambda$alignedRead$1$com-topjohnwu-superuser-internal-ShellIO(IIIII[I[BLjava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .registers 21
    .param p1, "_off"    # I
    .param p2, "bs"    # I
    .param p3, "skip"    # I
    .param p4, "count"    # I
    .param p5, "len"    # I
    .param p6, "total"    # [I
    .param p7, "b"    # [B
    .param p8, "in"    # Ljava/io/OutputStream;
    .param p9, "out"    # Ljava/io/InputStream;
    .param p10, "err"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    move v0, p1

    .line 170
    .local v0, "off":I
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object v2, p0

    iget-object v3, v2, Lcom/topjohnwu/superuser/internal/ShellIO;->file:Lcom/topjohnwu/superuser/io/SuFile;

    .line 172
    invoke-virtual {v3}, Lcom/topjohnwu/superuser/io/SuFile;->getEscapedPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v3

    .line 170
    const-string v4, "dd if=%s ibs=%d skip=%d count=%d obs=%d 2>/dev/null; echo >&2\n"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "cmd":Ljava/lang/String;
    const-string v3, "SHELLIO"

    invoke-static {v3, v1}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    move-object/from16 v4, p8

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    .line 175
    invoke-virtual/range {p8 .. p8}, Ljava/io/OutputStream;->flush()V

    .line 178
    :goto_37
    const/4 v3, 0x0

    aget v5, p6, v3

    move v6, p5

    if-eq v5, v6, :cond_43

    invoke-virtual/range {p10 .. p10}, Ljava/io/InputStream;->available()I

    move-result v5

    if-eqz v5, :cond_49

    :cond_43
    invoke-virtual/range {p9 .. p9}, Ljava/io/InputStream;->available()I

    move-result v5

    if-eqz v5, :cond_5c

    .line 179
    :cond_49
    invoke-virtual/range {p9 .. p9}, Ljava/io/InputStream;->available()I

    move-result v5

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    invoke-virtual {v8, v7, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 180
    .local v5, "read":I
    add-int/2addr v0, v5

    .line 181
    aget v9, p6, v3

    add-int/2addr v9, v5

    aput v9, p6, v3

    .line 182
    .end local v5    # "read":I
    goto :goto_37

    .line 184
    :cond_5c
    move-object/from16 v7, p7

    move-object/from16 v8, p9

    sget-object v3, Lcom/topjohnwu/superuser/internal/IOFactory;->JUNK:[B

    move-object/from16 v5, p10

    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    .line 185
    return-void
.end method

.method synthetic lambda$setLength$2$com-topjohnwu-superuser-internal-ShellIO(JLjava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .registers 9
    .param p1, "newLength"    # J
    .param p3, "in"    # Ljava/io/OutputStream;
    .param p4, "out"    # Ljava/io/InputStream;
    .param p5, "err"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->file:Lcom/topjohnwu/superuser/io/SuFile;

    .line 253
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/io/SuFile;->getEscapedPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 251
    const-string v2, "dd of=%s bs=%d seek=1 count=0 2>/dev/null; echo\n"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "cmd":Ljava/lang/String;
    const-string v1, "SHELLIO"

    invoke-static {v1, v0}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 256
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 258
    sget-object v1, Lcom/topjohnwu/superuser/internal/IOFactory;->JUNK:[B

    invoke-virtual {p4, v1}, Ljava/io/InputStream;->read([B)I

    .line 259
    return-void
.end method

.method synthetic lambda$write0$0$com-topjohnwu-superuser-internal-ShellIO(I[BILjava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .registers 12
    .param p1, "len"    # I
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "in"    # Ljava/io/OutputStream;
    .param p5, "out"    # Ljava/io/InputStream;
    .param p6, "err"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-wide v0, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    .line 97
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->file:Lcom/topjohnwu/superuser/io/SuFile;

    .line 99
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/io/SuFile;->getEscapedPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/ShellIO;->getConv()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 97
    const-string v2, "dd of=%s bs=%d count=1 %s 2>/dev/null; echo\n"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "cmd":Ljava/lang/String;
    goto :goto_43

    .line 101
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_23
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->file:Lcom/topjohnwu/superuser/io/SuFile;

    .line 103
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/io/SuFile;->getEscapedPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/ShellIO;->getConv()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 101
    const-string v2, "dd of=%s ibs=%d count=1 obs=%d seek=1 %s 2>/dev/null; echo\n"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0    # "cmd":Ljava/lang/String;
    :goto_43
    const-string v1, "SHELLIO"

    invoke-static {v1, v0}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 107
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    .line 108
    invoke-virtual {p4, p2, p3, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 109
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    .line 111
    sget-object v1, Lcom/topjohnwu/superuser/internal/IOFactory;->JUNK:[B

    invoke-virtual {p5, v1}, Ljava/io/InputStream;->read([B)I

    .line 112
    return-void
.end method

.method public length()J
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->file:Lcom/topjohnwu/superuser/io/SuFile;

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/io/SuFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-super {p0}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-super {p0, p1}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 22
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    if-ltz v8, :cond_89

    if-ltz v9, :cond_89

    add-int v0, v8, v9

    array-length v1, v7

    if-gt v0, v1, :cond_89

    .line 130
    if-nez v9, :cond_15

    .line 131
    const/4 v0, 0x0

    return v0

    .line 132
    :cond_15
    iget-boolean v0, v6, Lcom/topjohnwu/superuser/internal/ShellIO;->eof:Z

    const/4 v10, -0x1

    if-eqz v0, :cond_1b

    .line 133
    return v10

    .line 135
    :cond_1b
    iget-wide v0, v6, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    int-to-long v2, v9

    invoke-static {v0, v1, v2, v3}, Lcom/topjohnwu/superuser/ShellUtils;->gcd(JJ)J

    move-result-wide v0

    long-to-int v11, v0

    .line 136
    .local v11, "bs":I
    const/16 v0, 0x200

    if-ge v11, v0, :cond_6c

    if-ge v9, v0, :cond_2a

    goto :goto_6c

    .line 142
    :cond_2a
    const/16 v11, 0x1000

    .line 144
    iget-wide v0, v6, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    int-to-long v2, v11

    div-long v12, v0, v2

    .line 145
    .local v12, "skip":J
    int-to-long v2, v9

    add-long/2addr v0, v2

    int-to-long v2, v11

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    int-to-long v2, v11

    div-long/2addr v0, v2

    sub-long/2addr v0, v12

    long-to-int v14, v0

    .line 146
    .local v14, "count":I
    mul-int v0, v14, v11

    new-array v15, v0, [B

    .line 147
    .local v15, "buf":[B
    int-to-long v0, v11

    mul-long v16, v12, v0

    .line 148
    .local v16, "start":J
    const/4 v2, 0x0

    long-to-int v4, v12

    move-object/from16 v0, p0

    move-object v1, v15

    move v3, v14

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/topjohnwu/superuser/internal/ShellIO;->alignedRead([BIIII)I

    move-result v0

    .line 149
    .local v0, "read":I
    if-lez v0, :cond_6a

    .line 150
    int-to-long v1, v0

    add-long v1, v16, v1

    iget-wide v3, v6, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 151
    .local v1, "valid":I
    if-ge v1, v9, :cond_5c

    .line 152
    const/4 v2, 0x1

    iput-boolean v2, v6, Lcom/topjohnwu/superuser/internal/ShellIO;->eof:Z

    .line 153
    :cond_5c
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 154
    .end local p3    # "len":I
    .local v2, "len":I
    iget-wide v3, v6, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    sub-long v3, v3, v16

    long-to-int v3, v3

    invoke-static {v15, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v2

    goto :goto_7e

    .line 149
    .end local v1    # "valid":I
    .end local v2    # "len":I
    .restart local p3    # "len":I
    :cond_6a
    move v0, v9

    goto :goto_7e

    .line 138
    .end local v0    # "read":I
    .end local v12    # "skip":J
    .end local v14    # "count":I
    .end local v15    # "buf":[B
    .end local v16    # "start":J
    :cond_6c
    :goto_6c
    div-int v3, v9, v11

    iget-wide v0, v6, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    int-to-long v4, v11

    div-long/2addr v0, v4

    long-to-int v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/topjohnwu/superuser/internal/ShellIO;->alignedRead([BIIII)I

    move-result v0

    .line 157
    .end local p3    # "len":I
    .local v0, "len":I
    :goto_7e
    iget-wide v1, v6, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, v6, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    .line 158
    if-nez v0, :cond_87

    goto :goto_88

    :cond_87
    move v10, v0

    :goto_88
    return v10

    .line 129
    .end local v0    # "len":I
    .end local v11    # "bs":I
    .restart local p3    # "len":I
    :cond_89
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    new-instance v0, Lcom/topjohnwu/superuser/internal/ByteOutputStream;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/ByteOutputStream;-><init>()V

    .line 194
    .local v0, "bs":Lcom/topjohnwu/superuser/internal/ByteOutputStream;
    const/4 v1, 0x0

    .line 198
    .local v1, "eos":Z
    :cond_6
    iget-wide v2, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    const-wide/16 v4, 0x200

    div-long/2addr v2, v4

    .line 199
    .local v2, "skip":J
    const/16 v6, 0x200

    new-array v6, v6, [B

    .line 200
    .local v6, "buf":[B
    const/4 v9, 0x0

    const/4 v10, 0x1

    long-to-int v11, v2

    const/16 v12, 0x200

    move-object v7, p0

    move-object v8, v6

    invoke-virtual/range {v7 .. v12}, Lcom/topjohnwu/superuser/internal/ShellIO;->alignedRead([BIIII)I

    move-result v7

    .line 201
    .local v7, "read":I
    const/4 v8, 0x0

    const/16 v9, 0xa

    if-nez v7, :cond_20

    .line 202
    goto :goto_43

    .line 203
    :cond_20
    iget-wide v10, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    mul-long/2addr v4, v2

    sub-long/2addr v10, v4

    long-to-int v4, v10

    .line 204
    .local v4, "i":I
    :goto_25
    if-ge v4, v7, :cond_35

    .line 205
    aget-byte v5, v6, v4

    .line 206
    .local v5, "b":B
    invoke-virtual {v0, v5}, Lcom/topjohnwu/superuser/internal/ByteOutputStream;->write(I)V

    .line 207
    if-ne v5, v9, :cond_32

    .line 208
    add-int/lit8 v4, v4, 0x1

    .line 209
    const/4 v1, 0x1

    .line 210
    goto :goto_35

    .line 204
    .end local v5    # "b":B
    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 213
    :cond_35
    :goto_35
    iget-boolean v5, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->eof:Z

    if-eqz v5, :cond_3d

    .line 215
    if-eq v4, v7, :cond_3d

    .line 216
    iput-boolean v8, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->eof:Z

    .line 218
    .end local v2    # "skip":J
    .end local v4    # "i":I
    .end local v6    # "buf":[B
    .end local v7    # "read":I
    :cond_3d
    iget-boolean v2, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->eof:Z

    if-nez v2, :cond_43

    if-eqz v1, :cond_6

    .line 220
    :cond_43
    :goto_43
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ByteOutputStream;->size()I

    move-result v2

    .line 221
    .local v2, "size":I
    if-nez v2, :cond_4b

    .line 222
    const/4 v3, 0x0

    return-object v3

    .line 224
    :cond_4b
    iget-wide v3, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    .line 227
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ByteOutputStream;->getBuf()[B

    move-result-object v3

    .line 228
    .local v3, "bytes":[B
    add-int/lit8 v4, v2, -0x1

    aget-byte v4, v3, v4

    if-ne v4, v9, :cond_69

    .line 229
    add-int/lit8 v2, v2, -0x1

    .line 230
    if-lez v2, :cond_69

    add-int/lit8 v4, v2, -0x1

    aget-byte v4, v3, v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_69

    .line 231
    add-int/lit8 v2, v2, -0x1

    .line 234
    :cond_69
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v8, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v4
.end method

.method public seek(J)V
    .registers 4
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iput-wide p1, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->eof:Z

    .line 241
    return-void
.end method

.method public setLength(J)V
    .registers 5
    .param p1, "newLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_17

    .line 246
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->file:Lcom/topjohnwu/superuser/io/SuFile;

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/io/SuFile;->clear()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 248
    return-void

    .line 247
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot clear file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_17
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->file:Lcom/topjohnwu/superuser/io/SuFile;

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/io/SuFile;->getShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object v0

    new-instance v1, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/topjohnwu/superuser/internal/ShellIO$$ExternalSyntheticLambda0;-><init>(Lcom/topjohnwu/superuser/internal/ShellIO;J)V

    invoke-virtual {v0, v1}, Lcom/topjohnwu/superuser/Shell;->execTask(Lcom/topjohnwu/superuser/Shell$Task;)V

    .line 260
    return-void
.end method

.method public skipBytes(I)I
    .registers 10
    .param p1, "n"    # I

    .line 274
    if-gtz p1, :cond_4

    .line 275
    const/4 v0, 0x0

    return v0

    .line 276
    :cond_4
    iget-wide v0, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    .line 277
    .local v0, "old":J
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/ShellIO;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    int-to-long v6, p1

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    .line 278
    sub-long/2addr v2, v0

    long-to-int v2, v2

    return v2
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

    .line 77
    if-ltz p2, :cond_32

    if-ltz p3, :cond_32

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_32

    .line 79
    iget-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->readOnly:Z

    if-nez v0, :cond_2a

    .line 81
    iget-wide v0, p0, Lcom/topjohnwu/superuser/internal/ShellIO;->fileOff:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_26

    const-wide/16 v2, 0x200

    cmp-long v2, v0, v2

    if-gez v2, :cond_26

    const/16 v2, 0x200

    if-le p3, v2, :cond_26

    .line 85
    long-to-int v0, v0

    sub-int/2addr v2, v0

    .line 86
    .local v2, "size":I
    invoke-direct {p0, p1, p2, v2}, Lcom/topjohnwu/superuser/internal/ShellIO;->write0([BII)V

    .line 87
    sub-int/2addr p3, v2

    .line 88
    add-int/2addr p2, v2

    .line 90
    .end local v2    # "size":I
    :cond_26
    invoke-direct {p0, p1, p2, p3}, Lcom/topjohnwu/superuser/internal/ShellIO;->write0([BII)V

    .line 91
    return-void

    .line 80
    :cond_2a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File is opened as read-only"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_32
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
