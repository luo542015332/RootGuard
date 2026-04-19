.class public final Landroidx/compose/material/icons/rounded/Diversity2Kt;
.super Ljava/lang/Object;
.source "Diversity2.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiversity2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Diversity2.kt\nandroidx/compose/material/icons/rounded/Diversity2Kt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,109:1\n122#2:110\n116#2,3:111\n119#2,3:115\n132#2,18:118\n152#2:155\n132#2,18:156\n152#2:193\n132#2,18:194\n152#2:231\n174#3:114\n694#4,2:136\n706#4,2:138\n708#4,11:144\n694#4,2:174\n706#4,2:176\n708#4,11:182\n694#4,2:212\n706#4,2:214\n708#4,11:220\n64#5,4:140\n64#5,4:178\n64#5,4:216\n*S KotlinDebug\n*F\n+ 1 Diversity2.kt\nandroidx/compose/material/icons/rounded/Diversity2Kt\n*L\n29#1:110\n29#1:111,3\n29#1:115,3\n30#1:118,18\n30#1:155\n54#1:156,18\n54#1:193\n79#1:194,18\n79#1:231\n29#1:114\n30#1:136,2\n30#1:138,2\n30#1:144,11\n54#1:174,2\n54#1:176,2\n54#1:182,11\n79#1:212,2\n79#1:214,2\n79#1:220,11\n30#1:140,4\n54#1:178,4\n79#1:216,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_diversity2",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Diversity2",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getDiversity2",
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
.field private static _diversity2:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getDiversity2(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 43
    .param p0, "$this$Diversity2"    # Landroidx/compose/material/icons/Icons$Rounded;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/Diversity2Kt;->_diversity2:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "Rounded.Diversity2"

    .local v0, "name$iv":Ljava/lang/String;
    const/4 v14, 0x0

    .line 110
    .local v14, "$i$f$materialIcon":I
    nop

    .line 111
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 112
    nop

    .line 113
    const/high16 v2, 0x41c00000    # 24.0f

    .local v2, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 114
    .local v3, "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 115
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v2, 0x41c00000    # 24.0f

    .restart local v2    # "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 114
    .restart local v3    # "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 116
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v6, 0x41c00000    # 24.0f

    .line 117
    const/high16 v7, 0x41c00000    # 24.0f

    .line 111
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v2, v15

    move-object v3, v0

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 110
    nop

    .local v2, "$this$_get_Diversity2__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon-Diversity2Kt$Diversity2$1":I
    move-object v4, v2

    .line 118
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 119
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "fillAlpha$iv":F
    move/from16 v20, v5

    .line 118
    nop

    .line 120
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "strokeAlpha$iv":F
    move/from16 v22, v6

    .line 118
    nop

    .line 121
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v7

    .local v7, "pathFillType$iv":I
    move/from16 v17, v7

    .line 118
    const/4 v8, 0x0

    .line 127
    .local v8, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 128
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v10, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v9

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 130
    nop

    .line 132
    nop

    .line 133
    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 134
    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 135
    nop

    .line 127
    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v23, v9

    .local v23, "strokeLineWidth$iv$iv":F
    move-object/from16 v21, v12

    .local v21, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v15, v4

    .local v15, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v19, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v24, "strokeLineCap$iv$iv":I
    .local v25, "strokeLineJoin$iv$iv":I
    move/from16 v26, v9

    .line 136
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 137
    const-string v10, ""

    .local v10, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v10

    .line 136
    const/4 v11, 0x0

    .line 138
    .local v11, "$i$f$path-R_LF-3I":I
    nop

    .line 139
    const/4 v13, 0x0

    .line 140
    .local v13, "$i$f$PathData":I
    new-instance v16, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v16, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v27, 0x0

    .line 141
    .local v27, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v35, v16

    .local v35, "$this$_get_Diversity2__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v36, 0x0

    .line 31
    .local v36, "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$1":I
    const v9, 0x412c51ec    # 10.77f

    const v12, 0x4173ae14    # 15.23f

    move-object/from16 v41, v0

    move-object/from16 v0, v35

    .end local v35    # "$this$_get_Diversity2__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Diversity2__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v41, "name$iv":Ljava/lang/String;
    invoke-virtual {v0, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    invoke-virtual {v0, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v29, 0x3ecccccd    # 0.4f

    const v30, -0x41333333    # -0.4f

    const v31, 0x3ec7ae14    # 0.39f

    const v32, -0x40770a3d    # -1.07f

    const v33, -0x42dc28f6    # -0.04f

    const v34, -0x40466666    # -1.45f

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v29, 0x4102b852    # 8.17f

    const v30, 0x4137851f    # 11.47f

    const v31, 0x40d4cccd    # 6.65f

    const v32, 0x411e6666    # 9.9f

    const v33, 0x40e23d71    # 7.07f

    const v34, 0x410547ae    # 8.33f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v29, 0x40e947ae    # 7.29f

    const v30, 0x40f0a3d7    # 7.52f

    const v31, 0x410028f6    # 8.01f

    const/high16 v32, 0x40e00000    # 7.0f

    const v33, 0x410d999a    # 8.85f

    const/high16 v34, 0x40e00000    # 7.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v29, 0x3f8e147b    # 1.11f

    const/16 v30, 0x0

    const v31, 0x3fc51eb8    # 1.54f

    const v32, 0x3f266666    # 0.65f

    const v33, 0x402b851f    # 2.68f

    const/high16 v34, 0x40000000    # 2.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v9, 0x3f6e147b    # 0.93f

    invoke-virtual {v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v29, 0x3f8f5c29    # 1.12f

    const v30, -0x405851ec    # -1.31f

    const v31, 0x3fc3d70a    # 1.53f

    const/high16 v32, -0x40000000    # -2.0f

    const/high16 v34, -0x40000000    # -2.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v29, 0x3f5eb852    # 0.87f

    const/16 v30, 0x0

    const v31, 0x3fc66666    # 1.55f

    const v32, 0x3f0a3d71    # 0.54f

    const v33, 0x3fe28f5c    # 1.77f

    const v34, 0x3fa8f5c3    # 1.32f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v29, 0x3eb33333    # 0.35f

    const v30, -0x42dc28f6    # -0.04f

    const v31, 0x3f2e147b    # 0.68f

    const v32, -0x428a3d71    # -0.06f

    const/high16 v33, 0x3f800000    # 1.0f

    const v34, -0x428a3d71    # -0.06f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v29, 0x3eb851ec    # 0.36f

    const/16 v30, 0x0

    const v31, 0x3f333333    # 0.7f

    const v32, 0x3cf5c28f    # 0.03f

    const v33, 0x3f83d70a    # 1.03f

    const v34, 0x3da3d70a    # 0.08f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v29, 0x4195999a    # 18.7f

    const v30, 0x40cdc28f    # 6.43f

    const v31, 0x41890a3d    # 17.13f

    const/high16 v32, 0x40a00000    # 5.0f

    const v33, 0x41726666    # 15.15f

    const/high16 v34, 0x40a00000    # 5.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v29, -0x420a3d71    # -0.12f

    const/16 v30, 0x0

    const v31, -0x41947ae1    # -0.23f

    const v32, 0x3cf5c28f    # 0.03f

    const v33, -0x414ccccd    # -0.35f

    const v34, 0x3d23d70a    # 0.04f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v29, 0x3e851eb8    # 0.26f

    const v30, -0x40ca3d71    # -0.71f

    const v31, 0x3e9eb852    # 0.31f

    const v32, -0x403c28f6    # -1.53f

    const v33, -0x41c7ae14    # -0.18f

    const v34, -0x3fe47ae1    # -2.43f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v29, 0x41630a3d    # 14.19f

    const v30, 0x3fe66666    # 1.8f

    const v31, 0x41566666    # 13.4f

    const v32, 0x3f970a3d    # 1.18f

    const/high16 v33, 0x41480000    # 12.5f

    const v34, 0x3f851eb8    # 1.04f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v29, 0x4129eb85    # 10.62f

    const v30, 0x3f3d70a4    # 0.74f

    const/high16 v31, 0x41100000    # 9.0f

    const v32, 0x400b851f    # 2.18f

    const/high16 v33, 0x41100000    # 9.0f

    const/high16 v34, 0x40800000    # 4.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const/16 v29, 0x0

    const v30, 0x3ebd70a4    # 0.37f

    const v31, 0x3da3d70a    # 0.08f

    const v32, 0x3f35c28f    # 0.71f

    const v33, 0x3e4ccccd    # 0.2f

    const v34, 0x3f851eb8    # 1.04f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v29, 0x411147ae    # 9.08f

    const v30, 0x40a0f5c3    # 5.03f

    const v31, 0x410f851f    # 8.97f

    const/high16 v32, 0x40a00000    # 5.0f

    const v33, 0x410d999a    # 8.85f

    const/high16 v34, 0x40a00000    # 5.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v29, 0x40d6147b    # 6.69f

    const/high16 v30, 0x40a00000    # 5.0f

    const/high16 v31, 0x40a00000    # 5.0f

    const v32, 0x40d6147b    # 6.69f

    const/high16 v33, 0x40a00000    # 5.0f

    const v34, 0x410d999a    # 8.85f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const/16 v29, 0x0

    const v30, 0x400eb852    # 2.23f

    const v31, 0x3fdd70a4    # 1.73f

    const v32, 0x408051ec    # 4.01f

    const v33, 0x408ccccd    # 4.4f

    const v34, 0x40cd1eb8    # 6.41f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v29, 0x411ca3d7    # 9.79f

    const v30, 0x4179eb85    # 15.62f

    const v31, 0x41266666    # 10.4f

    const v32, 0x4179999a    # 15.6f

    const v33, 0x412c51ec    # 10.77f

    const v34, 0x4173ae14    # 15.23f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    nop

    .line 141
    .end local v0    # "$this$_get_Diversity2__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v36    # "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$1":I
    nop

    .line 142
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 140
    .end local v16    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v27    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 143
    nop

    .line 144
    .end local v13    # "$i$f$PathData":I
    nop

    .line 145
    nop

    .line 146
    nop

    .line 147
    nop

    .line 148
    nop

    .line 149
    nop

    .line 150
    nop

    .line 151
    nop

    .line 152
    nop

    .line 153
    nop

    .line 138
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 154
    nop

    .line 155
    .end local v10    # "name$iv$iv":Ljava/lang/String;
    .end local v11    # "$i$f$path-R_LF-3I":I
    .end local v15    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v19    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v21    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v23    # "strokeLineWidth$iv$iv":F
    .end local v24    # "strokeLineCap$iv$iv":I
    .end local v25    # "strokeLineJoin$iv$iv":I
    .end local v26    # "strokeLineMiter$iv$iv":F
    nop

    .line 54
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "fillAlpha$iv":F
    .end local v6    # "strokeAlpha$iv":F
    .end local v7    # "pathFillType$iv":I
    .end local v8    # "$i$f$materialPath-YwgOQQI":I
    move-object v0, v2

    .line 156
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 157
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "fillAlpha$iv":F
    move/from16 v28, v4

    .line 156
    nop

    .line 158
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "strokeAlpha$iv":F
    move/from16 v30, v5

    .line 156
    nop

    .line 159
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .local v6, "pathFillType$iv":I
    move/from16 v25, v6

    .line 156
    const/4 v7, 0x0

    .line 165
    .local v7, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 166
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v8

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 168
    nop

    .line 170
    nop

    .line 171
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 172
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 173
    nop

    .line 165
    const/high16 v8, 0x3f800000    # 1.0f

    move/from16 v31, v8

    const/4 v9, 0x0

    .local v31, "strokeLineWidth$iv$iv":F
    move-object/from16 v29, v9

    .local v29, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v0

    .local v23, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v27, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v32, "strokeLineCap$iv$iv":I
    .local v33, "strokeLineJoin$iv$iv":I
    move/from16 v34, v8

    .line 174
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 175
    const-string v8, ""

    .local v8, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v8

    .line 174
    const/4 v9, 0x0

    .line 176
    .local v9, "$i$f$path-R_LF-3I":I
    nop

    .line 177
    const/4 v10, 0x0

    .line 178
    .local v10, "$i$f$PathData":I
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v11, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 179
    .local v12, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v13, v11

    .local v13, "$this$_get_Diversity2__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 55
    .local v22, "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$2":I
    const v15, 0x41bc28f6    # 23.52f

    move-object/from16 v42, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v42, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v0, 0x418a0000    # 17.25f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v16, -0x40f5c28f    # -0.54f

    const v17, -0x40a147ae    # -0.87f

    const v18, -0x405d70a4    # -1.27f

    const v19, -0x40628f5c    # -1.23f

    const v20, -0x3fff5c29    # -2.01f

    const v21, -0x4051eb85    # -1.36f

    move-object v15, v13

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v16, 0x3d8f5c29    # 0.07f

    const v17, -0x42333333    # -0.1f

    const v18, 0x3e19999a    # 0.15f

    const v19, -0x41c7ae14    # -0.18f

    const v20, 0x3e570a3d    # 0.21f

    const v21, -0x4170a3d7    # -0.28f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v16, 0x3f8a3d71    # 1.08f

    const v17, -0x4010a3d7    # -1.87f

    const v18, 0x3eeb851f    # 0.46f

    const v19, -0x3f7a3d71    # -4.18f

    const v20, -0x404b851f    # -1.41f

    const v21, -0x3f57ae14    # -5.26f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v16, -0x4008f5c3    # -1.93f

    const v17, -0x4071eb85    # -1.11f

    const v18, -0x3f751eb8    # -4.34f

    const/high16 v19, -0x41000000    # -0.5f

    const/high16 v20, -0x3f080000    # -7.75f

    const v21, 0x3f19999a    # 0.6f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v16, -0x40fd70a4    # -0.51f

    const v17, 0x3e23d70a    # 0.16f

    const v18, -0x40b5c28f    # -0.79f

    const v19, 0x3f333333    # 0.7f

    const v20, -0x40d70a3d    # -0.66f

    const v21, 0x3f9ae148    # 1.21f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v16, 0x3e19999a    # 0.15f

    const v17, 0x3f0ccccd    # 0.55f

    const v18, 0x3f3ae148    # 0.73f

    const v19, 0x3f5eb852    # 0.87f

    const v20, 0x3fa3d70a    # 1.28f

    const v21, 0x3f30a3d7    # 0.69f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v16, 0x4051eb85    # 3.28f

    const v17, -0x407851ec    # -1.06f

    const v18, 0x40accccd    # 5.4f

    const v19, -0x40333333    # -1.6f

    const v20, 0x40d1999a    # 6.55f

    const v21, -0x4119999a    # -0.45f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v16, 0x3f170a3d    # 0.59f

    const v17, 0x3f170a3d    # 0.59f

    const v18, 0x3f2e147b    # 0.68f

    const v19, 0x3fbd70a4    # 1.48f

    const v20, 0x3e851eb8    # 0.26f

    const v21, 0x400d70a4    # 2.21f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v16, -0x40f0a3d7    # -0.56f

    const v17, 0x3f75c28f    # 0.96f

    const v18, -0x4055c28f    # -1.33f

    const/high16 v19, 0x3f800000    # 1.0f

    const v20, -0x3fbb851f    # -3.07f

    const v21, 0x3fa8f5c3    # 1.32f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v15, -0x410f5c29    # -0.47f

    const v0, 0x3f4f5c29    # 0.81f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v16, 0x3f147ae1    # 0.58f

    const v17, 0x3fcf5c29    # 1.62f

    const v18, 0x3f7851ec    # 0.97f

    const v19, 0x40151eb8    # 2.33f

    const v20, 0x3ec7ae14    # 0.39f

    const v21, 0x40547ae1    # 3.32f

    move-object v15, v13

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v16, -0x40f851ec    # -0.53f

    const v17, 0x3f68f5c3    # 0.91f

    const v18, -0x4031eb85    # -1.61f

    const v19, 0x3f99999a    # 1.2f

    const v20, -0x3fde147b    # -2.53f

    const v21, 0x3f2e147b    # 0.68f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v16, -0x428a3d71    # -0.06f

    const v17, -0x430a3d71    # -0.03f

    const v18, -0x421eb852    # -0.11f

    const v19, -0x4247ae14    # -0.09f

    const v20, -0x41d1eb85    # -0.17f

    const v21, -0x41fae148    # -0.13f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v16, -0x41666666    # -0.3f

    const v17, 0x3f2b851f    # 0.67f

    const v18, -0x40dc28f6    # -0.64f

    const v19, 0x3f9eb852    # 1.24f

    const v20, -0x407c28f6    # -1.03f

    const v21, 0x3fdd70a4    # 1.73f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const/16 v16, 0x0

    const v17, 0x3c23d70a    # 0.01f

    const/16 v18, 0x0

    const v19, 0x3c23d70a    # 0.01f

    const/16 v20, 0x0

    const v21, 0x3c23d70a    # 0.01f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v16, 0x3ff33333    # 1.9f

    const v17, 0x3f9eb852    # 1.24f

    const v18, 0x408ae148    # 4.34f

    const v19, 0x3f23d70a    # 0.64f

    const v20, 0x40aeb852    # 5.46f

    const v21, -0x405ae148    # -1.29f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v16, 0x3d75c28f    # 0.06f

    const v17, -0x42333333    # -0.1f

    const v18, 0x3db851ec    # 0.09f

    const v19, -0x41a8f5c3    # -0.21f

    const v20, 0x3e0f5c29    # 0.14f

    const v21, -0x415c28f6    # -0.32f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v16, 0x3e6147ae    # 0.22f

    const v17, 0x3e8a3d71    # 0.27f

    const v18, 0x3ef5c28f    # 0.48f

    const v19, 0x3f028f5c    # 0.51f

    const v20, 0x3f4ccccd    # 0.8f

    const v21, 0x3f30a3d7    # 0.69f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v16, 0x3fca3d71    # 1.58f

    const v17, 0x3f68f5c3    # 0.91f

    const v18, 0x4068f5c3    # 3.64f

    const v19, 0x3e6b851f    # 0.23f

    const v20, 0x4089eb85    # 4.31f

    const v21, -0x4039999a    # -1.55f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const v16, 0x41c11eb8    # 24.14f

    const v17, 0x419828f6    # 19.02f

    const/high16 v18, 0x41c00000    # 24.0f

    const v19, 0x41903d71    # 18.03f

    const v20, 0x41bc28f6    # 23.52f

    const/high16 v21, 0x418a0000    # 17.25f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    nop

    .line 179
    .end local v13    # "$this$_get_Diversity2__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$2":I
    nop

    .line 180
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 178
    .end local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 181
    nop

    .line 182
    .end local v10    # "$i$f$PathData":I
    nop

    .line 183
    nop

    .line 184
    nop

    .line 185
    nop

    .line 186
    nop

    .line 187
    nop

    .line 188
    nop

    .line 189
    nop

    .line 190
    nop

    .line 191
    nop

    .line 176
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 192
    nop

    .line 193
    .end local v8    # "name$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 79
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "strokeAlpha$iv":F
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    .end local v42    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object v0, v2

    .line 194
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 195
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "fillAlpha$iv":F
    move/from16 v28, v4

    .line 194
    nop

    .line 196
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "strokeAlpha$iv":F
    move/from16 v30, v5

    .line 194
    nop

    .line 197
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .restart local v6    # "pathFillType$iv":I
    move/from16 v25, v6

    .line 194
    const/4 v7, 0x0

    .line 203
    .restart local v7    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 204
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v8

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 206
    nop

    .line 208
    nop

    .line 209
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 210
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 211
    nop

    .line 203
    const/high16 v8, 0x3f800000    # 1.0f

    move/from16 v31, v8

    const/4 v9, 0x0

    .restart local v31    # "strokeLineWidth$iv$iv":F
    move-object/from16 v29, v9

    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v0

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v32    # "strokeLineCap$iv$iv":I
    .restart local v33    # "strokeLineJoin$iv$iv":I
    move/from16 v34, v8

    .line 212
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 213
    const-string v8, ""

    .restart local v8    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v8

    .line 212
    const/4 v9, 0x0

    .line 214
    .restart local v9    # "$i$f$path-R_LF-3I":I
    nop

    .line 215
    const/4 v10, 0x0

    .line 216
    .restart local v10    # "$i$f$PathData":I
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 217
    .restart local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v13, v11

    .local v13, "$this$_get_Diversity2__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 80
    .local v22, "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$3":I
    const v15, 0x4141999a    # 12.1f

    move-object/from16 v40, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v40, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x4170a3d7    # 15.04f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v16, -0x40c7ae14    # -0.72f

    const v17, 0x405851ec    # 3.38f

    const v18, -0x40570a3d    # -1.32f

    const v19, 0x40af5c29    # 5.48f

    const v20, -0x3fc70a3d    # -2.89f

    const v21, 0x40bccccd    # 5.9f

    move-object v15, v13

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v16, -0x40b0a3d7    # -0.81f

    const v17, 0x3e6147ae    # 0.22f

    const v18, -0x4030a3d7    # -1.62f

    const v19, -0x41e66666    # -0.15f

    const v20, -0x3ffd70a4    # -2.04f

    const v21, -0x409eb852    # -0.88f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v16, -0x40f0a3d7    # -0.56f

    const v17, -0x408a3d71    # -0.96f

    const v18, -0x41b33333    # -0.2f

    const v19, -0x402b851f    # -1.66f

    const v20, 0x3ec7ae14    # 0.39f

    const v21, -0x3fab851f    # -3.32f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v0, 0x40e33333    # 7.1f

    const v15, 0x417ee148    # 15.93f

    invoke-virtual {v13, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v16, -0x40266666    # -1.7f

    const v17, -0x416147ae    # -0.31f

    const/high16 v18, -0x3fe00000    # -2.5f

    const v19, -0x41570a3d    # -0.33f

    const v20, -0x3fbb851f    # -3.07f

    const v21, -0x40570a3d    # -1.32f

    move-object v15, v13

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v16, -0x40f851ec    # -0.53f

    const v17, -0x40970a3d    # -0.91f

    const v18, -0x418a3d71    # -0.24f

    const/high16 v19, -0x40000000    # -2.0f

    const v20, 0x3f2e147b    # 0.68f

    const v21, -0x3fde147b    # -2.53f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v16, 0x3db851ec    # 0.09f

    const v17, -0x42b33333    # -0.05f

    const v18, 0x3e428f5c    # 0.19f

    const v19, -0x425c28f6    # -0.08f

    const v20, 0x3e947ae1    # 0.29f

    const v21, -0x421eb852    # -0.11f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v16, -0x4175c28f    # -0.27f

    const v17, -0x4128f5c3    # -0.42f

    const/high16 v18, -0x41000000    # -0.5f

    const v19, -0x40a147ae    # -0.87f

    const v20, -0x40d47ae1    # -0.67f

    const v21, -0x4050a3d7    # -1.37f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v16, -0x418a3d71    # -0.24f

    const v17, -0x421eb852    # -0.11f

    const v18, -0x4147ae14    # -0.36f

    const v19, -0x41dc28f6    # -0.16f

    const v20, -0x40e66666    # -0.6f

    const v21, -0x417ae148    # -0.26f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v16, -0x400f5c29    # -1.88f

    const v17, 0x3f88f5c3    # 1.07f

    const v18, -0x3fdf5c29    # -2.51f

    const v19, 0x4059999a    # 3.4f

    const v20, -0x4048f5c3    # -1.43f

    const v21, 0x40a8a3d7    # 5.27f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v16, 0x3d75c28f    # 0.06f

    const v17, 0x3dcccccd    # 0.1f

    const v18, 0x3e0f5c29    # 0.14f

    const v19, 0x3e3851ec    # 0.18f

    const v20, 0x3e570a3d    # 0.21f

    const v21, 0x3e8f5c29    # 0.28f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const/high16 v16, -0x40c00000    # -0.75f

    const v17, 0x3e051eb8    # 0.13f

    const v18, -0x40428f5c    # -1.48f

    const v19, 0x3efae148    # 0.49f

    const v20, -0x3fff5c29    # -2.01f

    const v21, 0x3fae147b    # 1.36f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v16, -0x410a3d71    # -0.48f

    const v17, 0x3f47ae14    # 0.78f

    const v18, -0x40e147ae    # -0.62f

    const v19, 0x3fe28f5c    # 1.77f

    const v20, -0x41666666    # -0.3f

    const v21, 0x402851ec    # 2.63f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v16, 0x3f2e147b    # 0.68f

    const v17, 0x3fe3d70a    # 1.78f

    const v18, 0x402f5c29    # 2.74f

    const v19, 0x401d70a4    # 2.46f

    const v20, 0x4089eb85    # 4.31f

    const v21, 0x3fc66666    # 1.55f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v16, 0x3ea3d70a    # 0.32f

    const v17, -0x41c7ae14    # -0.18f

    const v18, 0x3f147ae1    # 0.58f

    const v19, -0x4128f5c3    # -0.42f

    const v20, 0x3f4ccccd    # 0.8f

    const v21, -0x40cf5c29    # -0.69f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v16, 0x3d4ccccd    # 0.05f

    const v17, 0x3de147ae    # 0.11f

    const v18, 0x3da3d70a    # 0.08f

    const v19, 0x3e6147ae    # 0.22f

    const v20, 0x3e0f5c29    # 0.14f

    const v21, 0x3ea3d70a    # 0.32f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const v16, 0x3f8a3d71    # 1.08f

    const v17, 0x3fef5c29    # 1.87f

    const v18, 0x4058f5c3    # 3.39f

    const v19, 0x401f5c29    # 2.49f

    const v20, 0x40a851ec    # 5.26f

    const v21, 0x3fb47ae1    # 1.41f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const v16, 0x3ff70a3d    # 1.93f

    const v17, -0x4071eb85    # -1.11f

    const v18, 0x40270a3d    # 2.61f

    const v19, -0x3f9f5c29    # -3.51f

    const v20, 0x40570a3d    # 3.36f

    const v21, -0x3f1fae14    # -7.01f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const v16, 0x3de147ae    # 0.11f

    const v17, -0x40fae148    # -0.52f

    const v18, -0x41a8f5c3    # -0.21f

    const v19, -0x407ae148    # -1.04f

    const v20, -0x40c7ae14    # -0.72f

    const v21, -0x406a3d71    # -1.17f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const/4 v0, 0x0

    invoke-virtual {v13, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const v16, 0x414c7ae1    # 12.78f

    const v17, 0x41623d71    # 14.14f

    const v18, 0x4143851f    # 12.22f

    const v19, 0x4167ae14    # 14.48f

    const v20, 0x4141999a    # 12.1f

    const v21, 0x4170a3d7    # 15.04f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    nop

    .line 217
    .end local v13    # "$this$_get_Diversity2__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$3":I
    nop

    .line 218
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 216
    .end local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 219
    nop

    .line 220
    .end local v10    # "$i$f$PathData":I
    nop

    .line 221
    nop

    .line 222
    nop

    .line 223
    nop

    .line 224
    nop

    .line 225
    nop

    .line 226
    nop

    .line 227
    nop

    .line 228
    nop

    .line 229
    nop

    .line 214
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 230
    nop

    .line 231
    .end local v8    # "name$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 79
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "strokeAlpha$iv":F
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    .end local v40    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 110
    .end local v2    # "$this$_get_Diversity2__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v3    # "$i$a$-materialIcon-Diversity2Kt$Diversity2$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v14    # "$i$f$materialIcon":I
    .end local v41    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/rounded/Diversity2Kt;->_diversity2:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 105
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
