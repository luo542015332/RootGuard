.class public final Landroidx/compose/material/icons/rounded/SignalCellularConnectedNoInternet4BarKt;
.super Ljava/lang/Object;
.source "SignalCellularConnectedNoInternet4Bar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSignalCellularConnectedNoInternet4Bar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SignalCellularConnectedNoInternet4Bar.kt\nandroidx/compose/material/icons/rounded/SignalCellularConnectedNoInternet4BarKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,68:1\n122#2:69\n116#2,3:70\n119#2,3:74\n132#2,18:77\n152#2:114\n174#3:73\n694#4,2:95\n706#4,2:97\n708#4,11:103\n64#5,4:99\n*S KotlinDebug\n*F\n+ 1 SignalCellularConnectedNoInternet4Bar.kt\nandroidx/compose/material/icons/rounded/SignalCellularConnectedNoInternet4BarKt\n*L\n29#1:69\n29#1:70,3\n29#1:74,3\n31#1:77,18\n31#1:114\n29#1:73\n31#1:95,2\n31#1:97,2\n31#1:103,11\n31#1:99,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_signalCellularConnectedNoInternet4Bar",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "SignalCellularConnectedNoInternet4Bar",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getSignalCellularConnectedNoInternet4Bar",
        "(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;",
        "material-icons-extended_release"
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
.field private static _signalCellularConnectedNoInternet4Bar:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getSignalCellularConnectedNoInternet4Bar(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 37
    .param p0, "$this$SignalCellularConnectedNoInternet4Bar"    # Landroidx/compose/material/icons/Icons$Rounded;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/SignalCellularConnectedNoInternet4BarKt;->_signalCellularConnectedNoInternet4Bar:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    nop

    .line 30
    nop

    .line 29
    const-string/jumbo v3, "Rounded.SignalCellularConnectedNoInternet4Bar"

    .local v3, "name$iv":Ljava/lang/String;
    const/4 v0, 0x0

    .line 69
    .local v0, "$i$f$materialIcon":I
    nop

    .line 70
    new-instance v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 71
    nop

    .line 72
    const/high16 v2, 0x41c00000    # 24.0f

    .local v2, "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 73
    .local v4, "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 74
    .end local v2    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v2, 0x41c00000    # 24.0f

    .restart local v2    # "$this$dp$iv$iv":F
    const/4 v5, 0x0

    .line 73
    .local v5, "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 75
    .end local v2    # "$this$dp$iv$iv":F
    .end local v5    # "$i$f$getDp":I
    const/high16 v6, 0x41c00000    # 24.0f

    .line 76
    const/high16 v7, 0x41c00000    # 24.0f

    .line 70
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    nop

    .local v2, "$this$_get_SignalCellularConnectedNoInternet4Bar__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v4, 0x0

    .line 31
    .local v4, "$i$a$-materialIcon-SignalCellularConnectedNoInternet4BarKt$SignalCellularConnectedNoInternet4Bar$1":I
    move-object/from16 v22, v2

    .line 77
    .local v22, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 78
    const/high16 v23, 0x3f800000    # 1.0f

    .local v23, "fillAlpha$iv":F
    move/from16 v10, v23

    .line 77
    nop

    .line 79
    const/high16 v24, 0x3f800000    # 1.0f

    .local v24, "strokeAlpha$iv":F
    move/from16 v12, v24

    .line 77
    nop

    .line 80
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v25

    .local v25, "pathFillType$iv":I
    move/from16 v7, v25

    .line 77
    const/16 v26, 0x0

    .line 86
    .local v26, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 87
    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v11, 0x0

    invoke-direct {v5, v8, v9, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v5

    check-cast v9, Landroidx/compose/ui/graphics/Brush;

    .line 89
    nop

    .line 91
    nop

    .line 92
    sget-object v5, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v14

    .line 93
    sget-object v5, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v15

    .line 94
    nop

    .line 86
    const/high16 v6, 0x3f800000    # 1.0f

    move v13, v6

    .local v11, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v13, "strokeLineWidth$iv$iv":F
    move-object/from16 v5, v22

    .local v5, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v9, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v14, "strokeLineCap$iv$iv":I
    .local v15, "strokeLineJoin$iv$iv":I
    move/from16 v16, v6

    .line 95
    .local v16, "strokeLineMiter$iv$iv":F
    nop

    .line 96
    const-string v27, ""

    .local v27, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v8, v27

    .line 95
    const/16 v28, 0x0

    .line 97
    .local v28, "$i$f$path-R_LF-3I":I
    nop

    .line 98
    const/16 v17, 0x0

    .line 99
    .local v17, "$i$f$PathData":I
    new-instance v18, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct/range {v18 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v18, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v19, 0x0

    .line 100
    .local v19, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v20, v18

    .local v20, "$this$_get_SignalCellularConnectedNoInternet4Bar__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v21, 0x0

    .line 32
    .local v21, "$i$a$-materialPath-YwgOQQI$default-SignalCellularConnectedNoInternet4BarKt$SignalCellularConnectedNoInternet4Bar$1$1":I
    const/high16 v6, 0x41a80000    # 21.0f

    move/from16 v36, v0

    .end local v0    # "$i$f$materialIcon":I
    .local v36, "$i$f$materialIcon":I
    const/high16 v0, 0x41900000    # 18.0f

    move-object/from16 v1, v20

    .end local v20    # "$this$_get_SignalCellularConnectedNoInternet4Bar__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v1, "$this$_get_SignalCellularConnectedNoInternet4Bar__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v1, v6, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    invoke-virtual {v1, v6, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v30, 0x3f0ccccd    # 0.55f

    const/16 v31, 0x0

    const/high16 v32, 0x3f800000    # 1.0f

    const v33, -0x4119999a    # -0.45f

    const/high16 v34, 0x3f800000    # 1.0f

    const/high16 v35, -0x40800000    # -1.0f

    move-object/from16 v29, v1

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const/high16 v0, -0x3f400000    # -6.0f

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const/16 v30, 0x0

    const v31, -0x40f33333    # -0.55f

    const v32, -0x4119999a    # -0.45f

    const/high16 v33, -0x40800000    # -1.0f

    const/high16 v34, -0x40800000    # -1.0f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v30, -0x40f33333    # -0.55f

    const/16 v31, 0x0

    const/high16 v32, -0x40800000    # -1.0f

    const v33, 0x3ee66666    # 0.45f

    const/high16 v35, 0x3f800000    # 1.0f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const/high16 v30, 0x41a00000    # 20.0f

    const v31, 0x418c6666    # 17.55f

    const v32, 0x41a3999a    # 20.45f

    const/high16 v33, 0x41900000    # 18.0f

    const/high16 v34, 0x41a80000    # 21.0f

    const/high16 v35, 0x41900000    # 18.0f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-virtual {v1, v6, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    invoke-virtual {v1, v6, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v30, 0x3f0ccccd    # 0.55f

    const/16 v31, 0x0

    const/high16 v32, 0x3f800000    # 1.0f

    const v33, -0x4119999a    # -0.45f

    const/high16 v34, 0x3f800000    # 1.0f

    const/high16 v35, -0x40800000    # -1.0f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const/16 v30, 0x0

    const v31, -0x40f33333    # -0.55f

    const v32, -0x4119999a    # -0.45f

    const/high16 v33, -0x40800000    # -1.0f

    const/high16 v34, -0x40800000    # -1.0f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v30, -0x40f33333    # -0.55f

    const/16 v31, 0x0

    const/high16 v32, -0x40800000    # -1.0f

    const v33, 0x3ee66666    # 0.45f

    const/high16 v35, 0x3f800000    # 1.0f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const/high16 v30, 0x41a00000    # 20.0f

    const v31, 0x41ac6666    # 21.55f

    const v32, 0x41a3999a    # 20.45f

    const/high16 v33, 0x41b00000    # 22.0f

    const/high16 v34, 0x41a80000    # 21.0f

    const/high16 v35, 0x41b00000    # 22.0f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v6, 0x408d1eb8    # 4.41f

    invoke-virtual {v1, v6, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const/16 v30, 0x0

    const v31, -0x402b851f    # -1.66f

    const v32, 0x3fab851f    # 1.34f

    const/high16 v33, -0x3fc00000    # -3.0f

    const/high16 v34, 0x40400000    # 3.0f

    const/high16 v35, -0x3fc00000    # -3.0f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    invoke-virtual {v1, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v31, -0x409c28f6    # -0.89f

    const v32, -0x4075c28f    # -1.08f

    const v33, -0x40547ae1    # -1.34f

    const v34, -0x40251eb8    # -1.71f

    const v35, -0x40ca3d71    # -0.71f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v0, 0x406d70a4    # 3.71f

    const v6, 0x41a251ec    # 20.29f

    invoke-virtual {v1, v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v30, 0x40451eb8    # 3.08f

    const v31, 0x41a75c29    # 20.92f

    const v32, 0x406147ae    # 3.52f

    const/high16 v33, 0x41b00000    # 22.0f

    const v34, 0x408d1eb8    # 4.41f

    const/high16 v35, 0x41b00000    # 22.0f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    nop

    .line 100
    .end local v1    # "$this$_get_SignalCellularConnectedNoInternet4Bar__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v21    # "$i$a$-materialPath-YwgOQQI$default-SignalCellularConnectedNoInternet4BarKt$SignalCellularConnectedNoInternet4Bar$1$1":I
    nop

    .line 101
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v6

    .line 99
    .end local v18    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v19    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 102
    nop

    .line 103
    .end local v17    # "$i$f$PathData":I
    nop

    .line 104
    nop

    .line 105
    nop

    .line 106
    nop

    .line 107
    nop

    .line 108
    nop

    .line 109
    nop

    .line 110
    nop

    .line 111
    nop

    .line 112
    nop

    .line 97
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3800

    const/16 v21, 0x0

    invoke-static/range {v5 .. v21}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 113
    nop

    .line 114
    .end local v5    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v9    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v11    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v13    # "strokeLineWidth$iv$iv":F
    .end local v14    # "strokeLineCap$iv$iv":I
    .end local v15    # "strokeLineJoin$iv$iv":I
    .end local v16    # "strokeLineMiter$iv$iv":F
    .end local v27    # "name$iv$iv":Ljava/lang/String;
    .end local v28    # "$i$f$path-R_LF-3I":I
    nop

    .line 31
    .end local v22    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v23    # "fillAlpha$iv":F
    .end local v24    # "strokeAlpha$iv":F
    .end local v25    # "pathFillType$iv":I
    .end local v26    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 69
    .end local v2    # "$this$_get_SignalCellularConnectedNoInternet4Bar__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "$i$a$-materialIcon-SignalCellularConnectedNoInternet4BarKt$SignalCellularConnectedNoInternet4Bar$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v36    # "$i$f$materialIcon":I
    sput-object v0, Landroidx/compose/material/icons/rounded/SignalCellularConnectedNoInternet4BarKt;->_signalCellularConnectedNoInternet4Bar:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 64
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
