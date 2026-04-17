.class final Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;
.super Ljava/lang/Object;
.source "ShellImpl.java"

# interfaces
.implements Lcom/topjohnwu/superuser/Shell$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/topjohnwu/superuser/internal/ShellImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncTask"
.end annotation


# instance fields
.field private final condition:Ljava/util/concurrent/locks/Condition;

.field private set:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/Condition;)V
    .registers 3
    .param p1, "c"    # Ljava/util/concurrent/locks/Condition;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;->set:Z

    .line 65
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;->condition:Ljava/util/concurrent/locks/Condition;

    .line 66
    return-void
.end method


# virtual methods
.method await()V
    .registers 2

    .line 74
    nop

    :goto_1
    iget-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;->set:Z

    if-nez v0, :cond_d

    .line 76
    :try_start_5
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_c

    .line 77
    :catch_b
    move-exception v0

    :goto_c
    goto :goto_1

    .line 79
    :cond_d
    return-void
.end method

.method public run(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .registers 4
    .param p1, "stdin"    # Ljava/io/OutputStream;
    .param p2, "stdout"    # Ljava/io/InputStream;
    .param p3, "stderr"    # Ljava/io/InputStream;

    .line 82
    return-void
.end method

.method signal()V
    .registers 2

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;->set:Z

    .line 70
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ShellImpl$SyncTask;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 71
    return-void
.end method
