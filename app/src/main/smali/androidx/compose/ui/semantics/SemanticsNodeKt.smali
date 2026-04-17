.class public final Landroidx/compose/ui/semantics/SemanticsNodeKt;
.super Ljava/lang/Object;
.source "SemanticsNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemanticsNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SemanticsNode.kt\nandroidx/compose/ui/semantics/SemanticsNodeKt\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 NodeChain.kt\nandroidx/compose/ui/node/NodeChain\n+ 4 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 5 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 6 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n*L\n1#1,462:1\n76#2:463\n76#2:540\n769#3:464\n700#3,8:465\n723#3,3:473\n708#3,2:476\n701#3:478\n770#3:484\n702#3,11:523\n726#3,3:534\n713#3:537\n703#3:538\n772#3:539\n693#3,15:541\n723#3,3:556\n708#3,2:559\n701#3:561\n694#3,2:567\n702#3,11:607\n726#3,3:618\n713#3:621\n703#3:622\n696#3:623\n383#4,5:479\n388#4:485\n393#4,2:487\n395#4,8:492\n403#4,9:503\n412#4,8:515\n383#4,5:562\n388#4:569\n393#4,2:571\n395#4,8:576\n403#4,9:587\n412#4,8:599\n261#5:486\n261#5:570\n234#6,3:489\n237#6,3:512\n234#6,3:573\n237#6,3:596\n1182#7:500\n1161#7,2:501\n1182#7:584\n1161#7,2:585\n*S KotlinDebug\n*F\n+ 1 SemanticsNode.kt\nandroidx/compose/ui/semantics/SemanticsNodeKt\n*L\n45#1:463\n438#1:540\n45#1:464\n45#1:465,8\n45#1:473,3\n45#1:476,2\n45#1:478\n45#1:484\n45#1:523,11\n45#1:534,3\n45#1:537\n45#1:538\n45#1:539\n438#1:541,15\n438#1:556,3\n438#1:559,2\n438#1:561\n438#1:567,2\n438#1:607,11\n438#1:618,3\n438#1:621\n438#1:622\n438#1:623\n45#1:479,5\n45#1:485\n45#1:487,2\n45#1:492,8\n45#1:503,9\n45#1:515,8\n438#1:562,5\n438#1:569\n438#1:571,2\n438#1:576,8\n438#1:587,9\n438#1:599,8\n45#1:486\n438#1:570\n45#1:489,3\n45#1:512,3\n438#1:573,3\n438#1:596,3\n45#1:500\n45#1:501,2\n438#1:584\n438#1:585,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\rH\u0000\u001a\"\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0002H\u0000\u001a\u000c\u0010\u000f\u001a\u00020\u0010*\u00020\u0007H\u0002\u001a\"\u0010\u0011\u001a\u0004\u0018\u00010\u0002*\u00020\u00022\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\r0\u0013H\u0000\u001a\u000c\u0010\u0014\u001a\u00020\u0010*\u00020\u0007H\u0002\"\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u00078BX\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0015"
    }
    d2 = {
        "outerMergingSemantics",
        "Landroidx/compose/ui/node/SemanticsModifierNode;",
        "Landroidx/compose/ui/node/LayoutNode;",
        "getOuterMergingSemantics",
        "(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/SemanticsModifierNode;",
        "role",
        "Landroidx/compose/ui/semantics/Role;",
        "Landroidx/compose/ui/semantics/SemanticsNode;",
        "getRole",
        "(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/Role;",
        "SemanticsNode",
        "layoutNode",
        "mergingEnabled",
        "",
        "outerSemanticsNode",
        "contentDescriptionFakeNodeId",
        "",
        "findClosestParentNode",
        "selector",
        "Lkotlin/Function1;",
        "roleFakeNodeId",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final SemanticsNode(Landroidx/compose/ui/node/LayoutNode;Z)Landroidx/compose/ui/semantics/SemanticsNode;
    .registers 36
    .param p0, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;
    .param p1, "mergingEnabled"    # Z

    move-object/from16 v0, p0

    const-string/jumbo v1, "layoutNode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    nop

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v1

    const/4 v2, 0x0

    .line 463
    .local v2, "$i$f$getSemantics-OLwlOKw":I
    const/16 v3, 0x8

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 45
    .end local v2    # "$i$f$getSemantics-OLwlOKw":I
    nop

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "type$iv":I
    const/4 v3, 0x0

    .line 464
    .local v3, "$i$f$head-H91voCI$ui_release":I
    move-object v4, v1

    .local v4, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v5, 0x0

    .line 465
    .local v5, "$i$f$headToTail-aLcG6gQ$ui_release":I
    move v6, v2

    .local v6, "mask$iv$iv$iv":I
    move-object v7, v4

    .local v7, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v8, 0x0

    .line 471
    .local v8, "$i$f$headToTail$ui_release":I
    # invokes: Landroidx/compose/ui/node/NodeChain;->getAggregateChildKindSet()I
    invoke-static {v7}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v9

    and-int/2addr v9, v6

    if-eqz v9, :cond_135

    .line 472
    move-object v9, v7

    .local v9, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v10, 0x0

    .line 473
    .local v10, "$i$f$headToTail$ui_release":I
    invoke-virtual {v9}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    .line 474
    .local v11, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_28
    if-eqz v11, :cond_12c

    .line 475
    move-object v12, v11

    .local v12, "it$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 476
    .local v13, "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv$iv$iv":I
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v14

    and-int/2addr v14, v6

    if-eqz v14, :cond_10d

    .line 477
    move-object v14, v12

    .local v14, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 478
    .local v15, "$i$a$-headToTail$ui_release-NodeChain$headToTail$1$iv$iv":I
    move-object/from16 v16, v14

    .local v16, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 479
    .local v17, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v18, 0x0

    .line 480
    .local v18, "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .local v19, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v16

    move-object/from16 v33, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v33

    .line 481
    .local v1, "node$iv$iv$iv":Ljava/lang/Object;
    .local v19, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_45
    if-eqz v1, :cond_105

    .line 482
    move/from16 v20, v3

    .end local v3    # "$i$f$head-H91voCI$ui_release":I
    .local v20, "$i$f$head-H91voCI$ui_release":I
    instance-of v3, v1, Landroidx/compose/ui/node/SemanticsModifierNode;

    if-eqz v3, :cond_52

    .line 483
    move-object v3, v1

    .local v3, "it$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 484
    .local v21, "$i$a$-headToTail-aLcG6gQ$ui_release-NodeChain$head$1$iv":I
    goto/16 :goto_13f

    .line 485
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-headToTail-aLcG6gQ$ui_release-NodeChain$head$1$iv":I
    :cond_52
    move-object v3, v1

    .local v3, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v21, 0x0

    .line 486
    .local v21, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v22

    and-int v22, v22, v2

    move-object/from16 v23, v3

    .end local v3    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v23, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v22, :cond_62

    const/16 v21, 0x1

    goto :goto_64

    :cond_62
    const/16 v21, 0x0

    .line 485
    .end local v21    # "$i$f$isKind-H91voCI$ui_release":I
    .end local v23    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_64
    if-eqz v21, :cond_f5

    instance-of v3, v1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v3, :cond_f5

    .line 487
    const/4 v3, 0x0

    .line 488
    .local v3, "count$iv$iv$iv":I
    move-object/from16 v22, v1

    check-cast v22, Landroidx/compose/ui/node/DelegatingNode;

    .local v22, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v23, 0x0

    .line 489
    .local v23, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    .line 490
    .local v24, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_75
    if-eqz v24, :cond_e6

    .line 491
    move-object/from16 v25, v24

    .local v25, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 492
    .local v26, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move-object/from16 v27, v25

    .local v27, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 486
    .local v28, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v29

    and-int v29, v29, v2

    if-eqz v29, :cond_8a

    const/16 v27, 0x1

    goto :goto_8c

    :cond_8a
    const/16 v27, 0x0

    .line 492
    .end local v27    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_8c
    if-eqz v27, :cond_d5

    .line 493
    add-int/lit8 v3, v3, 0x1

    .line 494
    move/from16 v27, v2

    const/4 v2, 0x1

    .end local v2    # "type$iv":I
    .local v27, "type$iv":I
    if-ne v3, v2, :cond_9c

    .line 495
    move-object/from16 v1, v25

    move-object/from16 v31, v4

    move-object/from16 v2, v25

    goto :goto_db

    .line 499
    :cond_9c
    if-nez v18, :cond_b5

    const/4 v2, 0x0

    .line 500
    .local v2, "$i$f$mutableVectorOf":I
    nop

    .line 501
    move/from16 v28, v2

    .end local v2    # "$i$f$mutableVectorOf":I
    .local v28, "$i$f$mutableVectorOf":I
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv$iv$iv$iv":I
    const/16 v29, 0x0

    .line 502
    .local v29, "$i$f$MutableVector":I
    move/from16 v30, v3

    .end local v3    # "count$iv$iv$iv":I
    .local v30, "count$iv$iv$iv":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v31, v4

    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v31, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    new-array v4, v2, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v32, v2

    const/4 v2, 0x0

    .end local v2    # "capacity$iv$iv$iv$iv$iv":I
    .local v32, "capacity$iv$iv$iv$iv$iv":I
    invoke-direct {v3, v4, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 500
    .end local v29    # "$i$f$MutableVector":I
    .end local v32    # "capacity$iv$iv$iv$iv$iv":I
    goto :goto_bc

    .line 499
    .end local v28    # "$i$f$mutableVectorOf":I
    .end local v30    # "count$iv$iv$iv":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v3    # "count$iv$iv$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_b5
    move/from16 v30, v3

    move-object/from16 v31, v4

    const/4 v2, 0x0

    .end local v3    # "count$iv$iv$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v30    # "count$iv$iv$iv":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    move-object/from16 v3, v18

    :goto_bc
    nop

    .line 503
    .end local v18    # "stack$iv$iv$iv":Ljava/lang/Object;
    .local v3, "stack$iv$iv$iv":Ljava/lang/Object;
    move-object v4, v1

    .line 504
    .local v4, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v4, :cond_c6

    .line 505
    if-eqz v3, :cond_c5

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_c5
    const/4 v1, 0x0

    .line 508
    :cond_c6
    if-eqz v3, :cond_ce

    move-object/from16 v2, v25

    .end local v25    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_d0

    .end local v2    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_ce
    move-object/from16 v2, v25

    .line 511
    .end local v4    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_d0
    move-object/from16 v18, v3

    move/from16 v3, v30

    goto :goto_db

    .line 492
    .end local v27    # "type$iv":I
    .end local v30    # "count$iv$iv$iv":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "type$iv":I
    .local v3, "count$iv$iv$iv":I
    .local v4, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v25    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d5
    move/from16 v27, v2

    move-object/from16 v31, v4

    move-object/from16 v2, v25

    .line 511
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v25    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "type$iv":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_db
    nop

    .line 491
    .end local v2    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 512
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    move/from16 v2, v27

    move-object/from16 v4, v31

    goto :goto_75

    .line 514
    .end local v27    # "type$iv":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "type$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_e6
    move/from16 v27, v2

    move-object/from16 v31, v4

    .line 515
    .end local v2    # "type$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v22    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v23    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v24    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "type$iv":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v2, 0x1

    if-ne v3, v2, :cond_f9

    .line 517
    move/from16 v3, v20

    move/from16 v2, v27

    move-object/from16 v4, v31

    goto/16 :goto_45

    .line 485
    .end local v3    # "count$iv$iv$iv":I
    .end local v27    # "type$iv":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "type$iv":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_f5
    move/from16 v27, v2

    move-object/from16 v31, v4

    .line 520
    .end local v2    # "type$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v27    # "type$iv":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_f9
    # invokes: Landroidx/compose/ui/node/DelegatableNodeKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move/from16 v3, v20

    move/from16 v2, v27

    move-object/from16 v4, v31

    goto/16 :goto_45

    .line 522
    .end local v20    # "$i$f$head-H91voCI$ui_release":I
    .end local v27    # "type$iv":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "type$iv":I
    .local v3, "$i$f$head-H91voCI$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_105
    move/from16 v27, v2

    move/from16 v20, v3

    move-object/from16 v31, v4

    .line 523
    .end local v1    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v2    # "type$iv":I
    .end local v3    # "$i$f$head-H91voCI$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v18    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v20    # "$i$f$head-H91voCI$ui_release":I
    .restart local v27    # "type$iv":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    nop

    .line 477
    .end local v14    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$1$iv$iv":I
    goto :goto_115

    .line 476
    .end local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v20    # "$i$f$head-H91voCI$ui_release":I
    .end local v27    # "type$iv":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "type$iv":I
    .restart local v3    # "$i$f$head-H91voCI$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_10d
    move-object/from16 v19, v1

    move/from16 v27, v2

    move/from16 v20, v3

    move-object/from16 v31, v4

    .line 532
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "type$iv":I
    .end local v3    # "$i$f$head-H91voCI$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v20    # "$i$f$head-H91voCI$ui_release":I
    .restart local v27    # "type$iv":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_115
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v1

    and-int/2addr v1, v6

    if-eqz v1, :cond_13d

    .line 533
    nop

    .line 475
    .end local v12    # "it$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv$iv$iv":I
    nop

    .line 534
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move-object/from16 v1, v19

    move/from16 v3, v20

    move/from16 v2, v27

    move-object/from16 v4, v31

    goto/16 :goto_28

    .line 536
    .end local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v20    # "$i$f$head-H91voCI$ui_release":I
    .end local v27    # "type$iv":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "type$iv":I
    .restart local v3    # "$i$f$head-H91voCI$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_12c
    move-object/from16 v19, v1

    move/from16 v27, v2

    move/from16 v20, v3

    move-object/from16 v31, v4

    .line 537
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "type$iv":I
    .end local v3    # "$i$f$head-H91voCI$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v9    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v10    # "$i$f$headToTail$ui_release":I
    .end local v11    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v20    # "$i$f$head-H91voCI$ui_release":I
    .restart local v27    # "type$iv":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    goto :goto_13d

    .line 471
    .end local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v20    # "$i$f$head-H91voCI$ui_release":I
    .end local v27    # "type$iv":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "type$iv":I
    .restart local v3    # "$i$f$head-H91voCI$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_135
    move-object/from16 v19, v1

    move/from16 v27, v2

    move/from16 v20, v3

    move-object/from16 v31, v4

    .line 538
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "type$iv":I
    .end local v3    # "$i$f$head-H91voCI$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v6    # "mask$iv$iv$iv":I
    .end local v7    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v8    # "$i$f$headToTail$ui_release":I
    .restart local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v20    # "$i$f$head-H91voCI$ui_release":I
    .restart local v27    # "type$iv":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_13d
    :goto_13d
    nop

    .line 539
    .end local v5    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v3, 0x0

    .end local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v20    # "$i$f$head-H91voCI$ui_release":I
    .end local v27    # "type$iv":I
    :goto_13f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Landroidx/compose/ui/node/SemanticsModifierNode;

    .line 45
    invoke-interface {v3}, Landroidx/compose/ui/node/SemanticsModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 46
    nop

    .line 47
    nop

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->getCollapsedSemantics$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    new-instance v3, Landroidx/compose/ui/semantics/SemanticsNode;

    move/from16 v4, p1

    invoke-direct {v3, v1, v4, v0, v2}, Landroidx/compose/ui/semantics/SemanticsNode;-><init>(Landroidx/compose/ui/Modifier$Node;ZLandroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 49
    return-object v3
.end method

.method public static final SemanticsNode(Landroidx/compose/ui/node/SemanticsModifierNode;ZLandroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsNode;
    .registers 6
    .param p0, "outerSemanticsNode"    # Landroidx/compose/ui/node/SemanticsModifierNode;
    .param p1, "mergingEnabled"    # Z
    .param p2, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;

    const-string/jumbo v0, "outerSemanticsNode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "layoutNode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 72
    invoke-interface {p0}, Landroidx/compose/ui/node/SemanticsModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    .line 73
    nop

    .line 74
    nop

    .line 75
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getCollapsedSemantics$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    if-nez v2, :cond_1f

    new-instance v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-direct {v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    .line 71
    :cond_1f
    invoke-direct {v0, v1, p1, p2, v2}, Landroidx/compose/ui/semantics/SemanticsNode;-><init>(Landroidx/compose/ui/Modifier$Node;ZLandroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 76
    return-object v0
.end method

.method public static synthetic SemanticsNode$default(Landroidx/compose/ui/node/SemanticsModifierNode;ZLandroidx/compose/ui/node/LayoutNode;ILjava/lang/Object;)Landroidx/compose/ui/semantics/SemanticsNode;
    .registers 5

    .line 51
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_b

    .line 70
    move-object p2, p0

    check-cast p2, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {p2}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    .line 51
    :cond_b
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->SemanticsNode(Landroidx/compose/ui/node/SemanticsModifierNode;ZLandroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$contentDescriptionFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .registers 2
    .param p0, "$receiver"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->contentDescriptionFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getRole(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/Role;
    .registers 2
    .param p0, "$receiver"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getRole(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/Role;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$roleFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .registers 2
    .param p0, "$receiver"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->roleFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v0

    return v0
.end method

.method private static final contentDescriptionFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .registers 3
    .param p0, "$this$contentDescriptionFakeNodeId"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 461
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v0

    const v1, 0x77359400

    add-int/2addr v0, v1

    return v0
.end method

.method public static final findClosestParentNode(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;
    .registers 4
    .param p0, "$this$findClosestParentNode"    # Landroidx/compose/ui/node/LayoutNode;
    .param p1, "selector"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/node/LayoutNode;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    .line 449
    .local v0, "currentParent":Landroidx/compose/ui/node/LayoutNode;
    :goto_f
    if-eqz v0, :cond_23

    .line 450
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 451
    return-object v0

    .line 453
    :cond_1e
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    goto :goto_f

    .line 457
    :cond_23
    const/4 v1, 0x0

    return-object v1
.end method

.method public static final getOuterMergingSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/SemanticsModifierNode;
    .registers 34
    .param p0, "$this$outerMergingSemantics"    # Landroidx/compose/ui/node/LayoutNode;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    const/4 v2, 0x0

    .line 540
    .local v2, "$i$f$getSemantics-OLwlOKw":I
    const/16 v3, 0x8

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 438
    .end local v2    # "$i$f$getSemantics-OLwlOKw":I
    nop

    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "type$iv":I
    const/4 v3, 0x0

    .line 541
    .local v3, "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    move-object v4, v0

    .local v4, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v5, 0x0

    .line 548
    .local v5, "$i$f$headToTail-aLcG6gQ$ui_release":I
    move v6, v2

    .local v6, "mask$iv$iv$iv":I
    move-object v7, v4

    .local v7, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v8, 0x0

    .line 554
    .local v8, "$i$f$headToTail$ui_release":I
    # invokes: Landroidx/compose/ui/node/NodeChain;->getAggregateChildKindSet()I
    invoke-static {v7}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v9

    and-int/2addr v9, v6

    if-eqz v9, :cond_15a

    .line 555
    move-object v9, v7

    .local v9, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v10, 0x0

    .line 556
    .local v10, "$i$f$headToTail$ui_release":I
    invoke-virtual {v9}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    .line 557
    .local v11, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_26
    if-eqz v11, :cond_151

    .line 558
    move-object v12, v11

    .local v12, "it$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 559
    .local v13, "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv$iv$iv":I
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v14

    and-int/2addr v14, v6

    if-eqz v14, :cond_130

    .line 560
    move-object v14, v12

    .local v14, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 561
    .local v15, "$i$a$-headToTail$ui_release-NodeChain$headToTail$1$iv$iv":I
    move-object/from16 v16, v14

    .local v16, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 562
    .local v17, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v18, 0x0

    .line 563
    .local v18, "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .local v19, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v16

    move-object/from16 v32, v19

    move-object/from16 v19, v0

    move-object/from16 v0, v32

    .line 564
    .local v0, "node$iv$iv$iv":Ljava/lang/Object;
    .local v19, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_43
    if-eqz v0, :cond_128

    .line 565
    instance-of v1, v0, Landroidx/compose/ui/node/SemanticsModifierNode;

    if-eqz v1, :cond_63

    .line 566
    move-object v1, v0

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 567
    .local v20, "$i$a$-headToTail-aLcG6gQ$ui_release-NodeChain$firstFromHead$1$iv":I
    move-object/from16 v21, v1

    check-cast v21, Landroidx/compose/ui/node/SemanticsModifierNode;

    .local v21, "it":Landroidx/compose/ui/node/SemanticsModifierNode;
    const/16 v22, 0x0

    .line 439
    .local v22, "$i$a$-firstFromHead-aLcG6gQ$ui_release-SemanticsNodeKt$outerMergingSemantics$1":I
    invoke-interface/range {v21 .. v21}, Landroidx/compose/ui/node/SemanticsModifierNode;->getShouldMergeDescendantSemantics()Z

    move-result v21

    .line 567
    .end local v21    # "it":Landroidx/compose/ui/node/SemanticsModifierNode;
    .end local v22    # "$i$a$-firstFromHead-aLcG6gQ$ui_release-SemanticsNodeKt$outerMergingSemantics$1":I
    if-eqz v21, :cond_5a

    goto/16 :goto_164

    .line 568
    :cond_5a
    nop

    .line 566
    .end local v1    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-headToTail-aLcG6gQ$ui_release-NodeChain$firstFromHead$1$iv":I
    move/from16 v26, v2

    move/from16 v30, v3

    move-object/from16 v31, v4

    goto/16 :goto_11a

    .line 569
    :cond_63
    move-object v1, v0

    .local v1, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 570
    .local v20, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v21

    and-int v21, v21, v2

    move-object/from16 v22, v1

    .end local v1    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v22, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v21, :cond_73

    const/16 v20, 0x1

    goto :goto_75

    :cond_73
    const/16 v20, 0x0

    .line 569
    .end local v20    # "$i$f$isKind-H91voCI$ui_release":I
    .end local v22    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_75
    if-eqz v20, :cond_114

    instance-of v1, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_114

    .line 571
    const/4 v1, 0x0

    .line 572
    .local v1, "count$iv$iv$iv":I
    move-object/from16 v21, v0

    check-cast v21, Landroidx/compose/ui/node/DelegatingNode;

    .local v21, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v22, 0x0

    .line 573
    .local v22, "$i$f$forEachImmediateDelegate$ui_release":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    .line 574
    .local v23, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_86
    if-eqz v23, :cond_101

    .line 575
    move-object/from16 v24, v23

    .local v24, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 576
    .local v25, "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move-object/from16 v26, v24

    .local v26, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v27, 0x0

    .line 570
    .local v27, "$i$f$isKind-H91voCI$ui_release":I
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v28

    and-int v28, v28, v2

    if-eqz v28, :cond_9b

    const/16 v26, 0x1

    goto :goto_9d

    :cond_9b
    const/16 v26, 0x0

    .line 576
    .end local v26    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v27    # "$i$f$isKind-H91voCI$ui_release":I
    :goto_9d
    if-eqz v26, :cond_eb

    .line 577
    add-int/lit8 v1, v1, 0x1

    .line 578
    move/from16 v26, v2

    const/4 v2, 0x1

    .end local v2    # "type$iv":I
    .local v26, "type$iv":I
    if-ne v1, v2, :cond_b0

    .line 579
    move-object/from16 v0, v24

    move/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v3, v24

    const/4 v4, 0x0

    goto :goto_f4

    .line 583
    :cond_b0
    if-nez v18, :cond_c9

    const/4 v2, 0x0

    .line 584
    .local v2, "$i$f$mutableVectorOf":I
    nop

    .line 585
    move/from16 v27, v1

    .end local v1    # "count$iv$iv$iv":I
    .local v27, "count$iv$iv$iv":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv$iv":I
    const/16 v28, 0x0

    .line 586
    .local v28, "$i$f$MutableVector":I
    move/from16 v29, v2

    .end local v2    # "$i$f$mutableVectorOf":I
    .local v29, "$i$f$mutableVectorOf":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v30, v3

    .end local v3    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .local v30, "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v31, v4

    const/4 v4, 0x0

    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v31, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    invoke-direct {v2, v3, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 584
    .end local v1    # "capacity$iv$iv$iv$iv$iv":I
    .end local v28    # "$i$f$MutableVector":I
    goto :goto_d2

    .line 583
    .end local v27    # "count$iv$iv$iv":I
    .end local v29    # "$i$f$mutableVectorOf":I
    .end local v30    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v1, "count$iv$iv$iv":I
    .restart local v3    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_c9
    move/from16 v27, v1

    move/from16 v30, v3

    move-object/from16 v31, v4

    const/4 v4, 0x0

    .end local v1    # "count$iv$iv$iv":I
    .end local v3    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v27    # "count$iv$iv$iv":I
    .restart local v30    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    move-object/from16 v2, v18

    :goto_d2
    move-object v1, v2

    .line 587
    .end local v18    # "stack$iv$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv$iv":Ljava/lang/Object;
    move-object v2, v0

    .line 588
    .local v2, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_dc

    .line 589
    if-eqz v1, :cond_db

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_db
    const/4 v0, 0x0

    .line 592
    :cond_dc
    if-eqz v1, :cond_e4

    move-object/from16 v3, v24

    .end local v24    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_e6

    .end local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_e4
    move-object/from16 v3, v24

    .line 595
    .end local v2    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_e6
    move-object/from16 v18, v1

    move/from16 v1, v27

    goto :goto_f4

    .line 576
    .end local v26    # "type$iv":I
    .end local v27    # "count$iv$iv$iv":I
    .end local v30    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v1, "count$iv$iv$iv":I
    .local v2, "type$iv":I
    .local v3, "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v18    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v24    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_eb
    move/from16 v26, v2

    move/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v3, v24

    const/4 v4, 0x0

    .line 595
    .end local v2    # "type$iv":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v24    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "type$iv":I
    .restart local v30    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_f4
    nop

    .line 575
    .end local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$a$-forEachImmediateDelegate$ui_release-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 596
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    move/from16 v2, v26

    move/from16 v3, v30

    move-object/from16 v4, v31

    goto :goto_86

    .line 598
    .end local v26    # "type$iv":I
    .end local v30    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "type$iv":I
    .local v3, "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_101
    move/from16 v26, v2

    move/from16 v30, v3

    move-object/from16 v31, v4

    .line 599
    .end local v2    # "type$iv":I
    .end local v3    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v21    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v22    # "$i$f$forEachImmediateDelegate$ui_release":I
    .end local v23    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "type$iv":I
    .restart local v30    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_11a

    .line 601
    move-object/from16 v1, p0

    move/from16 v2, v26

    move/from16 v3, v30

    move-object/from16 v4, v31

    goto/16 :goto_43

    .line 569
    .end local v1    # "count$iv$iv$iv":I
    .end local v26    # "type$iv":I
    .end local v30    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "type$iv":I
    .restart local v3    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_114
    move/from16 v26, v2

    move/from16 v30, v3

    move-object/from16 v31, v4

    .line 604
    .end local v2    # "type$iv":I
    .end local v3    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v26    # "type$iv":I
    .restart local v30    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_11a
    :goto_11a
    # invokes: Landroidx/compose/ui/node/DelegatableNodeKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object/from16 v1, p0

    move/from16 v2, v26

    move/from16 v3, v30

    move-object/from16 v4, v31

    goto/16 :goto_43

    .line 606
    .end local v26    # "type$iv":I
    .end local v30    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "type$iv":I
    .restart local v3    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_128
    move/from16 v26, v2

    move/from16 v30, v3

    move-object/from16 v31, v4

    .line 607
    .end local v0    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v2    # "type$iv":I
    .end local v3    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v18    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v26    # "type$iv":I
    .restart local v30    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    nop

    .line 560
    .end local v14    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$1$iv$iv":I
    goto :goto_138

    .line 559
    .end local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v26    # "type$iv":I
    .end local v30    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .local v0, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "type$iv":I
    .restart local v3    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_130
    move-object/from16 v19, v0

    move/from16 v26, v2

    move/from16 v30, v3

    move-object/from16 v31, v4

    .line 616
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "type$iv":I
    .end local v3    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v26    # "type$iv":I
    .restart local v30    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :goto_138
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v0

    and-int/2addr v0, v6

    if-eqz v0, :cond_162

    .line 617
    nop

    .line 558
    .end local v12    # "it$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$a$-headToTail$ui_release-NodeChain$headToTail$2$iv$iv$iv":I
    nop

    .line 618
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move-object/from16 v1, p0

    move-object/from16 v0, v19

    move/from16 v2, v26

    move/from16 v3, v30

    move-object/from16 v4, v31

    goto/16 :goto_26

    .line 620
    .end local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v26    # "type$iv":I
    .end local v30    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "type$iv":I
    .restart local v3    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_151
    move-object/from16 v19, v0

    move/from16 v26, v2

    move/from16 v30, v3

    move-object/from16 v31, v4

    .line 621
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "type$iv":I
    .end local v3    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v9    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v10    # "$i$f$headToTail$ui_release":I
    .end local v11    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v26    # "type$iv":I
    .restart local v30    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    goto :goto_162

    .line 554
    .end local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v26    # "type$iv":I
    .end local v30    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "type$iv":I
    .restart local v3    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_15a
    move-object/from16 v19, v0

    move/from16 v26, v2

    move/from16 v30, v3

    move-object/from16 v31, v4

    .line 622
    .end local v0    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "type$iv":I
    .end local v3    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .end local v4    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v6    # "mask$iv$iv$iv":I
    .end local v7    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v8    # "$i$f$headToTail$ui_release":I
    .restart local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v26    # "type$iv":I
    .restart local v30    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    .restart local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    :cond_162
    :goto_162
    nop

    .line 623
    .end local v5    # "$i$f$headToTail-aLcG6gQ$ui_release":I
    .end local v31    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v1, 0x0

    .end local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v26    # "type$iv":I
    .end local v30    # "$i$f$firstFromHead-aLcG6gQ$ui_release":I
    :goto_164
    check-cast v1, Landroidx/compose/ui/node/SemanticsModifierNode;

    .line 440
    return-object v1
.end method

.method private static final getRole(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/Role;
    .registers 3
    .param p0, "$this$role"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 460
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getRole()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/Role;

    return-object v0
.end method

.method private static final roleFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .registers 3
    .param p0, "$this$roleFakeNodeId"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 462
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v0

    const v1, 0x3b9aca00

    add-int/2addr v0, v1

    return v0
.end method
