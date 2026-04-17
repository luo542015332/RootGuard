.class abstract Lcom/topjohnwu/superuser/internal/JobTask;
.super Lcom/topjohnwu/superuser/Shell$Job;
.source "JobTask.java"

# interfaces
.implements Lcom/topjohnwu/superuser/Shell$Task;


# static fields
.field private static final END_CMD:[B

.field static final END_UUID:Ljava/lang/String;

.field static final UNSET_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final UUID_LEN:I = 0x24


# instance fields
.field protected callback:Lcom/topjohnwu/superuser/Shell$ResultCallback;

.field protected callbackExecutor:Ljava/util/concurrent/Executor;

.field private err:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private out:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/topjohnwu/superuser/internal/ShellInputSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/topjohnwu/superuser/internal/JobTask;->UNSET_LIST:Ljava/util/List;

    .line 42
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/topjohnwu/superuser/internal/JobTask;->END_UUID:Ljava/lang/String;

    .line 44
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 45
    const-string v1, "__RET=$?;echo %1$s;echo %1$s >&2;echo $__RET;unset __RET\n"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/topjohnwu/superuser/internal/JobTask;->END_CMD:[B

    .line 44
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/topjohnwu/superuser/Shell$Job;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/JobTask;->sources:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/JobTask;->out:Ljava/util/List;

    .line 50
    sget-object v0, Lcom/topjohnwu/superuser/internal/JobTask;->UNSET_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/JobTask;->err:Ljava/util/List;

    return-void
.end method

.method private close()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/JobTask;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/topjohnwu/superuser/internal/ShellInputSource;

    .line 66
    .local v1, "src":Lcom/topjohnwu/superuser/internal/ShellInputSource;
    invoke-interface {v1}, Lcom/topjohnwu/superuser/internal/ShellInputSource;->close()V

    .end local v1    # "src":Lcom/topjohnwu/superuser/internal/ShellInputSource;
    goto :goto_6

    .line 67
    :cond_16
    return-void
.end method

.method private setResult(Lcom/topjohnwu/superuser/internal/ResultImpl;)V
    .registers 4
    .param p1, "result"    # Lcom/topjohnwu/superuser/internal/ResultImpl;

    .line 56
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/JobTask;->callback:Lcom/topjohnwu/superuser/Shell$ResultCallback;

    if-eqz v0, :cond_14

    .line 57
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/JobTask;->callbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_c

    .line 58
    invoke-interface {v0, p1}, Lcom/topjohnwu/superuser/Shell$ResultCallback;->onResult(Lcom/topjohnwu/superuser/Shell$Result;)V

    goto :goto_14

    .line 60
    :cond_c
    new-instance v0, Lcom/topjohnwu/superuser/internal/JobTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/topjohnwu/superuser/internal/JobTask$$ExternalSyntheticLambda0;-><init>(Lcom/topjohnwu/superuser/internal/JobTask;Lcom/topjohnwu/superuser/internal/ResultImpl;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 62
    :cond_14
    :goto_14
    return-void
.end method


# virtual methods
.method public add(Ljava/io/InputStream;)Lcom/topjohnwu/superuser/Shell$Job;
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;

    .line 138
    if-eqz p1, :cond_c

    .line 139
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/JobTask;->sources:Ljava/util/List;

    new-instance v1, Lcom/topjohnwu/superuser/internal/InputStreamSource;

    invoke-direct {v1, p1}, Lcom/topjohnwu/superuser/internal/InputStreamSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_c
    return-object p0
.end method

.method public varargs add([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;
    .registers 4
    .param p1, "cmds"    # [Ljava/lang/String;

    .line 146
    if-eqz p1, :cond_f

    array-length v0, p1

    if-lez v0, :cond_f

    .line 147
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/JobTask;->sources:Ljava/util/List;

    new-instance v1, Lcom/topjohnwu/superuser/internal/CommandSource;

    invoke-direct {v1, p1}, Lcom/topjohnwu/superuser/internal/CommandSource;-><init>([Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_f
    return-object p0
.end method

.method synthetic lambda$setResult$0$com-topjohnwu-superuser-internal-JobTask(Lcom/topjohnwu/superuser/internal/ResultImpl;)V
    .registers 3
    .param p1, "result"    # Lcom/topjohnwu/superuser/internal/ResultImpl;

    .line 60
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/JobTask;->callback:Lcom/topjohnwu/superuser/Shell$ResultCallback;

    invoke-interface {v0, p1}, Lcom/topjohnwu/superuser/Shell$ResultCallback;->onResult(Lcom/topjohnwu/superuser/Shell$Result;)V

    return-void
.end method

.method public run(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .registers 14
    .param p1, "stdin"    # Ljava/io/OutputStream;
    .param p2, "stdout"    # Ljava/io/InputStream;
    .param p3, "stderr"    # Ljava/io/InputStream;

    .line 73
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/JobTask;->out:Ljava/util/List;

    sget-object v1, Lcom/topjohnwu/superuser/internal/JobTask;->UNSET_LIST:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_a

    move v4, v2

    goto :goto_b

    :cond_a
    move v4, v3

    .line 74
    .local v4, "noOut":Z
    :goto_b
    iget-object v5, p0, Lcom/topjohnwu/superuser/internal/JobTask;->err:Ljava/util/List;

    if-ne v5, v1, :cond_10

    goto :goto_11

    :cond_10
    move v2, v3

    :goto_11
    move v1, v2

    .line 76
    .local v1, "noErr":Z
    const/4 v2, 0x0

    if-eqz v4, :cond_20

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/JobTask;->callback:Lcom/topjohnwu/superuser/Shell$ResultCallback;

    if-nez v0, :cond_1b

    move-object v0, v2

    goto :goto_20

    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "outList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_20
    :goto_20
    if-eqz v1, :cond_2a

    sget-boolean v3, Lcom/topjohnwu/superuser/Shell;->enableLegacyStderrRedirection:Z

    if-eqz v3, :cond_28

    move-object v3, v0

    goto :goto_2c

    :cond_28
    move-object v3, v2

    goto :goto_2c

    :cond_2a
    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/JobTask;->err:Ljava/util/List;

    .line 79
    .local v3, "errList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2c
    if-eqz v0, :cond_3c

    if-ne v0, v3, :cond_3c

    invoke-static {v0}, Lcom/topjohnwu/superuser/internal/Utils;->isSynchronized(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 82
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 83
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v5

    .line 84
    move-object v3, v5

    .line 87
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3c
    new-instance v5, Ljava/util/concurrent/FutureTask;

    new-instance v6, Lcom/topjohnwu/superuser/internal/StreamGobbler$OUT;

    invoke-direct {v6, p2, v0}, Lcom/topjohnwu/superuser/internal/StreamGobbler$OUT;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    invoke-direct {v5, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 88
    .local v5, "outGobbler":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/concurrent/FutureTask;

    new-instance v7, Lcom/topjohnwu/superuser/internal/StreamGobbler$ERR;

    invoke-direct {v7, p3, v3}, Lcom/topjohnwu/superuser/internal/StreamGobbler$ERR;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    invoke-direct {v6, v7}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 89
    .local v6, "errGobbler":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    sget-object v7, Lcom/topjohnwu/superuser/Shell;->EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v7, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 90
    sget-object v7, Lcom/topjohnwu/superuser/Shell;->EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v7, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 92
    new-instance v7, Lcom/topjohnwu/superuser/internal/ResultImpl;

    invoke-direct {v7}, Lcom/topjohnwu/superuser/internal/ResultImpl;-><init>()V

    .line 94
    .local v7, "result":Lcom/topjohnwu/superuser/internal/ResultImpl;
    :try_start_5f
    iget-object v8, p0, Lcom/topjohnwu/superuser/internal/JobTask;->sources:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_65
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_75

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/topjohnwu/superuser/internal/ShellInputSource;

    .line 95
    .local v9, "src":Lcom/topjohnwu/superuser/internal/ShellInputSource;
    invoke-interface {v9, p1}, Lcom/topjohnwu/superuser/internal/ShellInputSource;->serve(Ljava/io/OutputStream;)V

    .end local v9    # "src":Lcom/topjohnwu/superuser/internal/ShellInputSource;
    goto :goto_65

    .line 96
    :cond_75
    sget-object v8, Lcom/topjohnwu/superuser/internal/JobTask;->END_CMD:[B

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 97
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 99
    invoke-virtual {v5}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 100
    .local v8, "code":I
    invoke-virtual {v6}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 102
    iput v8, v7, Lcom/topjohnwu/superuser/internal/ResultImpl;->code:I

    .line 103
    iput-object v0, v7, Lcom/topjohnwu/superuser/internal/ResultImpl;->out:Ljava/util/List;

    .line 104
    if-eqz v1, :cond_91

    goto :goto_93

    :cond_91
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/JobTask;->err:Ljava/util/List;

    :goto_93
    iput-object v2, v7, Lcom/topjohnwu/superuser/internal/ResultImpl;->err:Ljava/util/List;
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_95} :catch_9a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5f .. :try_end_95} :catch_98
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_95} :catch_96

    .line 107
    .end local v8    # "code":I
    goto :goto_9e

    .line 105
    :catch_96
    move-exception v2

    goto :goto_9b

    :catch_98
    move-exception v2

    goto :goto_9b

    :catch_9a
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Exception;
    :goto_9b
    invoke-static {v2}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/Throwable;)V

    .line 109
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_9e
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/JobTask;->close()V

    .line 110
    invoke-direct {p0, v7}, Lcom/topjohnwu/superuser/internal/JobTask;->setResult(Lcom/topjohnwu/superuser/internal/ResultImpl;)V

    .line 111
    return-void
.end method

.method public shellDied()V
    .registers 2

    .line 115
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/JobTask;->close()V

    .line 116
    new-instance v0, Lcom/topjohnwu/superuser/internal/ResultImpl;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/ResultImpl;-><init>()V

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/JobTask;->setResult(Lcom/topjohnwu/superuser/internal/ResultImpl;)V

    .line 117
    return-void
.end method

.method public to(Ljava/util/List;)Lcom/topjohnwu/superuser/Shell$Job;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/topjohnwu/superuser/Shell$Job;"
        }
    .end annotation

    .line 122
    .local p1, "stdout":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/JobTask;->out:Ljava/util/List;

    .line 123
    sget-object v0, Lcom/topjohnwu/superuser/internal/JobTask;->UNSET_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/JobTask;->err:Ljava/util/List;

    .line 124
    return-object p0
.end method

.method public to(Ljava/util/List;Ljava/util/List;)Lcom/topjohnwu/superuser/Shell$Job;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/topjohnwu/superuser/Shell$Job;"
        }
    .end annotation

    .line 130
    .local p1, "stdout":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "stderr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/JobTask;->out:Ljava/util/List;

    .line 131
    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/JobTask;->err:Ljava/util/List;

    .line 132
    return-object p0
.end method
