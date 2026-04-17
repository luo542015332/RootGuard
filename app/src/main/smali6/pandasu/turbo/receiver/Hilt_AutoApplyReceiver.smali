.class public abstract Lcom/pandasu/turbo/receiver/Hilt_AutoApplyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Hilt_AutoApplyReceiver.java"


# instance fields
.field private volatile injected:Z

.field private final injectedLock:Ljava/lang/Object;

.field private final onReceiveBytecodeInjectionMarker:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pandasu/turbo/receiver/Hilt_AutoApplyReceiver;->injected:Z

    .line 20
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/pandasu/turbo/receiver/Hilt_AutoApplyReceiver;->injectedLock:Ljava/lang/Object;

    .line 22
    iput-boolean v0, p0, Lcom/pandasu/turbo/receiver/Hilt_AutoApplyReceiver;->onReceiveBytecodeInjectionMarker:Z

    return-void
.end method


# virtual methods
.method protected inject(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    iget-boolean v0, p0, Lcom/pandasu/turbo/receiver/Hilt_AutoApplyReceiver;->injected:Z

    if-nez v0, :cond_22

    .line 32
    iget-object v0, p0, Lcom/pandasu/turbo/receiver/Hilt_AutoApplyReceiver;->injectedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_7
    iget-boolean v1, p0, Lcom/pandasu/turbo/receiver/Hilt_AutoApplyReceiver;->injected:Z

    if-nez v1, :cond_1d

    .line 34
    invoke-static {p1}, Ldagger/hilt/android/internal/managers/BroadcastReceiverComponentManager;->generatedComponent(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pandasu/turbo/receiver/AutoApplyReceiver_GeneratedInjector;

    invoke-static {p0}, Ldagger/hilt/internal/UnsafeCasts;->unsafeCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pandasu/turbo/receiver/AutoApplyReceiver;

    invoke-interface {v1, v2}, Lcom/pandasu/turbo/receiver/AutoApplyReceiver_GeneratedInjector;->injectAutoApplyReceiver(Lcom/pandasu/turbo/receiver/AutoApplyReceiver;)V

    .line 35
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pandasu/turbo/receiver/Hilt_AutoApplyReceiver;->injected:Z

    .line 37
    :cond_1d
    monitor-exit v0

    goto :goto_22

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1

    .line 39
    :cond_22
    :goto_22
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, p1}, Lcom/pandasu/turbo/receiver/Hilt_AutoApplyReceiver;->inject(Landroid/content/Context;)V

    .line 28
    return-void
.end method
