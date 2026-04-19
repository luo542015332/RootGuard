.class public final Landroidx/compose/material/icons/outlined/Diversity2Kt;
.super Ljava/lang/Object;
.source "Diversity2.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiversity2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Diversity2.kt\nandroidx/compose/material/icons/outlined/Diversity2Kt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,103:1\n122#2:104\n116#2,3:105\n119#2,3:109\n132#2,18:112\n152#2:149\n132#2,18:150\n152#2:187\n132#2,18:188\n152#2:225\n174#3:108\n694#4,2:130\n706#4,2:132\n708#4,11:138\n694#4,2:168\n706#4,2:170\n708#4,11:176\n694#4,2:206\n706#4,2:208\n708#4,11:214\n64#5,4:134\n64#5,4:172\n64#5,4:210\n*S KotlinDebug\n*F\n+ 1 Diversity2.kt\nandroidx/compose/material/icons/outlined/Diversity2Kt\n*L\n29#1:104\n29#1:105,3\n29#1:109,3\n30#1:112,18\n30#1:149\n52#1:150,18\n52#1:187\n75#1:188,18\n75#1:225\n29#1:108\n30#1:130,2\n30#1:132,2\n30#1:138,11\n52#1:168,2\n52#1:170,2\n52#1:176,11\n75#1:206,2\n75#1:208,2\n75#1:214,11\n30#1:134,4\n52#1:172,4\n75#1:210,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_diversity2",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Diversity2",
        "Landroidx/compose/material/icons/Icons$Outlined;",
        "getDiversity2",
        "(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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

.method public static final getDiversity2(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 44
    .param p0, "$this$Diversity2"    # Landroidx/compose/material/icons/Icons$Outlined;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/outlined/Diversity2Kt;->_diversity2:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "Outlined.Diversity2"

    .local v0, "name$iv":Ljava/lang/String;
    const/4 v14, 0x0

    .line 104
    .local v14, "$i$f$materialIcon":I
    nop

    .line 105
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 106
    nop

    .line 107
    const/high16 v2, 0x41c00000    # 24.0f

    .local v2, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 108
    .local v3, "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 109
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v2, 0x41c00000    # 24.0f

    .restart local v2    # "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 108
    .restart local v3    # "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 110
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v6, 0x41c00000    # 24.0f

    .line 111
    const/high16 v7, 0x41c00000    # 24.0f

    .line 105
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v2, v15

    move-object v3, v0

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 104
    nop

    .local v2, "$this$_get_Diversity2__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon-Diversity2Kt$Diversity2$1":I
    move-object v4, v2

    .line 112
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 113
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "fillAlpha$iv":F
    move/from16 v20, v5

    .line 112
    nop

    .line 114
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "strokeAlpha$iv":F
    move/from16 v22, v6

    .line 112
    nop

    .line 115
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v7

    .local v7, "pathFillType$iv":I
    move/from16 v17, v7

    .line 112
    const/4 v8, 0x0

    .line 121
    .local v8, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 122
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v10, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v9

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 124
    nop

    .line 126
    nop

    .line 127
    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 128
    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 129
    nop

    .line 121
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

    .line 130
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 131
    const-string v10, ""

    .local v10, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v10

    .line 130
    const/4 v11, 0x0

    .line 132
    .local v11, "$i$f$path-R_LF-3I":I
    nop

    .line 133
    const/4 v13, 0x0

    .line 134
    .local v13, "$i$f$PathData":I
    new-instance v16, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v16, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v27, 0x0

    .line 135
    .local v27, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v35, v16

    .local v35, "$this$_get_Diversity2__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v36, 0x0

    .line 31
    .local v36, "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$1":I
    const v9, 0x4121999a    # 10.1f

    const v12, 0x417e6666    # 15.9f

    move-object/from16 v42, v0

    move-object/from16 v0, v35

    .end local v35    # "$this$_get_Diversity2__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Diversity2__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v42, "name$iv":Ljava/lang/String;
    invoke-virtual {v0, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v9, 0x3fb5c28f    # 1.42f

    const v12, -0x404a3d71    # -1.42f

    invoke-virtual {v0, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v29, 0x410ca3d7    # 8.79f

    const v30, 0x4140cccd    # 12.05f

    const/high16 v31, 0x40e00000    # 7.0f

    const v32, 0x41268f5c    # 10.41f

    const/high16 v33, 0x40e00000    # 7.0f

    const v34, 0x410d999a    # 8.85f

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/high16 v29, 0x40e00000    # 7.0f

    const v30, 0x40f9999a    # 7.8f

    const v31, 0x40f9999a    # 7.8f

    const/high16 v32, 0x40e00000    # 7.0f

    const v33, 0x410d999a    # 8.85f

    const/high16 v34, 0x40e00000    # 7.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v29, 0x3f8e147b    # 1.11f

    const/16 v30, 0x0

    const v31, 0x3fc51eb8    # 1.54f

    const v32, 0x3f266666    # 0.65f

    const v33, 0x402b851f    # 2.68f

    const/high16 v34, 0x40000000    # 2.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v9, 0x3f6e147b    # 0.93f

    invoke-virtual {v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v29, 0x3f8f5c29    # 1.12f

    const v30, -0x405851ec    # -1.31f

    const v31, 0x3fc3d70a    # 1.53f

    const/high16 v32, -0x40000000    # -2.0f

    const/high16 v34, -0x40000000    # -2.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v29, 0x3f5eb852    # 0.87f

    const/16 v30, 0x0

    const v31, 0x3fc66666    # 1.55f

    const v32, 0x3f0a3d71    # 0.54f

    const v33, 0x3fe28f5c    # 1.77f

    const v34, 0x3fa8f5c3    # 1.32f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v29, 0x3eb33333    # 0.35f

    const v30, -0x42dc28f6    # -0.04f

    const v31, 0x3f2e147b    # 0.68f

    const v32, -0x428a3d71    # -0.06f

    const/high16 v33, 0x3f800000    # 1.0f

    const v34, -0x428a3d71    # -0.06f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v29, 0x3eb851ec    # 0.36f

    const/16 v30, 0x0

    const v31, 0x3f333333    # 0.7f

    const v32, 0x3cf5c28f    # 0.03f

    const v33, 0x3f83d70a    # 1.03f

    const v34, 0x3da3d70a    # 0.08f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v29, 0x4195999a    # 18.7f

    const v30, 0x40cdc28f    # 6.43f

    const v31, 0x41890a3d    # 17.13f

    const/high16 v32, 0x40a00000    # 5.0f

    const v33, 0x41726666    # 15.15f

    const/high16 v34, 0x40a00000    # 5.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v29, -0x420a3d71    # -0.12f

    const/16 v30, 0x0

    const v31, -0x41947ae1    # -0.23f

    const v32, 0x3cf5c28f    # 0.03f

    const v33, -0x414ccccd    # -0.35f

    const v34, 0x3d23d70a    # 0.04f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v29, 0x416eb852    # 14.92f

    const v30, 0x4096b852    # 4.71f

    const/high16 v31, 0x41700000    # 15.0f

    const v32, 0x408bd70a    # 4.37f

    const/high16 v33, 0x41700000    # 15.0f

    const/high16 v34, 0x40800000    # 4.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const/16 v29, 0x0

    const v30, -0x402b851f    # -1.66f

    const v31, -0x40547ae1    # -1.34f

    const/high16 v32, -0x3fc00000    # -3.0f

    const/high16 v33, -0x3fc00000    # -3.0f

    const/high16 v34, -0x3fc00000    # -3.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v9, 0x4015c28f    # 2.34f

    const/high16 v12, 0x40800000    # 4.0f

    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v0, v1, v9, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v30, 0x3ebd70a4    # 0.37f

    const v31, 0x3da3d70a    # 0.08f

    const v32, 0x3f35c28f    # 0.71f

    const v33, 0x3e4ccccd    # 0.2f

    const v34, 0x3f851eb8    # 1.04f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v29, 0x411147ae    # 9.08f

    const v30, 0x40a0f5c3    # 5.03f

    const v31, 0x410f851f    # 8.97f

    const/high16 v32, 0x40a00000    # 5.0f

    const v33, 0x410d999a    # 8.85f

    const/high16 v34, 0x40a00000    # 5.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v29, 0x40d6147b    # 6.69f

    const/high16 v30, 0x40a00000    # 5.0f

    const/high16 v31, 0x40a00000    # 5.0f

    const v32, 0x40d6147b    # 6.69f

    const/high16 v33, 0x40a00000    # 5.0f

    const v34, 0x410d999a    # 8.85f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const/high16 v29, 0x40a00000    # 5.0f

    const v30, 0x413451ec    # 11.27f

    const v31, 0x40e147ae    # 7.04f

    const v32, 0x41528f5c    # 13.16f

    const v33, 0x4121999a    # 10.1f

    const v34, 0x417e6666    # 15.9f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    nop

    .line 135
    .end local v0    # "$this$_get_Diversity2__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v36    # "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$1":I
    nop

    .line 136
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 134
    .end local v16    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v27    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 137
    nop

    .line 138
    .end local v13    # "$i$f$PathData":I
    nop

    .line 139
    nop

    .line 140
    nop

    .line 141
    nop

    .line 142
    nop

    .line 143
    nop

    .line 144
    nop

    .line 145
    nop

    .line 146
    nop

    .line 147
    nop

    .line 132
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 148
    nop

    .line 149
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

    .line 52
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "fillAlpha$iv":F
    .end local v6    # "strokeAlpha$iv":F
    .end local v7    # "pathFillType$iv":I
    .end local v8    # "$i$f$materialPath-YwgOQQI":I
    move-object v0, v2

    .line 150
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 151
    const/high16 v1, 0x3f800000    # 1.0f

    .local v1, "fillAlpha$iv":F
    move/from16 v28, v1

    .line 150
    nop

    .line 152
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "strokeAlpha$iv":F
    move/from16 v30, v4

    .line 150
    nop

    .line 153
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v25, v5

    .line 150
    const/4 v6, 0x0

    .line 159
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 160
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v7

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 162
    nop

    .line 164
    nop

    .line 165
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 166
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 167
    nop

    .line 159
    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v31, v7

    const/4 v8, 0x0

    .local v31, "strokeLineWidth$iv$iv":F
    move-object/from16 v29, v8

    .local v29, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v0

    .local v23, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v27, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v32, "strokeLineCap$iv$iv":I
    .local v33, "strokeLineJoin$iv$iv":I
    move/from16 v34, v7

    .line 168
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 169
    const-string v7, ""

    .local v7, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v7

    .line 168
    const/4 v8, 0x0

    .line 170
    .local v8, "$i$f$path-R_LF-3I":I
    nop

    .line 171
    const/4 v9, 0x0

    .line 172
    .local v9, "$i$f$PathData":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v10, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 173
    .local v11, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v10

    .local v12, "$this$_get_Diversity2__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v13, 0x0

    .line 53
    .local v13, "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$2":I
    const/high16 v15, 0x41b40000    # 22.5f

    move-object/from16 v22, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v22, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x4181eb85    # 16.24f

    invoke-virtual {v12, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v16, -0x415c28f6    # -0.32f

    const v17, -0x41c7ae14    # -0.18f

    const v18, -0x40d70a3d    # -0.66f

    const v19, -0x416b851f    # -0.29f

    const/high16 v20, -0x40800000    # -1.0f

    const v21, -0x414ccccd    # -0.35f

    move/from16 v43, v1

    move v1, v15

    .end local v1    # "fillAlpha$iv":F
    .local v43, "fillAlpha$iv":F
    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v16, 0x3d8f5c29    # 0.07f

    const v17, -0x42333333    # -0.1f

    const v18, 0x3e19999a    # 0.15f

    const v19, -0x41c7ae14    # -0.18f

    const v20, 0x3e570a3d    # 0.21f

    const v21, -0x4170a3d7    # -0.28f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v16, 0x3f8a3d71    # 1.08f

    const v17, -0x4010a3d7    # -1.87f

    const v18, 0x3eeb851f    # 0.46f

    const v19, -0x3f7a3d71    # -4.18f

    const v20, -0x404b851f    # -1.41f

    const v21, -0x3f57ae14    # -5.26f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v16, -0x3ffa3d71    # -2.09f

    const v17, -0x40651eb8    # -1.21f

    const v18, -0x3f67ae14    # -4.76f

    const v19, -0x413851ec    # -0.39f

    const v20, -0x3ef5999a    # -8.65f

    const v21, 0x3f666666    # 0.9f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v15, 0x3f051eb8    # 0.52f

    const v0, 0x3ff851ec    # 1.94f

    invoke-virtual {v12, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v16, 0x405e147b    # 3.47f

    const v17, -0x406e147b    # -1.14f

    const v18, 0x40b947ae    # 5.79f

    const v19, -0x400f5c29    # -1.88f

    const v20, 0x40e47ae1    # 7.14f

    const v21, -0x40733333    # -1.1f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v16, 0x3f68f5c3    # 0.91f

    const v17, 0x3f07ae14    # 0.53f

    const v18, 0x3f99999a    # 1.2f

    const v19, 0x3fce147b    # 1.61f

    const v20, 0x3f2e147b    # 0.68f

    const v21, 0x4021eb85    # 2.53f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v16, -0x40f0a3d7    # -0.56f

    const v17, 0x3f75c28f    # 0.96f

    const v18, -0x4055c28f    # -1.33f

    const/high16 v19, 0x3f800000    # 1.0f

    const v20, -0x3fbb851f    # -3.07f

    const v21, 0x3fa8f5c3    # 1.32f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v0, -0x410f5c29    # -0.47f

    const v15, 0x3f4f5c29    # 0.81f

    invoke-virtual {v12, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v16, 0x3f147ae1    # 0.58f

    const v17, 0x3fcf5c29    # 1.62f

    const v18, 0x3f7851ec    # 0.97f

    const v19, 0x40151eb8    # 2.33f

    const v20, 0x3ec7ae14    # 0.39f

    const v21, 0x40547ae1    # 3.32f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v16, -0x40f851ec    # -0.53f

    const v17, 0x3f68f5c3    # 0.91f

    const v18, -0x4031eb85    # -1.61f

    const v19, 0x3f99999a    # 1.2f

    const v20, -0x3fde147b    # -2.53f

    const v21, 0x3f2e147b    # 0.68f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v16, -0x428a3d71    # -0.06f

    const v17, -0x430a3d71    # -0.03f

    const v18, -0x421eb852    # -0.11f

    const v19, -0x4247ae14    # -0.09f

    const v20, -0x41d1eb85    # -0.17f

    const v21, -0x41fae148    # -0.13f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v16, -0x41666666    # -0.3f

    const v17, 0x3f2b851f    # 0.67f

    const v18, -0x40dc28f6    # -0.64f

    const v19, 0x3f9eb852    # 1.24f

    const v20, -0x407c28f6    # -1.03f

    const v21, 0x3fdd70a4    # 1.73f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v16, 0x3d8f5c29    # 0.07f

    const v17, 0x3d23d70a    # 0.04f

    const v18, 0x3e051eb8    # 0.13f

    const v19, 0x3db851ec    # 0.09f

    const v20, 0x3e4ccccd    # 0.2f

    const v21, 0x3e0f5c29    # 0.14f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v16, 0x3fef5c29    # 1.87f

    const v17, 0x3f8a3d71    # 1.08f

    const v18, 0x4085c28f    # 4.18f

    const v19, 0x3eeb851f    # 0.46f

    const v20, 0x40a851ec    # 5.26f

    const v21, -0x404b851f    # -1.41f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v16, 0x3d75c28f    # 0.06f

    const v17, -0x42333333    # -0.1f

    const v18, 0x3db851ec    # 0.09f

    const v19, -0x41a8f5c3    # -0.21f

    const v20, 0x3e0f5c29    # 0.14f

    const v21, -0x415c28f6    # -0.32f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v16, 0x3e6147ae    # 0.22f

    const v17, 0x3e8a3d71    # 0.27f

    const v18, 0x3ef5c28f    # 0.48f

    const v19, 0x3f028f5c    # 0.51f

    const v20, 0x3f4ccccd    # 0.8f

    const v21, 0x3f30a3d7    # 0.69f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v16, 0x3fb70a3d    # 1.43f

    const v17, 0x3f547ae1    # 0.83f

    const v18, 0x405147ae    # 3.27f

    const v19, 0x3eae147b    # 0.34f

    const v20, 0x40833333    # 4.1f

    const v21, -0x40733333    # -1.1f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v0, 0x41bf70a4    # 23.93f

    const v15, 0x41887ae1    # 17.06f

    move/from16 v16, v3

    const v3, 0x4181eb85    # 16.24f

    .end local v3    # "$i$a$-materialIcon-Diversity2Kt$Diversity2$1":I
    .local v16, "$i$a$-materialIcon-Diversity2Kt$Diversity2$1":I
    invoke-virtual {v12, v0, v15, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    nop

    .line 173
    .end local v12    # "$this$_get_Diversity2__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v13    # "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$2":I
    nop

    .line 174
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 172
    .end local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 175
    nop

    .line 176
    .end local v9    # "$i$f$PathData":I
    nop

    .line 177
    nop

    .line 178
    nop

    .line 179
    nop

    .line 180
    nop

    .line 181
    nop

    .line 182
    nop

    .line 183
    nop

    .line 184
    nop

    .line 185
    nop

    .line 170
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 186
    nop

    .line 187
    .end local v7    # "name$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 75
    .end local v4    # "strokeAlpha$iv":F
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v22    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v43    # "fillAlpha$iv":F
    move-object v0, v2

    .line 188
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 189
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "fillAlpha$iv":F
    move/from16 v28, v1

    .line 188
    nop

    .line 190
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "strokeAlpha$iv":F
    move/from16 v30, v3

    .line 188
    nop

    .line 191
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .local v4, "pathFillType$iv":I
    move/from16 v25, v4

    .line 188
    const/4 v5, 0x0

    .line 197
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 198
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 200
    nop

    .line 202
    nop

    .line 203
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 204
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 205
    nop

    .line 197
    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v31, v6

    const/4 v7, 0x0

    .restart local v31    # "strokeLineWidth$iv$iv":F
    move-object/from16 v29, v7

    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v0

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v32    # "strokeLineCap$iv$iv":I
    .restart local v33    # "strokeLineJoin$iv$iv":I
    move/from16 v34, v6

    .line 206
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 207
    const-string v6, ""

    .local v6, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 206
    const/4 v7, 0x0

    .line 208
    .local v7, "$i$f$path-R_LF-3I":I
    nop

    .line 209
    const/4 v8, 0x0

    .line 210
    .local v8, "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v9, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 211
    .local v10, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_Diversity2__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 76
    .local v12, "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$3":I
    const v13, 0x41451eb8    # 12.32f

    const v15, 0x416028f6    # 14.01f

    invoke-virtual {v11, v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v36, -0x40c28f5c    # -0.74f

    const v37, 0x40651eb8    # 3.58f

    const v38, -0x405d70a4    # -1.27f

    const v39, 0x40be6666    # 5.95f

    const v40, -0x3fd851ec    # -2.62f

    const v41, 0x40d75c29    # 6.73f

    move-object/from16 v35, v11

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const v36, -0x40970a3d    # -0.91f

    const v37, 0x3f07ae14    # 0.53f

    const/high16 v38, -0x40000000    # -2.0f

    const v39, 0x3e75c28f    # 0.24f

    const v40, -0x3fde147b    # -2.53f

    const v41, -0x40d1eb85    # -0.68f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v36, -0x40f0a3d7    # -0.56f

    const v37, -0x408a3d71    # -0.96f

    const v38, -0x41b33333    # -0.2f

    const v39, -0x402b851f    # -1.66f

    const v40, 0x3ec7ae14    # 0.39f

    const v41, -0x3fab851f    # -3.32f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v13, 0x40e33333    # 7.1f

    const v15, 0x417ee148    # 15.93f

    invoke-virtual {v11, v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v36, -0x40266666    # -1.7f

    const v37, -0x416147ae    # -0.31f

    const/high16 v38, -0x3fe00000    # -2.5f

    const v39, -0x41570a3d    # -0.33f

    const v40, -0x3fbb851f    # -3.07f

    const v41, -0x40570a3d    # -1.32f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v36, -0x40f851ec    # -0.53f

    const v37, -0x40970a3d    # -0.91f

    const v38, -0x418a3d71    # -0.24f

    const/high16 v39, -0x40000000    # -2.0f

    const v40, 0x3f2e147b    # 0.68f

    const v41, -0x3fde147b    # -2.53f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v36, 0x3db851ec    # 0.09f

    const v37, -0x42b33333    # -0.05f

    const v38, 0x3e428f5c    # 0.19f

    const v39, -0x425c28f6    # -0.08f

    const v40, 0x3e947ae1    # 0.29f

    const v41, -0x421eb852    # -0.11f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v36, -0x414ccccd    # -0.35f

    const v37, -0x40f0a3d7    # -0.56f

    const v38, -0x40dc28f6    # -0.64f

    const v39, -0x406a3d71    # -1.17f

    const v40, -0x40ae147b    # -0.82f

    const v41, -0x40133333    # -1.85f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v36, -0x41dc28f6    # -0.16f

    const v37, 0x3d8f5c29    # 0.07f

    const v38, -0x415c28f6    # -0.32f

    const v39, 0x3e0f5c29    # 0.14f

    const v40, -0x410a3d71    # -0.48f

    const v41, 0x3e6b851f    # 0.23f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v36, -0x4010a3d7    # -1.87f

    const v37, 0x3f8a3d71    # 1.08f

    const v38, -0x3fe0a3d7    # -2.49f

    const v39, 0x4058f5c3    # 3.39f

    const v40, -0x404b851f    # -1.41f

    const v41, 0x40a851ec    # 5.26f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v36, 0x3d75c28f    # 0.06f

    const v37, 0x3dcccccd    # 0.1f

    const v38, 0x3e0f5c29    # 0.14f

    const v39, 0x3e3851ec    # 0.18f

    const v40, 0x3e570a3d    # 0.21f

    const v41, 0x3e8f5c29    # 0.28f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v36, -0x4151eb85    # -0.34f

    const v37, 0x3d75c28f    # 0.06f

    const v38, -0x40d1eb85    # -0.68f

    const v39, 0x3e2e147b    # 0.17f

    const/high16 v40, -0x40800000    # -1.0f

    const v41, 0x3eb33333    # 0.35f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v36, -0x4048f5c3    # -1.43f

    const v37, 0x3f547ae1    # 0.83f

    const v38, -0x4008f5c3    # -1.93f

    const v39, 0x402a3d71    # 2.66f

    const v40, -0x40733333    # -1.1f

    const v41, 0x40833333    # 4.1f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v13, 0x40833333    # 4.1f

    const v15, 0x3f8ccccd    # 1.1f

    move-object/from16 v19, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v19, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x402a3d71    # 2.66f

    move/from16 v20, v1

    .end local v1    # "fillAlpha$iv":F
    .local v20, "fillAlpha$iv":F
    const v1, 0x3ff70a3d    # 1.93f

    invoke-virtual {v11, v0, v1, v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v36, 0x3ea3d70a    # 0.32f

    const v37, -0x41c7ae14    # -0.18f

    const v38, 0x3f147ae1    # 0.58f

    const v39, -0x4128f5c3    # -0.42f

    const v40, 0x3f4ccccd    # 0.8f

    const v41, -0x40cf5c29    # -0.69f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v36, 0x3d4ccccd    # 0.05f

    const v37, 0x3de147ae    # 0.11f

    const v38, 0x3da3d70a    # 0.08f

    const v39, 0x3e6147ae    # 0.22f

    const v40, 0x3e0f5c29    # 0.14f

    const v41, 0x3ea3d70a    # 0.32f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v36, 0x3f8a3d71    # 1.08f

    const v37, 0x3fef5c29    # 1.87f

    const v38, 0x4058f5c3    # 3.39f

    const v39, 0x401f5c29    # 2.49f

    const v40, 0x40a851ec    # 5.26f

    const v41, 0x3fb47ae1    # 1.41f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v36, 0x4005c28f    # 2.09f

    const v37, -0x40651eb8    # -1.21f

    const v38, 0x402d70a4    # 2.71f

    const v39, -0x3f847ae1    # -3.93f

    const v40, 0x40633333    # 3.55f

    const v41, -0x3f01eb85    # -7.94f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v0, 0x416028f6    # 14.01f

    const v1, 0x41451eb8    # 12.32f

    invoke-virtual {v11, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    nop

    .line 211
    .end local v11    # "$this$_get_Diversity2__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$3":I
    nop

    .line 212
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 210
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 213
    nop

    .line 214
    .end local v8    # "$i$f$PathData":I
    nop

    .line 215
    nop

    .line 216
    nop

    .line 217
    nop

    .line 218
    nop

    .line 219
    nop

    .line 220
    nop

    .line 221
    nop

    .line 222
    nop

    .line 223
    nop

    .line 208
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 224
    nop

    .line 225
    .end local v6    # "name$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 75
    .end local v3    # "strokeAlpha$iv":F
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v19    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v20    # "fillAlpha$iv":F
    nop

    .line 104
    .end local v2    # "$this$_get_Diversity2__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v16    # "$i$a$-materialIcon-Diversity2Kt$Diversity2$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v14    # "$i$f$materialIcon":I
    .end local v42    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/outlined/Diversity2Kt;->_diversity2:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 99
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
