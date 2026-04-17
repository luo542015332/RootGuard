.class public final Landroidx/compose/ui/graphics/vector/PathNodeKt;
.super Ljava/lang/Object;
.source "PathNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathNode.kt\nandroidx/compose/ui/graphics/vector/PathNodeKt\n*L\n1#1,399:1\n347#1,15:400\n347#1,15:415\n347#1,15:430\n347#1,15:445\n347#1,15:460\n347#1,15:475\n347#1,15:490\n347#1,15:505\n347#1,15:520\n347#1,15:535\n347#1,15:550\n347#1,15:565\n347#1,15:580\n347#1,15:595\n347#1,15:610\n347#1,15:625\n347#1,15:640\n347#1,15:655\n*S KotlinDebug\n*F\n+ 1 PathNode.kt\nandroidx/compose/ui/graphics/vector/PathNodeKt\n*L\n154#1:400,15\n163#1:415,15\n167#1:430,15\n176#1:445,15\n180#1:460,15\n189#1:475,15\n198#1:490,15\n207#1:505,15\n216#1:520,15\n232#1:535,15\n243#1:550,15\n257#1:565,15\n271#1:580,15\n285#1:595,15\n294#1:610,15\n303#1:625,15\n312#1:640,15\n324#1:655,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001ai\u0010\u001f\u001a\u00020 2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u000828\u0008\u0004\u0010(\u001a2\u0012\u0013\u0012\u00110%\u00a2\u0006\u000c\u0008*\u0012\u0008\u0008+\u0012\u0004\u0008\u0008(,\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008*\u0012\u0008\u0008+\u0012\u0004\u0008\u0008(-\u0012\u0004\u0012\u00020#0)H\u0082\u0008\u001a*\u0010.\u001a\u00020 *\u00020\u00012\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0008H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000c\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0018\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0019\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001a\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001b\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001c\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001d\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "ArcToKey",
        "",
        "CloseKey",
        "CurveToKey",
        "HorizontalToKey",
        "LineToKey",
        "MoveToKey",
        "NUM_ARC_TO_ARGS",
        "",
        "NUM_CURVE_TO_ARGS",
        "NUM_HORIZONTAL_TO_ARGS",
        "NUM_LINE_TO_ARGS",
        "NUM_MOVE_TO_ARGS",
        "NUM_QUAD_TO_ARGS",
        "NUM_REFLECTIVE_CURVE_TO_ARGS",
        "NUM_REFLECTIVE_QUAD_TO_ARGS",
        "NUM_VERTICAL_TO_ARGS",
        "QuadToKey",
        "ReflectiveCurveToKey",
        "ReflectiveQuadToKey",
        "RelativeArcToKey",
        "RelativeCloseKey",
        "RelativeCurveToKey",
        "RelativeHorizontalToKey",
        "RelativeLineToKey",
        "RelativeMoveToKey",
        "RelativeQuadToKey",
        "RelativeReflectiveCurveToKey",
        "RelativeReflectiveQuadToKey",
        "RelativeVerticalToKey",
        "VerticalToKey",
        "pathNodesFromArgs",
        "",
        "nodes",
        "",
        "Landroidx/compose/ui/graphics/vector/PathNode;",
        "args",
        "",
        "count",
        "numArgs",
        "nodeFor",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "subArray",
        "start",
        "addPathNodes",
        "ui-graphics_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ArcToKey:C = 'A'

.field private static final CloseKey:C = 'Z'

.field private static final CurveToKey:C = 'C'

.field private static final HorizontalToKey:C = 'H'

.field private static final LineToKey:C = 'L'

.field private static final MoveToKey:C = 'M'

.field private static final NUM_ARC_TO_ARGS:I = 0x7

.field private static final NUM_CURVE_TO_ARGS:I = 0x6

.field private static final NUM_HORIZONTAL_TO_ARGS:I = 0x1

.field private static final NUM_LINE_TO_ARGS:I = 0x2

.field private static final NUM_MOVE_TO_ARGS:I = 0x2

.field private static final NUM_QUAD_TO_ARGS:I = 0x4

.field private static final NUM_REFLECTIVE_CURVE_TO_ARGS:I = 0x4

.field private static final NUM_REFLECTIVE_QUAD_TO_ARGS:I = 0x2

.field private static final NUM_VERTICAL_TO_ARGS:I = 0x1

.field private static final QuadToKey:C = 'Q'

.field private static final ReflectiveCurveToKey:C = 'S'

.field private static final ReflectiveQuadToKey:C = 'T'

.field private static final RelativeArcToKey:C = 'a'

.field private static final RelativeCloseKey:C = 'z'

.field private static final RelativeCurveToKey:C = 'c'

.field private static final RelativeHorizontalToKey:C = 'h'

.field private static final RelativeLineToKey:C = 'l'

.field private static final RelativeMoveToKey:C = 'm'

.field private static final RelativeQuadToKey:C = 'q'

.field private static final RelativeReflectiveCurveToKey:C = 's'

.field private static final RelativeReflectiveQuadToKey:C = 't'

.field private static final RelativeVerticalToKey:C = 'v'

.field private static final VerticalToKey:C = 'V'


# direct methods
.method public static final addPathNodes(CLjava/util/List;[FI)V
    .registers 26
    .param p0, "$this$addPathNodes"    # C
    .param p1, "nodes"    # Ljava/util/List;
    .param p2, "args"    # [F
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;[FI)V"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "nodes"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "args"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    nop

    .line 152
    const/16 v3, 0x7a

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v3, :cond_1b

    :goto_19
    move v3, v5

    goto :goto_21

    :cond_1b
    const/16 v3, 0x5a

    if-ne v0, v3, :cond_20

    goto :goto_19

    :cond_20
    move v3, v4

    :goto_21
    if-eqz v3, :cond_2a

    sget-object v3, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_64d

    .line 154
    :cond_2a
    const/16 v3, 0x6d

    const/4 v6, 0x2

    if-ne v0, v3, :cond_77

    .line 158
    nop

    .line 154
    move v3, v6

    .local v3, "numArgs$iv":I
    const/4 v4, 0x0

    .line 400
    .local v4, "$i$f$pathNodesFromArgs":I
    sub-int v5, p3, v3

    .line 401
    .local v5, "end$iv":I
    const/4 v6, 0x0

    .line 402
    .local v6, "index$iv":I
    :goto_35
    if-gt v6, v5, :cond_74

    .line 403
    move-object/from16 v7, p2

    .local v7, "array":[F
    move v8, v6

    .local v8, "start":I
    const/4 v9, 0x0

    .line 160
    .local v9, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$1":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    aget v11, v7, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, v7, v12

    invoke-direct {v10, v11, v12}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    check-cast v10, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 403
    .end local v7    # "array":[F
    .end local v8    # "start":I
    .end local v9    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$1":I
    move-object v7, v10

    .line 404
    .local v7, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 407
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_5e

    if-lez v6, :cond_5e

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_6f

    .line 408
    :cond_5e
    if-lez v6, :cond_6e

    .line 409
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_6f

    .line 410
    :cond_6e
    move-object v8, v7

    .line 404
    :goto_6f
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/2addr v6, v3

    .end local v7    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_35

    .line 414
    :cond_74
    nop

    .end local v3    # "numArgs$iv":I
    .end local v4    # "$i$f$pathNodesFromArgs":I
    .end local v5    # "end$iv":I
    .end local v6    # "index$iv":I
    goto/16 :goto_64d

    .line 163
    :cond_77
    const/16 v3, 0x4d

    if-ne v0, v3, :cond_c2

    const/4 v3, 0x2

    .restart local v3    # "numArgs$iv":I
    const/4 v4, 0x0

    .line 415
    .restart local v4    # "$i$f$pathNodesFromArgs":I
    sub-int v5, p3, v3

    .line 416
    .restart local v5    # "end$iv":I
    const/4 v6, 0x0

    .line 417
    .restart local v6    # "index$iv":I
    :goto_80
    if-gt v6, v5, :cond_bf

    .line 418
    move-object/from16 v7, p2

    .local v7, "array":[F
    move v8, v6

    .restart local v8    # "start":I
    const/4 v9, 0x0

    .line 164
    .local v9, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$2":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    aget v11, v7, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, v7, v12

    invoke-direct {v10, v11, v12}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    check-cast v10, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 418
    .end local v7    # "array":[F
    .end local v8    # "start":I
    .end local v9    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$2":I
    move-object v7, v10

    .line 419
    .local v7, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 422
    if-lez v6, :cond_a5

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_ba

    .line 423
    :cond_a5
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_b9

    if-lez v6, :cond_b9

    .line 424
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_ba

    .line 425
    :cond_b9
    move-object v8, v7

    .line 419
    :goto_ba
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/2addr v6, v3

    .end local v7    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_80

    .line 429
    :cond_bf
    nop

    .end local v3    # "numArgs$iv":I
    .end local v4    # "$i$f$pathNodesFromArgs":I
    .end local v5    # "end$iv":I
    .end local v6    # "index$iv":I
    goto/16 :goto_64d

    .line 167
    :cond_c2
    const/16 v3, 0x6c

    if-ne v0, v3, :cond_112

    .line 171
    nop

    .line 167
    move v3, v6

    .restart local v3    # "numArgs$iv":I
    const/4 v4, 0x0

    .line 430
    .restart local v4    # "$i$f$pathNodesFromArgs":I
    sub-int v5, p3, v3

    .line 431
    .restart local v5    # "end$iv":I
    const/4 v6, 0x0

    .line 432
    .restart local v6    # "index$iv":I
    :goto_cc
    if-gt v6, v5, :cond_10f

    .line 433
    move-object/from16 v7, p2

    .local v7, "array":[F
    move v8, v6

    .restart local v8    # "start":I
    const/4 v9, 0x0

    .line 173
    .local v9, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$3":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v11, v7, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, v7, v12

    invoke-direct {v10, v11, v12}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v10, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 433
    .end local v7    # "array":[F
    .end local v8    # "start":I
    .end local v9    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$3":I
    move-object v7, v10

    .line 434
    .local v7, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 437
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_f5

    if-lez v6, :cond_f5

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_10a

    .line 438
    :cond_f5
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_109

    if-lez v6, :cond_109

    .line 439
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_10a

    .line 440
    :cond_109
    move-object v8, v7

    .line 434
    :goto_10a
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    add-int/2addr v6, v3

    .end local v7    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_cc

    .line 444
    :cond_10f
    nop

    .end local v3    # "numArgs$iv":I
    .end local v4    # "$i$f$pathNodesFromArgs":I
    .end local v5    # "end$iv":I
    .end local v6    # "index$iv":I
    goto/16 :goto_64d

    .line 176
    :cond_112
    const/16 v3, 0x4c

    if-ne v0, v3, :cond_161

    const/4 v3, 0x2

    .restart local v3    # "numArgs$iv":I
    const/4 v4, 0x0

    .line 445
    .restart local v4    # "$i$f$pathNodesFromArgs":I
    sub-int v5, p3, v3

    .line 446
    .restart local v5    # "end$iv":I
    const/4 v6, 0x0

    .line 447
    .restart local v6    # "index$iv":I
    :goto_11b
    if-gt v6, v5, :cond_15e

    .line 448
    move-object/from16 v7, p2

    .local v7, "array":[F
    move v8, v6

    .restart local v8    # "start":I
    const/4 v9, 0x0

    .line 177
    .local v9, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$4":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v11, v7, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, v7, v12

    invoke-direct {v10, v11, v12}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v10, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 448
    .end local v7    # "array":[F
    .end local v8    # "start":I
    .end local v9    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$4":I
    move-object v7, v10

    .line 449
    .local v7, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 452
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_144

    if-lez v6, :cond_144

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_159

    .line 453
    :cond_144
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_158

    if-lez v6, :cond_158

    .line 454
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_159

    .line 455
    :cond_158
    move-object v8, v7

    .line 449
    :goto_159
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    add-int/2addr v6, v3

    .end local v7    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_11b

    .line 459
    :cond_15e
    nop

    .end local v3    # "numArgs$iv":I
    .end local v4    # "$i$f$pathNodesFromArgs":I
    .end local v5    # "end$iv":I
    .end local v6    # "index$iv":I
    goto/16 :goto_64d

    .line 180
    :cond_161
    const/16 v3, 0x68

    if-ne v0, v3, :cond_1ad

    .line 184
    nop

    .line 180
    move v3, v5

    .restart local v3    # "numArgs$iv":I
    const/4 v4, 0x0

    .line 460
    .restart local v4    # "$i$f$pathNodesFromArgs":I
    sub-int v5, p3, v3

    .line 461
    .restart local v5    # "end$iv":I
    const/4 v6, 0x0

    .line 462
    .restart local v6    # "index$iv":I
    :goto_16b
    if-gt v6, v5, :cond_1aa

    .line 463
    move-object/from16 v7, p2

    .local v7, "array":[F
    move v8, v6

    .restart local v8    # "start":I
    const/4 v9, 0x0

    .line 186
    .local v9, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$5":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    aget v11, v7, v8

    invoke-direct {v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;-><init>(F)V

    check-cast v10, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 463
    .end local v7    # "array":[F
    .end local v8    # "start":I
    .end local v9    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$5":I
    move-object v7, v10

    .line 464
    .local v7, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 467
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_190

    if-lez v6, :cond_190

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_1a5

    .line 468
    :cond_190
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_1a4

    if-lez v6, :cond_1a4

    .line 469
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_1a5

    .line 470
    :cond_1a4
    move-object v8, v7

    .line 464
    :goto_1a5
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    add-int/2addr v6, v3

    .end local v7    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_16b

    .line 474
    :cond_1aa
    nop

    .end local v3    # "numArgs$iv":I
    .end local v4    # "$i$f$pathNodesFromArgs":I
    .end local v5    # "end$iv":I
    .end local v6    # "index$iv":I
    goto/16 :goto_64d

    .line 189
    :cond_1ad
    const/16 v3, 0x48

    if-ne v0, v3, :cond_1f9

    .line 193
    nop

    .line 189
    move v3, v5

    .restart local v3    # "numArgs$iv":I
    const/4 v4, 0x0

    .line 475
    .restart local v4    # "$i$f$pathNodesFromArgs":I
    sub-int v5, p3, v3

    .line 476
    .restart local v5    # "end$iv":I
    const/4 v6, 0x0

    .line 477
    .restart local v6    # "index$iv":I
    :goto_1b7
    if-gt v6, v5, :cond_1f6

    .line 478
    move-object/from16 v7, p2

    .local v7, "array":[F
    move v8, v6

    .restart local v8    # "start":I
    const/4 v9, 0x0

    .line 195
    .local v9, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$6":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    aget v11, v7, v8

    invoke-direct {v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;-><init>(F)V

    check-cast v10, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 478
    .end local v7    # "array":[F
    .end local v8    # "start":I
    .end local v9    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$6":I
    move-object v7, v10

    .line 479
    .local v7, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 482
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_1dc

    if-lez v6, :cond_1dc

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_1f1

    .line 483
    :cond_1dc
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_1f0

    if-lez v6, :cond_1f0

    .line 484
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_1f1

    .line 485
    :cond_1f0
    move-object v8, v7

    .line 479
    :goto_1f1
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    add-int/2addr v6, v3

    .end local v7    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_1b7

    .line 489
    :cond_1f6
    nop

    .end local v3    # "numArgs$iv":I
    .end local v4    # "$i$f$pathNodesFromArgs":I
    .end local v5    # "end$iv":I
    .end local v6    # "index$iv":I
    goto/16 :goto_64d

    .line 198
    :cond_1f9
    const/16 v3, 0x76

    if-ne v0, v3, :cond_245

    .line 202
    nop

    .line 198
    move v3, v5

    .restart local v3    # "numArgs$iv":I
    const/4 v4, 0x0

    .line 490
    .restart local v4    # "$i$f$pathNodesFromArgs":I
    sub-int v5, p3, v3

    .line 491
    .restart local v5    # "end$iv":I
    const/4 v6, 0x0

    .line 492
    .restart local v6    # "index$iv":I
    :goto_203
    if-gt v6, v5, :cond_242

    .line 493
    move-object/from16 v7, p2

    .local v7, "array":[F
    move v8, v6

    .restart local v8    # "start":I
    const/4 v9, 0x0

    .line 204
    .local v9, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$7":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    aget v11, v7, v8

    invoke-direct {v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;-><init>(F)V

    check-cast v10, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 493
    .end local v7    # "array":[F
    .end local v8    # "start":I
    .end local v9    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$7":I
    move-object v7, v10

    .line 494
    .local v7, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 497
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_228

    if-lez v6, :cond_228

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_23d

    .line 498
    :cond_228
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_23c

    if-lez v6, :cond_23c

    .line 499
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_23d

    .line 500
    :cond_23c
    move-object v8, v7

    .line 494
    :goto_23d
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/2addr v6, v3

    .end local v7    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_203

    .line 504
    :cond_242
    nop

    .end local v3    # "numArgs$iv":I
    .end local v4    # "$i$f$pathNodesFromArgs":I
    .end local v5    # "end$iv":I
    .end local v6    # "index$iv":I
    goto/16 :goto_64d

    .line 207
    :cond_245
    const/16 v3, 0x56

    if-ne v0, v3, :cond_291

    .line 211
    nop

    .line 207
    move v3, v5

    .restart local v3    # "numArgs$iv":I
    const/4 v4, 0x0

    .line 505
    .restart local v4    # "$i$f$pathNodesFromArgs":I
    sub-int v5, p3, v3

    .line 506
    .restart local v5    # "end$iv":I
    const/4 v6, 0x0

    .line 507
    .restart local v6    # "index$iv":I
    :goto_24f
    if-gt v6, v5, :cond_28e

    .line 508
    move-object/from16 v7, p2

    .local v7, "array":[F
    move v8, v6

    .restart local v8    # "start":I
    const/4 v9, 0x0

    .line 213
    .local v9, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$8":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    aget v11, v7, v8

    invoke-direct {v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;-><init>(F)V

    check-cast v10, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 508
    .end local v7    # "array":[F
    .end local v8    # "start":I
    .end local v9    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$8":I
    move-object v7, v10

    .line 509
    .local v7, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 512
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_274

    if-lez v6, :cond_274

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_289

    .line 513
    :cond_274
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_288

    if-lez v6, :cond_288

    .line 514
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_289

    .line 515
    :cond_288
    move-object v8, v7

    .line 509
    :goto_289
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    add-int/2addr v6, v3

    .end local v7    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_24f

    .line 519
    :cond_28e
    nop

    .end local v3    # "numArgs$iv":I
    .end local v4    # "$i$f$pathNodesFromArgs":I
    .end local v5    # "end$iv":I
    .end local v6    # "index$iv":I
    goto/16 :goto_64d

    .line 216
    :cond_291
    const/16 v3, 0x63

    if-ne v0, v3, :cond_2f4

    .line 220
    nop

    .line 216
    const/4 v3, 0x6

    .restart local v3    # "numArgs$iv":I
    const/4 v4, 0x0

    .line 520
    .restart local v4    # "$i$f$pathNodesFromArgs":I
    sub-int v5, p3, v3

    .line 521
    .restart local v5    # "end$iv":I
    const/4 v6, 0x0

    .line 522
    .restart local v6    # "index$iv":I
    :goto_29b
    if-gt v6, v5, :cond_2f1

    .line 523
    move-object/from16 v7, p2

    .local v7, "array":[F
    move v8, v6

    .restart local v8    # "start":I
    const/4 v9, 0x0

    .line 222
    .local v9, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$9":I
    new-instance v17, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    .line 223
    aget v11, v7, v8

    .line 224
    add-int/lit8 v10, v8, 0x1

    aget v12, v7, v10

    .line 225
    add-int/lit8 v10, v8, 0x2

    aget v13, v7, v10

    .line 226
    add-int/lit8 v10, v8, 0x3

    aget v14, v7, v10

    .line 227
    add-int/lit8 v10, v8, 0x4

    aget v15, v7, v10

    .line 228
    add-int/lit8 v10, v8, 0x5

    aget v16, v7, v10

    .line 222
    move-object/from16 v10, v17

    invoke-direct/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;-><init>(FFFFFF)V

    check-cast v17, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 523
    .end local v7    # "array":[F
    .end local v8    # "start":I
    .end local v9    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$9":I
    move-object/from16 v7, v17

    .line 524
    .local v7, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 527
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_2d7

    if-lez v6, :cond_2d7

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_2ec

    .line 528
    :cond_2d7
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_2eb

    if-lez v6, :cond_2eb

    .line 529
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_2ec

    .line 530
    :cond_2eb
    move-object v8, v7

    .line 524
    :goto_2ec
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    add-int/2addr v6, v3

    .end local v7    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_29b

    .line 534
    :cond_2f1
    nop

    .end local v3    # "numArgs$iv":I
    .end local v4    # "$i$f$pathNodesFromArgs":I
    .end local v5    # "end$iv":I
    .end local v6    # "index$iv":I
    goto/16 :goto_64d

    .line 232
    :cond_2f4
    const/16 v3, 0x43

    if-ne v0, v3, :cond_356

    const/4 v3, 0x6

    .restart local v3    # "numArgs$iv":I
    const/4 v4, 0x0

    .line 535
    .restart local v4    # "$i$f$pathNodesFromArgs":I
    sub-int v5, p3, v3

    .line 536
    .restart local v5    # "end$iv":I
    const/4 v6, 0x0

    .line 537
    .restart local v6    # "index$iv":I
    :goto_2fd
    if-gt v6, v5, :cond_353

    .line 538
    move-object/from16 v7, p2

    .local v7, "array":[F
    move v8, v6

    .restart local v8    # "start":I
    const/4 v9, 0x0

    .line 233
    .local v9, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$10":I
    new-instance v17, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    .line 234
    aget v11, v7, v8

    .line 235
    add-int/lit8 v10, v8, 0x1

    aget v12, v7, v10

    .line 236
    add-int/lit8 v10, v8, 0x2

    aget v13, v7, v10

    .line 237
    add-int/lit8 v10, v8, 0x3

    aget v14, v7, v10

    .line 238
    add-int/lit8 v10, v8, 0x4

    aget v15, v7, v10

    .line 239
    add-int/lit8 v10, v8, 0x5

    aget v16, v7, v10

    .line 233
    move-object/from16 v10, v17

    invoke-direct/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;-><init>(FFFFFF)V

    check-cast v17, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 538
    .end local v7    # "array":[F
    .end local v8    # "start":I
    .end local v9    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$10":I
    move-object/from16 v7, v17

    .line 539
    .local v7, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 542
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_339

    if-lez v6, :cond_339

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_34e

    .line 543
    :cond_339
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_34d

    if-lez v6, :cond_34d

    .line 544
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_34e

    .line 545
    :cond_34d
    move-object v8, v7

    .line 539
    :goto_34e
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    add-int/2addr v6, v3

    .end local v7    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_2fd

    .line 549
    :cond_353
    nop

    .end local v3    # "numArgs$iv":I
    .end local v4    # "$i$f$pathNodesFromArgs":I
    .end local v5    # "end$iv":I
    .end local v6    # "index$iv":I
    goto/16 :goto_64d

    .line 243
    :cond_356
    const/16 v3, 0x73

    const/4 v7, 0x4

    if-ne v0, v3, :cond_3af

    .line 247
    nop

    .line 243
    move v3, v7

    .restart local v3    # "numArgs$iv":I
    const/4 v4, 0x0

    .line 550
    .restart local v4    # "$i$f$pathNodesFromArgs":I
    sub-int v5, p3, v3

    .line 551
    .restart local v5    # "end$iv":I
    const/4 v6, 0x0

    .line 552
    .restart local v6    # "index$iv":I
    :goto_361
    if-gt v6, v5, :cond_3ac

    .line 553
    move-object/from16 v7, p2

    .local v7, "array":[F
    move v8, v6

    .restart local v8    # "start":I
    const/4 v9, 0x0

    .line 249
    .local v9, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$11":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    .line 250
    aget v11, v7, v8

    .line 251
    add-int/lit8 v12, v8, 0x1

    aget v12, v7, v12

    .line 252
    add-int/lit8 v13, v8, 0x2

    aget v13, v7, v13

    .line 253
    add-int/lit8 v14, v8, 0x3

    aget v14, v7, v14

    .line 249
    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;-><init>(FFFF)V

    check-cast v10, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 553
    .end local v7    # "array":[F
    .end local v8    # "start":I
    .end local v9    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$11":I
    move-object v7, v10

    .line 554
    .local v7, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 557
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_392

    if-lez v6, :cond_392

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_3a7

    .line 558
    :cond_392
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_3a6

    if-lez v6, :cond_3a6

    .line 559
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_3a7

    .line 560
    :cond_3a6
    move-object v8, v7

    .line 554
    :goto_3a7
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    add-int/2addr v6, v3

    .end local v7    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_361

    .line 564
    :cond_3ac
    nop

    .end local v3    # "numArgs$iv":I
    .end local v4    # "$i$f$pathNodesFromArgs":I
    .end local v5    # "end$iv":I
    .end local v6    # "index$iv":I
    goto/16 :goto_64d

    .line 257
    :cond_3af
    const/16 v3, 0x53

    if-ne v0, v3, :cond_407

    .line 261
    nop

    .line 257
    move v3, v7

    .restart local v3    # "numArgs$iv":I
    const/4 v4, 0x0

    .line 565
    .restart local v4    # "$i$f$pathNodesFromArgs":I
    sub-int v5, p3, v3

    .line 566
    .restart local v5    # "end$iv":I
    const/4 v6, 0x0

    .line 567
    .restart local v6    # "index$iv":I
    :goto_3b9
    if-gt v6, v5, :cond_404

    .line 568
    move-object/from16 v7, p2

    .local v7, "array":[F
    move v8, v6

    .restart local v8    # "start":I
    const/4 v9, 0x0

    .line 263
    .local v9, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$12":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    .line 264
    aget v11, v7, v8

    .line 265
    add-int/lit8 v12, v8, 0x1

    aget v12, v7, v12

    .line 266
    add-int/lit8 v13, v8, 0x2

    aget v13, v7, v13

    .line 267
    add-int/lit8 v14, v8, 0x3

    aget v14, v7, v14

    .line 263
    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;-><init>(FFFF)V

    check-cast v10, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 568
    .end local v7    # "array":[F
    .end local v8    # "start":I
    .end local v9    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$12":I
    move-object v7, v10

    .line 569
    .local v7, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 572
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_3ea

    if-lez v6, :cond_3ea

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_3ff

    .line 573
    :cond_3ea
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_3fe

    if-lez v6, :cond_3fe

    .line 574
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_3ff

    .line 575
    :cond_3fe
    move-object v8, v7

    .line 569
    :goto_3ff
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    add-int/2addr v6, v3

    .end local v7    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_3b9

    .line 579
    :cond_404
    nop

    .end local v3    # "numArgs$iv":I
    .end local v4    # "$i$f$pathNodesFromArgs":I
    .end local v5    # "end$iv":I
    .end local v6    # "index$iv":I
    goto/16 :goto_64d

    .line 271
    :cond_407
    const/16 v3, 0x71

    if-ne v0, v3, :cond_45f

    .line 275
    nop

    .line 271
    move v3, v7

    .restart local v3    # "numArgs$iv":I
    const/4 v4, 0x0

    .line 580
    .restart local v4    # "$i$f$pathNodesFromArgs":I
    sub-int v5, p3, v3

    .line 581
    .restart local v5    # "end$iv":I
    const/4 v6, 0x0

    .line 582
    .restart local v6    # "index$iv":I
    :goto_411
    if-gt v6, v5, :cond_45c

    .line 583
    move-object/from16 v7, p2

    .local v7, "array":[F
    move v8, v6

    .restart local v8    # "start":I
    const/4 v9, 0x0

    .line 277
    .local v9, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$13":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    .line 278
    aget v11, v7, v8

    .line 279
    add-int/lit8 v12, v8, 0x1

    aget v12, v7, v12

    .line 280
    add-int/lit8 v13, v8, 0x2

    aget v13, v7, v13

    .line 281
    add-int/lit8 v14, v8, 0x3

    aget v14, v7, v14

    .line 277
    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;-><init>(FFFF)V

    check-cast v10, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 583
    .end local v7    # "array":[F
    .end local v8    # "start":I
    .end local v9    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$13":I
    move-object v7, v10

    .line 584
    .local v7, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 587
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_442

    if-lez v6, :cond_442

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_457

    .line 588
    :cond_442
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_456

    if-lez v6, :cond_456

    .line 589
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_457

    .line 590
    :cond_456
    move-object v8, v7

    .line 584
    :goto_457
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    add-int/2addr v6, v3

    .end local v7    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_411

    .line 594
    :cond_45c
    nop

    .end local v3    # "numArgs$iv":I
    .end local v4    # "$i$f$pathNodesFromArgs":I
    .end local v5    # "end$iv":I
    .end local v6    # "index$iv":I
    goto/16 :goto_64d

    .line 285
    :cond_45f
    const/16 v3, 0x51

    if-ne v0, v3, :cond_4b6

    const/4 v3, 0x4

    .restart local v3    # "numArgs$iv":I
    const/4 v4, 0x0

    .line 595
    .restart local v4    # "$i$f$pathNodesFromArgs":I
    sub-int v5, p3, v3

    .line 596
    .restart local v5    # "end$iv":I
    const/4 v6, 0x0

    .line 597
    .restart local v6    # "index$iv":I
    :goto_468
    if-gt v6, v5, :cond_4b3

    .line 598
    move-object/from16 v7, p2

    .local v7, "array":[F
    move v8, v6

    .restart local v8    # "start":I
    const/4 v9, 0x0

    .line 286
    .local v9, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$14":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    .line 287
    aget v11, v7, v8

    .line 288
    add-int/lit8 v12, v8, 0x1

    aget v12, v7, v12

    .line 289
    add-int/lit8 v13, v8, 0x2

    aget v13, v7, v13

    .line 290
    add-int/lit8 v14, v8, 0x3

    aget v14, v7, v14

    .line 286
    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;-><init>(FFFF)V

    check-cast v10, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 598
    .end local v7    # "array":[F
    .end local v8    # "start":I
    .end local v9    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$14":I
    move-object v7, v10

    .line 599
    .local v7, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 602
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_499

    if-lez v6, :cond_499

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_4ae

    .line 603
    :cond_499
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_4ad

    if-lez v6, :cond_4ad

    .line 604
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_4ae

    .line 605
    :cond_4ad
    move-object v8, v7

    .line 599
    :goto_4ae
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    add-int/2addr v6, v3

    .end local v7    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_468

    .line 609
    :cond_4b3
    nop

    .end local v3    # "numArgs$iv":I
    .end local v4    # "$i$f$pathNodesFromArgs":I
    .end local v5    # "end$iv":I
    .end local v6    # "index$iv":I
    goto/16 :goto_64d

    .line 294
    :cond_4b6
    const/16 v3, 0x74

    if-ne v0, v3, :cond_506

    .line 298
    nop

    .line 294
    move v3, v6

    .restart local v3    # "numArgs$iv":I
    const/4 v4, 0x0

    .line 610
    .restart local v4    # "$i$f$pathNodesFromArgs":I
    sub-int v5, p3, v3

    .line 611
    .restart local v5    # "end$iv":I
    const/4 v6, 0x0

    .line 612
    .restart local v6    # "index$iv":I
    :goto_4c0
    if-gt v6, v5, :cond_503

    .line 613
    move-object/from16 v7, p2

    .local v7, "array":[F
    move v8, v6

    .restart local v8    # "start":I
    const/4 v9, 0x0

    .line 300
    .local v9, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$15":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    aget v11, v7, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, v7, v12

    invoke-direct {v10, v11, v12}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;-><init>(FF)V

    check-cast v10, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 613
    .end local v7    # "array":[F
    .end local v8    # "start":I
    .end local v9    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$15":I
    move-object v7, v10

    .line 614
    .local v7, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 617
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_4e9

    if-lez v6, :cond_4e9

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_4fe

    .line 618
    :cond_4e9
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_4fd

    if-lez v6, :cond_4fd

    .line 619
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_4fe

    .line 620
    :cond_4fd
    move-object v8, v7

    .line 614
    :goto_4fe
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    add-int/2addr v6, v3

    .end local v7    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_4c0

    .line 624
    :cond_503
    nop

    .end local v3    # "numArgs$iv":I
    .end local v4    # "$i$f$pathNodesFromArgs":I
    .end local v5    # "end$iv":I
    .end local v6    # "index$iv":I
    goto/16 :goto_64d

    .line 303
    :cond_506
    const/16 v3, 0x54

    if-ne v0, v3, :cond_556

    .line 307
    nop

    .line 303
    move v3, v6

    .restart local v3    # "numArgs$iv":I
    const/4 v4, 0x0

    .line 625
    .restart local v4    # "$i$f$pathNodesFromArgs":I
    sub-int v5, p3, v3

    .line 626
    .restart local v5    # "end$iv":I
    const/4 v6, 0x0

    .line 627
    .restart local v6    # "index$iv":I
    :goto_510
    if-gt v6, v5, :cond_553

    .line 628
    move-object/from16 v7, p2

    .local v7, "array":[F
    move v8, v6

    .restart local v8    # "start":I
    const/4 v9, 0x0

    .line 309
    .local v9, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$16":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    aget v11, v7, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, v7, v12

    invoke-direct {v10, v11, v12}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;-><init>(FF)V

    check-cast v10, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 628
    .end local v7    # "array":[F
    .end local v8    # "start":I
    .end local v9    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$16":I
    move-object v7, v10

    .line 629
    .local v7, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 632
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v8, :cond_539

    if-lez v6, :cond_539

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_54e

    .line 633
    :cond_539
    instance-of v8, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v8, :cond_54d

    if-lez v6, :cond_54d

    .line 634
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v8, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_54e

    .line 635
    :cond_54d
    move-object v8, v7

    .line 629
    :goto_54e
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    add-int/2addr v6, v3

    .end local v7    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_510

    .line 639
    :cond_553
    nop

    .end local v3    # "numArgs$iv":I
    .end local v4    # "$i$f$pathNodesFromArgs":I
    .end local v5    # "end$iv":I
    .end local v6    # "index$iv":I
    goto/16 :goto_64d

    .line 312
    :cond_556
    const/16 v3, 0x61

    const/4 v6, 0x0

    if-ne v0, v3, :cond_5d3

    const/4 v3, 0x7

    .restart local v3    # "numArgs$iv":I
    const/4 v7, 0x0

    .line 640
    .local v7, "$i$f$pathNodesFromArgs":I
    sub-int v8, p3, v3

    .line 641
    .local v8, "end$iv":I
    const/4 v9, 0x0

    .line 642
    .local v9, "index$iv":I
    :goto_560
    if-gt v9, v8, :cond_5d0

    .line 643
    move-object/from16 v10, p2

    .local v10, "array":[F
    move v11, v9

    .local v11, "start":I
    const/4 v12, 0x0

    .line 313
    .local v12, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$17":I
    new-instance v21, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 314
    aget v14, v10, v11

    .line 315
    add-int/lit8 v13, v11, 0x1

    aget v15, v10, v13

    .line 316
    add-int/lit8 v13, v11, 0x2

    aget v16, v10, v13

    .line 317
    add-int/lit8 v13, v11, 0x3

    aget v13, v10, v13

    invoke-static {v13, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_57f

    move/from16 v17, v5

    goto :goto_581

    :cond_57f
    move/from16 v17, v4

    .line 318
    :goto_581
    add-int/lit8 v13, v11, 0x4

    aget v13, v10, v13

    invoke-static {v13, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_58e

    move/from16 v18, v5

    goto :goto_590

    :cond_58e
    move/from16 v18, v4

    .line 319
    :goto_590
    add-int/lit8 v13, v11, 0x5

    aget v19, v10, v13

    .line 320
    add-int/lit8 v13, v11, 0x6

    aget v20, v10, v13

    .line 313
    move-object/from16 v13, v21

    invoke-direct/range {v13 .. v20}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    check-cast v21, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 643
    .end local v10    # "array":[F
    .end local v11    # "start":I
    .end local v12    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$17":I
    move-object/from16 v10, v21

    .line 644
    .local v10, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 647
    instance-of v11, v10, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v11, :cond_5b6

    if-lez v9, :cond_5b6

    new-instance v11, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v12, v2, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, v2, v13

    invoke-direct {v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v11, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_5cb

    .line 648
    :cond_5b6
    instance-of v11, v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v11, :cond_5ca

    if-lez v9, :cond_5ca

    .line 649
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v12, v2, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, v2, v13

    invoke-direct {v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v11, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_5cb

    .line 650
    :cond_5ca
    move-object v11, v10

    .line 644
    :goto_5cb
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    add-int/2addr v9, v3

    .end local v10    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_560

    .line 654
    :cond_5d0
    nop

    .end local v3    # "numArgs$iv":I
    .end local v7    # "$i$f$pathNodesFromArgs":I
    .end local v8    # "end$iv":I
    .end local v9    # "index$iv":I
    goto/16 :goto_64d

    .line 324
    :cond_5d3
    const/16 v3, 0x41

    if-ne v0, v3, :cond_64e

    const/4 v3, 0x7

    .restart local v3    # "numArgs$iv":I
    const/4 v7, 0x0

    .line 655
    .restart local v7    # "$i$f$pathNodesFromArgs":I
    sub-int v8, p3, v3

    .line 656
    .restart local v8    # "end$iv":I
    const/4 v9, 0x0

    .line 657
    .restart local v9    # "index$iv":I
    :goto_5dc
    if-gt v9, v8, :cond_64c

    .line 658
    move-object/from16 v10, p2

    .local v10, "array":[F
    move v11, v9

    .restart local v11    # "start":I
    const/4 v12, 0x0

    .line 325
    .local v12, "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$18":I
    new-instance v21, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    .line 326
    aget v14, v10, v11

    .line 327
    add-int/lit8 v13, v11, 0x1

    aget v15, v10, v13

    .line 328
    add-int/lit8 v13, v11, 0x2

    aget v16, v10, v13

    .line 329
    add-int/lit8 v13, v11, 0x3

    aget v13, v10, v13

    invoke-static {v13, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_5fb

    move/from16 v17, v5

    goto :goto_5fd

    :cond_5fb
    move/from16 v17, v4

    .line 330
    :goto_5fd
    add-int/lit8 v13, v11, 0x4

    aget v13, v10, v13

    invoke-static {v13, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_60a

    move/from16 v18, v5

    goto :goto_60c

    :cond_60a
    move/from16 v18, v4

    .line 331
    :goto_60c
    add-int/lit8 v13, v11, 0x5

    aget v19, v10, v13

    .line 332
    add-int/lit8 v13, v11, 0x6

    aget v20, v10, v13

    .line 325
    move-object/from16 v13, v21

    invoke-direct/range {v13 .. v20}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;-><init>(FFFZZFF)V

    check-cast v21, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 658
    .end local v10    # "array":[F
    .end local v11    # "start":I
    .end local v12    # "$i$a$-pathNodesFromArgs-PathNodeKt$addPathNodes$18":I
    move-object/from16 v10, v21

    .line 659
    .local v10, "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 662
    instance-of v11, v10, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v11, :cond_632

    if-lez v9, :cond_632

    new-instance v11, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v12, v2, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, v2, v13

    invoke-direct {v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v11, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_647

    .line 663
    :cond_632
    instance-of v11, v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v11, :cond_646

    if-lez v9, :cond_646

    .line 664
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v12, v2, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, v2, v13

    invoke-direct {v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v11, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_647

    .line 665
    :cond_646
    move-object v11, v10

    .line 659
    :goto_647
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    add-int/2addr v9, v3

    .end local v10    # "node$iv":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_5dc

    .line 669
    :cond_64c
    nop

    .line 338
    .end local v3    # "numArgs$iv":I
    .end local v7    # "$i$f$pathNodesFromArgs":I
    .end local v8    # "end$iv":I
    .end local v9    # "index$iv":I
    :goto_64d
    return-void

    .line 336
    :cond_64e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown command for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static final pathNodesFromArgs(Ljava/util/List;[FIILkotlin/jvm/functions/Function2;)V
    .registers 12
    .param p0, "nodes"    # Ljava/util/List;
    .param p1, "args"    # [F
    .param p2, "count"    # I
    .param p3, "numArgs"    # I
    .param p4, "nodeFor"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;[FII",
            "Lkotlin/jvm/functions/Function2<",
            "-[F-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 347
    .local v0, "$i$f$pathNodesFromArgs":I
    sub-int v1, p2, p3

    .line 348
    .local v1, "end":I
    const/4 v2, 0x0

    .line 349
    .local v2, "index":I
    :goto_4
    if-gt v2, v1, :cond_3f

    .line 350
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, p1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 351
    .local v3, "node":Landroidx/compose/ui/graphics/vector/PathNode;
    nop

    .line 354
    instance-of v4, v3, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v4, :cond_25

    if-lez v2, :cond_25

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    aget v5, p1, v2

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    invoke-direct {v4, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    check-cast v4, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_3a

    .line 355
    :cond_25
    instance-of v4, v3, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v4, :cond_39

    if-lez v2, :cond_39

    .line 356
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    aget v5, p1, v2

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    invoke-direct {v4, v5, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    check-cast v4, Landroidx/compose/ui/graphics/vector/PathNode;

    goto :goto_3a

    .line 357
    :cond_39
    move-object v4, v3

    .line 351
    :goto_3a
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/2addr v2, p3

    .end local v3    # "node":Landroidx/compose/ui/graphics/vector/PathNode;
    goto :goto_4

    .line 361
    :cond_3f
    return-void
.end method
