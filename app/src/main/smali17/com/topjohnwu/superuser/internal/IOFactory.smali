.class public final Lcom/topjohnwu/superuser/internal/IOFactory;
.super Ljava/lang/Object;
.source "IOFactory.java"


# static fields
.field static final JUNK:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/topjohnwu/superuser/internal/IOFactory;->JUNK:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fifoIn(Lcom/topjohnwu/superuser/io/SuFile;)Ljava/io/InputStream;
    .locals 1
    .param p0, "file"    # Lcom/topjohnwu/superuser/io/SuFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lcom/topjohnwu/superuser/internal/ShellPipeStream;->openReadStream(Lcom/topjohnwu/superuser/io/SuFile;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static fifoOut(Lcom/topjohnwu/superuser/io/SuFile;Z)Ljava/io/OutputStream;
    .locals 1
    .param p0, "file"    # Lcom/topjohnwu/superuser/io/SuFile;
    .param p1, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 60
    invoke-static {p0, p1}, Lcom/topjohnwu/superuser/internal/ShellPipeStream;->openWriteStream(Lcom/topjohnwu/superuser/io/SuFile;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static raf(Ljava/io/File;Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/RAFWrapper;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/topjohnwu/superuser/internal/RAFWrapper;

    invoke-direct {v0, p0, p1}, Lcom/topjohnwu/superuser/internal/RAFWrapper;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static shellIO(Lcom/topjohnwu/superuser/io/SuFile;Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/ShellIO;
    .locals 3
    .param p0, "file"    # Lcom/topjohnwu/superuser/io/SuFile;
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "rws"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "rwd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "rw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :pswitch_0
    const-string p1, "rw"

    .line 43
    goto :goto_2

    .line 38
    :pswitch_1
    nop

    .line 47
    :goto_2
    invoke-static {p0, p1}, Lcom/topjohnwu/superuser/internal/ShellIO;->get(Lcom/topjohnwu/superuser/io/SuFile;Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/ShellIO;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x72 -> :sswitch_3
        0xe45 -> :sswitch_2
        0x1babf -> :sswitch_1
        0x1bace -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
