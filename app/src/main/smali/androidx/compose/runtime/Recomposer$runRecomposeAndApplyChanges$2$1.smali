.class final Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Recomposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1\n+ 2 Trace.kt\nandroidx/compose/runtime/TraceKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1502:1\n46#2,5:1503\n46#2,3:1508\n50#2:1524\n70#3:1511\n70#3:1525\n70#3:1548\n33#4,6:1512\n33#4,6:1518\n33#4,6:1526\n33#4,6:1532\n33#4,6:1538\n1855#5,2:1544\n1855#5,2:1546\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1\n*L\n541#1:1503,5\n551#1:1508,3\n551#1:1524\n555#1:1511\n586#1:1525\n665#1:1548\n556#1:1512,6\n567#1:1518,6\n587#1:1526,6\n621#1:1532,6\n624#1:1538,6\n639#1:1544,2\n653#1:1546,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic $toApply:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toComplete:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toInsert:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toLateApply:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
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
.method constructor <init>(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/List;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Recomposer;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toRecompose:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toInsert:Ljava/util/List;

    iput-object p4, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toLateApply:Ljava/util/Set;

    iput-object p5, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toApply:Ljava/util/List;

    iput-object p6, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toComplete:Ljava/util/Set;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "p1"    # Ljava/lang/Object;

    .line 537
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->invoke(J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(J)V
    .registers 27
    .param p1, "frameTime"    # J

    .line 540
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    # invokes: Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaiters()Z
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getHasBroadcastFrameClockAwaiters(Landroidx/compose/runtime/Recomposer;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 541
    const-string/jumbo v2, "Recomposer:animation"

    .local v2, "sectionName$iv":Ljava/lang/String;
    iget-object v0, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

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

    .line 544
    .local v5, "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$1":I
    :try_start_18
    # getter for: Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getBroadcastFrameClock$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/BroadcastFrameClock;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_32

    move-wide/from16 v6, p1

    :try_start_1e
    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/BroadcastFrameClock;->sendFrame(J)V

    .line 547
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->sendApplyNotifications()V

    .line 548
    nop

    .end local v5    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$1":I
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

    .line 540
    .end local v2    # "sectionName$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    .end local v4    # "token$iv":Ljava/lang/Object;
    :cond_3b
    move-wide/from16 v6, p1

    .line 551
    :goto_3d
    const-string/jumbo v2, "Recomposer:recompose"

    .restart local v2    # "sectionName$iv":Ljava/lang/String;
    iget-object v8, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v3, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toRecompose:Ljava/util/List;

    iget-object v4, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toInsert:Ljava/util/List;

    iget-object v5, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toLateApply:Ljava/util/Set;

    iget-object v14, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toApply:Ljava/util/List;

    iget-object v15, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toComplete:Ljava/util/Set;

    const/16 v16, 0x0

    .line 1508
    .local v16, "$i$f$trace":I
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 1509
    .local v13, "token$iv":Ljava/lang/Object;
    nop

    .line 1510
    const/16 v17, 0x0

    .line 554
    .local v17, "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    :try_start_57
    # invokes: Landroidx/compose/runtime/Recomposer;->recordComposerModifications()Z
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$recordComposerModifications(Landroidx/compose/runtime/Recomposer;)Z

    .line 555
    # getter for: Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    .local v9, "lock$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1511
    .local v10, "$i$f$synchronized":I
    monitor-enter v9
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_32d

    const/4 v0, 0x0

    .line 556
    .local v0, "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$1":I
    :try_start_62
    # getter for: Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v11

    .local v11, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 1512
    .local v12, "$i$f$fastForEach":I
    nop

    .line 1513
    const/16 v18, 0x0

    move/from16 v19, v0

    .end local v0    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$1":I
    .local v18, "index$iv":I
    .local v19, "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$1":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_325

    move/from16 v1, v18

    .end local v18    # "index$iv":I
    .local v1, "index$iv":I
    :goto_72
    if-ge v1, v0, :cond_9f

    .line 1514
    :try_start_74
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 1515
    .local v18, "item$iv":Ljava/lang/Object;
    move-object/from16 v20, v18

    check-cast v20, Landroidx/compose/runtime/ControlledComposition;

    move-object/from16 v21, v20

    .local v21, "it":Landroidx/compose/runtime/ControlledComposition;
    const/16 v20, 0x0

    .line 557
    .local v20, "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$1$1":I
    move/from16 v22, v0

    move-object v0, v3

    check-cast v0, Ljava/util/Collection;
    :try_end_85
    .catchall {:try_start_74 .. :try_end_85} :catchall_99

    move-object/from16 v23, v2

    move-object/from16 v2, v21

    .end local v21    # "it":Landroidx/compose/runtime/ControlledComposition;
    .local v2, "it":Landroidx/compose/runtime/ControlledComposition;
    .local v23, "sectionName$iv":Ljava/lang/String;
    :try_start_89
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_95

    .line 558
    nop

    .line 1515
    .end local v2    # "it":Landroidx/compose/runtime/ControlledComposition;
    .end local v20    # "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$1$1":I
    nop

    .line 1513
    .end local v18    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v22

    move-object/from16 v2, v23

    goto :goto_72

    .line 1511
    .end local v1    # "index$iv":I
    .end local v11    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastForEach":I
    .end local v19    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$1":I
    :catchall_95
    move-exception v0

    move-object v6, v13

    goto/16 :goto_329

    .end local v23    # "sectionName$iv":Ljava/lang/String;
    .local v2, "sectionName$iv":Ljava/lang/String;
    :catchall_99
    move-exception v0

    move-object/from16 v23, v2

    move-object v6, v13

    .end local v2    # "sectionName$iv":Ljava/lang/String;
    .restart local v23    # "sectionName$iv":Ljava/lang/String;
    goto/16 :goto_329

    .line 1513
    .end local v23    # "sectionName$iv":Ljava/lang/String;
    .restart local v1    # "index$iv":I
    .restart local v2    # "sectionName$iv":Ljava/lang/String;
    .restart local v11    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v12    # "$i$f$fastForEach":I
    .restart local v19    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$1":I
    :cond_9f
    move-object/from16 v23, v2

    .line 1517
    .end local v1    # "index$iv":I
    .end local v2    # "sectionName$iv":Ljava/lang/String;
    .restart local v23    # "sectionName$iv":Ljava/lang/String;
    nop

    .line 559
    .end local v11    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastForEach":I
    :try_start_a2
    # getter for: Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Ljava/util/List;
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 560
    nop

    .end local v19    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_ac
    .catchall {:try_start_a2 .. :try_end_ac} :catchall_322

    .line 1511
    :try_start_ac
    monitor-exit v9

    .line 563
    .end local v9    # "lock$iv":Ljava/lang/Object;
    .end local v10    # "$i$f$synchronized":I
    new-instance v0, Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-direct {v0}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    move-object v1, v0

    .line 564
    .local v1, "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    new-instance v0, Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-direct {v0}, Landroidx/compose/runtime/collection/IdentityArraySet;-><init>()V

    move-object v2, v0

    .line 565
    .local v2, "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    :goto_b9
    move-object v0, v3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_20d

    move-object v0, v4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d2

    move-object v6, v13

    goto/16 :goto_20e

    .line 613
    :cond_d2
    move-object v0, v14

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_156

    .line 614
    invoke-virtual {v8}, Landroidx/compose/runtime/Recomposer;->getChangeCount()J

    move-result-wide v9

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    invoke-static {v8, v9, v10}, Landroidx/compose/runtime/Recomposer;->access$setChangeCount$p(Landroidx/compose/runtime/Recomposer;J)V
    :try_end_e7
    .catchall {:try_start_ac .. :try_end_e7} :catchall_31f

    .line 617
    nop

    .line 621
    move-object v0, v14

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 1532
    .local v9, "$i$f$fastForEach":I
    nop

    .line 1533
    const/4 v10, 0x0

    .local v10, "index$iv":I
    :try_start_ec
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    :goto_f0
    if-ge v10, v11, :cond_10c

    .line 1534
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1535
    .local v12, "item$iv":Ljava/lang/Object;
    move-object/from16 v18, v12

    check-cast v18, Landroidx/compose/runtime/ControlledComposition;

    move-object/from16 v19, v18

    .local v19, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/16 v18, 0x0

    .line 622
    .local v18, "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$4":I
    move-object/from16 v20, v0

    move-object/from16 v0, v19

    .end local v19    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .local v0, "composition":Landroidx/compose/runtime/ControlledComposition;
    .local v20, "$this$fastForEach$iv":Ljava/util/List;
    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 623
    nop

    .line 1535
    .end local v0    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v18    # "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$4":I
    nop

    .line 1533
    .end local v12    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v20

    goto :goto_f0

    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    :cond_10c
    move-object/from16 v20, v0

    .line 1537
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v10    # "index$iv":I
    .restart local v20    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 624
    .end local v9    # "$i$f$fastForEach":I
    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    move-object v0, v14

    .restart local v0    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 1538
    .restart local v9    # "$i$f$fastForEach":I
    nop

    .line 1539
    const/4 v10, 0x0

    .restart local v10    # "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    :goto_117
    if-ge v10, v11, :cond_12b

    .line 1540
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1541
    .restart local v12    # "item$iv":Ljava/lang/Object;
    move-object/from16 v18, v12

    check-cast v18, Landroidx/compose/runtime/ControlledComposition;

    .local v18, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/16 v19, 0x0

    .line 625
    .local v19, "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$5":I
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/ControlledComposition;->applyChanges()V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_126} :catch_138
    .catchall {:try_start_ec .. :try_end_126} :catchall_135

    .line 626
    nop

    .line 1541
    .end local v18    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v19    # "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$5":I
    nop

    .line 1539
    .end local v12    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    goto :goto_117

    .line 1543
    .end local v10    # "index$iv":I
    :cond_12b
    nop

    .line 632
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v9    # "$i$f$fastForEach":I
    :try_start_12c
    invoke-interface {v14}, Ljava/util/List;->clear()V
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_131

    .line 633
    move-object v6, v13

    goto :goto_157

    .line 1524
    .end local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v17    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    :catchall_131
    move-exception v0

    move-object v6, v13

    goto/16 :goto_331

    .line 632
    .restart local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v17    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    :catchall_135
    move-exception v0

    move-object v6, v13

    goto :goto_152

    .line 627
    :catch_138
    move-exception v0

    move-object v9, v0

    .line 628
    .local v9, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v0, 0x0

    move-object v6, v13

    .end local v13    # "token$iv":Ljava/lang/Object;
    .local v6, "token$iv":Ljava/lang/Object;
    move-object v13, v0

    :try_start_140
    invoke-static/range {v8 .. v13}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    .line 629
    # invokes: Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend$clearRecompositionState(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V
    invoke-static {v3, v4, v14, v5, v15}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_146
    .catchall {:try_start_140 .. :try_end_146} :catchall_151

    .line 630
    nop

    .line 632
    .end local v9    # "e":Ljava/lang/Exception;
    :try_start_147
    invoke-interface {v14}, Ljava/util/List;->clear()V
    :try_end_14a
    .catchall {:try_start_147 .. :try_end_14a} :catchall_32b

    .line 630
    .end local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v6    # "token$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$trace":I
    .end local v17    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .end local v23    # "sectionName$iv":Ljava/lang/String;
    nop

    .line 1524
    :goto_14b
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    .line 632
    .restart local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v6    # "token$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$trace":I
    .restart local v17    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v23    # "sectionName$iv":Ljava/lang/String;
    :catchall_151
    move-exception v0

    :goto_152
    :try_start_152
    invoke-interface {v14}, Ljava/util/List;->clear()V

    .end local v6    # "token$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$trace":I
    .end local v23    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0

    .line 613
    .restart local v13    # "token$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$trace":I
    .restart local v23    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :cond_156
    move-object v6, v13

    .line 636
    .end local v13    # "token$iv":Ljava/lang/Object;
    .restart local v6    # "token$iv":Ljava/lang/Object;
    :goto_157
    move-object v0, v5

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_15e
    .catchall {:try_start_152 .. :try_end_15e} :catchall_32b

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a4

    .line 637
    nop

    .line 638
    :try_start_163
    move-object v0, v15

    check-cast v0, Ljava/util/Collection;

    move-object v7, v5

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 639
    move-object v0, v5

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 1544
    .local v7, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_174
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_188

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroidx/compose/runtime/ControlledComposition;

    .local v11, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/4 v12, 0x0

    .line 640
    .local v12, "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$6":I
    invoke-interface {v11}, Landroidx/compose/runtime/ControlledComposition;->applyLateChanges()V
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_185} :catch_18f
    .catchall {:try_start_163 .. :try_end_185} :catchall_18d

    .line 641
    nop

    .line 1544
    .end local v11    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v12    # "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$6":I
    nop

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_174

    .line 1545
    :cond_188
    nop

    .line 647
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    :try_start_189
    invoke-interface {v5}, Ljava/util/Set;->clear()V
    :try_end_18c
    .catchall {:try_start_189 .. :try_end_18c} :catchall_32b

    .line 648
    goto :goto_1a4

    .line 647
    :catchall_18d
    move-exception v0

    goto :goto_1a0

    .line 642
    :catch_18f
    move-exception v0

    move-object v9, v0

    .line 643
    .restart local v9    # "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    :try_start_195
    invoke-static/range {v8 .. v13}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    .line 644
    # invokes: Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend$clearRecompositionState(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V
    invoke-static {v3, v4, v14, v5, v15}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_19b
    .catchall {:try_start_195 .. :try_end_19b} :catchall_18d

    .line 645
    nop

    .line 647
    .end local v9    # "e":Ljava/lang/Exception;
    :try_start_19c
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 645
    .end local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v6    # "token$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$trace":I
    .end local v17    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .end local v23    # "sectionName$iv":Ljava/lang/String;
    goto :goto_14b

    .line 647
    .restart local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v6    # "token$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$trace":I
    .restart local v17    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v23    # "sectionName$iv":Ljava/lang/String;
    :goto_1a0
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .end local v6    # "token$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$trace":I
    .end local v23    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0

    .line 651
    .restart local v6    # "token$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$trace":I
    .restart local v23    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :cond_1a4
    :goto_1a4
    move-object v0, v15

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_1ab
    .catchall {:try_start_19c .. :try_end_1ab} :catchall_32b

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1e9

    .line 652
    nop

    .line 653
    :try_start_1b0
    move-object v0, v15

    check-cast v0, Ljava/lang/Iterable;

    .restart local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 1546
    .restart local v7    # "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1b8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1cc

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroidx/compose/runtime/ControlledComposition;

    .restart local v11    # "composition":Landroidx/compose/runtime/ControlledComposition;
    const/4 v12, 0x0

    .line 654
    .local v12, "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$7":I
    invoke-interface {v11}, Landroidx/compose/runtime/ControlledComposition;->changesApplied()V
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1c9} :catch_1d3
    .catchall {:try_start_1b0 .. :try_end_1c9} :catchall_1d1

    .line 655
    nop

    .line 1546
    .end local v11    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v12    # "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$7":I
    nop

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_1b8

    .line 1547
    :cond_1cc
    nop

    .line 661
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    :try_start_1cd
    invoke-interface {v15}, Ljava/util/Set;->clear()V
    :try_end_1d0
    .catchall {:try_start_1cd .. :try_end_1d0} :catchall_32b

    .line 662
    goto :goto_1e9

    .line 661
    :catchall_1d1
    move-exception v0

    goto :goto_1e5

    .line 656
    :catch_1d3
    move-exception v0

    move-object v9, v0

    .line 657
    .restart local v9    # "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    :try_start_1d9
    invoke-static/range {v8 .. v13}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    .line 658
    # invokes: Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend$clearRecompositionState(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V
    invoke-static {v3, v4, v14, v5, v15}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_1df
    .catchall {:try_start_1d9 .. :try_end_1df} :catchall_1d1

    .line 659
    nop

    .line 661
    .end local v9    # "e":Ljava/lang/Exception;
    :try_start_1e0
    invoke-interface {v15}, Ljava/util/Set;->clear()V

    .line 659
    .end local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v6    # "token$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$trace":I
    .end local v17    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .end local v23    # "sectionName$iv":Ljava/lang/String;
    goto/16 :goto_14b

    .line 661
    .restart local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v6    # "token$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$trace":I
    .restart local v17    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v23    # "sectionName$iv":Ljava/lang/String;
    :goto_1e5
    invoke-interface {v15}, Ljava/util/Set;->clear()V

    .end local v6    # "token$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$trace":I
    .end local v23    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0

    .line 665
    .restart local v6    # "token$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$trace":I
    .restart local v23    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :cond_1e9
    :goto_1e9
    # getter for: Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    .local v3, "lock$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1548
    .local v4, "$i$f$synchronized":I
    monitor-enter v3
    :try_end_1f0
    .catchall {:try_start_1e0 .. :try_end_1f0} :catchall_32b

    const/4 v0, 0x0

    .line 666
    .local v0, "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$8":I
    :try_start_1f1
    # invokes: Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;
    :try_end_1f4
    .catchall {:try_start_1f1 .. :try_end_1f4} :catchall_209

    .line 1548
    .end local v0    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$8":I
    :try_start_1f4
    monitor-exit v3

    .line 674
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->notifyObjectsInitialized()V

    .line 675
    const/4 v0, 0x0

    invoke-static {v8, v0}, Landroidx/compose/runtime/Recomposer;->access$setCompositionsRemoved$p(Landroidx/compose/runtime/Recomposer;Ljava/util/Set;)V

    .line 676
    nop

    .end local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v17    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_201
    .catchall {:try_start_1f4 .. :try_end_201} :catchall_32b

    .line 1510
    nop

    .line 1524
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .line 1510
    nop

    .line 677
    .end local v6    # "token$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$trace":I
    .end local v23    # "sectionName$iv":Ljava/lang/String;
    return-void

    .line 1548
    .restart local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v3    # "lock$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$synchronized":I
    .restart local v6    # "token$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$trace":I
    .restart local v17    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v23    # "sectionName$iv":Ljava/lang/String;
    :catchall_209
    move-exception v0

    move-object v5, v0

    :try_start_20b
    monitor-exit v3

    .end local v6    # "token$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$trace":I
    .end local v23    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v5
    :try_end_20d
    .catchall {:try_start_20b .. :try_end_20d} :catchall_32b

    .line 565
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    .restart local v13    # "token$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$trace":I
    .restart local v23    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :cond_20d
    move-object v6, v13

    .line 566
    .end local v13    # "token$iv":Ljava/lang/Object;
    .restart local v6    # "token$iv":Ljava/lang/Object;
    :goto_20e
    nop

    .line 567
    move-object v0, v3

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 1518
    .local v7, "$i$f$fastForEach":I
    nop

    .line 1519
    const/4 v9, 0x0

    .local v9, "index$iv":I
    :try_start_213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10
    :try_end_217
    .catch Ljava/lang/Exception; {:try_start_213 .. :try_end_217} :catch_306
    .catchall {:try_start_213 .. :try_end_217} :catchall_302

    :goto_217
    if-ge v9, v10, :cond_255

    .line 1520
    :try_start_219
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 1521
    .local v11, "item$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/runtime/ControlledComposition;

    .local v12, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/4 v13, 0x0

    .line 568
    .local v13, "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$2":I
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/collection/IdentityArraySet;->add(Ljava/lang/Object;)Z

    .line 569
    # invokes: Landroidx/compose/runtime/Recomposer;->performRecompose(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Landroidx/compose/runtime/ControlledComposition;
    invoke-static {v8, v12, v1}, Landroidx/compose/runtime/Recomposer;->access$performRecompose(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Landroidx/compose/runtime/ControlledComposition;

    move-result-object v18

    if-eqz v18, :cond_23c

    move-object/from16 v19, v18

    .local v19, "it":Landroidx/compose/runtime/ControlledComposition;
    const/16 v18, 0x0

    .line 570
    .local v18, "$i$a$-let-Recomposer$runRecomposeAndApplyChanges$2$1$2$2$1":I
    move-object/from16 v20, v0

    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v20    # "$this$fastForEach$iv":Ljava/util/List;
    move-object v0, v14

    check-cast v0, Ljava/util/Collection;

    move/from16 v21, v7

    move-object/from16 v7, v19

    .end local v19    # "it":Landroidx/compose/runtime/ControlledComposition;
    .local v7, "it":Landroidx/compose/runtime/ControlledComposition;
    .local v21, "$i$f$fastForEach":I
    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_23a
    .catch Ljava/lang/Exception; {:try_start_219 .. :try_end_23a} :catch_24f
    .catchall {:try_start_219 .. :try_end_23a} :catchall_24a

    .line 571
    nop

    .end local v7    # "it":Landroidx/compose/runtime/ControlledComposition;
    .end local v18    # "$i$a$-let-Recomposer$runRecomposeAndApplyChanges$2$1$2$2$1":I
    goto :goto_240

    .line 569
    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v21    # "$i$f$fastForEach":I
    .restart local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .local v7, "$i$f$fastForEach":I
    :cond_23c
    move-object/from16 v20, v0

    move/from16 v21, v7

    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    .restart local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v21    # "$i$f$fastForEach":I
    :goto_240
    nop

    .line 572
    nop

    .line 1521
    .end local v12    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v13    # "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$2":I
    nop

    .line 1519
    .end local v11    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v20

    move/from16 v7, v21

    goto :goto_217

    .line 578
    .end local v9    # "index$iv":I
    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v21    # "$i$f$fastForEach":I
    :catchall_24a
    move-exception v0

    move-object/from16 v20, v2

    goto/16 :goto_31b

    .line 573
    :catch_24f
    move-exception v0

    move-object v9, v0

    move-object/from16 v20, v2

    goto/16 :goto_30a

    .line 1519
    .restart local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v7    # "$i$f$fastForEach":I
    .restart local v9    # "index$iv":I
    :cond_255
    move-object/from16 v20, v0

    move/from16 v21, v7

    .line 1523
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    .end local v9    # "index$iv":I
    .restart local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v21    # "$i$f$fastForEach":I
    nop

    .line 578
    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v21    # "$i$f$fastForEach":I
    :try_start_25a
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 579
    nop

    .line 585
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/IdentityArraySet;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_2be

    .line 586
    # getter for: Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    .local v7, "lock$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1525
    .local v9, "$i$f$synchronized":I
    monitor-enter v7
    :try_end_26b
    .catchall {:try_start_25a .. :try_end_26b} :catchall_32b

    const/4 v0, 0x0

    .line 587
    .local v0, "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    :try_start_26c
    # getter for: Landroidx/compose/runtime/Recomposer;->knownCompositions:Ljava/util/List;
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getKnownCompositions$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v10

    .local v10, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v11, 0x0

    .line 1526
    .local v11, "$i$f$fastForEach":I
    nop

    .line 1527
    const/4 v12, 0x0

    .local v12, "index$iv":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    :goto_277
    if-ge v12, v13, :cond_2ad

    .line 1528
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 1529
    .local v18, "item$iv":Ljava/lang/Object;
    move-object/from16 v19, v18

    check-cast v19, Landroidx/compose/runtime/ControlledComposition;

    move-object/from16 v20, v19

    .local v20, "value":Landroidx/compose/runtime/ControlledComposition;
    const/16 v19, 0x0

    .line 588
    .local v19, "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$3$1":I
    nop

    .line 589
    move/from16 v21, v0

    move-object/from16 v0, v20

    .end local v20    # "value":Landroidx/compose/runtime/ControlledComposition;
    .local v0, "value":Landroidx/compose/runtime/ControlledComposition;
    .local v21, "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/collection/IdentityArraySet;->contains(Ljava/lang/Object;)Z

    move-result v20
    :try_end_28e
    .catchall {:try_start_26c .. :try_end_28e} :catchall_2b9

    if-nez v20, :cond_2a2

    .line 590
    move-object/from16 v20, v2

    .end local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .local v20, "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    :try_start_292
    move-object v2, v1

    check-cast v2, Ljava/util/Set;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/ControlledComposition;->observesAnyOf(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_2a4

    .line 592
    move-object v2, v3

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2a4

    .line 589
    .end local v20    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    :cond_2a2
    move-object/from16 v20, v2

    .line 594
    .end local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v20    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    :cond_2a4
    :goto_2a4
    nop

    .line 1529
    .end local v0    # "value":Landroidx/compose/runtime/ControlledComposition;
    .end local v19    # "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$3$1":I
    nop

    .line 1527
    .end local v18    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v20

    move/from16 v0, v21

    goto :goto_277

    .end local v20    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v21    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    .local v0, "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    .restart local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    :cond_2ad
    move/from16 v21, v0

    move-object/from16 v20, v2

    .line 1531
    .end local v0    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    .end local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v12    # "index$iv":I
    .restart local v20    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v21    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    nop

    .line 595
    .end local v10    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v11    # "$i$f$fastForEach":I
    nop

    .end local v21    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2b5
    .catchall {:try_start_292 .. :try_end_2b5} :catchall_2b7

    .line 1525
    :try_start_2b5
    monitor-exit v7

    goto :goto_2c0

    :catchall_2b7
    move-exception v0

    goto :goto_2bc

    .end local v20    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    :catchall_2b9
    move-exception v0

    move-object/from16 v20, v2

    .end local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v20    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    :goto_2bc
    monitor-exit v7

    .end local v6    # "token$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$trace":I
    .end local v23    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0

    .line 585
    .end local v7    # "lock$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$synchronized":I
    .end local v20    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v6    # "token$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$trace":I
    .restart local v23    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :cond_2be
    move-object/from16 v20, v2

    .line 598
    .end local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v20    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    :goto_2c0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_2c4
    .catchall {:try_start_2b5 .. :try_end_2c4} :catchall_32b

    if-eqz v0, :cond_2fb

    .line 599
    nop

    .line 600
    :try_start_2c7
    # invokes: Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    invoke-static {v4, v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V

    .line 601
    :goto_2ca
    move-object v0, v4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2e5

    .line 602
    move-object v0, v5

    check-cast v0, Ljava/util/Collection;

    # invokes: Landroidx/compose/runtime/Recomposer;->performInsertValues(Ljava/util/List;Landroidx/compose/runtime/collection/IdentityArraySet;)Ljava/util/List;
    invoke-static {v8, v4, v1}, Landroidx/compose/runtime/Recomposer;->access$performInsertValues(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Landroidx/compose/runtime/collection/IdentityArraySet;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 603
    # invokes: Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    invoke-static {v4, v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    :try_end_2e4
    .catch Ljava/lang/Exception; {:try_start_2c7 .. :try_end_2e4} :catch_2ec
    .catchall {:try_start_2c7 .. :try_end_2e4} :catchall_32b

    goto :goto_2ca

    .line 601
    :cond_2e5
    move-object v13, v6

    move-object/from16 v2, v20

    move-wide/from16 v6, p1

    goto/16 :goto_b9

    .line 605
    :catch_2ec
    move-exception v0

    move-object v9, v0

    .line 606
    .local v9, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    :try_start_2f2
    invoke-static/range {v8 .. v13}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    .line 607
    # invokes: Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend$clearRecompositionState(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V
    invoke-static {v3, v4, v14, v5, v15}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_2f8
    .catchall {:try_start_2f2 .. :try_end_2f8} :catchall_32b

    .line 608
    nop

    .end local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v6    # "token$iv":Ljava/lang/Object;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v16    # "$i$f$trace":I
    .end local v17    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .end local v20    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v23    # "sectionName$iv":Ljava/lang/String;
    goto/16 :goto_14b

    .line 598
    .restart local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v6    # "token$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$trace":I
    .restart local v17    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v20    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v23    # "sectionName$iv":Ljava/lang/String;
    :cond_2fb
    move-object v13, v6

    move-object/from16 v2, v20

    move-wide/from16 v6, p1

    goto/16 :goto_b9

    .line 578
    .end local v20    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    :catchall_302
    move-exception v0

    move-object/from16 v20, v2

    .end local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v20    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    goto :goto_31b

    .line 573
    .end local v20    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    :catch_306
    move-exception v0

    move-object/from16 v20, v2

    move-object v9, v0

    .line 574
    .end local v2    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v9    # "e":Ljava/lang/Exception;
    .restart local v20    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    :goto_30a
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    :try_start_30e
    invoke-static/range {v8 .. v13}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    .line 575
    # invokes: Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend$clearRecompositionState(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V
    invoke-static {v3, v4, v14, v5, v15}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_314
    .catchall {:try_start_30e .. :try_end_314} :catchall_31a

    .line 576
    nop

    .line 578
    .end local v9    # "e":Ljava/lang/Exception;
    :try_start_315
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 576
    .end local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v6    # "token$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$trace":I
    .end local v17    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .end local v20    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v23    # "sectionName$iv":Ljava/lang/String;
    goto/16 :goto_14b

    .line 578
    .restart local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v6    # "token$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$trace":I
    .restart local v17    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v20    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v23    # "sectionName$iv":Ljava/lang/String;
    :catchall_31a
    move-exception v0

    :goto_31b
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .end local v6    # "token$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$trace":I
    .end local v23    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0

    .line 1524
    .end local v1    # "modifiedValues":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v17    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .end local v20    # "alreadyComposed":Landroidx/compose/runtime/collection/IdentityArraySet;
    .local v13, "token$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$trace":I
    .restart local v23    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :catchall_31f
    move-exception v0

    move-object v6, v13

    .end local v13    # "token$iv":Ljava/lang/Object;
    .restart local v6    # "token$iv":Ljava/lang/Object;
    goto :goto_331

    .line 1511
    .end local v6    # "token$iv":Ljava/lang/Object;
    .local v9, "lock$iv":Ljava/lang/Object;
    .local v10, "$i$f$synchronized":I
    .restart local v13    # "token$iv":Ljava/lang/Object;
    .restart local v17    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    :catchall_322
    move-exception v0

    move-object v6, v13

    .end local v13    # "token$iv":Ljava/lang/Object;
    .restart local v6    # "token$iv":Ljava/lang/Object;
    goto :goto_329

    .end local v6    # "token$iv":Ljava/lang/Object;
    .end local v23    # "sectionName$iv":Ljava/lang/String;
    .local v2, "sectionName$iv":Ljava/lang/String;
    .restart local v13    # "token$iv":Ljava/lang/Object;
    :catchall_325
    move-exception v0

    move-object/from16 v23, v2

    move-object v6, v13

    .end local v2    # "sectionName$iv":Ljava/lang/String;
    .end local v13    # "token$iv":Ljava/lang/Object;
    .restart local v6    # "token$iv":Ljava/lang/Object;
    .restart local v23    # "sectionName$iv":Ljava/lang/String;
    :goto_329
    monitor-exit v9

    .end local v6    # "token$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$trace":I
    .end local v23    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0
    :try_end_32b
    .catchall {:try_start_315 .. :try_end_32b} :catchall_32b

    .line 1524
    .end local v9    # "lock$iv":Ljava/lang/Object;
    .end local v10    # "$i$f$synchronized":I
    .end local v17    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v6    # "token$iv":Ljava/lang/Object;
    .restart local v16    # "$i$f$trace":I
    .restart local v23    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :catchall_32b
    move-exception v0

    goto :goto_331

    .end local v6    # "token$iv":Ljava/lang/Object;
    .end local v23    # "sectionName$iv":Ljava/lang/String;
    .restart local v2    # "sectionName$iv":Ljava/lang/String;
    .restart local v13    # "token$iv":Ljava/lang/Object;
    :catchall_32d
    move-exception v0

    move-object/from16 v23, v2

    move-object v6, v13

    .end local v2    # "sectionName$iv":Ljava/lang/String;
    .end local v13    # "token$iv":Ljava/lang/Object;
    .restart local v6    # "token$iv":Ljava/lang/Object;
    .restart local v23    # "sectionName$iv":Ljava/lang/String;
    :goto_331
    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw v0
.end method
