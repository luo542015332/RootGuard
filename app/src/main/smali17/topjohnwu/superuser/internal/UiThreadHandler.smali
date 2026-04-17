.class public Lcom/topjohnwu/superuser/internal/UiThreadHandler;
.super Ljava/lang/Object;
.source "UiThreadHandler.java"


# static fields
.field public static final executor:Ljava/util/concurrent/Executor;

.field public static final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/topjohnwu/superuser/internal/UiThreadHandler;->handler:Landroid/os/Handler;

    .line 28
    new-instance v0, Lcom/topjohnwu/superuser/internal/UiThreadHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/UiThreadHandler$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/topjohnwu/superuser/internal/UiThreadHandler;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static run(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 30
    invoke-static {}, Lcom/topjohnwu/superuser/ShellUtils;->onMainThread()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 31
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_f

    .line 33
    :cond_a
    sget-object v0, Lcom/topjohnwu/superuser/internal/UiThreadHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    :goto_f
    return-void
.end method

.method public static runAndWait(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 38
    invoke-static {}, Lcom/topjohnwu/superuser/ShellUtils;->onMainThread()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 39
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_17

    .line 41
    :cond_a
    new-instance v0, Lcom/topjohnwu/superuser/internal/WaitRunnable;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/internal/WaitRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 42
    .local v0, "wr":Lcom/topjohnwu/superuser/internal/WaitRunnable;
    sget-object v1, Lcom/topjohnwu/superuser/internal/UiThreadHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/WaitRunnable;->waitUntilDone()V

    .line 45
    .end local v0    # "wr":Lcom/topjohnwu/superuser/internal/WaitRunnable;
    :goto_17
    return-void
.end method
