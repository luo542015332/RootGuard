.class Lcom/topjohnwu/superuser/internal/ByteOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "ByteOutputStream.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuf()[B
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ByteOutputStream;->buf:[B

    return-object v0
.end method

.method public writeTo(Ljava/io/DataOutput;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ByteOutputStream;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/topjohnwu/superuser/internal/ByteOutputStream;->count:I

    invoke-interface {p1, v0, v1, v2}, Ljava/io/DataOutput;->write([BII)V

    .line 33
    return-void
.end method
