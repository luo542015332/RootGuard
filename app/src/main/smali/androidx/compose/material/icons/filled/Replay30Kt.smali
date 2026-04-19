.class public final Landroidx/compose/material/icons/filled/Replay30Kt;
.super Ljava/lang/Object;
.source "Replay30.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReplay30.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Replay30.kt\nandroidx/compose/material/icons/filled/Replay30Kt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,145:1\n122#2:146\n116#2,3:147\n119#2,3:151\n132#2,18:154\n152#2:191\n132#2,18:192\n152#2:229\n132#2,18:230\n152#2:267\n174#3:150\n694#4,2:172\n706#4,2:174\n708#4,11:180\n694#4,2:210\n706#4,2:212\n708#4,11:218\n694#4,2:248\n706#4,2:250\n708#4,11:256\n64#5,4:176\n64#5,4:214\n64#5,4:252\n*S KotlinDebug\n*F\n+ 1 Replay30.kt\nandroidx/compose/material/icons/filled/Replay30Kt\n*L\n29#1:146\n29#1:147,3\n29#1:151,3\n30#1:154,18\n30#1:191\n45#1:192,18\n45#1:229\n98#1:230,18\n98#1:267\n29#1:150\n30#1:172,2\n30#1:174,2\n30#1:180,11\n45#1:210,2\n45#1:212,2\n45#1:218,11\n98#1:248,2\n98#1:250,2\n98#1:256,11\n30#1:176,4\n45#1:214,4\n98#1:252,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_replay30",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Replay30",
        "Landroidx/compose/material/icons/Icons$Filled;",
        "getReplay30",
        "(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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
.field private static _replay30:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getReplay30(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 73
    .param p0, "$this$Replay30"    # Landroidx/compose/material/icons/Icons$Filled;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/filled/Replay30Kt;->_replay30:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string v0, "Filled.Replay30"

    .local v0, "name$iv":Ljava/lang/String;
    const/4 v14, 0x0

    .line 146
    .local v14, "$i$f$materialIcon":I
    nop

    .line 147
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 148
    nop

    .line 149
    const/high16 v2, 0x41c00000    # 24.0f

    .local v2, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 150
    .local v3, "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 151
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v2, 0x41c00000    # 24.0f

    .restart local v2    # "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 150
    .restart local v3    # "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 152
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v6, 0x41c00000    # 24.0f

    .line 153
    const/high16 v7, 0x41c00000    # 24.0f

    .line 147
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v2, v15

    move-object v3, v0

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 146
    nop

    .local v2, "$this$_get_Replay30__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon-Replay30Kt$Replay30$1":I
    move-object v4, v2

    .line 154
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 155
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "fillAlpha$iv":F
    move/from16 v20, v5

    .line 154
    nop

    .line 156
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "strokeAlpha$iv":F
    move/from16 v22, v6

    .line 154
    nop

    .line 157
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v7

    .local v7, "pathFillType$iv":I
    move/from16 v17, v7

    .line 154
    const/4 v8, 0x0

    .line 163
    .local v8, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 164
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v10, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v9

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 166
    nop

    .line 168
    nop

    .line 169
    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 170
    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 171
    nop

    .line 163
    const/high16 v23, 0x3f800000    # 1.0f

    .local v23, "strokeLineWidth$iv$iv":F
    const/16 v21, 0x0

    .local v21, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v15, v4

    .local v15, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v19, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v24, "strokeLineCap$iv$iv":I
    .local v25, "strokeLineJoin$iv$iv":I
    const/high16 v26, 0x3f800000    # 1.0f

    .line 172
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 173
    const-string v9, ""

    .local v9, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v9

    .line 172
    const/4 v10, 0x0

    .line 174
    .local v10, "$i$f$path-R_LF-3I":I
    nop

    .line 175
    const/4 v11, 0x0

    .line 176
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v13, 0x0

    .line 177
    .local v13, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v16, v12

    .local v16, "$this$_get_Replay30__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v34, 0x0

    .line 31
    .local v34, "$i$a$-materialPath-YwgOQQI$default-Replay30Kt$Replay30$1$1":I
    move-object/from16 v35, v0

    .end local v0    # "name$iv":Ljava/lang/String;
    .local v35, "name$iv":Ljava/lang/String;
    const/high16 v0, 0x41400000    # 12.0f

    const/high16 v1, 0x40a00000    # 5.0f

    move/from16 v36, v3

    move-object/from16 v3, v16

    .end local v16    # "$this$_get_Replay30__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v3, "$this$_get_Replay30__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v36, "$i$a$-materialIcon-Replay30Kt$Replay30$1":I
    invoke-virtual {v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v3, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const/high16 v0, 0x40e00000    # 7.0f

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {v3, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-virtual {v3, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v28, 0x4053d70a    # 3.31f

    const/16 v29, 0x0

    const/high16 v30, 0x40c00000    # 6.0f

    const v31, 0x402c28f6    # 2.69f

    const/high16 v32, 0x40c00000    # 6.0f

    const/high16 v33, 0x40c00000    # 6.0f

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const/high16 v0, 0x40c00000    # 6.0f

    move-object/from16 v37, v4

    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v37, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v4, -0x3f400000    # -6.0f

    move/from16 v38, v5

    .end local v5    # "fillAlpha$iv":F
    .local v38, "fillAlpha$iv":F
    const v5, -0x3fd3d70a    # -2.69f

    invoke-virtual {v3, v5, v0, v4, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v0, -0x3fd3d70a    # -2.69f

    const/high16 v1, -0x3f400000    # -6.0f

    invoke-virtual {v3, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {v3, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const/16 v28, 0x0

    const v29, 0x408d70a4    # 4.42f

    const v30, 0x40651eb8    # 3.58f

    const/high16 v31, 0x41000000    # 8.0f

    const/high16 v32, 0x41000000    # 8.0f

    const/high16 v33, 0x41000000    # 8.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const/high16 v0, 0x41000000    # 8.0f

    const/high16 v1, -0x3f000000    # -8.0f

    const/high16 v4, 0x41000000    # 8.0f

    const v5, -0x3f9ae148    # -3.58f

    invoke-virtual {v3, v4, v5, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v0, 0x41835c29    # 16.42f

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {v3, v0, v4, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    nop

    .line 177
    .end local v3    # "$this$_get_Replay30__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v34    # "$i$a$-materialPath-YwgOQQI$default-Replay30Kt$Replay30$1$1":I
    nop

    .line 178
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 176
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v13    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 179
    nop

    .line 180
    .end local v11    # "$i$f$PathData":I
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

    .line 186
    nop

    .line 187
    nop

    .line 188
    nop

    .line 189
    nop

    .line 174
    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 190
    nop

    .line 191
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

    .line 45
    .end local v6    # "strokeAlpha$iv":F
    .end local v7    # "pathFillType$iv":I
    .end local v8    # "$i$f$materialPath-YwgOQQI":I
    .end local v37    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v38    # "fillAlpha$iv":F
    move-object v0, v2

    .line 192
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 193
    const/high16 v1, 0x3f800000    # 1.0f

    .local v1, "fillAlpha$iv":F
    move/from16 v44, v1

    .line 192
    nop

    .line 194
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "strokeAlpha$iv":F
    move/from16 v46, v3

    .line 192
    nop

    .line 195
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .local v4, "pathFillType$iv":I
    move/from16 v41, v4

    .line 192
    const/4 v5, 0x0

    .line 201
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 202
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v43, v6

    check-cast v43, Landroidx/compose/ui/graphics/Brush;

    .line 204
    nop

    .line 206
    nop

    .line 207
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v48

    .line 208
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v49

    .line 209
    nop

    .line 201
    const/high16 v47, 0x3f800000    # 1.0f

    .local v47, "strokeLineWidth$iv$iv":F
    const/16 v45, 0x0

    .local v45, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v39, v0

    .local v39, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v43, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v48, "strokeLineCap$iv$iv":I
    .local v49, "strokeLineJoin$iv$iv":I
    const/high16 v50, 0x3f800000    # 1.0f

    .line 210
    .local v50, "strokeLineMiter$iv$iv":F
    nop

    .line 211
    const-string v6, ""

    .local v6, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v42, v6

    .line 210
    const/4 v7, 0x0

    .line 212
    .local v7, "$i$f$path-R_LF-3I":I
    nop

    .line 213
    const/4 v8, 0x0

    .line 214
    .local v8, "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v9, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 215
    .local v10, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_Replay30__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 46
    .local v12, "$i$a$-materialPath-YwgOQQI$default-Replay30Kt$Replay30$1$2":I
    const v13, 0x4118f5c3    # 9.56f

    const v15, 0x4157d70a    # 13.49f

    invoke-virtual {v11, v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v13, 0x3ee66666    # 0.45f

    invoke-virtual {v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v16, 0x3e570a3d    # 0.21f

    const/16 v17, 0x0

    const v18, 0x3ebd70a4    # 0.37f

    const v19, -0x42b33333    # -0.05f

    const v20, 0x3ef5c28f    # 0.48f

    const v21, -0x41dc28f6    # -0.16f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v13, -0x4123d70a    # -0.43f

    const v15, 0x3e23d70a    # 0.16f

    move-object/from16 v22, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v22, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v0, -0x41800000    # -0.25f

    invoke-virtual {v11, v15, v0, v15, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const/16 v16, 0x0

    const v17, -0x425c28f6    # -0.08f

    const v18, -0x43dc28f6    # -0.01f

    const v19, -0x41e66666    # -0.15f

    const v20, -0x42dc28f6    # -0.04f

    const v21, -0x419eb852    # -0.22f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v0, -0x428a3d71    # -0.06f

    const v13, -0x41d1eb85    # -0.17f

    const v15, -0x421eb852    # -0.11f

    move/from16 v23, v1

    .end local v1    # "fillAlpha$iv":F
    .local v23, "fillAlpha$iv":F
    const v1, -0x420a3d71    # -0.12f

    invoke-virtual {v11, v0, v1, v15, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v0, -0x4247ae14    # -0.09f

    const v1, -0x41c7ae14    # -0.18f

    const v13, -0x421eb852    # -0.11f

    invoke-virtual {v11, v13, v0, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v0, -0x41dc28f6    # -0.16f

    const/high16 v1, -0x41800000    # -0.25f

    const v13, -0x42dc28f6    # -0.04f

    invoke-virtual {v11, v0, v13, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v16, -0x425c28f6    # -0.08f

    const/16 v17, 0x0

    const v18, -0x41e66666    # -0.15f

    const v19, 0x3c23d70a    # 0.01f

    const v20, -0x419eb852    # -0.22f

    const v21, 0x3cf5c28f    # 0.03f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v0, -0x41fae148    # -0.13f

    const v1, 0x3d4ccccd    # 0.05f

    const v13, 0x3dcccccd    # 0.1f

    const v15, -0x41c7ae14    # -0.18f

    invoke-virtual {v11, v0, v1, v15, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v0, 0x3e19999a    # 0.15f

    const v1, 0x3db851ec    # 0.09f

    const v13, -0x4247ae14    # -0.09f

    const v15, -0x420a3d71    # -0.12f

    invoke-virtual {v11, v13, v1, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v0, 0x3e4ccccd    # 0.2f

    const v1, 0x3e051eb8    # 0.13f

    const v13, -0x42b33333    # -0.05f

    invoke-virtual {v11, v13, v1, v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v0, 0x410a6666    # 8.65f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const/16 v16, 0x0

    const v17, -0x41c7ae14    # -0.18f

    const v18, 0x3d23d70a    # 0.04f

    const v19, -0x4151eb85    # -0.34f

    const v20, 0x3de147ae    # 0.11f

    const v21, -0x410a3d71    # -0.48f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v0, 0x3e99999a    # 0.3f

    const v1, -0x41428f5c    # -0.37f

    const v13, 0x3e2e147b    # 0.17f

    const v15, -0x4175c28f    # -0.27f

    invoke-virtual {v11, v13, v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v0, 0x3ee147ae    # 0.44f

    const v1, -0x41947ae1    # -0.23f

    const v13, -0x41c7ae14    # -0.18f

    const v15, 0x3e8a3d71    # 0.27f

    invoke-virtual {v11, v15, v13, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v0, 0x3f0a3d71    # 0.54f

    const v1, -0x425c28f6    # -0.08f

    const v13, 0x3eb33333    # 0.35f

    const v15, -0x425c28f6    # -0.08f

    invoke-virtual {v11, v13, v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v16, 0x3e570a3d    # 0.21f

    const/16 v17, 0x0

    const v18, 0x3ed1eb85    # 0.41f

    const v19, 0x3cf5c28f    # 0.03f

    const v20, 0x3f170a3d    # 0.59f

    const v21, 0x3da3d70a    # 0.08f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v0, 0x3eeb851f    # 0.46f

    const v1, 0x3e6b851f    # 0.23f

    const v13, 0x3e051eb8    # 0.13f

    const v15, 0x3ea8f5c3    # 0.33f

    invoke-virtual {v11, v15, v13, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v0, 0x3e99999a    # 0.3f

    const v1, 0x3ec28f5c    # 0.38f

    const v13, 0x3e6b851f    # 0.23f

    const v15, 0x3e6b851f    # 0.23f

    invoke-virtual {v11, v13, v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v0, 0x3f07ae14    # 0.53f

    const v1, 0x3ea8f5c3    # 0.33f

    const v13, 0x3de147ae    # 0.11f

    invoke-virtual {v11, v13, v1, v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const/16 v16, 0x0

    const v17, 0x3db851ec    # 0.09f

    const v18, -0x43dc28f6    # -0.01f

    const v19, 0x3e3851ec    # 0.18f

    const v20, -0x42dc28f6    # -0.04f

    const v21, 0x3e8a3d71    # 0.27f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v0, -0x41fae148    # -0.13f

    const/high16 v1, 0x3e800000    # 0.25f

    const v13, 0x3e2e147b    # 0.17f

    const v15, -0x4270a3d7    # -0.07f

    invoke-virtual {v11, v15, v13, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v0, -0x41b33333    # -0.2f

    const v1, 0x3e6147ae    # 0.22f

    const v13, -0x420a3d71    # -0.12f

    const v15, 0x3e19999a    # 0.15f

    invoke-virtual {v11, v13, v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v0, 0x3df5c28f    # 0.12f

    const v1, -0x4170a3d7    # -0.28f

    const v13, -0x41d1eb85    # -0.17f

    const v15, 0x3e2e147b    # 0.17f

    invoke-virtual {v11, v13, v0, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v16, 0x3e75c28f    # 0.24f

    const v18, 0x3ed70a3d    # 0.42f

    const v19, 0x3e570a3d    # 0.21f

    const v20, 0x3f0a3d71    # 0.54f

    const v21, 0x3ec7ae14    # 0.39f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v0, 0x3ec28f5c    # 0.38f

    const v1, 0x3f1c28f6    # 0.61f

    const v13, 0x3e3851ec    # 0.18f

    invoke-virtual {v11, v13, v0, v13, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const/16 v16, 0x0

    const v17, 0x3e4ccccd    # 0.2f

    const v18, -0x42dc28f6    # -0.04f

    const v19, 0x3ec28f5c    # 0.38f

    const v20, -0x420a3d71    # -0.12f

    const v21, 0x3f07ae14    # 0.53f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v0, -0x415c28f6    # -0.32f

    const v1, 0x3ec7ae14    # 0.39f

    const v13, -0x41c7ae14    # -0.18f

    const v15, 0x3e947ae1    # 0.29f

    invoke-virtual {v11, v13, v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v0, -0x410a3d71    # -0.48f

    const v1, 0x3e75c28f    # 0.24f

    const v13, -0x416b851f    # -0.29f

    const v15, 0x3e428f5c    # 0.19f

    invoke-virtual {v11, v13, v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const v0, -0x40e66666    # -0.6f

    const v1, 0x3da3d70a    # 0.08f

    const v13, -0x413d70a4    # -0.38f

    const v15, 0x3da3d70a    # 0.08f

    invoke-virtual {v11, v13, v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v16, -0x41c7ae14    # -0.18f

    const/16 v17, 0x0

    const v18, -0x4147ae14    # -0.36f

    const v19, -0x435c28f6    # -0.02f

    const v20, -0x40f851ec    # -0.53f

    const v21, -0x4270a3d7    # -0.07f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const v0, -0x41147ae1    # -0.46f

    const v1, -0x41947ae1    # -0.23f

    const v13, -0x41570a3d    # -0.33f

    const v15, -0x420a3d71    # -0.12f

    invoke-virtual {v11, v13, v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v0, -0x41947ae1    # -0.23f

    const v1, -0x413d70a4    # -0.38f

    const/high16 v15, -0x41800000    # -0.25f

    invoke-virtual {v11, v15, v0, v13, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v0, -0x4151eb85    # -0.34f

    const v1, -0x40f33333    # -0.55f

    const v13, -0x420a3d71    # -0.12f

    invoke-virtual {v11, v13, v0, v13, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v0, 0x3f59999a    # 0.85f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const/16 v16, 0x0

    const v17, 0x3da3d70a    # 0.08f

    const v18, 0x3ca3d70a    # 0.02f

    const v19, 0x3e19999a    # 0.15f

    const v20, 0x3d4ccccd    # 0.05f

    const v21, 0x3e6147ae    # 0.22f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v0, 0x3d8f5c29    # 0.07f

    const v1, 0x3df5c28f    # 0.12f

    const v13, 0x3e051eb8    # 0.13f

    const v15, 0x3e2e147b    # 0.17f

    invoke-virtual {v11, v0, v1, v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v0, 0x3df5c28f    # 0.12f

    const v1, 0x3e4ccccd    # 0.2f

    const v13, 0x3db851ec    # 0.09f

    const v15, 0x3de147ae    # 0.11f

    invoke-virtual {v11, v0, v13, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3d23d70a    # 0.04f

    const v13, 0x3e23d70a    # 0.16f

    const v15, 0x3d23d70a    # 0.04f

    invoke-virtual {v11, v13, v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v16, 0x3dcccccd    # 0.1f

    const/16 v17, 0x0

    const v18, 0x3e428f5c    # 0.19f

    const v19, -0x43dc28f6    # -0.01f

    const v20, 0x3e8a3d71    # 0.27f

    const v21, -0x42dc28f6    # -0.04f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v0, -0x4270a3d7    # -0.07f

    const v1, 0x3e4ccccd    # 0.2f

    const v13, -0x420a3d71    # -0.12f

    const v15, 0x3e19999a    # 0.15f

    invoke-virtual {v11, v15, v0, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v0, 0x3e051eb8    # 0.13f

    const v1, 0x3dcccccd    # 0.1f

    const v13, -0x41c7ae14    # -0.18f

    const v15, -0x421eb852    # -0.11f

    invoke-virtual {v11, v1, v15, v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v0, 0x3d23d70a    # 0.04f

    const v1, -0x418a3d71    # -0.24f

    const v13, 0x3d23d70a    # 0.04f

    const v15, -0x41e66666    # -0.15f

    invoke-virtual {v11, v13, v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const/16 v16, 0x0

    const v17, -0x421eb852    # -0.11f

    const v18, -0x435c28f6    # -0.02f

    const v19, -0x41a8f5c3    # -0.21f

    const v20, -0x42b33333    # -0.05f

    const v21, -0x416b851f    # -0.29f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v0, -0x41f0a3d7    # -0.14f

    const v1, -0x41b33333    # -0.2f

    const v13, -0x425c28f6    # -0.08f

    const v15, -0x41e66666    # -0.15f

    invoke-virtual {v11, v13, v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v0, -0x41fae148    # -0.13f

    const v1, -0x419eb852    # -0.22f

    const v13, -0x4247ae14    # -0.09f

    const v15, -0x421eb852    # -0.11f

    invoke-virtual {v11, v0, v13, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v0, -0x416b851f    # -0.29f

    const v1, -0x42dc28f6    # -0.04f

    const v13, -0x41c7ae14    # -0.18f

    invoke-virtual {v11, v13, v1, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v0, 0x4118f5c3    # 9.56f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v0, 0x4157d70a    # 13.49f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    nop

    .line 215
    .end local v11    # "$this$_get_Replay30__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-Replay30Kt$Replay30$1$2":I
    nop

    .line 216
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v40

    .line 214
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 217
    nop

    .line 218
    .end local v8    # "$i$f$PathData":I
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

    .line 224
    nop

    .line 225
    nop

    .line 226
    nop

    .line 227
    nop

    .line 212
    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x3800

    const/16 v55, 0x0

    invoke-static/range {v39 .. v55}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 228
    nop

    .line 229
    .end local v6    # "name$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$path-R_LF-3I":I
    .end local v39    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v43    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v45    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v47    # "strokeLineWidth$iv$iv":F
    .end local v48    # "strokeLineCap$iv$iv":I
    .end local v49    # "strokeLineJoin$iv$iv":I
    .end local v50    # "strokeLineMiter$iv$iv":F
    nop

    .line 98
    .end local v3    # "strokeAlpha$iv":F
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v22    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v23    # "fillAlpha$iv":F
    move-object v0, v2

    .line 230
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 231
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "fillAlpha$iv":F
    move/from16 v61, v1

    .line 230
    nop

    .line 232
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "strokeAlpha$iv":F
    move/from16 v63, v3

    .line 230
    nop

    .line 233
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .restart local v4    # "pathFillType$iv":I
    move/from16 v58, v4

    .line 230
    const/4 v5, 0x0

    .line 239
    .restart local v5    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 240
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v60, v6

    check-cast v60, Landroidx/compose/ui/graphics/Brush;

    .line 242
    nop

    .line 244
    nop

    .line 245
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v65

    .line 246
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v66

    .line 247
    nop

    .line 239
    const/high16 v64, 0x3f800000    # 1.0f

    .local v64, "strokeLineWidth$iv$iv":F
    const/16 v62, 0x0

    .local v62, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v56, v0

    .local v56, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v60, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v65, "strokeLineCap$iv$iv":I
    .local v66, "strokeLineJoin$iv$iv":I
    const/high16 v67, 0x3f800000    # 1.0f

    .line 248
    .local v67, "strokeLineMiter$iv$iv":F
    nop

    .line 249
    const-string v6, ""

    .restart local v6    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v59, v6

    .line 248
    const/4 v7, 0x0

    .line 250
    .restart local v7    # "$i$f$path-R_LF-3I":I
    nop

    .line 251
    const/4 v8, 0x0

    .line 252
    .restart local v8    # "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 253
    .restart local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_Replay30__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 99
    .local v12, "$i$a$-materialPath-YwgOQQI$default-Replay30Kt$Replay30$1$3":I
    const v13, 0x4174cccd    # 15.3f

    const v15, 0x4163d70a    # 14.24f

    invoke-virtual {v11, v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const v17, 0x3ea3d70a    # 0.32f

    const v18, -0x430a3d71    # -0.03f

    const v19, 0x3f19999a    # 0.6f

    const v20, -0x42333333    # -0.1f

    const v21, 0x3f51eb85    # 0.82f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const v13, -0x416b851f    # -0.29f

    const v15, 0x3f11eb85    # 0.57f

    move-object/from16 v22, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v22    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, -0x41d1eb85    # -0.17f

    move/from16 v23, v1

    .end local v1    # "fillAlpha$iv":F
    .restart local v23    # "fillAlpha$iv":F
    const v1, 0x3ed70a3d    # 0.42f

    invoke-virtual {v11, v0, v1, v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const v0, 0x3e851eb8    # 0.26f

    const v1, -0x4119999a    # -0.45f

    const v13, 0x3ea8f5c3    # 0.33f

    const v15, -0x4170a3d7    # -0.28f

    invoke-virtual {v11, v15, v0, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const v0, -0x41428f5c    # -0.37f

    const v1, -0x40e8f5c3    # -0.59f

    const v13, 0x3dcccccd    # 0.1f

    invoke-virtual {v11, v0, v13, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    const v0, -0x40e8f5c3    # -0.59f

    const v1, -0x42333333    # -0.1f

    const v13, -0x412e147b    # -0.41f

    const v15, -0x430a3d71    # -0.03f

    invoke-virtual {v11, v13, v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const v0, -0x41147ae1    # -0.46f

    const v1, -0x41570a3d    # -0.33f

    const v13, -0x41c7ae14    # -0.18f

    invoke-virtual {v11, v1, v13, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    const v0, -0x41666666    # -0.3f

    const v1, -0x40ee147b    # -0.57f

    const v13, -0x41947ae1    # -0.23f

    const v15, -0x4151eb85    # -0.34f

    invoke-virtual {v11, v13, v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    const/high16 v0, -0x41000000    # -0.5f

    const v1, -0x40ae147b    # -0.82f

    const v13, -0x421eb852    # -0.11f

    invoke-virtual {v11, v13, v0, v13, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    const/high16 v0, 0x41580000    # 13.5f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    const v17, -0x415c28f6    # -0.32f

    const v18, 0x3cf5c28f    # 0.03f

    const v19, -0x40e66666    # -0.6f

    const v20, 0x3dcccccd    # 0.1f

    const v21, -0x40ae147b    # -0.82f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    const v0, 0x3e947ae1    # 0.29f

    const v1, -0x40ee147b    # -0.57f

    const v13, 0x3e2e147b    # 0.17f

    const v15, -0x4128f5c3    # -0.42f

    invoke-virtual {v11, v13, v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    const v0, -0x417ae148    # -0.26f

    const v1, 0x3ee66666    # 0.45f

    const v13, -0x41570a3d    # -0.33f

    const v15, 0x3e8f5c29    # 0.28f

    invoke-virtual {v11, v15, v0, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    const v0, 0x3f170a3d    # 0.59f

    const v1, -0x42333333    # -0.1f

    const v13, 0x3ebd70a4    # 0.37f

    const v15, -0x42333333    # -0.1f

    invoke-virtual {v11, v13, v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    const v0, 0x3cf5c28f    # 0.03f

    const v1, 0x3f170a3d    # 0.59f

    const v13, 0x3dcccccd    # 0.1f

    const v15, 0x3ed1eb85    # 0.41f

    invoke-virtual {v11, v15, v0, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    const v0, 0x3eeb851f    # 0.46f

    const v1, 0x3e3851ec    # 0.18f

    const v13, 0x3ea8f5c3    # 0.33f

    invoke-virtual {v11, v13, v1, v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    const v0, 0x3e99999a    # 0.3f

    const v1, 0x3f11eb85    # 0.57f

    const v13, 0x3e6b851f    # 0.23f

    const v15, 0x3eae147b    # 0.34f

    invoke-virtual {v11, v13, v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3f51eb85    # 0.82f

    const v13, 0x3de147ae    # 0.11f

    invoke-virtual {v11, v13, v0, v13, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    const v0, 0x4163d70a    # 14.24f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 119
    const v0, 0x41673333    # 14.45f

    const v1, 0x4156147b    # 13.38f

    invoke-virtual {v11, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    const v17, -0x41bd70a4    # -0.19f

    const v18, -0x43dc28f6    # -0.01f

    const v19, -0x414ccccd    # -0.35f

    const v20, -0x42dc28f6    # -0.04f

    const v21, -0x410a3d71    # -0.48f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    const v16, -0x430a3d71    # -0.03f

    const v17, -0x41fae148    # -0.13f

    const v18, -0x4270a3d7    # -0.07f

    const v19, -0x41947ae1    # -0.23f

    const v20, -0x420a3d71    # -0.12f

    const v21, -0x416147ae    # -0.31f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    const v0, -0x41f0a3d7    # -0.14f

    const v1, -0x41bd70a4    # -0.19f

    const v13, -0x41d1eb85    # -0.17f

    const v15, -0x421eb852    # -0.11f

    invoke-virtual {v11, v15, v0, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    const v0, -0x41dc28f6    # -0.16f

    const v1, -0x42b33333    # -0.05f

    const/high16 v13, -0x41800000    # -0.25f

    invoke-virtual {v11, v0, v1, v13, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 124
    const v0, 0x3ca3d70a    # 0.02f

    const v1, 0x3d4ccccd    # 0.05f

    const v15, -0x41c7ae14    # -0.18f

    invoke-virtual {v11, v15, v0, v13, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 125
    const v0, -0x41f0a3d7    # -0.14f

    const v1, -0x41bd70a4    # -0.19f

    const v13, 0x3db851ec    # 0.09f

    const v15, 0x3e2e147b    # 0.17f

    invoke-virtual {v11, v0, v13, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 126
    const v0, 0x3e9eb852    # 0.31f

    const v1, 0x3e3851ec    # 0.18f

    const v13, -0x4247ae14    # -0.09f

    const v15, -0x420a3d71    # -0.12f

    invoke-virtual {v11, v13, v1, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 127
    const v0, 0x3e947ae1    # 0.29f

    const v1, 0x3ef5c28f    # 0.48f

    const v13, -0x42dc28f6    # -0.04f

    invoke-virtual {v11, v13, v0, v13, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 128
    const v0, 0x3f7851ec    # 0.97f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 129
    const/16 v16, 0x0

    const v17, 0x3e428f5c    # 0.19f

    const v18, 0x3c23d70a    # 0.01f

    const v19, 0x3eb33333    # 0.35f

    const v20, 0x3d23d70a    # 0.04f

    const v21, 0x3ef5c28f    # 0.48f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 130
    const v0, 0x3df5c28f    # 0.12f

    const v1, 0x3ea3d70a    # 0.32f

    const v13, 0x3d8f5c29    # 0.07f

    const v15, 0x3e75c28f    # 0.24f

    invoke-virtual {v11, v13, v15, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    const v0, 0x3e0f5c29    # 0.14f

    const v1, 0x3e428f5c    # 0.19f

    const v13, 0x3de147ae    # 0.11f

    const v15, 0x3e2e147b    # 0.17f

    invoke-virtual {v11, v13, v0, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 132
    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3d4ccccd    # 0.05f

    const v13, 0x3e23d70a    # 0.16f

    invoke-virtual {v11, v13, v1, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 133
    const v0, -0x435c28f6    # -0.02f

    const/high16 v1, 0x3e800000    # 0.25f

    const v13, 0x3e3851ec    # 0.18f

    const v15, -0x42b33333    # -0.05f

    invoke-virtual {v11, v13, v0, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 134
    const v0, 0x3e0f5c29    # 0.14f

    const v1, 0x3e428f5c    # 0.19f

    const v13, -0x4247ae14    # -0.09f

    const v15, -0x41d1eb85    # -0.17f

    invoke-virtual {v11, v0, v13, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 135
    const v0, -0x41bd70a4    # -0.19f

    const v1, -0x415c28f6    # -0.32f

    const v13, 0x3db851ec    # 0.09f

    const v15, 0x3de147ae    # 0.11f

    invoke-virtual {v11, v13, v0, v15, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 136
    const v16, 0x3cf5c28f    # 0.03f

    const v17, -0x41fae148    # -0.13f

    const v18, 0x3d23d70a    # 0.04f

    const v19, -0x416b851f    # -0.29f

    const v21, -0x410a3d71    # -0.48f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 137
    const v0, 0x4156147b    # 13.38f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 138
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 139
    nop

    .line 253
    .end local v11    # "$this$_get_Replay30__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-Replay30Kt$Replay30$1$3":I
    nop

    .line 254
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v57

    .line 252
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 255
    nop

    .line 256
    .end local v8    # "$i$f$PathData":I
    nop

    .line 257
    nop

    .line 258
    nop

    .line 259
    nop

    .line 260
    nop

    .line 261
    nop

    .line 262
    nop

    .line 263
    nop

    .line 264
    nop

    .line 265
    nop

    .line 250
    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x3800

    const/16 v72, 0x0

    invoke-static/range {v56 .. v72}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 266
    nop

    .line 267
    .end local v6    # "name$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$path-R_LF-3I":I
    .end local v56    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v60    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v62    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v64    # "strokeLineWidth$iv$iv":F
    .end local v65    # "strokeLineCap$iv$iv":I
    .end local v66    # "strokeLineJoin$iv$iv":I
    .end local v67    # "strokeLineMiter$iv$iv":F
    nop

    .line 98
    .end local v3    # "strokeAlpha$iv":F
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v22    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v23    # "fillAlpha$iv":F
    nop

    .line 146
    .end local v2    # "$this$_get_Replay30__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v36    # "$i$a$-materialIcon-Replay30Kt$Replay30$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v14    # "$i$f$materialIcon":I
    .end local v35    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/filled/Replay30Kt;->_replay30:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 141
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
