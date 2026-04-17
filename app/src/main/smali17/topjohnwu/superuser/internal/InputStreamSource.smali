.class Lcom/topjohnwu/superuser/internal/InputStreamSource;
.super Ljava/lang/Object;
.source "ShellInputSource.java"

# interfaces
.implements Lcom/topjohnwu/superuser/internal/ShellInputSource;


# instance fields
.field private final in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/InputStreamSource;->in:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/InputStreamSource;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    .line 52
    :catch_6
    move-exception v0

    :goto_7
    nop

    .line 53
    return-void
.end method

.method public serve(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/InputStreamSource;->in:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/topjohnwu/superuser/internal/Utils;->pump(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 43
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/InputStreamSource;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 44
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 45
    const-string v0, "SHELL_IN"

    const-string v1, "<InputStream>"

    invoke-static {v0, v1}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-void
.end method
