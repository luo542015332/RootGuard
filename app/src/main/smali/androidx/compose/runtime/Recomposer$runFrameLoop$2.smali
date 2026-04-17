.class final Landroidx/compose/runtime/Recomposer$runFrameLoop$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Recomposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer;->runFrameLoop(Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lkotlinx/coroutines/CancellableContinuation<",
        "-",
        "Lkotlin/Unit;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runFrameLoop$2\n+ 2 Trace.kt\nandroidx/compose/runtime/TraceKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,1502:1\n46#2,5:1503\n46#2,3:1508\n50#2:1537\n70#3:1511\n70#3:1536\n33#4,6:1512\n33#4,6:1518\n33#4,6:1524\n33#4,6:1530\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runFrameLoop$2\n*L\n833#1:1503,5\n843#1:1508,3\n843#1:1537\n848#1:1511\n881#1:1536\n849#1:1512,6\n851#1:1518,6\n859#1:1524,6\n874#1:1530,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "",
        "frameTime",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $frameSignal:Landroidx/compose/runtime/ProduceFrameSignal;

.field final synthetic $toApply:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toRecompose:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/ProduceFrameSignal;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Recomposer;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Landroidx/compose/runtime/ProduceFrameSignal;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->this$0:Landroidx/compose/runtime/Recomposer;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->$toRecompose:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->$toApply:Ljava/util/List;

    iput-object p4, p0, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->$frameSignal:Landroidx/compose/runtime/ProduceFrameSignal;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "p1"    # Ljava/lang/Object;

    .line 829
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->invoke(J)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(J)Lkotlinx/coroutines/CancellableContinuation;
    .registers 24
    .param p1, "frameTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 832
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->this$0:Landroidx/compose/runtime/Recomposer;

    # invokes: Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaiters()Z
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getHasBroadcastFrameClockAwaiters(Landroidx/compose/runtime/Recomposer;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 833
    const-string/jumbo v2, "Recomposer:animation"

    .local v2, "sectionName$iv":Ljava/lang/String;
    iget-object v0, v1, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 v3, 0x0

    .line 1503
    .local v3, "$i$f$trace":I
    sget-object v4, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1504
    .local v4, "token$iv":Ljava/lang/Object;
    nop

    .line 1505
    const/4 v5, 0x0

    .line 836
    .local v5, "$i$a$-trace-Recomposer$runFrameLoop$2$1":I
    :try_start_18
    # getter for: Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getBroadcastFrameClock$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/BroadcastFrameClock;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_32

    move-wide/from16 v6, p1

    :try_start_1e
    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/BroadcastFrameClock;->sendFrame(J)V

    .line 839
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->sendApplyNotifications()V

    .line 840
    nop

    .end local v5    # "$i$a$-trace-Recomposer$runFrameLoop$2$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_30

    .line 1505
    nop

    .line 1507
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .line 1505
    goto :goto_3d

    .line 1507
    :catchall_30
    move-exception v0

    goto :goto_35

    :catchall_32
    move-exception v0

    move-wide/from16 v6, p1

    :goto_35
    sget-object v5, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw v0

    .line 832
    .end local v2    # "sectionName$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    .end local v4    # "token$iv":Ljava/lang/Object;
    :cond_3b
    move-wide/from16 v6, p1

    .line 843
    :goto_3d
    const-string/jumbo v2, "Recomposer:recompose"

    .restart local v2    # "sectionName$iv":Ljava/lang/String;
    iget-object v0, v1, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v3, v1, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->$toRecompose:Ljava/util/List;

    iget-object v4, v1, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->$toApply:Ljava/util/List;

    iget-object v5, v1, Landroidx/compose/runtime/Recomposer$runFrameLoop$2;->$frameSignal:Landroidx/compose/runtime/ProduceFrameSignal;

    const/4 v8, 0x0

    .line 1508
    .local v8, "$i$f$trace":I
    sget-object v9, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 1509
    .local v9, "token$iv":Ljava/lang/Object;
    nop

    .line 1510
    const/4 v10, 0x0

    .line 847
    .local v10, "$i$a$-trace-Recomposer$runFrameLoop$2$2":I
    :try_start_51
    # invokes: Landroidx/compose/runtime/Recomposer;->recordComposerModifications()Z
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$recordComposerModifications(Landroidx/compose/runtime/Recomposer;)Z

    .line 848
    # getter for: Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v11

    .local v11, "lock$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1511
    .local v12, "$i$f$synchronized":I
    monitor-enter v11
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_167

    const/4 v13, 0x0

    .line 849
    .local v13, "$i$a$-synchronized-Recomposer$runFrameLoop$2$2$1":I
    :try_start_5b
    # getter for: Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getCompositionsAwaitingApply$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v14

    .local v14, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v15, 0x0

    .line 1512
    .local v15, "$i$f$fastForEach":I
    nop

    .line 1513
    const/16 v16, 0x0

    .local v16, "index$iv":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_160

    move-object/from16 v17, v2

    move/from16 v2, v16

    .end local v16    # "index$iv":I
    .local v2, "index$iv":I
    .local v17, "sectionName$iv":Ljava/lang/String;
    :goto_6b
    if-ge v2, v1, :cond_8b

    .line 1514
    :try_start_6d
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1515
    .local v16, "item$iv":Ljava/lang/Object;
    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/runtime/ControlledComposition;

    move-object/from16 v19, v18

    .local v19, "it":Landroidx/compose/runtime/ControlledComposition;
    const/16 v18, 0x0

    .line 849
    .local v18, "$i$a$-fastForEach-Recomposer$runFrameLoop$2$2$1$1":I
    move/from16 v20, v1

    move-object v1, v4

    check-cast v1, Ljava/util/Collection;

    move-object/from16 v6, v19

    .end local v19    # "it":Landroidx/compose/runtime/ControlledComposition;
    .local v6, "it":Landroidx/compose/runtime/ControlledComposition;
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1515
    .end local v6    # "it":Landroidx/compose/runtime/ControlledComposition;
    .end local v18    # "$i$a$-fastForEach-Recomposer$runFrameLoop$2$2$1$1":I
    nop

    .line 1513
    .end local v16    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v6, p1

    move/from16 v1, v20

    goto :goto_6b

    .line 1517
    .end local v2    # "index$iv":I
    :cond_8b
    nop

    .line 850
    .end local v14    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v15    # "$i$f$fastForEach":I
    # getter for: Landroidx/compose/runtime/Recomposer;->compositionsAwaitingApply:Ljava/util/List;
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getCompositionsAwaitingApply$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 851
    # getter for: Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v1

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1518
    .local v2, "$i$f$fastForEach":I
    nop

    .line 1519
    const/4 v6, 0x0

    .local v6, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    :goto_9e
    if-ge v6, v7, :cond_b7

    .line 1520
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 1521
    .local v14, "item$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Landroidx/compose/runtime/ControlledComposition;

    .local v15, "it":Landroidx/compose/runtime/ControlledComposition;
    const/16 v16, 0x0

    .line 851
    .local v16, "$i$a$-fastForEach-Recomposer$runFrameLoop$2$2$1$2":I
    move-object/from16 v18, v1

    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .local v18, "$this$fastForEach$iv":Ljava/util/List;
    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1521
    .end local v15    # "it":Landroidx/compose/runtime/ControlledComposition;
    .end local v16    # "$i$a$-fastForEach-Recomposer$runFrameLoop$2$2$1$2":I
    nop

    .line 1519
    .end local v14    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v18

    goto :goto_9e

    .end local v18    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v1    # "$this$fastForEach$iv":Ljava/util/List;
    :cond_b7
    move-object/from16 v18, v1

    .line 1523
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v6    # "index$iv":I
    .restart local v18    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 852
    .end local v2    # "$i$f$fastForEach":I
    .end local v18    # "$this$fastForEach$iv":Ljava/util/List;
    # getter for: Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 853
    invoke-virtual {v5}, Landroidx/compose/runtime/ProduceFrameSignal;->takeFrameRequestLocked()V

    .line 854
    nop

    .end local v13    # "$i$a$-synchronized-Recomposer$runFrameLoop$2$2$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c7
    .catchall {:try_start_6d .. :try_end_c7} :catchall_15e

    .line 1511
    :try_start_c7
    monitor-exit v11

    .line 857
    .end local v11    # "lock$iv":Ljava/lang/Object;
    .end local v12    # "$i$f$synchronized":I
    new-instance v1, Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-direct {v1}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V
    :try_end_cd
    .catchall {:try_start_c7 .. :try_end_cd} :catchall_165

    .line 858
    .local v1, "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    nop

    .line 859
    move-object v2, v3

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 1524
    .local v5, "$i$f$fastForEach":I
    nop

    .line 1525
    const/4 v6, 0x0

    .restart local v6    # "index$iv":I
    :try_start_d2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    :goto_d6
    if-ge v6, v7, :cond_fd

    .line 1526
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1527
    .local v11, "item$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/runtime/ControlledComposition;

    .local v12, "composer":Landroidx/compose/runtime/ControlledComposition;
    const/4 v13, 0x0

    .line 860
    .local v13, "$i$a$-fastForEach-Recomposer$runFrameLoop$2$2$2":I
    # invokes: Landroidx/compose/runtime/Recomposer;->performRecompose(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Landroidx/compose/runtime/ControlledComposition;
    invoke-static {v0, v12, v1}, Landroidx/compose/runtime/Recomposer;->access$performRecompose(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Landroidx/compose/runtime/ControlledComposition;

    move-result-object v14
    :try_end_e4
    .catchall {:try_start_d2 .. :try_end_e4} :catchall_157

    if-eqz v14, :cond_f3

    .local v14, "it":Landroidx/compose/runtime/ControlledComposition;
    const/4 v15, 0x0

    .line 861
    .local v15, "$i$a$-let-Recomposer$runFrameLoop$2$2$2$1":I
    move-object/from16 v16, v1

    .end local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .local v16, "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    :try_start_e9
    move-object v1, v4

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_ef
    .catchall {:try_start_e9 .. :try_end_ef} :catchall_f1

    .line 862
    nop

    .end local v14    # "it":Landroidx/compose/runtime/ControlledComposition;
    .end local v15    # "$i$a$-let-Recomposer$runFrameLoop$2$2$2$1":I
    goto :goto_f5

    .line 865
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    .end local v6    # "index$iv":I
    .end local v11    # "item$iv":Ljava/lang/Object;
    .end local v12    # "composer":Landroidx/compose/runtime/ControlledComposition;
    .end local v13    # "$i$a$-fastForEach-Recomposer$runFrameLoop$2$2$2":I
    :catchall_f1
    move-exception v0

    goto :goto_15a

    .line 860
    .end local v16    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v5    # "$i$f$fastForEach":I
    .restart local v6    # "index$iv":I
    .restart local v11    # "item$iv":Ljava/lang/Object;
    .restart local v12    # "composer":Landroidx/compose/runtime/ControlledComposition;
    .restart local v13    # "$i$a$-fastForEach-Recomposer$runFrameLoop$2$2$2":I
    :cond_f3
    move-object/from16 v16, v1

    .end local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v16    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    :goto_f5
    nop

    .line 863
    nop

    .line 1527
    .end local v12    # "composer":Landroidx/compose/runtime/ControlledComposition;
    .end local v13    # "$i$a$-fastForEach-Recomposer$runFrameLoop$2$2$2":I
    nop

    .line 1525
    .end local v11    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v16

    goto :goto_d6

    .end local v16    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    :cond_fd
    move-object/from16 v16, v1

    .line 1529
    .end local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v6    # "index$iv":I
    .restart local v16    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    nop

    .line 865
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    :try_start_100
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 866
    nop

    .line 870
    move-object v1, v4

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_119

    invoke-virtual {v0}, Landroidx/compose/runtime/Recomposer;->getChangeCount()J

    move-result-wide v1

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Recomposer;->access$setChangeCount$p(Landroidx/compose/runtime/Recomposer;J)V
    :try_end_119
    .catchall {:try_start_100 .. :try_end_119} :catchall_165

    .line 873
    :cond_119
    nop

    .line 874
    move-object v1, v4

    .local v1, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 1530
    .local v2, "$i$f$fastForEach":I
    nop

    .line 1531
    const/4 v3, 0x0

    .local v3, "index$iv":I
    :try_start_11e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    :goto_122
    if-ge v3, v5, :cond_134

    .line 1532
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1533
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/runtime/ControlledComposition;

    .local v7, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/4 v11, 0x0

    .line 875
    .local v11, "$i$a$-fastForEach-Recomposer$runFrameLoop$2$2$3":I
    invoke-interface {v7}, Landroidx/compose/runtime/ControlledComposition;->applyChanges()V
    :try_end_12f
    .catchall {:try_start_11e .. :try_end_12f} :catchall_152

    .line 876
    nop

    .line 1533
    .end local v7    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v11    # "$i$a$-fastForEach-Recomposer$runFrameLoop$2$2$3":I
    nop

    .line 1531
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_122

    .line 1535
    .end local v3    # "index$iv":I
    :cond_134
    nop

    .line 878
    .end local v1    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "$i$f$fastForEach":I
    :try_start_135
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 879
    nop

    .line 881
    # getter for: Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "lock$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1536
    .local v2, "$i$f$synchronized":I
    monitor-enter v1
    :try_end_13f
    .catchall {:try_start_135 .. :try_end_13f} :catchall_165

    const/4 v3, 0x0

    .line 882
    .local v3, "$i$a$-synchronized-Recomposer$runFrameLoop$2$2$4":I
    :try_start_140
    # invokes: Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v0
    :try_end_144
    .catchall {:try_start_140 .. :try_end_144} :catchall_14e

    .line 1536
    .end local v3    # "$i$a$-synchronized-Recomposer$runFrameLoop$2$2$4":I
    :try_start_144
    monitor-exit v1
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_165

    .line 881
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    nop

    .line 1510
    .end local v10    # "$i$a$-trace-Recomposer$runFrameLoop$2$2":I
    .end local v16    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    nop

    .line 1537
    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .line 1510
    nop

    .line 843
    .end local v8    # "$i$f$trace":I
    .end local v9    # "token$iv":Ljava/lang/Object;
    .end local v17    # "sectionName$iv":Ljava/lang/String;
    return-object v0

    .line 1536
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    .restart local v8    # "$i$f$trace":I
    .restart local v9    # "token$iv":Ljava/lang/Object;
    .restart local v10    # "$i$a$-trace-Recomposer$runFrameLoop$2$2":I
    .restart local v16    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v17    # "sectionName$iv":Ljava/lang/String;
    :catchall_14e
    move-exception v0

    move-object v3, v0

    :try_start_150
    monitor-exit v1

    .end local v8    # "$i$f$trace":I
    .end local v9    # "token$iv":Ljava/lang/Object;
    .end local v17    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v3

    .line 878
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    .restart local v8    # "$i$f$trace":I
    .restart local v9    # "token$iv":Ljava/lang/Object;
    .restart local v17    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :catchall_152
    move-exception v0

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .end local v8    # "$i$f$trace":I
    .end local v9    # "token$iv":Ljava/lang/Object;
    .end local v17    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0

    .line 865
    .end local v16    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .local v1, "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v8    # "$i$f$trace":I
    .restart local v9    # "token$iv":Ljava/lang/Object;
    .restart local v17    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :catchall_157
    move-exception v0

    move-object/from16 v16, v1

    .end local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v16    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    :goto_15a
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .end local v8    # "$i$f$trace":I
    .end local v9    # "token$iv":Ljava/lang/Object;
    .end local v17    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0

    .line 1511
    .end local v16    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v8    # "$i$f$trace":I
    .restart local v9    # "token$iv":Ljava/lang/Object;
    .local v11, "lock$iv":Ljava/lang/Object;
    .local v12, "$i$f$synchronized":I
    .restart local v17    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :catchall_15e
    move-exception v0

    goto :goto_163

    .end local v17    # "sectionName$iv":Ljava/lang/String;
    .local v2, "sectionName$iv":Ljava/lang/String;
    :catchall_160
    move-exception v0

    move-object/from16 v17, v2

    .end local v2    # "sectionName$iv":Ljava/lang/String;
    .restart local v17    # "sectionName$iv":Ljava/lang/String;
    :goto_163
    monitor-exit v11

    .end local v8    # "$i$f$trace":I
    .end local v9    # "token$iv":Ljava/lang/Object;
    .end local v17    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0
    :try_end_165
    .catchall {:try_start_150 .. :try_end_165} :catchall_165

    .line 1537
    .end local v10    # "$i$a$-trace-Recomposer$runFrameLoop$2$2":I
    .end local v11    # "lock$iv":Ljava/lang/Object;
    .end local v12    # "$i$f$synchronized":I
    .restart local v8    # "$i$f$trace":I
    .restart local v9    # "token$iv":Ljava/lang/Object;
    .restart local v17    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :catchall_165
    move-exception v0

    goto :goto_16a

    .end local v17    # "sectionName$iv":Ljava/lang/String;
    .restart local v2    # "sectionName$iv":Ljava/lang/String;
    :catchall_167
    move-exception v0

    move-object/from16 v17, v2

    .end local v2    # "sectionName$iv":Ljava/lang/String;
    .restart local v17    # "sectionName$iv":Ljava/lang/String;
    :goto_16a
    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw v0
.end method
