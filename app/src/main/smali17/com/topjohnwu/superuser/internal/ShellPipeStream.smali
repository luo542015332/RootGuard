.class Lcom/topjohnwu/superuser/internal/ShellPipeStream;
.super Ljava/lang/Object;
.source "ShellPipeStream.java"


# static fields
.field private static final END_CMD:[B

.field private static final FIFO_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "FIFOIO"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-string v0, "echo\n"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/topjohnwu/superuser/internal/ShellPipeStream;->END_CMD:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$openReadStream$0(Lcom/topjohnwu/superuser/io/SuFile;Ljava/io/File;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 2
    .param p0, "file"    # Lcom/topjohnwu/superuser/io/SuFile;
    .param p1, "fifo"    # Ljava/io/File;
    .param p2, "in"    # Ljava/io/OutputStream;
    .param p3, "out"    # Ljava/io/InputStream;
    .param p4, "err"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getEscapedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 2>/dev/null &"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "cmd":Ljava/lang/String;
    const-string v1, "FIFOIO"

    invoke-static {v1, v0}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 52
    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 53
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 54
    sget-object v1, Lcom/topjohnwu/superuser/internal/ShellPipeStream;->END_CMD:[B

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 55
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 57
    sget-object v1, Lcom/topjohnwu/superuser/internal/IOFactory;->JUNK:[B

    invoke-virtual {p3, v1}, Ljava/io/InputStream;->read([B)I

    .line 58
    return-void
.end method

.method static synthetic lambda$openReadStream$1(Ljava/io/File;)Ljava/io/InputStream;
    .locals 1
    .param p0, "fifo"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method static synthetic lambda$openWriteStream$2(Ljava/io/File;Ljava/lang/String;Lcom/topjohnwu/superuser/io/SuFile;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 2
    .param p0, "fifo"    # Ljava/io/File;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/topjohnwu/superuser/io/SuFile;
    .param p3, "in"    # Ljava/io/OutputStream;
    .param p4, "out"    # Ljava/io/InputStream;
    .param p5, "err"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/topjohnwu/superuser/io/SuFile;->getEscapedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 2>/dev/null &"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "cmd":Ljava/lang/String;
    const-string v1, "FIFOIO"

    invoke-static {v1, v0}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 99
    const/16 v1, 0xa

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 100
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 101
    sget-object v1, Lcom/topjohnwu/superuser/internal/ShellPipeStream;->END_CMD:[B

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 102
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 104
    sget-object v1, Lcom/topjohnwu/superuser/internal/IOFactory;->JUNK:[B

    invoke-virtual {p4, v1}, Ljava/io/InputStream;->read([B)I

    .line 105
    return-void
.end method

.method static synthetic lambda$openWriteStream$3(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "fifo"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method static openReadStream(Lcom/topjohnwu/superuser/io/SuFile;)Ljava/io/InputStream;
    .locals 6
    .param p0, "file"    # Lcom/topjohnwu/superuser/io/SuFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->canRead()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "f":Ljava/io/File;
    :try_start_0
    invoke-static {}, Lcom/topjohnwu/superuser/internal/FileUtils;->createTempFIFO()Ljava/io/File;

    move-result-object v1

    .line 47
    .local v1, "fifo":Ljava/io/File;
    move-object v0, v1

    .line 48
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object v2

    new-instance v3, Lcom/topjohnwu/superuser/internal/ShellPipeStream$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/topjohnwu/superuser/internal/ShellPipeStream$$ExternalSyntheticLambda0;-><init>(Lcom/topjohnwu/superuser/io/SuFile;Ljava/io/File;)V

    invoke-virtual {v2, v3}, Lcom/topjohnwu/superuser/Shell;->execTask(Lcom/topjohnwu/superuser/Shell$Task;)V

    .line 61
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/topjohnwu/superuser/internal/ShellPipeStream$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/topjohnwu/superuser/internal/ShellPipeStream$$ExternalSyntheticLambda1;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 62
    .local v2, "stream":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/io/InputStream;>;"
    sget-object v3, Lcom/topjohnwu/superuser/Shell;->EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 63
    :cond_0
    return-object v3

    .line 73
    .end local v1    # "fifo":Ljava/io/File;
    .end local v2    # "stream":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/io/InputStream;>;"
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    instance-of v2, v1, Ljava/io/FileNotFoundException;

    if-nez v2, :cond_2

    .line 67
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 68
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/io/FileNotFoundException;

    if-eqz v3, :cond_1

    .line 69
    move-object v3, v2

    check-cast v3, Ljava/io/FileNotFoundException;

    .end local v0    # "f":Ljava/io/File;
    .end local p0    # "file":Lcom/topjohnwu/superuser/io/SuFile;
    throw v3

    .line 70
    .restart local v0    # "f":Ljava/io/File;
    .restart local p0    # "file":Lcom/topjohnwu/superuser/io/SuFile;
    :cond_1
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "Cannot open fifo"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 71
    .local v3, "err":Ljava/lang/Throwable;
    move-object v4, v3

    check-cast v4, Ljava/io/FileNotFoundException;

    .end local v0    # "f":Ljava/io/File;
    .end local p0    # "file":Lcom/topjohnwu/superuser/io/SuFile;
    throw v4

    .line 66
    .end local v2    # "cause":Ljava/lang/Throwable;
    .end local v3    # "err":Ljava/lang/Throwable;
    .restart local v0    # "f":Ljava/io/File;
    .restart local p0    # "file":Lcom/topjohnwu/superuser/io/SuFile;
    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/io/FileNotFoundException;

    .end local v0    # "f":Ljava/io/File;
    .end local p0    # "file":Lcom/topjohnwu/superuser/io/SuFile;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "f":Ljava/io/File;
    .restart local p0    # "file":Lcom/topjohnwu/superuser/io/SuFile;
    :goto_0
    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 75
    :cond_3
    throw v1

    .line 42
    .end local v0    # "f":Ljava/io/File;
    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such file or directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static openWriteStream(Lcom/topjohnwu/superuser/io/SuFile;Z)Ljava/io/OutputStream;
    .locals 7
    .param p0, "file"    # Lcom/topjohnwu/superuser/io/SuFile;
    .param p1, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_a

    .line 81
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->isBlock()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->isCharacter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    const/4 p1, 0x0

    .line 84
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->canWrite()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 85
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot write to file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->clear()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 90
    if-eqz p1, :cond_4

    const-string v0, " >> "

    goto :goto_1

    :cond_4
    const-string v0, " > "

    .line 91
    .local v0, "op":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    .line 93
    .local v1, "f":Ljava/io/File;
    :try_start_0
    invoke-static {}, Lcom/topjohnwu/superuser/internal/FileUtils;->createTempFIFO()Ljava/io/File;

    move-result-object v2

    .line 94
    .local v2, "fifo":Ljava/io/File;
    move-object v1, v2

    .line 95
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object v3

    new-instance v4, Lcom/topjohnwu/superuser/internal/ShellPipeStream$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, v0, p0}, Lcom/topjohnwu/superuser/internal/ShellPipeStream$$ExternalSyntheticLambda2;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/topjohnwu/superuser/io/SuFile;)V

    invoke-virtual {v3, v4}, Lcom/topjohnwu/superuser/Shell;->execTask(Lcom/topjohnwu/superuser/Shell$Task;)V

    .line 108
    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v4, Lcom/topjohnwu/superuser/internal/ShellPipeStream$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2}, Lcom/topjohnwu/superuser/internal/ShellPipeStream$$ExternalSyntheticLambda3;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 109
    .local v3, "stream":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/io/OutputStream;>;"
    sget-object v4, Lcom/topjohnwu/superuser/Shell;->EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 110
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    if-eqz v1, :cond_5

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 110
    :cond_5
    return-object v4

    .line 120
    .end local v2    # "fifo":Ljava/io/File;
    .end local v3    # "stream":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/io/OutputStream;>;"
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    instance-of v3, v2, Ljava/io/FileNotFoundException;

    if-nez v3, :cond_7

    .line 114
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 115
    .local v3, "cause":Ljava/lang/Throwable;
    instance-of v4, v3, Ljava/io/FileNotFoundException;

    if-eqz v4, :cond_6

    .line 116
    move-object v4, v3

    check-cast v4, Ljava/io/FileNotFoundException;

    .end local v0    # "op":Ljava/lang/String;
    .end local v1    # "f":Ljava/io/File;
    .end local p0    # "file":Lcom/topjohnwu/superuser/io/SuFile;
    .end local p1    # "append":Z
    throw v4

    .line 117
    .restart local v0    # "op":Ljava/lang/String;
    .restart local v1    # "f":Ljava/io/File;
    .restart local p0    # "file":Lcom/topjohnwu/superuser/io/SuFile;
    .restart local p1    # "append":Z
    :cond_6
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string v5, "Cannot open fifo"

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    .line 118
    .local v4, "err":Ljava/lang/Throwable;
    move-object v5, v4

    check-cast v5, Ljava/io/FileNotFoundException;

    .end local v0    # "op":Ljava/lang/String;
    .end local v1    # "f":Ljava/io/File;
    .end local p0    # "file":Lcom/topjohnwu/superuser/io/SuFile;
    .end local p1    # "append":Z
    throw v5

    .line 113
    .end local v3    # "cause":Ljava/lang/Throwable;
    .end local v4    # "err":Ljava/lang/Throwable;
    .restart local v0    # "op":Ljava/lang/String;
    .restart local v1    # "f":Ljava/io/File;
    .restart local p0    # "file":Lcom/topjohnwu/superuser/io/SuFile;
    .restart local p1    # "append":Z
    :cond_7
    move-object v3, v2

    check-cast v3, Ljava/io/FileNotFoundException;

    .end local v0    # "op":Ljava/lang/String;
    .end local v1    # "f":Ljava/io/File;
    .end local p0    # "file":Lcom/topjohnwu/superuser/io/SuFile;
    .end local p1    # "append":Z
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "op":Ljava/lang/String;
    .restart local v1    # "f":Ljava/io/File;
    .restart local p0    # "file":Lcom/topjohnwu/superuser/io/SuFile;
    .restart local p1    # "append":Z
    :goto_2
    if-eqz v1, :cond_8

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 122
    :cond_8
    throw v2

    .line 87
    .end local v0    # "op":Ljava/lang/String;
    .end local v1    # "f":Ljava/io/File;
    :cond_9
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clear file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_a
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/topjohnwu/superuser/io/SuFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a file but a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
