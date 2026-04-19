.class interface abstract Lcom/topjohnwu/superuser/internal/DataInputImpl;
.super Ljava/lang/Object;
.source "DataInputImpl.java"

# interfaces
.implements Ljava/io/DataInput;


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 35
    .local v1, "b":[B
    invoke-interface {p0, v1}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->read([B)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 36
    const/4 v0, -0x1

    return v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->read([BII)I

    move-result v0

    return v0
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-interface {p0}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 63
    .local v0, "b":[B
    invoke-interface {p0, v0}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->readFully([B)V

    .line 64
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    return v1
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-interface {p0}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->readUnsignedShort()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-interface {p0}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-interface {p0}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->readFully([BII)V

    .line 47
    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-interface {p0, p1, p2, p3}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->read([BII)I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 53
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 94
    .local v0, "b":[B
    invoke-interface {p0, v0}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->readFully([B)V

    .line 95
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    shl-int/lit8 v1, v3, 0x0

    add-int/2addr v2, v1

    return v2
.end method

.method public readLine()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/topjohnwu/superuser/internal/ByteOutputStream;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/ByteOutputStream;-><init>()V

    .line 128
    .local v0, "buf":Lcom/topjohnwu/superuser/internal/ByteOutputStream;
    :cond_0
    const/16 v1, 0xa

    :try_start_0
    invoke-interface {p0}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->readUnsignedByte()I

    move-result v2

    .line 129
    .local v2, "b":I
    invoke-virtual {v0, v2}, Lcom/topjohnwu/superuser/internal/ByteOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    if-ne v2, v1, :cond_0

    .end local v2    # "b":I
    goto :goto_0

    .line 131
    :catch_0
    move-exception v2

    :goto_0
    nop

    .line 133
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ByteOutputStream;->size()I

    move-result v2

    .line 134
    .local v2, "size":I
    if-nez v2, :cond_1

    .line 135
    const/4 v1, 0x0

    return-object v1

    .line 138
    :cond_1
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ByteOutputStream;->getBuf()[B

    move-result-object v3

    .line 139
    .local v3, "bytes":[B
    add-int/lit8 v4, v2, -0x1

    aget-byte v4, v3, v4

    if-ne v4, v1, :cond_2

    .line 140
    add-int/lit8 v2, v2, -0x1

    .line 141
    if-lez v2, :cond_2

    add-int/lit8 v1, v2, -0x1

    aget-byte v1, v3, v1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_2

    .line 142
    add-int/lit8 v2, v2, -0x1

    .line 145
    :cond_2
    new-instance v1, Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public readLong()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 101
    .local v1, "b":[B
    invoke-interface {p0, v1}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->readFully([B)V

    .line 102
    const/4 v2, 0x0

    aget-byte v3, v1, v2

    int-to-long v3, v3

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    add-long/2addr v3, v5

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    add-long/2addr v3, v5

    const/4 v5, 0x3

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    add-long/2addr v3, v5

    const/4 v5, 0x4

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    add-long/2addr v3, v5

    const/4 v5, 0x5

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    int-to-long v5, v5

    add-long/2addr v3, v5

    const/4 v5, 0x6

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v5, 0x8

    int-to-long v5, v0

    add-long/2addr v3, v5

    const/4 v0, 0x7

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v2

    int-to-long v5, v0

    add-long/2addr v3, v5

    return-wide v3
.end method

.method public readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 75
    .local v0, "b":[B
    invoke-interface {p0, v0}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->readFully([B)V

    .line 76
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    shl-int/lit8 v1, v3, 0x0

    add-int/2addr v2, v1

    int-to-short v1, v2

    return v1
.end method

.method public readUTF()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-interface {p0}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->readUnsignedShort()I

    move-result v0

    .line 152
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 153
    .local v1, "b":[B
    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 154
    ushr-int/lit8 v2, v0, 0x0

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 155
    const/4 v2, 0x2

    invoke-interface {p0, v1, v2, v0}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->readFully([BII)V

    .line 156
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-interface {p0}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedShort()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 82
    .local v0, "b":[B
    invoke-interface {p0, v0}, Lcom/topjohnwu/superuser/internal/DataInputImpl;->readFully([B)V

    .line 83
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    shl-int/lit8 v1, v3, 0x0

    add-int/2addr v2, v1

    return v2
.end method
