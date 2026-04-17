.class Lcom/topjohnwu/superuser/internal/ResultHolder;
.super Ljava/lang/Object;
.source "ResultHolder.java"

# interfaces
.implements Lcom/topjohnwu/superuser/Shell$ResultCallback;


# instance fields
.field private result:Lcom/topjohnwu/superuser/Shell$Result;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getResult()Lcom/topjohnwu/superuser/Shell$Result;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ResultHolder;->result:Lcom/topjohnwu/superuser/Shell$Result;

    if-nez v0, :cond_9

    new-instance v0, Lcom/topjohnwu/superuser/internal/ResultImpl;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/ResultImpl;-><init>()V

    :cond_9
    return-object v0
.end method

.method public onResult(Lcom/topjohnwu/superuser/Shell$Result;)V
    .registers 2
    .param p1, "out"    # Lcom/topjohnwu/superuser/Shell$Result;

    .line 31
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/ResultHolder;->result:Lcom/topjohnwu/superuser/Shell$Result;

    .line 32
    return-void
.end method
