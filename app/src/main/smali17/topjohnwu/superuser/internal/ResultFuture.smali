.class Lcom/topjohnwu/superuser/internal/ResultFuture;
.super Lcom/topjohnwu/superuser/internal/ResultHolder;
.source "ResultFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/topjohnwu/superuser/internal/ResultHolder;",
        "Ljava/util/concurrent/Future<",
        "Lcom/topjohnwu/superuser/Shell$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Lcom/topjohnwu/superuser/internal/ResultHolder;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/ResultFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 6
    .param p1, "mayInterruptIfRunning"    # Z

    .line 40
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ResultFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public get()Lcom/topjohnwu/superuser/Shell$Result;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ResultFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 56
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/ResultFuture;->getResult()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lcom/topjohnwu/superuser/Shell$Result;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ResultFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 65
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/ResultFuture;->getResult()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v0

    return-object v0

    .line 63
    :cond_d
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/ResultFuture;->get()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/topjohnwu/superuser/internal/ResultFuture;->get(JLjava/util/concurrent/TimeUnit;)Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ResultFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public onResult(Lcom/topjohnwu/superuser/Shell$Result;)V
    .registers 3
    .param p1, "out"    # Lcom/topjohnwu/superuser/Shell$Result;

    .line 34
    invoke-super {p0, p1}, Lcom/topjohnwu/superuser/internal/ResultHolder;->onResult(Lcom/topjohnwu/superuser/Shell$Result;)V

    .line 35
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ResultFuture;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 36
    return-void
.end method
