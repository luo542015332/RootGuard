.class public final Lcom/pandasu/turbo/receiver/AutoApplyReceiver;
.super Lcom/pandasu/turbo/receiver/Hilt_AutoApplyReceiver;
.source "AutoApplyReceiver.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/pandasu/turbo/receiver/AutoApplyReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "isolationDataStore",
        "Lcom/pandasu/turbo/data/local/IsolationDataStore;",
        "getIsolationDataStore",
        "()Lcom/pandasu/turbo/data/local/IsolationDataStore;",
        "setIsolationDataStore",
        "(Lcom/pandasu/turbo/data/local/IsolationDataStore;)V",
        "rootHider",
        "Lcom/pandasu/turbo/data/magisk/RootHider;",
        "getRootHider",
        "()Lcom/pandasu/turbo/data/magisk/RootHider;",
        "setRootHider",
        "(Lcom/pandasu/turbo/data/magisk/RootHider;)V",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field public isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Lcom/pandasu/turbo/receiver/Hilt_AutoApplyReceiver;-><init>()V

    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 22
    return-void
.end method


# virtual methods
.method public final getIsolationDataStore()Lcom/pandasu/turbo/data/local/IsolationDataStore;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "isolationDataStore"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRootHider()Lcom/pandasu/turbo/data/magisk/RootHider;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "rootHider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    invoke-super {p0, p1, p2}, Lcom/pandasu/turbo/receiver/Hilt_AutoApplyReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/receiver/AutoApplyReceiver;
    .local p1, "context":Landroid/content/Context;
    .local p2, "intent":Landroid/content/Intent;
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "intent"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    return-void

    .line 34
    .local v1, "action":Ljava/lang/String;
    :cond_15
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 35
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 36
    return-void

    .line 38
    :cond_26
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "AutoApplyReceiver: \u6536\u5230\u5f00\u673a\u5e7f\u64ad\uff0c\u5f00\u59cb\u6062\u590d\u9694\u79bb\u914d\u7f6e"

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lcom/pandasu/turbo/receiver/AutoApplyReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v2

    .line 42
    .local v2, "pendingResult":Landroid/content/BroadcastReceiver$PendingResult;
    iget-object v3, v0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v2, v7}, Lcom/pandasu/turbo/receiver/AutoApplyReceiver$onReceive$1;-><init>(Lcom/pandasu/turbo/receiver/AutoApplyReceiver;Landroid/content/BroadcastReceiver$PendingResult;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 78
    return-void
.end method

.method public final setIsolationDataStore(Lcom/pandasu/turbo/data/local/IsolationDataStore;)V
    .registers 3
    .param p1, "<set-?>"    # Lcom/pandasu/turbo/data/local/IsolationDataStore;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver;->isolationDataStore:Lcom/pandasu/turbo/data/local/IsolationDataStore;

    return-void
.end method

.method public final setRootHider(Lcom/pandasu/turbo/data/magisk/RootHider;)V
    .registers 3
    .param p1, "<set-?>"    # Lcom/pandasu/turbo/data/magisk/RootHider;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/pandasu/turbo/receiver/AutoApplyReceiver;->rootHider:Lcom/pandasu/turbo/data/magisk/RootHider;

    return-void
.end method
