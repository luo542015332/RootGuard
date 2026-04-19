.class public final Landroidx/compose/material/icons/twotone/SpaKt;
.super Ljava/lang/Object;
.source "Spa.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpa.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Spa.kt\nandroidx/compose/material/icons/twotone/SpaKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,127:1\n122#2:128\n116#2,3:129\n119#2,3:133\n132#2,18:136\n152#2:173\n132#2,18:174\n152#2:211\n132#2,18:212\n152#2:249\n132#2,18:250\n152#2:287\n174#3:132\n694#4,2:154\n706#4,2:156\n708#4,11:162\n694#4,2:192\n706#4,2:194\n708#4,11:200\n694#4,2:230\n706#4,2:232\n708#4,11:238\n694#4,2:268\n706#4,2:270\n708#4,11:276\n64#5,4:158\n64#5,4:196\n64#5,4:234\n64#5,4:272\n*S KotlinDebug\n*F\n+ 1 Spa.kt\nandroidx/compose/material/icons/twotone/SpaKt\n*L\n29#1:128\n29#1:129,3\n29#1:133,3\n30#1:136,18\n30#1:173\n40#1:174,18\n40#1:211\n72#1:212,18\n72#1:249\n115#1:250,18\n115#1:287\n29#1:132\n30#1:154,2\n30#1:156,2\n30#1:162,11\n40#1:192,2\n40#1:194,2\n40#1:200,11\n72#1:230,2\n72#1:232,2\n72#1:238,11\n115#1:268,2\n115#1:270,2\n115#1:276,11\n30#1:158,4\n40#1:196,4\n72#1:234,4\n115#1:272,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_spa",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Spa",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getSpa",
        "(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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
.field private static _spa:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getSpa(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 50
    .param p0, "$this$Spa"    # Landroidx/compose/material/icons/Icons$TwoTone;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/SpaKt;->_spa:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "TwoTone.Spa"

    .local v0, "name$iv":Ljava/lang/String;
    const/4 v14, 0x0

    .line 128
    .local v14, "$i$f$materialIcon":I
    nop

    .line 129
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 130
    nop

    .line 131
    const/high16 v2, 0x41c00000    # 24.0f

    .local v2, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 132
    .local v3, "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 133
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v2, 0x41c00000    # 24.0f

    .restart local v2    # "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 132
    .restart local v3    # "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 134
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v6, 0x41c00000    # 24.0f

    .line 135
    const/high16 v7, 0x41c00000    # 24.0f

    .line 129
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v2, v15

    move-object v3, v0

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 128
    nop

    .local v2, "$this$_get_Spa__u24lambda_u244":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon-SpaKt$Spa$1":I
    move-object v4, v2

    .line 136
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 137
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "fillAlpha$iv":F
    move/from16 v20, v5

    .line 136
    nop

    .line 138
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "strokeAlpha$iv":F
    move/from16 v22, v6

    .line 136
    nop

    .line 139
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v7

    .local v7, "pathFillType$iv":I
    move/from16 v17, v7

    .line 136
    const/4 v8, 0x0

    .line 145
    .local v8, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 146
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v10, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v9

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 148
    nop

    .line 150
    nop

    .line 151
    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 152
    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 153
    nop

    .line 145
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

    .line 154
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 155
    const-string v10, ""

    .local v10, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v10

    .line 154
    const/4 v11, 0x0

    .line 156
    .local v11, "$i$f$path-R_LF-3I":I
    nop

    .line 157
    const/4 v13, 0x0

    .line 158
    .local v13, "$i$f$PathData":I
    new-instance v16, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v16, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v27, 0x0

    .line 159
    .local v27, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v35, v16

    .local v35, "$this$_get_Spa__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v36, 0x0

    .line 31
    .local v36, "$i$a$-materialPath-YwgOQQI$default-SpaKt$Spa$1$1":I
    const v9, 0x4108cccd    # 8.55f

    const/high16 v12, 0x41400000    # 12.0f

    move-object/from16 v42, v0

    move-object/from16 v0, v35

    .end local v35    # "$this$_get_Spa__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Spa__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v42, "name$iv":Ljava/lang/String;
    invoke-virtual {v0, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v29, -0x40770a3d    # -1.07f

    const v30, -0x40ca3d71    # -0.71f

    const/high16 v31, -0x3ff00000    # -2.25f

    const v32, -0x405d70a4    # -1.27f

    const v33, -0x3f9e147b    # -3.53f

    const v34, -0x4031eb85    # -1.61f

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v29, 0x3fa3d70a    # 1.28f

    const v30, 0x3eae147b    # 0.34f

    const v31, 0x401d70a4    # 2.46f

    const v32, 0x3f666666    # 0.9f

    const v33, 0x4061eb85    # 3.53f

    const v34, 0x3fce147b    # 1.61f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v9, 0x4197d70a    # 18.98f

    const v12, 0x41263d71    # 10.39f

    invoke-virtual {v0, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v29, -0x405ae148    # -1.29f

    const v31, -0x3fe0a3d7    # -2.49f

    const v32, 0x3f68f5c3    # 0.91f

    const v33, -0x3f9b851f    # -3.57f

    const v34, 0x3fd1eb85    # 1.64f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v29, 0x3f8a3d71    # 1.08f

    const v30, -0x40c51eb8    # -0.73f

    const v31, 0x4011eb85    # 2.28f

    const v32, -0x4059999a    # -1.3f

    const v33, 0x40647ae1    # 3.57f

    const v34, -0x402e147b    # -1.64f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    nop

    .line 159
    .end local v0    # "$this$_get_Spa__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v36    # "$i$a$-materialPath-YwgOQQI$default-SpaKt$Spa$1$1":I
    nop

    .line 160
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 158
    .end local v16    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v27    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 161
    nop

    .line 162
    .end local v13    # "$i$f$PathData":I
    nop

    .line 163
    nop

    .line 164
    nop

    .line 165
    nop

    .line 166
    nop

    .line 167
    nop

    .line 168
    nop

    .line 169
    nop

    .line 170
    nop

    .line 171
    nop

    .line 156
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 172
    nop

    .line 173
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

    .line 40
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "fillAlpha$iv":F
    .end local v6    # "strokeAlpha$iv":F
    .end local v7    # "pathFillType$iv":I
    .end local v8    # "$i$f$materialPath-YwgOQQI":I
    const v0, 0x3e99999a    # 0.3f

    .local v0, "fillAlpha$iv":F
    move/from16 v28, v0

    const v30, 0x3e99999a    # 0.3f

    .line 174
    .restart local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v30, "strokeAlpha$iv":F
    nop

    .line 177
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v25, v5

    .line 174
    const/4 v6, 0x0

    .line 183
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 184
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v7

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 186
    nop

    .line 188
    nop

    .line 189
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 190
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 191
    nop

    .line 183
    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v31, v7

    const/4 v8, 0x0

    .local v31, "strokeLineWidth$iv$iv":F
    move-object/from16 v29, v8

    .local v29, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v4

    .local v23, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v27, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v32, "strokeLineCap$iv$iv":I
    .local v33, "strokeLineJoin$iv$iv":I
    move/from16 v34, v7

    .line 192
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 193
    const-string v7, ""

    .local v7, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v7

    .line 192
    const/4 v8, 0x0

    .line 194
    .local v8, "$i$f$path-R_LF-3I":I
    nop

    .line 195
    const/4 v9, 0x0

    .line 196
    .local v9, "$i$f$PathData":I
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v10, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 197
    .local v11, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v12, v10

    .local v12, "$this$_get_Spa__u24lambda_u244_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v13, 0x0

    .line 41
    .local v13, "$i$a$-materialPath-YwgOQQI$default-SpaKt$Spa$1$2":I
    const v15, 0x410f0a3d    # 8.94f

    move/from16 v22, v0

    .end local v0    # "fillAlpha$iv":F
    .local v22, "fillAlpha$iv":F
    const/high16 v0, 0x41440000    # 12.25f

    invoke-virtual {v12, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/16 v16, 0x0

    const v17, -0x43dc28f6    # -0.01f

    const/16 v18, 0x0

    const v19, -0x43dc28f6    # -0.01f

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v16, -0x41fae148    # -0.13f

    const v17, -0x4247ae14    # -0.09f

    const v18, -0x4175c28f    # -0.27f

    const v19, -0x41d1eb85    # -0.17f

    const v20, -0x41333333    # -0.4f

    const v21, -0x417ae148    # -0.26f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v16, 0x3e051eb8    # 0.13f

    const v17, 0x3dcccccd    # 0.1f

    const v18, 0x3e8a3d71    # 0.27f

    const v19, 0x3e2e147b    # 0.17f

    const v20, 0x3ecccccd    # 0.4f

    const v21, 0x3e851eb8    # 0.26f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v0, 0x4155999a    # 13.35f

    const v15, 0x410947ae    # 8.58f

    invoke-virtual {v12, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v16, -0x419eb852    # -0.22f

    const v17, -0x40651eb8    # -1.21f

    const v18, -0x40d70a3d    # -0.66f

    const v19, -0x3fe9999a    # -2.35f

    const v20, -0x4059999a    # -1.3f

    const v21, -0x3fa7ae14    # -3.38f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v16, -0x40d70a3d    # -0.66f

    const v17, 0x3f851eb8    # 1.04f

    const v18, -0x4070a3d7    # -1.12f

    const v19, 0x400c28f6    # 2.19f

    const v20, -0x4050a3d7    # -1.37f

    const v21, 0x4058f5c3    # 3.39f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v16, 0x3eeb851f    # 0.46f

    const v17, 0x3e99999a    # 0.3f

    const v18, 0x3f666666    # 0.9f

    const v19, 0x3f1eb852    # 0.62f

    const v20, 0x3faa3d71    # 1.33f

    const v21, 0x3f7851ec    # 0.97f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v16, 0x3ed70a3d    # 0.42f

    const v17, -0x414ccccd    # -0.35f

    const v18, 0x3f5eb852    # 0.87f

    const v19, -0x40d1eb85    # -0.68f

    const v20, 0x3fab851f    # 1.34f

    const v21, -0x40851eb8    # -0.98f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v0, 0x418451ec    # 16.54f

    const v15, 0x415a8f5c    # 13.66f

    invoke-virtual {v12, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v0, 0x3ca3d70a    # 0.02f

    const v15, 0x3c23d70a    # 0.01f

    invoke-virtual {v12, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v16, -0x4247ae14    # -0.09f

    const v17, 0x3d75c28f    # 0.06f

    const v18, -0x41c7ae14    # -0.18f

    const v19, 0x3df5c28f    # 0.12f

    const v20, -0x4175c28f    # -0.27f

    const v21, 0x3e2e147b    # 0.17f

    move v0, v15

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v15, 0x3d4ccccd    # 0.05f

    const v0, -0x4270a3d7    # -0.07f

    invoke-virtual {v12, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v16, -0x40851eb8    # -0.98f

    const v17, 0x3f35c28f    # 0.71f

    const v18, -0x40147ae1    # -1.84f

    const v19, 0x3fce147b    # 1.61f

    const v20, -0x3fde147b    # -2.53f

    const v21, 0x402a3d71    # 2.66f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v15, 0x4198cccd    # 19.1f

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v12, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v0, -0x402a3d71    # -1.67f

    const v1, -0x3fdccccd    # -2.55f

    invoke-virtual {v12, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v16, -0x40d1eb85    # -0.68f

    const v17, -0x407c28f6    # -1.03f

    const v18, -0x403d70a4    # -1.52f

    const v19, -0x400a3d71    # -1.92f

    const v20, -0x3fdf5c29    # -2.51f

    const v21, -0x3fd66666    # -2.65f

    move v0, v15

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v15, -0x42dc28f6    # -0.04f

    const v1, -0x4270a3d7    # -0.07f

    invoke-virtual {v12, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v16, -0x41fae148    # -0.13f

    const v17, -0x425c28f6    # -0.08f

    const v18, -0x417ae148    # -0.26f

    const v19, -0x41dc28f6    # -0.16f

    const v20, -0x413851ec    # -0.39f

    const/high16 v21, -0x41800000    # -0.25f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v1, -0x43dc28f6    # -0.01f

    const v15, 0x3c23d70a    # 0.01f

    invoke-virtual {v12, v15, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v16, -0x408a3d71    # -0.96f

    const v17, -0x40deb852    # -0.63f

    const v18, -0x3fff5c29    # -2.01f

    const v19, -0x40770a3d    # -1.07f

    const v20, -0x3fb851ec    # -3.12f

    const v21, -0x4055c28f    # -1.33f

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const/high16 v16, 0x3f400000    # 0.75f

    const v17, 0x40570a3d    # 3.36f

    const v18, 0x404a3d71    # 3.16f

    const v19, 0x40c570a4    # 6.17f

    const v20, 0x40ce6666    # 6.45f

    const v21, 0x40eb3333    # 7.35f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v16, 0x3ed70a3d    # 0.42f

    const v17, 0x3e19999a    # 0.15f

    const v18, 0x3f570a3d    # 0.84f

    const v19, 0x3e8a3d71    # 0.27f

    const v20, 0x3fa3d70a    # 1.28f

    const v21, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v16, 0x3ee66666    # 0.45f

    const v17, -0x4247ae14    # -0.09f

    const v18, 0x3f63d70a    # 0.89f

    const v19, -0x41a8f5c3    # -0.21f

    const v20, 0x3faa3d71    # 1.33f

    const v21, -0x41428f5c    # -0.37f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v16, 0x405147ae    # 3.27f

    const v17, -0x406a3d71    # -1.17f

    const v18, 0x40b570a4    # 5.67f

    const v19, -0x3f8147ae    # -3.98f

    const v20, 0x40cdc28f    # 6.43f

    const v21, -0x3f151eb8    # -7.34f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v16, -0x406e147b    # -1.14f

    const v17, 0x3e851eb8    # 0.26f

    const v18, -0x3ff147ae    # -2.23f

    const v19, 0x3f3ae148    # 0.73f

    const v20, -0x3fb33333    # -3.2f

    const v21, 0x3fb1eb85    # 1.39f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v15, 0x410fd70a    # 8.99f

    const v1, 0x41447ae1    # 12.28f

    invoke-virtual {v12, v15, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    nop

    .line 197
    .end local v12    # "$this$_get_Spa__u24lambda_u244_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v13    # "$i$a$-materialPath-YwgOQQI$default-SpaKt$Spa$1$2":I
    nop

    .line 198
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 196
    .end local v10    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 199
    nop

    .line 200
    .end local v9    # "$i$f$PathData":I
    nop

    .line 201
    nop

    .line 202
    nop

    .line 203
    nop

    .line 204
    nop

    .line 205
    nop

    .line 206
    nop

    .line 207
    nop

    .line 208
    nop

    .line 209
    nop

    .line 194
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 210
    nop

    .line 211
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

    .line 72
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v22    # "fillAlpha$iv":F
    .end local v30    # "strokeAlpha$iv":F
    nop

    .line 212
    .restart local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 213
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "fillAlpha$iv":F
    move/from16 v28, v5

    .line 212
    nop

    .line 214
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "strokeAlpha$iv":F
    move/from16 v30, v6

    .line 212
    nop

    .line 215
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v7

    .local v7, "pathFillType$iv":I
    move/from16 v25, v7

    .line 212
    const/4 v8, 0x0

    .line 221
    .local v8, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 222
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v10, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v9

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 224
    nop

    .line 226
    nop

    .line 227
    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 228
    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 229
    nop

    .line 221
    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v31, v9

    const/4 v10, 0x0

    .restart local v31    # "strokeLineWidth$iv$iv":F
    move-object/from16 v29, v10

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v32    # "strokeLineCap$iv$iv":I
    .restart local v33    # "strokeLineJoin$iv$iv":I
    move/from16 v34, v9

    .line 230
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 231
    const-string v9, ""

    .local v9, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v9

    .line 230
    const/4 v10, 0x0

    .line 232
    .local v10, "$i$f$path-R_LF-3I":I
    nop

    .line 233
    const/4 v11, 0x0

    .line 234
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v13, 0x0

    .line 235
    .local v13, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v17, v12

    .local v17, "$this$_get_Spa__u24lambda_u244_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v18, 0x0

    .line 73
    .local v18, "$i$a$-materialPath-YwgOQQI$default-SpaKt$Spa$1$3":I
    const v1, 0x41773333    # 15.45f

    move-object/from16 v15, v17

    const/high16 v0, 0x41400000    # 12.0f

    .end local v17    # "$this$_get_Spa__u24lambda_u244_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v15, "$this$_get_Spa__u24lambda_u244_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v44, -0x40ae147b    # -0.82f

    const/high16 v45, -0x40600000    # -1.25f

    const v46, -0x4011eb85    # -1.86f

    const v47, -0x3fea3d71    # -2.34f

    const v48, -0x3fbc28f6    # -3.06f

    const v49, -0x3fb33333    # -3.2f

    move-object/from16 v43, v15

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v44, -0x41fae148    # -0.13f

    const v45, -0x4247ae14    # -0.09f

    const v46, -0x4175c28f    # -0.27f

    const v47, -0x41dc28f6    # -0.16f

    const v48, -0x41333333    # -0.4f

    const v49, -0x417ae148    # -0.26f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const v44, 0x3e051eb8    # 0.13f

    const v45, 0x3db851ec    # 0.09f

    const v46, 0x3e8a3d71    # 0.27f

    const v47, 0x3e2e147b    # 0.17f

    const v48, 0x3ec7ae14    # 0.39f

    const/high16 v49, 0x3e800000    # 0.25f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v44, 0x40df5c29    # 6.98f

    const v45, 0x412d47ae    # 10.83f

    const v46, 0x4092e148    # 4.59f

    const/high16 v47, 0x41200000    # 10.0f

    const/high16 v48, 0x40000000    # 2.0f

    const/high16 v49, 0x41200000    # 10.0f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const/16 v44, 0x0

    const v45, 0x40aa3d71    # 5.32f

    const v46, 0x40570a3d    # 3.36f

    const v47, 0x411d1eb8    # 9.82f

    const v48, 0x41007ae1    # 8.03f

    const v49, 0x4137d70a    # 11.49f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v44, 0x3f2147ae    # 0.63f

    const v45, 0x3e6b851f    # 0.23f

    const v46, 0x3fa51eb8    # 1.29f

    const v47, 0x3ecccccd    # 0.4f

    const v48, 0x3ffc28f6    # 1.97f

    const v49, 0x3f028f5c    # 0.51f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v44, 0x3f2e147b    # 0.68f

    const v45, -0x420a3d71    # -0.12f

    const v46, 0x3faa3d71    # 1.33f

    const v47, -0x416b851f    # -0.29f

    const v49, -0x40fd70a4    # -0.51f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v44, 0x41951eb8    # 18.64f

    const v45, 0x419e8f5c    # 19.82f

    const/high16 v46, 0x41b00000    # 22.0f

    const v47, 0x41751eb8    # 15.32f

    const/high16 v48, 0x41b00000    # 22.0f

    const/high16 v49, 0x41200000    # 10.0f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v44, -0x3f7a3d71    # -4.18f

    const/16 v45, 0x0

    const v46, -0x3f04cccd    # -7.85f

    const v47, 0x400ae148    # 2.17f

    const/high16 v48, -0x3ee00000    # -10.0f

    const v49, 0x40ae6666    # 5.45f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v0, 0x41551eb8    # 13.32f

    const v1, 0x419ccccd    # 19.6f

    invoke-virtual {v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v44, -0x411eb852    # -0.44f

    const v45, 0x3e19999a    # 0.15f

    const v46, -0x409eb852    # -0.88f

    const v47, 0x3e8a3d71    # 0.27f

    const v48, -0x4055c28f    # -1.33f

    const v49, 0x3ebd70a4    # 0.37f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v45, -0x4247ae14    # -0.09f

    const v46, -0x40a147ae    # -0.87f

    const v47, -0x41a8f5c3    # -0.21f

    const v48, -0x405c28f6    # -1.28f

    const v49, -0x4147ae14    # -0.36f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v44, -0x3fad70a4    # -3.29f

    const v45, -0x4068f5c3    # -1.18f

    const v46, -0x3f49999a    # -5.7f

    const v47, -0x3f80a3d7    # -3.99f

    const v48, -0x3f31999a    # -6.45f

    const v49, -0x3f14cccd    # -7.35f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v44, 0x3f8ccccd    # 1.1f

    const v45, 0x3e851eb8    # 0.26f

    const v46, 0x4009999a    # 2.15f

    const v47, 0x3f35c28f    # 0.71f

    const v48, 0x4047ae14    # 3.12f

    const v49, 0x3faa3d71    # 1.33f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v0, -0x435c28f6    # -0.02f

    const v1, 0x3c23d70a    # 0.01f

    invoke-virtual {v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v44, 0x3e051eb8    # 0.13f

    const v45, 0x3db851ec    # 0.09f

    const v46, 0x3e851eb8    # 0.26f

    const v47, 0x3e3851ec    # 0.18f

    const v48, 0x3ec7ae14    # 0.39f

    const/high16 v49, 0x3e800000    # 0.25f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v1, 0x3d23d70a    # 0.04f

    const v0, 0x3d8f5c29    # 0.07f

    invoke-virtual {v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v44, 0x3f7d70a4    # 0.99f

    const v45, 0x3f3851ec    # 0.72f

    const v46, 0x3feb851f    # 1.84f

    const v47, 0x3fce147b    # 1.61f

    const v48, 0x4020a3d7    # 2.51f

    const v49, 0x4029999a    # 2.65f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const/high16 v0, 0x41400000    # 12.0f

    const v1, 0x4198cccd    # 19.1f

    invoke-virtual {v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v0, 0x3fd5c28f    # 1.67f

    const v1, -0x3fdccccd    # -2.55f

    invoke-virtual {v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v44, 0x3f30a3d7    # 0.69f

    const v45, -0x4079999a    # -1.05f

    const v46, 0x3fc66666    # 1.55f

    const v47, -0x40066666    # -1.95f

    const v48, 0x4021eb85    # 2.53f

    const v49, -0x3fd5c28f    # -2.66f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v0, -0x42b33333    # -0.05f

    const v1, 0x3d8f5c29    # 0.07f

    invoke-virtual {v15, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const v44, 0x3db851ec    # 0.09f

    const v45, -0x42b33333    # -0.05f

    const v46, 0x3e3851ec    # 0.18f

    const v47, -0x421eb852    # -0.11f

    const v48, 0x3e8a3d71    # 0.27f

    const v49, -0x41d1eb85    # -0.17f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const v0, -0x435c28f6    # -0.02f

    const v1, -0x43dc28f6    # -0.01f

    invoke-virtual {v15, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const v44, 0x3f7ae148    # 0.98f

    const v45, -0x40d9999a    # -0.65f

    const v46, 0x40047ae1    # 2.07f

    const v47, -0x406f5c29    # -1.13f

    const v48, 0x404d70a4    # 3.21f

    const v49, -0x404ccccd    # -1.4f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const/high16 v44, -0x40c00000    # -0.75f

    const v45, 0x4057ae14    # 3.37f

    const v46, -0x3fb66666    # -3.15f

    const v47, 0x40c5c28f    # 6.18f

    const v48, -0x3f328f5c    # -6.42f

    const v49, 0x40eb3333    # 7.35f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const v0, 0x4177d70a    # 15.49f

    const v1, 0x411a147b    # 9.63f

    invoke-virtual {v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const v44, -0x41c7ae14    # -0.18f

    const v45, -0x3fcd70a4    # -2.79f

    const v46, -0x405851ec    # -1.31f

    const v47, -0x3f4fae14    # -5.51f

    const v48, -0x3fa47ae1    # -3.43f

    const v49, -0x3f0bd70a    # -7.63f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    const v44, -0x3ff70a3d    # -2.14f

    const v45, 0x4008f5c3    # 2.14f

    const v46, -0x3fab851f    # -3.32f

    const v47, 0x409b851f    # 4.86f

    const v48, -0x3f9ccccd    # -3.55f

    const v49, 0x40f428f6    # 7.63f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const v44, 0x3fa3d70a    # 1.28f

    const v45, 0x3f2e147b    # 0.68f

    const v46, 0x401d70a4    # 2.46f

    const v47, 0x3fc7ae14    # 1.56f

    const v48, 0x405f5c29    # 3.49f

    const v49, 0x402851ec    # 2.63f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    const v44, 0x3f83d70a    # 1.03f

    const v45, -0x407851ec    # -1.06f

    const v46, 0x400d70a4    # 2.21f

    const v47, -0x4007ae14    # -1.94f

    const v49, -0x3fd7ae14    # -2.63f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    const v0, 0x4140cccd    # 12.05f

    const v1, 0x40a6147b    # 5.19f

    invoke-virtual {v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    const v44, 0x3f2147ae    # 0.63f

    const v45, 0x3f83d70a    # 1.03f

    const v46, 0x3f88f5c3    # 1.07f

    const v47, 0x400b851f    # 2.18f

    const v48, 0x3fa66666    # 1.3f

    const v49, 0x405851ec    # 3.38f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    const v44, -0x410f5c29    # -0.47f

    const v45, 0x3e99999a    # 0.3f

    const v46, -0x40970a3d    # -0.91f

    const v47, 0x3f2147ae    # 0.63f

    const v48, -0x40547ae1    # -1.34f

    const v49, 0x3f7ae148    # 0.98f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    const v44, -0x4128f5c3    # -0.42f

    const v45, -0x4151eb85    # -0.34f

    const v46, -0x40a147ae    # -0.87f

    const v47, -0x40d47ae1    # -0.67f

    const v48, -0x4055c28f    # -1.33f

    const v49, -0x4087ae14    # -0.97f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    const/high16 v44, 0x3e800000    # 0.25f

    const v45, -0x40666666    # -1.2f

    const v46, 0x3f35c28f    # 0.71f

    const v47, -0x3fe9999a    # -2.35f

    const v48, 0x3faf5c29    # 1.37f

    const v49, -0x3fa70a3d    # -3.39f

    invoke-virtual/range {v43 .. v49}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    nop

    .line 235
    .end local v15    # "$this$_get_Spa__u24lambda_u244_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v18    # "$i$a$-materialPath-YwgOQQI$default-SpaKt$Spa$1$3":I
    nop

    .line 236
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 234
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v13    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 237
    nop

    .line 238
    .end local v11    # "$i$f$PathData":I
    nop

    .line 239
    nop

    .line 240
    nop

    .line 241
    nop

    .line 242
    nop

    .line 243
    nop

    .line 244
    nop

    .line 245
    nop

    .line 246
    nop

    .line 247
    nop

    .line 232
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 248
    nop

    .line 249
    .end local v9    # "name$iv$iv":Ljava/lang/String;
    .end local v10    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 115
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "fillAlpha$iv":F
    .end local v6    # "strokeAlpha$iv":F
    .end local v7    # "pathFillType$iv":I
    .end local v8    # "$i$f$materialPath-YwgOQQI":I
    const v0, 0x3e99999a    # 0.3f

    .restart local v0    # "fillAlpha$iv":F
    move/from16 v28, v0

    const v30, 0x3e99999a    # 0.3f

    .restart local v30    # "strokeAlpha$iv":F
    move-object v1, v2

    .line 250
    .local v1, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 253
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .local v4, "pathFillType$iv":I
    move/from16 v25, v4

    .line 250
    const/4 v5, 0x0

    .line 259
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 260
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 262
    nop

    .line 264
    nop

    .line 265
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 266
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 267
    nop

    .line 259
    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v31, v6

    const/4 v7, 0x0

    .restart local v31    # "strokeLineWidth$iv$iv":F
    move-object/from16 v29, v7

    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v1

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v32    # "strokeLineCap$iv$iv":I
    .restart local v33    # "strokeLineJoin$iv$iv":I
    move/from16 v34, v6

    .line 268
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 269
    const-string v6, ""

    .local v6, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 268
    const/4 v7, 0x0

    .line 270
    .local v7, "$i$f$path-R_LF-3I":I
    nop

    .line 271
    const/4 v8, 0x0

    .line 272
    .local v8, "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v9, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 273
    .local v10, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_Spa__u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 116
    .local v12, "$i$a$-materialPath-YwgOQQI$default-SpaKt$Spa$1$4":I
    const v13, 0x41447ae1    # 12.28f

    const v15, 0x410fd70a    # 8.99f

    invoke-virtual {v11, v15, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    const v36, -0x435c28f6    # -0.02f

    const v37, -0x43dc28f6    # -0.01f

    const v38, -0x42dc28f6    # -0.04f

    const v39, -0x430a3d71    # -0.03f

    const v40, -0x42b33333    # -0.05f

    const v41, -0x42dc28f6    # -0.04f

    move-object/from16 v35, v11

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    const/16 v36, 0x0

    const/16 v37, 0x0

    const v38, 0x3c23d70a    # 0.01f

    const/16 v39, 0x0

    const v40, 0x3c23d70a    # 0.01f

    const v41, 0x3c23d70a    # 0.01f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 119
    const v36, 0x3c23d70a    # 0.01f

    const v37, 0x3c23d70a    # 0.01f

    const v38, 0x3ca3d70a    # 0.02f

    const v39, 0x3ca3d70a    # 0.02f

    const v40, 0x3d23d70a    # 0.04f

    const v41, 0x3cf5c28f    # 0.03f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    nop

    .line 273
    .end local v11    # "$this$_get_Spa__u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-SpaKt$Spa$1$4":I
    nop

    .line 274
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 272
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 275
    nop

    .line 276
    .end local v8    # "$i$f$PathData":I
    nop

    .line 277
    nop

    .line 278
    nop

    .line 279
    nop

    .line 280
    nop

    .line 281
    nop

    .line 282
    nop

    .line 283
    nop

    .line 284
    nop

    .line 285
    nop

    .line 270
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v8

    .line 286
    nop

    .line 287
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

    .line 115
    .end local v0    # "fillAlpha$iv":F
    .end local v1    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v30    # "strokeAlpha$iv":F
    nop

    .line 128
    .end local v2    # "$this$_get_Spa__u24lambda_u244":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v3    # "$i$a$-materialIcon-SpaKt$Spa$1":I
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v14    # "$i$f$materialIcon":I
    .end local v42    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/SpaKt;->_spa:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 123
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
