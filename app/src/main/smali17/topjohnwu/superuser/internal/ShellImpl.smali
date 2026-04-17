.class Lcom/topjohnwu/superuser/internal/ShellImpl;
.super Lcom/topjohnwu/superuser/Shell;
.source "ShellImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;,
        Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;,
        Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;
    }
.end annotation


# instance fields
.field private final STDERR:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

.field private final STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

.field private final STDOUT:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

.field private final idle:Ljava/util/concurrent/locks/Condition;

.field private isRunningTask:Z

.field private final process:Ljava/lang/Process;

.field private final scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile status:I

.field private final tasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/topjohnwu/superuser/Shell$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$s0PUNn9LoGilzQm1QDsbRoEjcGo(Lcom/topjohnwu/superuser/internal/ShellImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->processTasks()V

    return-void
.end method

.method public static synthetic $r8$lambda$xuaTbFTKmBRsu7VqlthB6RS4_dk(Lcom/topjohnwu/superuser/internal/ShellImpl;)Ljava/lang/Integer;
    .registers 1

    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->shellCheck()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/topjohnwu/superuser/internal/BuilderImpl;Ljava/lang/Process;)V
    .registers 8
    .param p1, "builder"    # Lcom/topjohnwu/superuser/internal/BuilderImpl;
    .param p2, "proc"    # Ljava/lang/Process;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lcom/topjohnwu/superuser/Shell;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->idle:Ljava/util/concurrent/locks/Condition;

    .line 56
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->tasks:Ljava/util/ArrayDeque;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->isRunningTask:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->status:I

    .line 122
    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->process:Ljava/lang/Process;

    .line 123
    new-instance v0, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    invoke-virtual {p2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    .line 124
    new-instance v0, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDOUT:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    .line 125
    new-instance v0, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    invoke-virtual {p2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDERR:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    .line 128
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/topjohnwu/superuser/internal/ShellImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/topjohnwu/superuser/internal/ShellImpl$$ExternalSyntheticLambda1;-><init>(Lcom/topjohnwu/superuser/internal/ShellImpl;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 129
    .local v0, "check":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/topjohnwu/superuser/internal/ShellImpl;->EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 132
    :try_start_4f
    iget-wide v1, p1, Lcom/topjohnwu/superuser/internal/BuilderImpl;->timeout:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->status:I
    :try_end_5f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4f .. :try_end_5f} :catch_76
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4f .. :try_end_5f} :catch_6d
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_5f} :catch_64
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_5f} :catch_62

    .line 144
    nop

    .line 148
    nop

    .line 149
    return-void

    .line 145
    :catch_62
    move-exception v1

    goto :goto_8b

    .line 142
    :catch_64
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_65
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Shell check interrupted"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "check":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    .end local p1    # "builder":Lcom/topjohnwu/superuser/internal/BuilderImpl;
    .end local p2    # "proc":Ljava/lang/Process;
    throw v2

    .line 140
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "check":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    .restart local p1    # "builder":Lcom/topjohnwu/superuser/internal/BuilderImpl;
    .restart local p2    # "proc":Ljava/lang/Process;
    :catch_6d
    move-exception v1

    .line 141
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Shell check timeout"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "check":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    .end local p1    # "builder":Lcom/topjohnwu/superuser/internal/BuilderImpl;
    .end local p2    # "proc":Ljava/lang/Process;
    throw v2

    .line 133
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    .restart local v0    # "check":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    .restart local p1    # "builder":Lcom/topjohnwu/superuser/internal/BuilderImpl;
    .restart local p2    # "proc":Ljava/lang/Process;
    :catch_76
    move-exception v1

    .line 134
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 135
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_83

    .line 136
    move-object v3, v2

    check-cast v3, Ljava/io/IOException;

    .end local v0    # "check":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    .end local p1    # "builder":Lcom/topjohnwu/superuser/internal/BuilderImpl;
    .end local p2    # "proc":Ljava/lang/Process;
    throw v3

    .line 138
    .restart local v0    # "check":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    .restart local p1    # "builder":Lcom/topjohnwu/superuser/internal/BuilderImpl;
    .restart local p2    # "proc":Ljava/lang/Process;
    :cond_83
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unknown ExecutionException"

    invoke-direct {v3, v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "check":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    .end local p1    # "builder":Lcom/topjohnwu/superuser/internal/BuilderImpl;
    .end local p2    # "proc":Ljava/lang/Process;
    throw v3
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_8b} :catch_62

    .line 146
    .end local v2    # "cause":Ljava/lang/Throwable;
    .restart local v0    # "check":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    .local v1, "e":Ljava/io/IOException;
    .restart local p1    # "builder":Lcom/topjohnwu/superuser/internal/BuilderImpl;
    .restart local p2    # "proc":Ljava/lang/Process;
    :goto_8b
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->release()V

    .line 147
    throw v1
.end method

.method private declared-synchronized exec0(Lcom/topjohnwu/superuser/Shell$Task;)V
    .registers 5
    .param p1, "task"    # Lcom/topjohnwu/superuser/Shell$Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 242
    :try_start_1
    iget v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->status:I

    if-gez v0, :cond_a

    .line 243
    invoke-interface {p1}, Lcom/topjohnwu/superuser/Shell$Task;->shellDied()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_35

    .line 244
    monitor-exit p0

    return-void

    .line 247
    .end local p0    # "this":Lcom/topjohnwu/superuser/internal/ShellImpl;
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDOUT:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    invoke-static {v0}, Lcom/topjohnwu/superuser/ShellUtils;->cleanInputStream(Ljava/io/InputStream;)V

    .line 248
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDERR:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    invoke-static {v0}, Lcom/topjohnwu/superuser/ShellUtils;->cleanInputStream(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_35

    .line 250
    :try_start_14
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;->write(I)V

    .line 251
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;->flush()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_20} :catch_2c
    .catchall {:try_start_14 .. :try_end_20} :catchall_35

    .line 256
    nop

    .line 258
    :try_start_21
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDOUT:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDERR:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    invoke-interface {p1, v0, v1, v2}, Lcom/topjohnwu/superuser/Shell$Task;->run(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_35

    .line 259
    monitor-exit p0

    return-void

    .line 252
    :catch_2c
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/IOException;
    :try_start_2d
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->release()V

    .line 254
    invoke-interface {p1}, Lcom/topjohnwu/superuser/Shell$Task;->shellDied()V
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_35

    .line 255
    monitor-exit p0

    return-void

    .line 241
    .end local v0    # "e":Ljava/io/IOException;
    .end local p1    # "task":Lcom/topjohnwu/superuser/Shell$Task;
    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private processNextTask(Z)Lcom/topjohnwu/superuser/Shell$Task;
    .registers 5
    .param p1, "fromExec"    # Z

    .line 272
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 274
    :try_start_5
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->tasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/topjohnwu/superuser/Shell$Task;

    .line 275
    .local v0, "task":Lcom/topjohnwu/superuser/Shell$Task;
    const/4 v1, 0x0

    if-nez v0, :cond_1f

    .line 276
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->isRunningTask:Z

    .line 277
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->idle:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_4f

    .line 278
    nop

    .line 291
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 278
    return-object v1

    .line 280
    :cond_1f
    :try_start_1f
    instance-of v2, v0, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;

    if-eqz v2, :cond_30

    .line 281
    move-object v2, v0

    check-cast v2, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;->signal()V
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_4f

    .line 282
    nop

    .line 291
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 282
    return-object v1

    .line 284
    :cond_30
    if-eqz p1, :cond_48

    .line 286
    :try_start_32
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->tasks:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->offerFirst(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_4f

    .line 291
    .end local v0    # "task":Lcom/topjohnwu/superuser/Shell$Task;
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 292
    nop

    .line 293
    sget-object v0, Lcom/topjohnwu/superuser/internal/ShellImpl;->EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/topjohnwu/superuser/internal/ShellImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/topjohnwu/superuser/internal/ShellImpl$$ExternalSyntheticLambda0;-><init>(Lcom/topjohnwu/superuser/internal/ShellImpl;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 294
    return-object v1

    .line 288
    .restart local v0    # "task":Lcom/topjohnwu/superuser/Shell$Task;
    :cond_48
    nop

    .line 291
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 288
    return-object v0

    .line 291
    .end local v0    # "task":Lcom/topjohnwu/superuser/Shell$Task;
    :catchall_4f
    move-exception v0

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 292
    throw v0
.end method

.method private processTasks()V
    .registers 3

    .line 263
    nop

    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->processNextTask(Z)Lcom/topjohnwu/superuser/Shell$Task;

    move-result-object v0

    move-object v1, v0

    .local v1, "task":Lcom/topjohnwu/superuser/Shell$Task;
    if-eqz v0, :cond_f

    .line 265
    :try_start_9
    invoke-direct {p0, v1}, Lcom/topjohnwu/superuser/internal/ShellImpl;->exec0(Lcom/topjohnwu/superuser/Shell$Task;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_d

    .line 266
    :goto_c
    goto :goto_1

    :catch_d
    move-exception v0

    goto :goto_c

    .line 268
    :cond_f
    return-void
.end method

.method private release()V
    .registers 2

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->status:I

    .line 189
    :try_start_3
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;->close0()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    .line 190
    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDERR:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;->close0()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    move-exception v0

    .line 191
    :goto_11
    :try_start_11
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDOUT:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;->close0()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_18

    :catch_17
    move-exception v0

    .line 192
    :goto_18
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 193
    return-void
.end method

.method private shellCheck()Ljava/lang/Integer;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    .line 154
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Created process has terminated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_d} :catch_d

    .line 155
    :catch_d
    move-exception v0

    .line 160
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDOUT:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    invoke-static {v0}, Lcom/topjohnwu/superuser/ShellUtils;->cleanInputStream(Ljava/io/InputStream;)V

    .line 161
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDERR:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    invoke-static {v0}, Lcom/topjohnwu/superuser/ShellUtils;->cleanInputStream(Ljava/io/InputStream;)V

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "status":I
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDOUT:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseInputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 166
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_25
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    const-string v3, "echo SHELL_TEST\n"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;->write([B)V

    .line 167
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;->flush()V

    .line 168
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b0

    const-string v3, "SHELL_TEST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 172
    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    const-string v4, "id\n"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;->write([B)V

    .line 173
    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    invoke-virtual {v3}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;->flush()V

    .line 174
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 175
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a8

    const-string/jumbo v3, "uid=0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 176
    const/4 v0, 0x1

    .line 177
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/topjohnwu/superuser/internal/Utils;->setConfirmedRootState(Z)V

    .line 179
    const-string/jumbo v3, "user.dir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/topjohnwu/superuser/ShellUtils;->escapedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "cwd":Ljava/lang/String;
    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;->write([B)V

    .line 181
    iget-object v4, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->STDIN:Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;

    invoke-virtual {v4}, Lcom/topjohnwu/superuser/internal/ShellImpl$NoCloseOutputStream;->flush()V
    :try_end_a8
    .catchall {:try_start_25 .. :try_end_a8} :catchall_b8

    .line 183
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "cwd":Ljava/lang/String;
    :cond_a8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 184
    .end local v1    # "br":Ljava/io/BufferedReader;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 170
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "s":Ljava/lang/String;
    :cond_b0
    :try_start_b0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Created process is not a shell"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "status":I
    .end local v1    # "br":Ljava/io/BufferedReader;
    throw v3
    :try_end_b8
    .catchall {:try_start_b0 .. :try_end_b8} :catchall_b8

    .line 164
    .end local v2    # "s":Ljava/lang/String;
    .restart local v0    # "status":I
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_b8
    move-exception v2

    :try_start_b9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_bd

    goto :goto_c1

    :catchall_bd
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c1
    throw v2
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 214
    iget v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->status:I

    if-gez v0, :cond_5

    .line 215
    return-void

    .line 216
    :cond_5
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->release()V

    .line 217
    return-void
.end method

.method public execTask(Lcom/topjohnwu/superuser/Shell$Task;)V
    .registers 4
    .param p1, "task"    # Lcom/topjohnwu/superuser/Shell$Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 315
    :try_start_5
    iget-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->isRunningTask:Z

    if-eqz v0, :cond_1c

    .line 316
    new-instance v0, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;-><init>(Ljava/util/concurrent/locks/Condition;)V

    .line 317
    .local v0, "sync":Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->tasks:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 319
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;->await()V

    .line 321
    .end local v0    # "sync":Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->isRunningTask:Z
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_2c

    .line 323
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 324
    nop

    .line 325
    invoke-direct {p0, p1}, Lcom/topjohnwu/superuser/internal/ShellImpl;->exec0(Lcom/topjohnwu/superuser/Shell$Task;)V

    .line 326
    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->processNextTask(Z)Lcom/topjohnwu/superuser/Shell$Task;

    .line 327
    return-void

    .line 323
    :catchall_2c
    move-exception v0

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 324
    throw v0
.end method

.method public getStatus()I
    .registers 2

    .line 221
    iget v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->status:I

    return v0
.end method

.method public isAlive()Z
    .registers 3

    .line 227
    iget v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->status:I

    const/4 v1, 0x0

    if-gez v0, :cond_6

    .line 228
    return v1

    .line 231
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    .line 233
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->release()V
    :try_end_e
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_6 .. :try_end_e} :catch_f

    .line 234
    return v1

    .line 235
    :catch_f
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    const/4 v1, 0x1

    return v1
.end method

.method public newJob()Lcom/topjohnwu/superuser/Shell$Job;
    .registers 2

    .line 332
    new-instance v0, Lcom/topjohnwu/superuser/internal/ShellJob;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/internal/ShellJob;-><init>(Lcom/topjohnwu/superuser/internal/ShellImpl;)V

    return-object v0
.end method

.method public submitTask(Lcom/topjohnwu/superuser/Shell$Task;)V
    .registers 4
    .param p1, "task"    # Lcom/topjohnwu/superuser/Shell$Task;

    .line 299
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 301
    :try_start_5
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->tasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 302
    iget-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->isRunningTask:Z

    if-nez v0, :cond_1b

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->isRunningTask:Z

    .line 304
    sget-object v0, Lcom/topjohnwu/superuser/internal/ShellImpl;->EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/topjohnwu/superuser/internal/ShellImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/topjohnwu/superuser/internal/ShellImpl$$ExternalSyntheticLambda0;-><init>(Lcom/topjohnwu/superuser/internal/ShellImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_22

    .line 307
    :cond_1b
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 308
    nop

    .line 309
    return-void

    .line 307
    :catchall_22
    move-exception v0

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 308
    throw v0
.end method

.method public waitAndClose(JLjava/util/concurrent/TimeUnit;)Z
    .registers 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 197
    iget v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->status:I

    const/4 v1, 0x1

    if-gez v0, :cond_6

    .line 198
    return v1

    .line 200
    :cond_6
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 202
    :try_start_b
    iget-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->isRunningTask:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->idle:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_29

    if-nez v0, :cond_1f

    .line 203
    nop

    .line 206
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 203
    const/4 v0, 0x0

    return v0

    .line 204
    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_29

    .line 206
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 207
    nop

    .line 209
    return v1

    .line 206
    :catchall_29
    move-exception v0

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl;->scheduleLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 207
    throw v0
.end method
