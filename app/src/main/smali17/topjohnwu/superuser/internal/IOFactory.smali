.class public final Lcom/topjohnwu/superuser/internal/IOFactory;
.super Ljava/lang/Object;
.source "IOFactory.java"


# static fields
.field static final JUNK:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/topjohnwu/superuser/internal/IOFactory;->JUNK:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fifoIn(Lcom/topjohnwu/superuser/io/SuFile;)Ljava/io/InputStream;
    .registers 2
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
    .registers 3
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
    .registers 3
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
    .registers 5
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

    sparse-switch v0, :sswitch_data_56

    :cond_7
    goto :goto_30

    :sswitch_8
    const-string v0, "rws"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_31

    :sswitch_12
    const-string v0, "rwd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_31

    :sswitch_1c
    const-string v0, "rw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_31

    :sswitch_26
    const-string v0, "r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_31

    :goto_30
    const/4 v0, -0x1

    :goto_31
    packed-switch v0, :pswitch_data_68

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
    :pswitch_4d
    const-string p1, "rw"

    .line 43
    goto :goto_51

    .line 38
    :pswitch_50
    nop

    .line 47
    :goto_51
    invoke-static {p0, p1}, Lcom/topjohnwu/superuser/internal/ShellIO;->get(Lcom/topjohnwu/superuser/io/SuFile;Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/ShellIO;

    move-result-object v0

    return-object v0

    :sswitch_data_56
    .sparse-switch
        0x72 -> :sswitch_26
        0xe45 -> :sswitch_1c
        0x1babf -> :sswitch_12
        0x1bace -> :sswitch_8
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
    .end packed-switch
.end method
