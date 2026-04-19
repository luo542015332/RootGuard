.class interface abstract Lcom/topjohnwu/superuser/internal/DataOutputImpl;
.super Ljava/lang/Object;
.source "DataOutputImpl.java"

# interfaces
.implements Ljava/io/DataOutput;


# virtual methods
.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 30
    .local v0, "buf":[B
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 31
    invoke-interface {p0, v0}, Lcom/topjohnwu/superuser/internal/DataOutputImpl;->write([B)V

    .line 32
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lcom/topjohnwu/superuser/internal/DataOutputImpl;->write([BII)V

    .line 37
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 0
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-interface {p0, p1}, Lcom/topjohnwu/superuser/internal/DataOutputImpl;->write(I)V

    .line 42
    return-void
.end method

.method public writeByte(I)V
    .locals 0
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-interface {p0, p1}, Lcom/topjohnwu/superuser/internal/DataOutputImpl;->write(I)V

    .line 47
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/topjohnwu/superuser/internal/ByteOutputStream;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/ByteOutputStream;-><init>()V

    .line 99
    .local v0, "buf":Lcom/topjohnwu/superuser/internal/ByteOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 100
    .local v1, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p0}, Lcom/topjohnwu/superuser/internal/ByteOutputStream;->writeTo(Ljava/io/DataOutput;)V

    .line 102
    return-void
.end method

.method public writeChar(I)V
    .locals 0
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-interface {p0, p1}, Lcom/topjohnwu/superuser/internal/DataOutputImpl;->writeShort(I)V

    .line 60
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/topjohnwu/superuser/internal/ByteOutputStream;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/ByteOutputStream;-><init>()V

    .line 107
    .local v0, "buf":Lcom/topjohnwu/superuser/internal/ByteOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 108
    .local v1, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p0}, Lcom/topjohnwu/superuser/internal/ByteOutputStream;->writeTo(Ljava/io/DataOutput;)V

    .line 110
    return-void
.end method

.method public writeDouble(D)V
    .locals 2
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/topjohnwu/superuser/internal/DataOutputImpl;->writeLong(J)V

    .line 94
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-interface {p0, v0}, Lcom/topjohnwu/superuser/internal/DataOutputImpl;->writeInt(I)V

    .line 89
    return-void
.end method

.method public writeInt(I)V
    .locals 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 65
    .local v0, "b":[B
    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 66
    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 67
    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 68
    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 69
    invoke-interface {p0, v0}, Lcom/topjohnwu/superuser/internal/DataOutputImpl;->write([B)V

    .line 70
    return-void
.end method

.method public writeLong(J)V
    .locals 6
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 75
    .local v1, "b":[B
    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 76
    const/16 v2, 0x30

    ushr-long v4, p1, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 77
    const/16 v2, 0x28

    ushr-long v4, p1, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    .line 78
    const/16 v2, 0x20

    ushr-long v4, p1, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    .line 79
    const/16 v2, 0x18

    ushr-long v4, p1, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x4

    aput-byte v2, v1, v4

    .line 80
    const/16 v2, 0x10

    ushr-long v4, p1, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    const/4 v4, 0x5

    aput-byte v2, v1, v4

    .line 81
    ushr-long v4, p1, v0

    long-to-int v0, v4

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    .line 82
    ushr-long v2, p1, v3

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x7

    aput-byte v0, v1, v2

    .line 83
    invoke-interface {p0, v1}, Lcom/topjohnwu/superuser/internal/DataOutputImpl;->write([B)V

    .line 84
    return-void
.end method

.method public writeShort(I)V
    .locals 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 52
    .local v0, "b":[B
    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 53
    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 54
    invoke-interface {p0, v0}, Lcom/topjohnwu/superuser/internal/DataOutputImpl;->write([B)V

    .line 55
    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/topjohnwu/superuser/internal/ByteOutputStream;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/ByteOutputStream;-><init>()V

    .line 115
    .local v0, "buf":Lcom/topjohnwu/superuser/internal/ByteOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 116
    .local v1, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p0}, Lcom/topjohnwu/superuser/internal/ByteOutputStream;->writeTo(Ljava/io/DataOutput;)V

    .line 118
    return-void
.end method
