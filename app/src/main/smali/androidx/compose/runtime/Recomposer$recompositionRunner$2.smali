.class final Landroidx/compose/runtime/Recomposer$recompositionRunner$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Recomposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer;->recompositionRunner(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$recompositionRunner$2\n+ 2 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 3 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,1502:1\n70#2:1503\n70#2:1510\n33#3,6:1504\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$recompositionRunner$2\n*L\n941#1:1503\n950#1:1510\n943#1:1504,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.runtime.Recomposer$recompositionRunner$2"
    f = "Recomposer.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x3b1
    }
    m = "invokeSuspend"
    n = {
        "callingJob",
        "unregisterApplyObserver"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $parentFrameClock:Landroidx/compose/runtime/MonotonicFrameClock;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Recomposer;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Recomposer;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/runtime/Recomposer$recompositionRunner$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->$block:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->$parentFrameClock:Landroidx/compose/runtime/MonotonicFrameClock;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;

    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v2, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->$block:Lkotlin/jvm/functions/Function3;

    iget-object v3, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->$parentFrameClock:Landroidx/compose/runtime/MonotonicFrameClock;

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;-><init>(Landroidx/compose/runtime/Recomposer;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 919
    iget v1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_102

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_13
    move-object v0, p0

    .local v0, "this":Landroidx/compose/runtime/Recomposer$recompositionRunner$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/snapshots/ObserverHandle;

    .local v1, "unregisterApplyObserver":Landroidx/compose/runtime/snapshots/ObserverHandle;
    iget-object v3, v0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/Job;

    .local v3, "callingJob":Lkotlinx/coroutines/Job;
    :try_start_1c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_21

    goto/16 :goto_a2

    .line 949
    :catchall_21
    move-exception v4

    goto/16 :goto_d7

    .line 919
    .end local v0    # "this":Landroidx/compose/runtime/Recomposer$recompositionRunner$2;
    .end local v1    # "unregisterApplyObserver":Landroidx/compose/runtime/snapshots/ObserverHandle;
    .end local v3    # "callingJob":Lkotlinx/coroutines/Job;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Landroidx/compose/runtime/Recomposer$recompositionRunner$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 921
    .local v3, "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    invoke-interface {v3}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v3

    .line 922
    .local v3, "callingJob":Lkotlinx/coroutines/Job;
    iget-object v4, v1, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    # invokes: Landroidx/compose/runtime/Recomposer;->registerRunnerJob(Lkotlinx/coroutines/Job;)V
    invoke-static {v4, v3}, Landroidx/compose/runtime/Recomposer;->access$registerRunnerJob(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/Job;)V

    .line 927
    sget-object v4, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    new-instance v5, Landroidx/compose/runtime/Recomposer$recompositionRunner$2$unregisterApplyObserver$1;

    iget-object v6, v1, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-direct {v5, v6}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2$unregisterApplyObserver$1;-><init>(Landroidx/compose/runtime/Recomposer;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->registerApplyObserver(Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/snapshots/ObserverHandle;

    move-result-object v4

    .line 936
    .local v4, "unregisterApplyObserver":Landroidx/compose/runtime/snapshots/ObserverHandle;
    sget-object v5, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    iget-object v6, v1, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    # getter for: Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    invoke-static {v6}, Landroidx/compose/runtime/Recomposer;->access$getRecomposerInfo$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    move-result-object v6

    # invokes: Landroidx/compose/runtime/Recomposer$Companion;->addRunning(Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V
    invoke-static {v5, v6}, Landroidx/compose/runtime/Recomposer$Companion;->access$addRunning(Landroidx/compose/runtime/Recomposer$Companion;Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V

    .line 938
    nop

    .line 941
    :try_start_54
    iget-object v5, v1, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    # getter for: Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;
    invoke-static {v5}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .local v5, "lock$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 1503
    .local v7, "$i$f$synchronized":I
    monitor-enter v5
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_d2

    .end local v5    # "lock$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 942
    .local v8, "$i$a$-synchronized-Recomposer$recompositionRunner$2$1":I
    :try_start_5f
    # getter for: Landroidx/compose/runtime/Recomposer;->knownCompositions:Ljava/util/List;
    invoke-static {v6}, Landroidx/compose/runtime/Recomposer;->access$getKnownCompositions$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_cf

    .line 1503
    .end local v8    # "$i$a$-synchronized-Recomposer$recompositionRunner$2$1":I
    :try_start_69
    monitor-exit v5

    .end local v7    # "$i$f$synchronized":I
    move-object v5, v6

    .line 943
    .local v5, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 1504
    .local v6, "$i$f$fastForEach":I
    nop

    .line 1505
    const/4 v7, 0x0

    .local v7, "index$iv":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_72
    if-ge v7, v8, :cond_83

    .line 1506
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1507
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/runtime/ControlledComposition;

    .local v10, "it":Landroidx/compose/runtime/ControlledComposition;
    const/4 v11, 0x0

    .line 943
    .local v11, "$i$a$-fastForEach-Recomposer$recompositionRunner$2$2":I
    invoke-interface {v10}, Landroidx/compose/runtime/ControlledComposition;->invalidateAll()V

    .line 1507
    .end local v9    # "item$iv":Ljava/lang/Object;
    .end local v10    # "it":Landroidx/compose/runtime/ControlledComposition;
    .end local v11    # "$i$a$-fastForEach-Recomposer$recompositionRunner$2$2":I
    nop

    .line 1505
    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    .line 1509
    .end local v7    # "index$iv":I
    :cond_83
    nop

    .line 945
    .end local v5    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    new-instance v5, Landroidx/compose/runtime/Recomposer$recompositionRunner$2$3;

    iget-object v6, v1, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->$block:Lkotlin/jvm/functions/Function3;

    iget-object v7, v1, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->$parentFrameClock:Landroidx/compose/runtime/MonotonicFrameClock;

    invoke-direct {v5, v6, v7, v2}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2$3;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->L$1:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v1, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->label:I

    invoke-static {v5, v6}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_9d
    .catchall {:try_start_69 .. :try_end_9d} :catchall_d2

    if-ne v5, v0, :cond_a0

    .line 919
    return-object v0

    .line 945
    :cond_a0
    move-object v0, v1

    move-object v1, v4

    .line 949
    .end local v4    # "unregisterApplyObserver":Landroidx/compose/runtime/snapshots/ObserverHandle;
    .restart local v0    # "this":Landroidx/compose/runtime/Recomposer$recompositionRunner$2;
    .local v1, "unregisterApplyObserver":Landroidx/compose/runtime/snapshots/ObserverHandle;
    :goto_a2
    invoke-interface {v1}, Landroidx/compose/runtime/snapshots/ObserverHandle;->dispose()V

    .line 950
    .end local v1    # "unregisterApplyObserver":Landroidx/compose/runtime/snapshots/ObserverHandle;
    iget-object v1, v0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    # getter for: Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;
    invoke-static {v1}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "lock$iv":Ljava/lang/Object;
    iget-object v4, v0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 v5, 0x0

    .line 1510
    .local v5, "$i$f$synchronized":I
    monitor-enter v1

    .end local v1    # "lock$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 951
    .local v6, "$i$a$-synchronized-Recomposer$recompositionRunner$2$4":I
    :try_start_b0
    # getter for: Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;
    invoke-static {v4}, Landroidx/compose/runtime/Recomposer;->access$getRunnerJob$p(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/Job;

    move-result-object v7

    if-ne v7, v3, :cond_b9

    .line 952
    .end local v3    # "callingJob":Lkotlinx/coroutines/Job;
    invoke-static {v4, v2}, Landroidx/compose/runtime/Recomposer;->access$setRunnerJob$p(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/Job;)V

    .line 954
    :cond_b9
    # invokes: Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;
    invoke-static {v4}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;
    :try_end_bc
    .catchall {:try_start_b0 .. :try_end_bc} :catchall_cc

    .line 1510
    .end local v6    # "$i$a$-synchronized-Recomposer$recompositionRunner$2$4":I
    monitor-exit v1

    .line 956
    .end local v5    # "$i$f$synchronized":I
    sget-object v1, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    # getter for: Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    invoke-static {v2}, Landroidx/compose/runtime/Recomposer;->access$getRecomposerInfo$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    move-result-object v2

    # invokes: Landroidx/compose/runtime/Recomposer$Companion;->removeRunning(Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V
    invoke-static {v1, v2}, Landroidx/compose/runtime/Recomposer$Companion;->access$removeRunning(Landroidx/compose/runtime/Recomposer$Companion;Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V

    .line 957
    nop

    .line 958
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 1510
    .restart local v5    # "$i$f$synchronized":I
    :catchall_cc
    move-exception v2

    monitor-exit v1

    throw v2

    .line 1503
    .end local v0    # "this":Landroidx/compose/runtime/Recomposer$recompositionRunner$2;
    .end local v5    # "$i$f$synchronized":I
    .local v1, "this":Landroidx/compose/runtime/Recomposer$recompositionRunner$2;
    .restart local v3    # "callingJob":Lkotlinx/coroutines/Job;
    .restart local v4    # "unregisterApplyObserver":Landroidx/compose/runtime/snapshots/ObserverHandle;
    .local v7, "$i$f$synchronized":I
    :catchall_cf
    move-exception v0

    :try_start_d0
    monitor-exit v5

    .end local v1    # "this":Landroidx/compose/runtime/Recomposer$recompositionRunner$2;
    .end local v3    # "callingJob":Lkotlinx/coroutines/Job;
    .end local v4    # "unregisterApplyObserver":Landroidx/compose/runtime/snapshots/ObserverHandle;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_d2
    .catchall {:try_start_d0 .. :try_end_d2} :catchall_d2

    .line 949
    .end local v7    # "$i$f$synchronized":I
    .restart local v1    # "this":Landroidx/compose/runtime/Recomposer$recompositionRunner$2;
    .restart local v3    # "callingJob":Lkotlinx/coroutines/Job;
    .restart local v4    # "unregisterApplyObserver":Landroidx/compose/runtime/snapshots/ObserverHandle;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_d2
    move-exception v0

    move-object v12, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v12

    .end local v4    # "unregisterApplyObserver":Landroidx/compose/runtime/snapshots/ObserverHandle;
    .restart local v0    # "this":Landroidx/compose/runtime/Recomposer$recompositionRunner$2;
    .local v1, "unregisterApplyObserver":Landroidx/compose/runtime/snapshots/ObserverHandle;
    :goto_d7
    invoke-interface {v1}, Landroidx/compose/runtime/snapshots/ObserverHandle;->dispose()V

    .line 950
    .end local v1    # "unregisterApplyObserver":Landroidx/compose/runtime/snapshots/ObserverHandle;
    iget-object v1, v0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    # getter for: Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;
    invoke-static {v1}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "lock$iv":Ljava/lang/Object;
    iget-object v5, v0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 v6, 0x0

    .line 1510
    .local v6, "$i$f$synchronized":I
    monitor-enter v1

    .end local v1    # "lock$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 951
    .local v7, "$i$a$-synchronized-Recomposer$recompositionRunner$2$4":I
    :try_start_e5
    # getter for: Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;
    invoke-static {v5}, Landroidx/compose/runtime/Recomposer;->access$getRunnerJob$p(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/Job;

    move-result-object v8

    if-ne v8, v3, :cond_ee

    .line 952
    .end local v3    # "callingJob":Lkotlinx/coroutines/Job;
    invoke-static {v5, v2}, Landroidx/compose/runtime/Recomposer;->access$setRunnerJob$p(Landroidx/compose/runtime/Recomposer;Lkotlinx/coroutines/Job;)V

    .line 954
    :cond_ee
    # invokes: Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;
    invoke-static {v5}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;
    :try_end_f1
    .catchall {:try_start_e5 .. :try_end_f1} :catchall_fe

    .line 1510
    .end local v7    # "$i$a$-synchronized-Recomposer$recompositionRunner$2$4":I
    monitor-exit v1

    .line 956
    .end local v6    # "$i$f$synchronized":I
    sget-object v1, Landroidx/compose/runtime/Recomposer;->Companion:Landroidx/compose/runtime/Recomposer$Companion;

    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->this$0:Landroidx/compose/runtime/Recomposer;

    # getter for: Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;
    invoke-static {v2}, Landroidx/compose/runtime/Recomposer;->access$getRecomposerInfo$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    move-result-object v2

    # invokes: Landroidx/compose/runtime/Recomposer$Companion;->removeRunning(Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V
    invoke-static {v1, v2}, Landroidx/compose/runtime/Recomposer$Companion;->access$removeRunning(Landroidx/compose/runtime/Recomposer$Companion;Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V

    throw v4

    .line 1510
    .restart local v6    # "$i$f$synchronized":I
    :catchall_fe
    move-exception v2

    monitor-exit v1

    throw v2

    nop

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_24
        :pswitch_13
    .end packed-switch
.end method
