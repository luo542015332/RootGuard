.class public final Lcom/topjohnwu/superuser/internal/MainShell;
.super Ljava/lang/Object;
.source "MainShell.java"


# static fields
.field private static isInitMain:Z

.field private static mainBuilder:Lcom/topjohnwu/superuser/internal/BuilderImpl;

.field private static final mainShell:[Lcom/topjohnwu/superuser/internal/ShellImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/topjohnwu/superuser/internal/ShellImpl;

    sput-object v0, Lcom/topjohnwu/superuser/internal/MainShell;->mainShell:[Lcom/topjohnwu/superuser/internal/ShellImpl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/topjohnwu/superuser/internal/ShellImpl;
    .registers 4

    const-class v0, Lcom/topjohnwu/superuser/internal/MainShell;

    monitor-enter v0

    .line 45
    :try_start_3
    invoke-static {}, Lcom/topjohnwu/superuser/internal/MainShell;->getCached()Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object v1

    .line 46
    .local v1, "shell":Lcom/topjohnwu/superuser/internal/ShellImpl;
    if-nez v1, :cond_2e

    .line 47
    sget-boolean v2, Lcom/topjohnwu/superuser/internal/MainShell;->isInitMain:Z

    if-nez v2, :cond_26

    .line 50
    const/4 v2, 0x1

    sput-boolean v2, Lcom/topjohnwu/superuser/internal/MainShell;->isInitMain:Z

    .line 51
    sget-object v2, Lcom/topjohnwu/superuser/internal/MainShell;->mainBuilder:Lcom/topjohnwu/superuser/internal/BuilderImpl;

    if-nez v2, :cond_1b

    .line 52
    new-instance v2, Lcom/topjohnwu/superuser/internal/BuilderImpl;

    invoke-direct {v2}, Lcom/topjohnwu/superuser/internal/BuilderImpl;-><init>()V

    sput-object v2, Lcom/topjohnwu/superuser/internal/MainShell;->mainBuilder:Lcom/topjohnwu/superuser/internal/BuilderImpl;

    .line 53
    :cond_1b
    sget-object v2, Lcom/topjohnwu/superuser/internal/MainShell;->mainBuilder:Lcom/topjohnwu/superuser/internal/BuilderImpl;

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->build()Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object v2

    move-object v1, v2

    .line 54
    const/4 v2, 0x0

    sput-boolean v2, Lcom/topjohnwu/superuser/internal/MainShell;->isInitMain:Z

    goto :goto_2e

    .line 48
    :cond_26
    new-instance v2, Lcom/topjohnwu/superuser/NoShellException;

    const-string v3, "The main shell died during initialization"

    invoke-direct {v2, v3}, Lcom/topjohnwu/superuser/NoShellException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_30

    .line 56
    :cond_2e
    :goto_2e
    monitor-exit v0

    return-object v1

    .line 44
    .end local v1    # "shell":Lcom/topjohnwu/superuser/internal/ShellImpl;
    :catchall_30
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static get(Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$GetShellCallback;)V
    .registers 5
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Lcom/topjohnwu/superuser/Shell$GetShellCallback;

    .line 67
    invoke-static {}, Lcom/topjohnwu/superuser/internal/MainShell;->getCached()Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object v0

    .line 68
    .local v0, "shell":Lcom/topjohnwu/superuser/Shell;
    if-eqz v0, :cond_a

    .line 69
    invoke-static {v0, p0, p1}, Lcom/topjohnwu/superuser/internal/MainShell;->returnShell(Lcom/topjohnwu/superuser/Shell;Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$GetShellCallback;)V

    goto :goto_14

    .line 72
    :cond_a
    sget-object v1, Lcom/topjohnwu/superuser/Shell;->EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/topjohnwu/superuser/internal/MainShell$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/topjohnwu/superuser/internal/MainShell$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$GetShellCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    :goto_14
    return-void
.end method

.method public static getCached()Lcom/topjohnwu/superuser/internal/ShellImpl;
    .registers 4

    .line 83
    sget-object v0, Lcom/topjohnwu/superuser/internal/MainShell;->mainShell:[Lcom/topjohnwu/superuser/internal/ShellImpl;

    monitor-enter v0

    .line 84
    const/4 v1, 0x0

    :try_start_4
    aget-object v2, v0, v1

    .line 85
    .local v2, "s":Lcom/topjohnwu/superuser/internal/ShellImpl;
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/internal/ShellImpl;->getStatus()I

    move-result v3

    if-gez v3, :cond_12

    .line 86
    const/4 v2, 0x0

    .line 87
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 89
    :cond_12
    monitor-exit v0

    return-object v2

    .line 90
    .end local v2    # "s":Lcom/topjohnwu/superuser/internal/ShellImpl;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v1
.end method

.method static synthetic lambda$get$1(Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$GetShellCallback;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Lcom/topjohnwu/superuser/Shell$GetShellCallback;

    .line 74
    :try_start_0
    invoke-static {}, Lcom/topjohnwu/superuser/internal/MainShell;->get()Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/topjohnwu/superuser/internal/MainShell;->returnShell(Lcom/topjohnwu/superuser/Shell;Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$GetShellCallback;)V
    :try_end_7
    .catch Lcom/topjohnwu/superuser/NoShellException; {:try_start_0 .. :try_end_7} :catch_8

    .line 77
    goto :goto_c

    .line 75
    :catch_8
    move-exception v0

    .line 76
    .local v0, "e":Lcom/topjohnwu/superuser/NoShellException;
    invoke-static {v0}, Lcom/topjohnwu/superuser/internal/Utils;->ex(Ljava/lang/Throwable;)V

    .line 78
    .end local v0    # "e":Lcom/topjohnwu/superuser/NoShellException;
    :goto_c
    return-void
.end method

.method static synthetic lambda$returnShell$0(Lcom/topjohnwu/superuser/Shell$GetShellCallback;Lcom/topjohnwu/superuser/Shell;)V
    .registers 2
    .param p0, "cb"    # Lcom/topjohnwu/superuser/Shell$GetShellCallback;
    .param p1, "s"    # Lcom/topjohnwu/superuser/Shell;

    .line 63
    invoke-interface {p0, p1}, Lcom/topjohnwu/superuser/Shell$GetShellCallback;->onShell(Lcom/topjohnwu/superuser/Shell;)V

    return-void
.end method

.method public static newJob(Ljava/io/InputStream;)Lcom/topjohnwu/superuser/Shell$Job;
    .registers 2
    .param p0, "in"    # Ljava/io/InputStream;

    .line 109
    new-instance v0, Lcom/topjohnwu/superuser/internal/PendingJob;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/PendingJob;-><init>()V

    invoke-virtual {v0, p0}, Lcom/topjohnwu/superuser/internal/PendingJob;->add(Ljava/io/InputStream;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newJob([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;
    .registers 2
    .param p0, "cmds"    # [Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/topjohnwu/superuser/internal/PendingJob;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/PendingJob;-><init>()V

    invoke-virtual {v0, p0}, Lcom/topjohnwu/superuser/internal/PendingJob;->add([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v0

    return-object v0
.end method

.method private static returnShell(Lcom/topjohnwu/superuser/Shell;Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$GetShellCallback;)V
    .registers 4
    .param p0, "s"    # Lcom/topjohnwu/superuser/Shell;
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .param p2, "cb"    # Lcom/topjohnwu/superuser/Shell$GetShellCallback;

    .line 60
    if-nez p1, :cond_6

    .line 61
    invoke-interface {p2, p0}, Lcom/topjohnwu/superuser/Shell$GetShellCallback;->onShell(Lcom/topjohnwu/superuser/Shell;)V

    goto :goto_e

    .line 63
    :cond_6
    new-instance v0, Lcom/topjohnwu/superuser/internal/MainShell$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0}, Lcom/topjohnwu/superuser/internal/MainShell$$ExternalSyntheticLambda0;-><init>(Lcom/topjohnwu/superuser/Shell$GetShellCallback;Lcom/topjohnwu/superuser/Shell;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 64
    :goto_e
    return-void
.end method

.method public static declared-synchronized setBuilder(Lcom/topjohnwu/superuser/Shell$Builder;)V
    .registers 4
    .param p0, "builder"    # Lcom/topjohnwu/superuser/Shell$Builder;

    const-class v0, Lcom/topjohnwu/superuser/internal/MainShell;

    monitor-enter v0

    .line 102
    :try_start_3
    sget-boolean v1, Lcom/topjohnwu/superuser/internal/MainShell;->isInitMain:Z

    if-nez v1, :cond_14

    invoke-static {}, Lcom/topjohnwu/superuser/internal/MainShell;->getCached()Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object v1

    if-nez v1, :cond_14

    .line 105
    move-object v1, p0

    check-cast v1, Lcom/topjohnwu/superuser/internal/BuilderImpl;

    sput-object v1, Lcom/topjohnwu/superuser/internal/MainShell;->mainBuilder:Lcom/topjohnwu/superuser/internal/BuilderImpl;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1c

    .line 106
    monitor-exit v0

    return-void

    .line 103
    :cond_14
    :try_start_14
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The main shell was already created"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1c

    .line 101
    .end local p0    # "builder":Lcom/topjohnwu/superuser/Shell$Builder;
    :catchall_1c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized setCached(Lcom/topjohnwu/superuser/internal/ShellImpl;)V
    .registers 4
    .param p0, "shell"    # Lcom/topjohnwu/superuser/internal/ShellImpl;

    const-class v0, Lcom/topjohnwu/superuser/internal/MainShell;

    monitor-enter v0

    .line 94
    :try_start_3
    sget-boolean v1, Lcom/topjohnwu/superuser/internal/MainShell;->isInitMain:Z

    if-eqz v1, :cond_12

    .line 95
    sget-object v1, Lcom/topjohnwu/superuser/internal/MainShell;->mainShell:[Lcom/topjohnwu/superuser/internal/ShellImpl;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_14

    .line 96
    const/4 v2, 0x0

    :try_start_b
    aput-object p0, v1, v2

    .line 97
    monitor-exit v1

    goto :goto_12

    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    :try_start_11
    throw v2
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_14

    .line 99
    :cond_12
    :goto_12
    monitor-exit v0

    return-void

    .line 93
    .end local p0    # "shell":Lcom/topjohnwu/superuser/internal/ShellImpl;
    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method
