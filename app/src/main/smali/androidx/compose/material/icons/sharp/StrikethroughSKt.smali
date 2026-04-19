.class public final Landroidx/compose/material/icons/sharp/StrikethroughSKt;
.super Ljava/lang/Object;
.source "StrikethroughS.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrikethroughS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StrikethroughS.kt\nandroidx/compose/material/icons/sharp/StrikethroughSKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,94:1\n122#2:95\n116#2,3:96\n119#2,3:100\n132#2,18:103\n152#2:140\n174#3:99\n694#4,2:121\n706#4,2:123\n708#4,11:129\n64#5,4:125\n*S KotlinDebug\n*F\n+ 1 StrikethroughS.kt\nandroidx/compose/material/icons/sharp/StrikethroughSKt\n*L\n29#1:95\n29#1:96,3\n29#1:100,3\n30#1:103,18\n30#1:140\n29#1:99\n30#1:121,2\n30#1:123,2\n30#1:129,11\n30#1:125,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_strikethroughS",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "StrikethroughS",
        "Landroidx/compose/material/icons/Icons$Sharp;",
        "getStrikethroughS",
        "(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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
.field private static _strikethroughS:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getStrikethroughS(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 39
    .param p0, "$this$StrikethroughS"    # Landroidx/compose/material/icons/Icons$Sharp;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/sharp/StrikethroughSKt;->_strikethroughS:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "Sharp.StrikethroughS"

    .local v0, "name$iv":Ljava/lang/String;
    const/4 v14, 0x0

    .line 95
    .local v14, "$i$f$materialIcon":I
    nop

    .line 96
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 97
    nop

    .line 98
    const/high16 v2, 0x41c00000    # 24.0f

    .local v2, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 99
    .local v3, "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 100
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v2, 0x41c00000    # 24.0f

    .restart local v2    # "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 99
    .restart local v3    # "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 101
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v6, 0x41c00000    # 24.0f

    .line 102
    const/high16 v7, 0x41c00000    # 24.0f

    .line 96
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v2, v15

    move-object v3, v0

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 95
    nop

    .local v2, "$this$_get_StrikethroughS__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon-StrikethroughSKt$StrikethroughS$1":I
    move-object v4, v2

    .line 103
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 104
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "fillAlpha$iv":F
    move/from16 v20, v5

    .line 103
    nop

    .line 105
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "strokeAlpha$iv":F
    move/from16 v22, v6

    .line 103
    nop

    .line 106
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v7

    .local v7, "pathFillType$iv":I
    move/from16 v17, v7

    .line 103
    const/4 v8, 0x0

    .line 112
    .local v8, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 113
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v10, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v9

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 115
    nop

    .line 117
    nop

    .line 118
    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 119
    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 120
    nop

    .line 112
    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v23, v26

    .local v23, "strokeLineWidth$iv$iv":F
    move-object/from16 v21, v12

    .local v21, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v15, v4

    .line 121
    .local v15, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v19, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v24, "strokeLineCap$iv$iv":I
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 122
    const-string v9, ""

    .local v9, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v9

    .line 121
    const/4 v10, 0x0

    .line 123
    .local v10, "$i$f$path-R_LF-3I":I
    nop

    .line 124
    const/4 v11, 0x0

    .line 125
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v13, 0x0

    .line 126
    .local v13, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v16, v12

    .local v16, "$this$_get_StrikethroughS__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v34, 0x0

    .line 31
    .local v34, "$i$a$-materialPath-YwgOQQI$default-StrikethroughSKt$StrikethroughS$1$1":I
    move-object/from16 v35, v0

    .end local v0    # "name$iv":Ljava/lang/String;
    .local v35, "name$iv":Ljava/lang/String;
    const v0, 0x40e7ae14    # 7.24f

    const/high16 v1, 0x410c0000    # 8.75f

    move-object/from16 v36, v2

    move-object/from16 v2, v16

    .end local v16    # "$this$_get_StrikethroughS__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v2, "$this$_get_StrikethroughS__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v36, "$this$_get_StrikethroughS__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, -0x417ae148    # -0.26f

    const v29, -0x410a3d71    # -0.48f

    const v30, -0x413851ec    # -0.39f

    const v31, -0x407c28f6    # -1.03f

    const v32, -0x413851ec    # -0.39f

    const v33, -0x402a3d71    # -1.67f

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const/16 v28, 0x0

    const v29, -0x40e3d70a    # -0.61f

    const v30, 0x3e051eb8    # 0.13f

    const v31, -0x406b851f    # -1.16f

    const v32, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v28, 0x3e851eb8    # 0.26f

    const/high16 v29, -0x41000000    # -0.5f

    const v30, 0x3f2147ae    # 0.63f

    const v31, -0x4091eb85    # -0.93f

    const v32, 0x3f8e147b    # 1.11f

    const v33, -0x405ae148    # -1.29f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v28, 0x3ef5c28f    # 0.48f

    const v29, -0x414ccccd    # -0.35f

    const v30, 0x3f866666    # 1.05f

    const v31, -0x40deb852    # -0.63f

    const v32, 0x3fd9999a    # 1.7f

    const v33, -0x40ab851f    # -0.83f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v28, 0x3f28f5c3    # 0.66f

    const v29, -0x41bd70a4    # -0.19f

    const v30, 0x3fb1eb85    # 1.39f

    const v31, -0x416b851f    # -0.29f

    const v32, 0x400b851f    # 2.18f

    const v33, -0x416b851f    # -0.29f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v28, 0x3f4f5c29    # 0.81f

    const/16 v29, 0x0

    const v30, 0x3fc51eb8    # 1.54f

    const v31, 0x3de147ae    # 0.11f

    const v32, 0x400d70a4    # 2.21f

    const v33, 0x3eae147b    # 0.34f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v28, 0x3f28f5c3    # 0.66f

    const v29, 0x3e6147ae    # 0.22f

    const v30, 0x3f9d70a4    # 1.23f

    const v31, 0x3f0a3d71    # 0.54f

    const v32, 0x3fd851ec    # 1.69f

    const v33, 0x3f70a3d7    # 0.94f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v28, 0x3ef0a3d7    # 0.47f

    const v29, 0x3ecccccd    # 0.4f

    const v30, 0x3f547ae1    # 0.83f

    const v31, 0x3f6147ae    # 0.88f

    const v32, 0x3f8a3d71    # 1.08f

    const v33, 0x3fb70a3d    # 1.43f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v0, 0x3f933333    # 1.15f

    const v1, 0x3fe7ae14    # 1.81f

    move/from16 v37, v3

    .end local v3    # "$i$a$-materialIcon-StrikethroughSKt$StrikethroughS$1":I
    .local v37, "$i$a$-materialIcon-StrikethroughSKt$StrikethroughS$1":I
    const v3, 0x3ec28f5c    # 0.38f

    invoke-virtual {v2, v3, v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v0, -0x3fbf5c29    # -3.01f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/16 v28, 0x0

    const v29, -0x416147ae    # -0.31f

    const v30, -0x42b33333    # -0.05f

    const v31, -0x40e8f5c3    # -0.59f

    const v32, -0x41e66666    # -0.15f

    const v33, -0x40a66666    # -0.85f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v28, -0x4247ae14    # -0.09f

    const v29, -0x4175c28f    # -0.27f

    const v30, -0x418a3d71    # -0.24f

    const v31, -0x41051eb8    # -0.49f

    const v32, -0x411eb852    # -0.44f

    const v33, -0x40d1eb85    # -0.68f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v28, -0x41b33333    # -0.2f

    const v29, -0x41bd70a4    # -0.19f

    const v30, -0x4119999a    # -0.45f

    const v31, -0x41570a3d    # -0.33f

    const/high16 v32, -0x40c00000    # -0.75f

    const v33, -0x411eb852    # -0.44f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v28, -0x41666666    # -0.3f

    const v29, -0x42333333    # -0.1f

    const v30, -0x40d70a3d    # -0.66f

    const v31, -0x41dc28f6    # -0.16f

    const v32, -0x407851ec    # -1.06f

    const v33, -0x41dc28f6    # -0.16f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v28, -0x413851ec    # -0.39f

    const/16 v29, 0x0

    const v30, -0x40c28f5c    # -0.74f

    const v31, 0x3d23d70a    # 0.04f

    const v32, -0x407c28f6    # -1.03f

    const v33, 0x3e051eb8    # 0.13f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v0, 0x3e570a3d    # 0.21f

    const v1, -0x40c7ae14    # -0.72f

    const v3, -0x40f851ec    # -0.53f

    move-object/from16 v38, v4

    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v38, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v4, 0x3eb851ec    # 0.36f

    invoke-virtual {v2, v3, v0, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v28, -0x41bd70a4    # -0.19f

    const v29, 0x3e23d70a    # 0.16f

    const v30, -0x4151eb85    # -0.34f

    const v31, 0x3eae147b    # 0.34f

    const v32, -0x411eb852    # -0.44f

    const v33, 0x3f0ccccd    # 0.55f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v28, -0x42333333    # -0.1f

    const v29, 0x3e570a3d    # 0.21f

    const v30, -0x41e66666    # -0.15f

    const v31, 0x3edc28f6    # 0.43f

    const v32, -0x41e66666    # -0.15f

    const v33, 0x3f28f5c3    # 0.66f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const/16 v28, 0x0

    const v29, 0x3ef5c28f    # 0.48f

    const/high16 v30, 0x3e800000    # 0.25f

    const v31, 0x3f6147ae    # 0.88f

    const v32, 0x3f3d70a4    # 0.74f

    const v33, 0x3f9ae148    # 1.21f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v28, 0x3ec28f5c    # 0.38f

    const/high16 v29, 0x3e800000    # 0.25f

    const v30, 0x3f451eb8    # 0.77f

    const v31, 0x3ef5c28f    # 0.48f

    const v32, 0x3fb47ae1    # 1.41f

    const v33, 0x3f333333    # 0.7f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v0, 0x40ec7ae1    # 7.39f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v28, -0x42b33333    # -0.05f

    const v29, -0x425c28f6    # -0.08f

    const v30, -0x421eb852    # -0.11f

    const v31, -0x41d1eb85    # -0.17f

    const v32, -0x41e66666    # -0.15f

    const/high16 v33, -0x41800000    # -0.25f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const/high16 v0, 0x41a80000    # 21.0f

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v3, 0x4119eb85    # 9.62f

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v28, 0x3e3851ec    # 0.18f

    const v29, 0x3d8f5c29    # 0.07f

    const v30, 0x3ecccccd    # 0.4f

    const v31, 0x3e0f5c29    # 0.14f

    const v32, 0x3f0ccccd    # 0.55f

    const v33, 0x3e4ccccd    # 0.2f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v28, 0x3ebd70a4    # 0.37f

    const v29, 0x3e2e147b    # 0.17f

    const v30, 0x3f28f5c3    # 0.66f

    const v31, 0x3eae147b    # 0.34f

    const v32, 0x3f5eb852    # 0.87f

    const v33, 0x3f028f5c    # 0.51f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v3, 0x3edc28f6    # 0.43f

    const v1, 0x3f11eb85    # 0.57f

    const v0, 0x3eb33333    # 0.35f

    invoke-virtual {v2, v0, v4, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v28, 0x3d8f5c29    # 0.07f

    const v29, 0x3e4ccccd    # 0.2f

    const v30, 0x3de147ae    # 0.11f

    const v31, 0x3edc28f6    # 0.43f

    const v32, 0x3de147ae    # 0.11f

    const v33, 0x3f30a3d7    # 0.69f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const/16 v28, 0x0

    const v29, 0x3e6b851f    # 0.23f

    const v30, -0x42b33333    # -0.05f

    const v31, 0x3ee66666    # 0.45f

    const v32, -0x41f0a3d7    # -0.14f

    const v33, 0x3f28f5c3    # 0.66f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v28, -0x4247ae14    # -0.09f

    const v29, 0x3e4ccccd    # 0.2f

    const v30, -0x41947ae1    # -0.23f

    const v31, 0x3ec28f5c    # 0.38f

    const v32, -0x4128f5c3    # -0.42f

    const v33, 0x3f07ae14    # 0.53f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v28, -0x41bd70a4    # -0.19f

    const v29, 0x3e19999a    # 0.15f

    const v30, -0x4128f5c3    # -0.42f

    const v31, 0x3e851eb8    # 0.26f

    const v32, -0x40ca3d71    # -0.71f

    const v33, 0x3eb33333    # 0.35f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v28, -0x416b851f    # -0.29f

    const v29, 0x3da3d70a    # 0.08f

    const v30, -0x40deb852    # -0.63f

    const v31, 0x3e051eb8    # 0.13f

    const v32, -0x407eb852    # -1.01f

    const v33, 0x3e051eb8    # 0.13f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v28, -0x4123d70a    # -0.43f

    const/16 v29, 0x0

    const v30, -0x40ab851f    # -0.83f

    const v31, -0x42dc28f6    # -0.04f

    const v32, -0x4068f5c3    # -1.18f

    const v33, -0x41fae148    # -0.13f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v0, -0x40970a3d    # -0.91f

    const v1, -0x4128f5c3    # -0.42f

    const v3, -0x40d70a3d    # -0.66f

    const v4, -0x41947ae1    # -0.23f

    invoke-virtual {v2, v3, v4, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const/high16 v28, -0x41800000    # -0.25f

    const v29, -0x41bd70a4    # -0.19f

    const v30, -0x4119999a    # -0.45f

    const v31, -0x411eb852    # -0.44f

    const v32, -0x40e8f5c3    # -0.59f

    const/high16 v33, -0x40c00000    # -0.75f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v0, -0x40bd70a4    # -0.76f

    const v1, -0x40651eb8    # -1.21f

    const/high16 v3, -0x41800000    # -0.25f

    invoke-virtual {v2, v3, v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v0, 0x40cccccd    # 6.4f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const/16 v28, 0x0

    const v29, 0x3f0ccccd    # 0.55f

    const v30, 0x3da3d70a    # 0.08f

    const v31, 0x3f90a3d7    # 1.13f

    const v32, 0x3e75c28f    # 0.24f

    const v33, 0x3fca3d71    # 1.58f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v0, 0x3f59999a    # 0.85f

    const v1, 0x3f266666    # 0.65f

    const v3, 0x3ebd70a4    # 0.37f

    const v4, 0x3f9ae148    # 1.21f

    invoke-virtual {v2, v3, v0, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v28, 0x3e8f5c29    # 0.28f

    const v29, 0x3eb33333    # 0.35f

    const v30, 0x3f19999a    # 0.6f

    const v31, 0x3f28f5c3    # 0.66f

    const v32, 0x3f7ae148    # 0.98f

    const v33, 0x3f6b851f    # 0.92f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const v28, 0x3ebd70a4    # 0.37f

    const v29, 0x3e851eb8    # 0.26f

    const v30, 0x3f47ae14    # 0.78f

    const v31, 0x3ef5c28f    # 0.48f

    const v32, 0x3f9c28f6    # 1.22f

    const v33, 0x3f266666    # 0.65f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v28, 0x3ee147ae    # 0.44f

    const v29, 0x3e2e147b    # 0.17f

    const v30, 0x3f666666    # 0.9f

    const v31, 0x3e99999a    # 0.3f

    const v32, 0x3fb0a3d7    # 1.38f

    const v33, 0x3ec7ae14    # 0.39f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const v28, 0x3ef5c28f    # 0.48f

    const v29, 0x3da3d70a    # 0.08f

    const v30, 0x3f75c28f    # 0.96f

    const v31, 0x3e051eb8    # 0.13f

    const v32, 0x3fb851ec    # 1.44f

    const v33, 0x3e051eb8    # 0.13f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v28, 0x3f4ccccd    # 0.8f

    const/16 v29, 0x0

    const v30, 0x3fc3d70a    # 1.53f

    const v31, -0x4247ae14    # -0.09f

    const v32, 0x400b851f    # 2.18f

    const v33, -0x4170a3d7    # -0.28f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v0, 0x3fd5c28f    # 1.67f

    const v1, -0x40b5c28f    # -0.79f

    const v3, -0x4119999a    # -0.45f

    invoke-virtual {v2, v4, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v28, 0x3eeb851f    # 0.46f

    const v29, -0x4151eb85    # -0.34f

    const v30, 0x3f51eb85    # 0.82f

    const v31, -0x40bae148    # -0.77f

    const v32, 0x3f88f5c3    # 1.07f

    const v33, -0x405d70a4    # -1.27f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v0, -0x40770a3d    # -1.07f

    const v1, -0x40251eb8    # -1.71f

    const v3, 0x3ec28f5c    # 0.38f

    invoke-virtual {v2, v3, v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const/16 v28, 0x0

    const v29, -0x40e66666    # -0.6f

    const v30, -0x42333333    # -0.1f

    const v31, -0x406e147b    # -1.14f

    const v32, -0x416147ae    # -0.31f

    const v33, -0x4031eb85    # -1.61f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v28, -0x42b33333    # -0.05f

    const v29, -0x421eb852    # -0.11f

    const v30, -0x421eb852    # -0.11f

    const v31, -0x41947ae1    # -0.23f

    const v32, -0x41d1eb85    # -0.17f

    const v33, -0x41570a3d    # -0.33f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const/high16 v0, 0x41a80000    # 21.0f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    nop

    .line 126
    .end local v2    # "$this$_get_StrikethroughS__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v34    # "$i$a$-materialPath-YwgOQQI$default-StrikethroughSKt$StrikethroughS$1$1":I
    nop

    .line 127
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 125
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v13    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 128
    nop

    .line 129
    .end local v11    # "$i$f$PathData":I
    nop

    .line 130
    nop

    .line 131
    nop

    .line 132
    nop

    .line 133
    nop

    .line 134
    nop

    .line 135
    nop

    .line 136
    nop

    .line 137
    nop

    .line 138
    nop

    .line 123
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 139
    nop

    .line 140
    .end local v9    # "name$iv$iv":Ljava/lang/String;
    .end local v10    # "$i$f$path-R_LF-3I":I
    .end local v15    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v19    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v21    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v23    # "strokeLineWidth$iv$iv":F
    .end local v24    # "strokeLineCap$iv$iv":I
    .end local v25    # "strokeLineJoin$iv$iv":I
    .end local v26    # "strokeLineMiter$iv$iv":F
    nop

    .line 30
    .end local v5    # "fillAlpha$iv":F
    .end local v6    # "strokeAlpha$iv":F
    .end local v7    # "pathFillType$iv":I
    .end local v8    # "$i$f$materialPath-YwgOQQI":I
    .end local v38    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 95
    .end local v36    # "$this$_get_StrikethroughS__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v37    # "$i$a$-materialIcon-StrikethroughSKt$StrikethroughS$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v14    # "$i$f$materialIcon":I
    .end local v35    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/sharp/StrikethroughSKt;->_strikethroughS:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 90
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
