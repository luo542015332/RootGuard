.class final Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Draggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"
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
    c = "androidx.compose.foundation.gestures.DraggableNode$pointerInputNode$1$1$2"
    f = "Draggable.kt"
    i = {
        0x0,
        0x1,
        0x1
    }
    l = {
        0x148,
        0x150
    }
    m = "invokeSuspend"
    n = {
        "$this$awaitPointerEventScope",
        "$this$awaitPointerEventScope",
        "isDragSuccessful"
    }
    s = {
        "L$0",
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/gestures/DraggableNode;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/foundation/gestures/DraggableNode;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
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

    new-instance v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/DraggableNode;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 27

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 326
    move-object/from16 v2, p0

    iget v0, v2, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->label:I

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_19c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_19
    move-object/from16 v6, p0

    .local v6, "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    move-object/from16 v7, p1

    .local v7, "$result":Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "$i$a$-let-DraggableNode$pointerInputNode$1$1$2$1":I
    iget v9, v6, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->I$0:I

    .local v9, "isDragSuccessful":Z
    iget-object v0, v6, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$2:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, v6, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$1:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroidx/compose/foundation/gestures/DraggableNode;

    iget-object v0, v6, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$0:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v12, "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :try_start_2f
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2f .. :try_end_32} :catch_3d
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move v10, v9

    move v9, v8

    move-object v8, v7

    goto/16 :goto_e8

    .line 348
    .end local v12    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :catchall_3a
    move-exception v0

    goto/16 :goto_162

    .line 344
    .restart local v12    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :catch_3d
    move-exception v0

    goto/16 :goto_146

    .line 326
    .end local v6    # "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-DraggableNode$pointerInputNode$1$1$2$1":I
    .end local v9    # "isDragSuccessful":Z
    .end local v12    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_40
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    move-object/from16 v6, p1

    .local v6, "$result":Ljava/lang/Object;
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .local v7, "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v6

    move-object v13, v7

    move-object v6, v1

    move-object v7, v8

    move-object v1, v0

    goto :goto_96

    .end local v0    # "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v7    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :pswitch_51
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    .restart local v0    # "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    move-object/from16 v6, p1

    .restart local v6    # "$result":Ljava/lang/Object;
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    move-object v13, v7

    .line 327
    .local v13, "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_5d
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v7}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v7

    if-eqz v7, :cond_199

    .line 333
    nop

    .line 328
    nop

    .line 329
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    # getter for: Landroidx/compose/foundation/gestures/DraggableNode;->_canDrag:Lkotlin/jvm/functions/Function1;
    invoke-static {v7}, Landroidx/compose/foundation/gestures/DraggableNode;->access$get_canDrag$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlin/jvm/functions/Function1;

    move-result-object v8

    .line 330
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    # getter for: Landroidx/compose/foundation/gestures/DraggableNode;->_startDragImmediately:Lkotlin/jvm/functions/Function0;
    invoke-static {v7}, Landroidx/compose/foundation/gestures/DraggableNode;->access$get_startDragImmediately$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlin/jvm/functions/Function0;

    move-result-object v9

    .line 331
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    # getter for: Landroidx/compose/foundation/gestures/DraggableNode;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    invoke-static {v7}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v10

    .line 332
    iget-object v7, v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    # getter for: Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;
    invoke-static {v7}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getOrientation$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v11

    move-object v12, v0

    check-cast v12, Lkotlin/coroutines/Continuation;

    .line 328
    iput-object v13, v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$2:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v0, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->label:I

    move-object v7, v13

    # invokes: Landroidx/compose/foundation/gestures/DraggableKt;->awaitDownAndSlop(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/gestures/DraggableKt;->access$awaitDownAndSlop(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_93

    .line 326
    return-object v1

    .line 328
    :cond_93
    move-object v8, v6

    move-object v6, v1

    move-object v1, v0

    .line 326
    .end local v0    # "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    .end local v6    # "$result":Ljava/lang/Object;
    .local v1, "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    .local v8, "$result":Ljava/lang/Object;
    :goto_96
    check-cast v7, Lkotlin/Pair;

    .line 333
    if-eqz v7, :cond_194

    .line 328
    nop

    .line 333
    iget-object v11, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->this$0:Landroidx/compose/foundation/gestures/DraggableNode;

    iget-object v10, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    move-object v0, v7

    .local v0, "it":Lkotlin/Pair;
    const/4 v7, 0x0

    .line 334
    .local v7, "$i$a$-let-DraggableNode$pointerInputNode$1$1$2$1":I
    const/4 v9, 0x0

    .line 335
    .restart local v9    # "isDragSuccessful":Z
    nop

    .line 336
    nop

    .line 337
    :try_start_a4
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 338
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v16

    .line 339
    .end local v0    # "it":Lkotlin/Pair;
    # getter for: Landroidx/compose/foundation/gestures/DraggableNode;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    invoke-static {v11}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v18

    .line 340
    # getter for: Landroidx/compose/foundation/gestures/DraggableNode;->channel:Lkotlinx/coroutines/channels/Channel;
    invoke-static {v11}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getChannel$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lkotlinx/coroutines/channels/SendChannel;

    .line 341
    # getter for: Landroidx/compose/foundation/gestures/DraggableNode;->reverseDirection:Z
    invoke-static {v11}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getReverseDirection$p(Landroidx/compose/foundation/gestures/DraggableNode;)Z

    move-result v20

    .line 342
    # getter for: Landroidx/compose/foundation/gestures/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;
    invoke-static {v11}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getOrientation$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v21

    .line 336
    iput-object v13, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->L$2:Ljava/lang/Object;

    iput v9, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->I$0:I

    const/4 v0, 0x2

    iput v0, v1, Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;->label:I

    move-object v14, v13

    move-object/from16 v22, v1

    # invokes: Landroidx/compose/foundation/gestures/DraggableKt;->awaitDrag-Su4bsnU(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/SendChannel;ZLandroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static/range {v14 .. v22}, Landroidx/compose/foundation/gestures/DraggableKt;->access$awaitDrag-Su4bsnU(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/SendChannel;ZLandroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_db
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a4 .. :try_end_db} :catch_13a
    .catchall {:try_start_a4 .. :try_end_db} :catchall_132

    if-ne v0, v6, :cond_de

    .line 326
    return-object v6

    .line 336
    :cond_de
    move-object v12, v11

    move-object v11, v10

    move v10, v9

    move v9, v7

    move-object v7, v0

    move-object/from16 v23, v6

    move-object v6, v1

    move-object/from16 v1, v23

    .end local v1    # "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    .end local v7    # "$i$a$-let-DraggableNode$pointerInputNode$1$1$2$1":I
    .local v6, "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    .local v9, "$i$a$-let-DraggableNode$pointerInputNode$1$1$2$1":I
    .local v10, "isDragSuccessful":Z
    :goto_e8
    :try_start_e8
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_ee
    .catch Ljava/util/concurrent/CancellationException; {:try_start_e8 .. :try_end_ee} :catch_12a
    .catchall {:try_start_e8 .. :try_end_ee} :catchall_124

    .line 348
    .end local v10    # "isDragSuccessful":Z
    .local v0, "isDragSuccessful":Z
    nop

    .end local v0    # "isDragSuccessful":Z
    if-eqz v0, :cond_115

    .line 349
    # getter for: Landroidx/compose/foundation/gestures/DraggableNode;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    invoke-static {v12}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->calculateVelocity-9UxMQ8M()J

    move-result-wide v10

    .line 350
    .local v10, "velocity":J
    # getter for: Landroidx/compose/foundation/gestures/DraggableNode;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    invoke-static {v12}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->resetTracking()V

    .line 351
    new-instance v0, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    # getter for: Landroidx/compose/foundation/gestures/DraggableNode;->reverseDirection:Z
    invoke-static {v12}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getReverseDirection$p(Landroidx/compose/foundation/gestures/DraggableNode;)Z

    move-result v7

    if-eqz v7, :cond_10a

    move v7, v3

    goto :goto_10b

    :cond_10a
    move v7, v4

    .end local v10    # "velocity":J
    :goto_10b
    invoke-static {v10, v11, v7}, Landroidx/compose/ui/unit/Velocity;->times-adjELrA(JF)J

    move-result-wide v10

    invoke-direct {v0, v10, v11, v5}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/compose/foundation/gestures/DragEvent;

    goto :goto_119

    .line 353
    :cond_115
    sget-object v0, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    check-cast v0, Landroidx/compose/foundation/gestures/DragEvent;

    .line 348
    :goto_119
    nop

    .line 355
    .local v0, "event":Landroidx/compose/foundation/gestures/DragEvent;
    # getter for: Landroidx/compose/foundation/gestures/DraggableNode;->channel:Lkotlinx/coroutines/channels/Channel;
    invoke-static {v12}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getChannel$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v7

    invoke-interface {v7, v0}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .end local v0    # "event":Landroidx/compose/foundation/gestures/DragEvent;
    move-object v0, v6

    move-object v6, v8

    goto :goto_15e

    .line 348
    .end local v13    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v10, "isDragSuccessful":Z
    :catchall_124
    move-exception v0

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-object v11, v12

    goto :goto_162

    .line 344
    .restart local v13    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :catch_12a
    move-exception v0

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    goto :goto_146

    .line 348
    .end local v6    # "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    .end local v10    # "isDragSuccessful":Z
    .end local v13    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .restart local v1    # "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    .restart local v7    # "$i$a$-let-DraggableNode$pointerInputNode$1$1$2$1":I
    .local v9, "isDragSuccessful":Z
    :catchall_132
    move-exception v0

    move-object v6, v1

    move-object/from16 v23, v8

    move v8, v7

    move-object/from16 v7, v23

    goto :goto_162

    .line 344
    .restart local v13    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :catch_13a
    move-exception v0

    move-object v12, v13

    move-object/from16 v23, v6

    move-object v6, v1

    move-object/from16 v1, v23

    move-object/from16 v24, v8

    move v8, v7

    move-object/from16 v7, v24

    .line 345
    .end local v1    # "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    .end local v13    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v0, "cancellation":Ljava/util/concurrent/CancellationException;
    .restart local v6    # "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    .local v7, "$result":Ljava/lang/Object;
    .local v8, "$i$a$-let-DraggableNode$pointerInputNode$1$1$2$1":I
    .restart local v12    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_146
    const/4 v9, 0x0

    .line 346
    :try_start_147
    invoke-static {v10}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v10
    :try_end_14b
    .catchall {:try_start_147 .. :try_end_14b} :catchall_3a

    if-eqz v10, :cond_161

    .line 348
    .end local v0    # "cancellation":Ljava/util/concurrent/CancellationException;
    nop

    .line 353
    .end local v9    # "isDragSuccessful":Z
    sget-object v0, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    check-cast v0, Landroidx/compose/foundation/gestures/DragEvent;

    .line 348
    nop

    .line 355
    .local v0, "event":Landroidx/compose/foundation/gestures/DragEvent;
    # getter for: Landroidx/compose/foundation/gestures/DraggableNode;->channel:Lkotlinx/coroutines/channels/Channel;
    invoke-static {v11}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getChannel$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v9

    invoke-interface {v9, v0}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .end local v0    # "event":Landroidx/compose/foundation/gestures/DragEvent;
    move-object v0, v6

    move-object v6, v7

    move v9, v8

    move-object v13, v12

    .line 357
    .end local v7    # "$result":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-DraggableNode$pointerInputNode$1$1$2$1":I
    .end local v12    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v0, "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    .local v6, "$result":Ljava/lang/Object;
    .local v9, "$i$a$-let-DraggableNode$pointerInputNode$1$1$2$1":I
    .restart local v13    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :goto_15e
    nop

    .line 333
    .end local v9    # "$i$a$-let-DraggableNode$pointerInputNode$1$1$2$1":I
    goto/16 :goto_5d

    .line 346
    .end local v6    # "$result":Ljava/lang/Object;
    .end local v13    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v0, "cancellation":Ljava/util/concurrent/CancellationException;
    .restart local v12    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :cond_161
    :try_start_161
    throw v0
    :try_end_162
    .catchall {:try_start_161 .. :try_end_162} :catchall_3a

    .line 348
    .end local v0    # "cancellation":Ljava/util/concurrent/CancellationException;
    .end local v12    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .local v6, "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    .restart local v7    # "$result":Ljava/lang/Object;
    .restart local v8    # "$i$a$-let-DraggableNode$pointerInputNode$1$1$2$1":I
    :goto_162
    if-eqz v9, :cond_187

    .line 349
    # getter for: Landroidx/compose/foundation/gestures/DraggableNode;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    invoke-static {v11}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->calculateVelocity-9UxMQ8M()J

    move-result-wide v9

    .line 350
    .local v9, "velocity":J
    # getter for: Landroidx/compose/foundation/gestures/DraggableNode;->velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    invoke-static {v11}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getVelocityTracker$p(Landroidx/compose/foundation/gestures/DraggableNode;)Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->resetTracking()V

    .line 351
    new-instance v1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    # getter for: Landroidx/compose/foundation/gestures/DraggableNode;->reverseDirection:Z
    invoke-static {v11}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getReverseDirection$p(Landroidx/compose/foundation/gestures/DraggableNode;)Z

    move-result v12

    if-eqz v12, :cond_17c

    goto :goto_17d

    :cond_17c
    move v3, v4

    .end local v9    # "velocity":J
    :goto_17d
    invoke-static {v9, v10, v3}, Landroidx/compose/ui/unit/Velocity;->times-adjELrA(JF)J

    move-result-wide v3

    invoke-direct {v1, v3, v4, v5}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Landroidx/compose/foundation/gestures/DragEvent;

    goto :goto_18b

    .line 353
    :cond_187
    sget-object v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    check-cast v1, Landroidx/compose/foundation/gestures/DragEvent;

    .line 348
    :goto_18b
    nop

    .line 355
    .local v1, "event":Landroidx/compose/foundation/gestures/DragEvent;
    # getter for: Landroidx/compose/foundation/gestures/DraggableNode;->channel:Lkotlinx/coroutines/channels/Channel;
    invoke-static {v11}, Landroidx/compose/foundation/gestures/DraggableNode;->access$getChannel$p(Landroidx/compose/foundation/gestures/DraggableNode;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v3

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "event":Landroidx/compose/foundation/gestures/DragEvent;
    throw v0

    .line 333
    .end local v6    # "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    .end local v7    # "$result":Ljava/lang/Object;
    .local v1, "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    .local v8, "$result":Ljava/lang/Object;
    .restart local v13    # "$this$awaitPointerEventScope":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    :cond_194
    move-object v0, v1

    move-object v1, v6

    move-object v6, v8

    goto/16 :goto_5d

    .line 359
    .end local v1    # "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    .end local v8    # "$result":Ljava/lang/Object;
    .local v0, "this":Landroidx/compose/foundation/gestures/DraggableNode$pointerInputNode$1$1$2;
    .local v6, "$result":Ljava/lang/Object;
    :cond_199
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_19c
    .packed-switch 0x0
        :pswitch_51
        :pswitch_40
        :pswitch_19
    .end packed-switch
.end method
