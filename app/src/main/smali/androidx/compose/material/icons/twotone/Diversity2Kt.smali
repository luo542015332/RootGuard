.class public final Landroidx/compose/material/icons/twotone/Diversity2Kt;
.super Ljava/lang/Object;
.source "Diversity2.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiversity2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Diversity2.kt\nandroidx/compose/material/icons/twotone/Diversity2Kt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,143:1\n122#2:144\n116#2,3:145\n119#2,3:149\n132#2,18:152\n152#2:189\n132#2,18:190\n152#2:227\n132#2,18:228\n152#2:265\n132#2,18:266\n152#2:303\n132#2,18:304\n152#2:341\n132#2,18:342\n152#2:379\n174#3:148\n694#4,2:170\n706#4,2:172\n708#4,11:178\n694#4,2:208\n706#4,2:210\n708#4,11:216\n694#4,2:246\n706#4,2:248\n708#4,11:254\n694#4,2:284\n706#4,2:286\n708#4,11:292\n694#4,2:322\n706#4,2:324\n708#4,11:330\n694#4,2:360\n706#4,2:362\n708#4,11:368\n64#5,4:174\n64#5,4:212\n64#5,4:250\n64#5,4:288\n64#5,4:326\n64#5,4:364\n*S KotlinDebug\n*F\n+ 1 Diversity2.kt\nandroidx/compose/material/icons/twotone/Diversity2Kt\n*L\n29#1:144\n29#1:145,3\n29#1:149,3\n30#1:152,18\n30#1:189\n38#1:190,18\n38#1:227\n46#1:228,18\n46#1:265\n52#1:266,18\n52#1:303\n80#1:304,18\n80#1:341\n109#1:342,18\n109#1:379\n29#1:148\n30#1:170,2\n30#1:172,2\n30#1:178,11\n38#1:208,2\n38#1:210,2\n38#1:216,11\n46#1:246,2\n46#1:248,2\n46#1:254,11\n52#1:284,2\n52#1:286,2\n52#1:292,11\n80#1:322,2\n80#1:324,2\n80#1:330,11\n109#1:360,2\n109#1:362,2\n109#1:368,11\n30#1:174,4\n38#1:212,4\n46#1:250,4\n52#1:288,4\n80#1:326,4\n109#1:364,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_diversity2",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Diversity2",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getDiversity2",
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
.field private static _diversity2:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getDiversity2(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 52
    .param p0, "$this$Diversity2"    # Landroidx/compose/material/icons/Icons$TwoTone;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/Diversity2Kt;->_diversity2:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "TwoTone.Diversity2"

    .local v0, "name$iv":Ljava/lang/String;
    const/4 v14, 0x0

    .line 144
    .local v14, "$i$f$materialIcon":I
    nop

    .line 145
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 146
    nop

    .line 147
    const/high16 v2, 0x41c00000    # 24.0f

    .local v2, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 148
    .local v3, "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 149
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v2, 0x41c00000    # 24.0f

    .restart local v2    # "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 148
    .restart local v3    # "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 150
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v6, 0x41c00000    # 24.0f

    .line 151
    const/high16 v7, 0x41c00000    # 24.0f

    .line 145
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v2, v15

    move-object v3, v0

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    nop

    .local v2, "$this$_get_Diversity2__u24lambda_u246":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon-Diversity2Kt$Diversity2$1":I
    const v4, 0x3e99999a    # 0.3f

    .local v4, "fillAlpha$iv":F
    move/from16 v20, v4

    const v22, 0x3e99999a    # 0.3f

    .local v22, "strokeAlpha$iv":F
    move-object v5, v2

    .line 152
    .local v5, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 155
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .local v6, "pathFillType$iv":I
    move/from16 v17, v6

    .line 152
    const/4 v7, 0x0

    .line 161
    .local v7, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 162
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v8

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 164
    nop

    .line 166
    nop

    .line 167
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 168
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 169
    nop

    .line 161
    const/high16 v8, 0x3f800000    # 1.0f

    move/from16 v23, v8

    .local v23, "strokeLineWidth$iv$iv":F
    move-object/from16 v21, v11

    .local v21, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v15, v5

    .local v15, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v19, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v24, "strokeLineCap$iv$iv":I
    .local v25, "strokeLineJoin$iv$iv":I
    move/from16 v26, v8

    .line 170
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 171
    const-string v9, ""

    .local v9, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v9

    .line 170
    const/4 v10, 0x0

    .line 172
    .local v10, "$i$f$path-R_LF-3I":I
    nop

    .line 173
    const/4 v12, 0x0

    .line 174
    .local v12, "$i$f$PathData":I
    new-instance v13, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v13, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v16, 0x0

    .line 175
    .local v16, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v34, v13

    .local v34, "$this$_get_Diversity2__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v35, 0x0

    .line 31
    .local v35, "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$1":I
    const/high16 v8, 0x40200000    # 2.5f

    const v11, 0x418fc28f    # 17.97f

    move-object/from16 v42, v0

    move-object/from16 v0, v34

    .end local v34    # "$this$_get_Diversity2__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Diversity2__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v42, "name$iv":Ljava/lang/String;
    invoke-virtual {v0, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, -0x410a3d71    # -0.48f

    const v29, 0x3e8f5c29    # 0.28f

    const v30, -0x40dc28f6    # -0.64f

    const v31, 0x3f63d70a    # 0.89f

    const v32, -0x41428f5c    # -0.37f

    const v33, 0x3faf5c29    # 1.37f

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v8, 0x3f23d70a    # 0.64f

    const v11, 0x3f63d70a    # 0.89f

    const v1, 0x3faf5c29    # 1.37f

    move/from16 v43, v3

    .end local v3    # "$i$a$-materialIcon-Diversity2Kt$Diversity2$1":I
    .local v43, "$i$a$-materialIcon-Diversity2Kt$Diversity2$1":I
    const v3, 0x3ebd70a4    # 0.37f

    invoke-virtual {v0, v11, v8, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v28, 0x3ef5c28f    # 0.48f

    const v29, -0x4170a3d7    # -0.28f

    const v30, 0x3f23d70a    # 0.64f

    const v31, -0x409c28f6    # -0.89f

    const v32, 0x3ebd70a4    # 0.37f

    const v33, -0x4050a3d7    # -1.37f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v8, 0x403eb852    # 2.98f

    const v11, 0x418d851f    # 17.69f

    const/high16 v1, 0x40200000    # 2.5f

    const v3, 0x418fc28f    # 17.97f

    invoke-virtual {v0, v8, v11, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    nop

    .line 175
    .end local v0    # "$this$_get_Diversity2__u24lambda_u246_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v35    # "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$1":I
    nop

    .line 176
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 174
    .end local v13    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v16    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 177
    nop

    .line 178
    .end local v12    # "$i$f$PathData":I
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

    .line 186
    nop

    .line 187
    nop

    .line 172
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 188
    nop

    .line 189
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

    .line 38
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    .end local v22    # "strokeAlpha$iv":F
    const v0, 0x3e99999a    # 0.3f

    .local v0, "fillAlpha$iv":F
    move/from16 v28, v0

    const v30, 0x3e99999a    # 0.3f

    .local v30, "strokeAlpha$iv":F
    move-object v1, v2

    .line 190
    .local v1, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 193
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v3

    .local v3, "pathFillType$iv":I
    move/from16 v25, v3

    .line 190
    const/4 v4, 0x0

    .line 199
    .local v4, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 200
    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v5

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 202
    nop

    .line 204
    nop

    .line 205
    sget-object v5, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 206
    sget-object v5, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 207
    nop

    .line 199
    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v31, v5

    const/4 v6, 0x0

    .local v31, "strokeLineWidth$iv$iv":F
    move-object/from16 v29, v6

    .local v29, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v1

    .local v23, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v27, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v32, "strokeLineCap$iv$iv":I
    .local v33, "strokeLineJoin$iv$iv":I
    move/from16 v34, v5

    .line 208
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 209
    const-string v5, ""

    .local v5, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v5

    .line 208
    const/4 v6, 0x0

    .line 210
    .local v6, "$i$f$path-R_LF-3I":I
    nop

    .line 211
    const/4 v7, 0x0

    .line 212
    .local v7, "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v8, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 213
    .local v9, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v10, v8

    .local v10, "$this$_get_Diversity2__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 39
    .local v11, "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$2":I
    const/high16 v12, 0x41ac0000    # 21.5f

    const v13, 0x418fc28f    # 17.97f

    invoke-virtual {v10, v12, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v16, -0x410a3d71    # -0.48f

    const v17, -0x4170a3d7    # -0.28f

    const v18, -0x40747ae1    # -1.09f

    const v19, -0x421eb852    # -0.11f

    const v20, -0x4050a3d7    # -1.37f

    const v21, 0x3ebd70a4    # 0.37f

    move-object v15, v10

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v13, 0x3f8b851f    # 1.09f

    const v15, -0x421eb852    # -0.11f

    move/from16 v44, v0

    const v0, 0x3faf5c29    # 1.37f

    const v12, 0x3ebd70a4    # 0.37f

    .end local v0    # "fillAlpha$iv":F
    .local v44, "fillAlpha$iv":F
    invoke-virtual {v10, v15, v13, v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v16, 0x3ef5c28f    # 0.48f

    const v17, 0x3e8f5c29    # 0.28f

    const v18, 0x3f8b851f    # 1.09f

    const v19, 0x3de147ae    # 0.11f

    const v20, 0x3faf5c29    # 1.37f

    const v21, -0x41428f5c    # -0.37f

    move v0, v15

    move-object v15, v10

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v12, 0x41afd70a    # 21.98f

    const v13, 0x4191eb85    # 18.24f

    const v0, 0x418fc28f    # 17.97f

    const/high16 v15, 0x41ac0000    # 21.5f

    invoke-virtual {v10, v12, v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    nop

    .line 213
    .end local v10    # "$this$_get_Diversity2__u24lambda_u246_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$2":I
    nop

    .line 214
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 212
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 215
    nop

    .line 216
    .end local v7    # "$i$f$PathData":I
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

    .line 224
    nop

    .line 225
    nop

    .line 210
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 226
    nop

    .line 227
    .end local v5    # "name$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 46
    .end local v1    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v3    # "pathFillType$iv":I
    .end local v4    # "$i$f$materialPath-YwgOQQI":I
    .end local v30    # "strokeAlpha$iv":F
    .end local v44    # "fillAlpha$iv":F
    const v0, 0x3e99999a    # 0.3f

    .restart local v0    # "fillAlpha$iv":F
    move/from16 v28, v0

    const v30, 0x3e99999a    # 0.3f

    .line 228
    .restart local v1    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v30    # "strokeAlpha$iv":F
    nop

    .line 231
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v3

    .restart local v3    # "pathFillType$iv":I
    move/from16 v25, v3

    .line 228
    const/4 v4, 0x0

    .line 237
    .restart local v4    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 238
    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v5

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 240
    nop

    .line 242
    nop

    .line 243
    sget-object v5, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 244
    sget-object v5, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 245
    nop

    .line 237
    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v31, v5

    const/4 v6, 0x0

    .restart local v31    # "strokeLineWidth$iv$iv":F
    move-object/from16 v29, v6

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v32    # "strokeLineCap$iv$iv":I
    .restart local v33    # "strokeLineJoin$iv$iv":I
    move/from16 v34, v5

    .line 246
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 247
    const-string v5, ""

    .restart local v5    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v5

    .line 246
    const/4 v6, 0x0

    .line 248
    .restart local v6    # "$i$f$path-R_LF-3I":I
    nop

    .line 249
    const/4 v7, 0x0

    .line 250
    .restart local v7    # "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 251
    .restart local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v10, v8

    .local v10, "$this$_get_Diversity2__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 47
    .local v11, "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$3":I
    const/high16 v12, 0x41400000    # 12.0f

    const/high16 v13, 0x40800000    # 4.0f

    invoke-virtual {v10, v12, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const/4 v15, 0x0

    const/high16 v12, -0x40800000    # -1.0f

    invoke-virtual {v10, v12, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const/high16 v45, 0x3f800000    # 1.0f

    const/high16 v46, 0x3f800000    # 1.0f

    const/16 v47, 0x0

    const/16 v48, 0x1

    const/16 v49, 0x1

    const/high16 v50, 0x40000000    # 2.0f

    const/16 v51, 0x0

    move-object/from16 v44, v10

    invoke-virtual/range {v44 .. v51}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const/high16 v50, -0x40000000    # -2.0f

    invoke-virtual/range {v44 .. v51}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    nop

    .line 251
    .end local v10    # "$this$_get_Diversity2__u24lambda_u246_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$3":I
    nop

    .line 252
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 250
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 253
    nop

    .line 254
    .end local v7    # "$i$f$PathData":I
    nop

    .line 255
    nop

    .line 256
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

    .line 248
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 264
    nop

    .line 265
    .end local v5    # "name$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 52
    .end local v0    # "fillAlpha$iv":F
    .end local v1    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v3    # "pathFillType$iv":I
    .end local v4    # "$i$f$materialPath-YwgOQQI":I
    .end local v30    # "strokeAlpha$iv":F
    move-object v0, v2

    .line 266
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 267
    const/high16 v1, 0x3f800000    # 1.0f

    .local v1, "fillAlpha$iv":F
    move/from16 v28, v1

    .line 266
    nop

    .line 268
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "strokeAlpha$iv":F
    move/from16 v30, v3

    .line 266
    nop

    .line 269
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .local v4, "pathFillType$iv":I
    move/from16 v25, v4

    .line 266
    const/4 v5, 0x0

    .line 275
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 276
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 278
    nop

    .line 280
    nop

    .line 281
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 282
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 283
    nop

    .line 275
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

    .line 284
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 285
    const-string v6, ""

    .local v6, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 284
    const/4 v7, 0x0

    .line 286
    .local v7, "$i$f$path-R_LF-3I":I
    nop

    .line 287
    const/4 v8, 0x0

    .line 288
    .local v8, "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v9, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 289
    .local v10, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_Diversity2__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v15, 0x0

    .line 53
    .local v15, "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$4":I
    const v12, 0x4121999a    # 10.1f

    const v13, 0x417e6666    # 15.9f

    invoke-virtual {v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v12, 0x3fb5c28f    # 1.42f

    const v13, -0x404a3d71    # -1.42f

    invoke-virtual {v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v45, 0x410ca3d7    # 8.79f

    const v46, 0x4140cccd    # 12.05f

    const/high16 v47, 0x40e00000    # 7.0f

    const v48, 0x41268f5c    # 10.41f

    const/high16 v49, 0x40e00000    # 7.0f

    const v50, 0x410d999a    # 8.85f

    move-object/from16 v44, v11

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const/high16 v45, 0x40e00000    # 7.0f

    const v46, 0x40f9999a    # 7.8f

    const v47, 0x40f9999a    # 7.8f

    const/high16 v48, 0x40e00000    # 7.0f

    const v49, 0x410d999a    # 8.85f

    const/high16 v50, 0x40e00000    # 7.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v45, 0x3f8e147b    # 1.11f

    const/16 v46, 0x0

    const v47, 0x3fc51eb8    # 1.54f

    const v48, 0x3f266666    # 0.65f

    const v49, 0x402b851f    # 2.68f

    const/high16 v50, 0x40000000    # 2.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v12, 0x3f6e147b    # 0.93f

    invoke-virtual {v11, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v45, 0x3f8f5c29    # 1.12f

    const v46, -0x405851ec    # -1.31f

    const v47, 0x3fc3d70a    # 1.53f

    const/high16 v48, -0x40000000    # -2.0f

    const/high16 v50, -0x40000000    # -2.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v45, 0x3f5eb852    # 0.87f

    const/16 v46, 0x0

    const v47, 0x3fc66666    # 1.55f

    const v48, 0x3f0a3d71    # 0.54f

    const v49, 0x3fe28f5c    # 1.77f

    const v50, 0x3fa8f5c3    # 1.32f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v45, 0x3eb33333    # 0.35f

    const v46, -0x42dc28f6    # -0.04f

    const v47, 0x3f2e147b    # 0.68f

    const v48, -0x428a3d71    # -0.06f

    const/high16 v49, 0x3f800000    # 1.0f

    const v50, -0x428a3d71    # -0.06f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v45, 0x3eb851ec    # 0.36f

    const/16 v46, 0x0

    const v47, 0x3f333333    # 0.7f

    const v48, 0x3cf5c28f    # 0.03f

    const v49, 0x3f83d70a    # 1.03f

    const v50, 0x3da3d70a    # 0.08f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v45, 0x4195999a    # 18.7f

    const v46, 0x40cdc28f    # 6.43f

    const v47, 0x41890a3d    # 17.13f

    const/high16 v48, 0x40a00000    # 5.0f

    const v49, 0x41726666    # 15.15f

    const/high16 v50, 0x40a00000    # 5.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v45, -0x420a3d71    # -0.12f

    const/16 v46, 0x0

    const v47, -0x41947ae1    # -0.23f

    const v48, 0x3cf5c28f    # 0.03f

    const v49, -0x414ccccd    # -0.35f

    const v50, 0x3d23d70a    # 0.04f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v45, 0x416eb852    # 14.92f

    const v46, 0x4096b852    # 4.71f

    const/high16 v47, 0x41700000    # 15.0f

    const v48, 0x408bd70a    # 4.37f

    const/high16 v49, 0x41700000    # 15.0f

    const/high16 v50, 0x40800000    # 4.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const/16 v45, 0x0

    const v46, -0x402b851f    # -1.66f

    const v47, -0x40547ae1    # -1.34f

    const/high16 v48, -0x3fc00000    # -3.0f

    const/high16 v49, -0x3fc00000    # -3.0f

    const/high16 v50, -0x3fc00000    # -3.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v12, 0x4015c28f    # 2.34f

    const/high16 v13, 0x41100000    # 9.0f

    move-object/from16 v20, v0

    const/high16 v0, 0x40800000    # 4.0f

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v20, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v11, v13, v12, v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v46, 0x3ebd70a4    # 0.37f

    const v47, 0x3da3d70a    # 0.08f

    const v48, 0x3f35c28f    # 0.71f

    const v49, 0x3e4ccccd    # 0.2f

    const v50, 0x3f851eb8    # 1.04f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v45, 0x411147ae    # 9.08f

    const v46, 0x40a0f5c3    # 5.03f

    const v47, 0x410f851f    # 8.97f

    const/high16 v48, 0x40a00000    # 5.0f

    const v49, 0x410d999a    # 8.85f

    const/high16 v50, 0x40a00000    # 5.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v45, 0x40d6147b    # 6.69f

    const/high16 v46, 0x40a00000    # 5.0f

    const/high16 v47, 0x40a00000    # 5.0f

    const v48, 0x40d6147b    # 6.69f

    const/high16 v49, 0x40a00000    # 5.0f

    const v50, 0x410d999a    # 8.85f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const/high16 v45, 0x40a00000    # 5.0f

    const v46, 0x413451ec    # 11.27f

    const v47, 0x40e147ae    # 7.04f

    const v48, 0x41528f5c    # 13.16f

    const v49, 0x4121999a    # 10.1f

    const v50, 0x417e6666    # 15.9f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v12, 0x41400000    # 12.0f

    invoke-virtual {v11, v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v45, 0x3f0ccccd    # 0.55f

    const/16 v46, 0x0

    const/high16 v47, 0x3f800000    # 1.0f

    const v48, 0x3ee66666    # 0.45f

    const/high16 v49, 0x3f800000    # 1.0f

    const/high16 v50, 0x3f800000    # 1.0f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v12, -0x4119999a    # -0.45f

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v11, v12, v0, v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    invoke-virtual {v11, v13, v12, v13, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v0, 0x41373333    # 11.45f

    const/high16 v12, 0x40400000    # 3.0f

    const/high16 v13, 0x41400000    # 12.0f

    invoke-virtual {v11, v0, v12, v13, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    nop

    .line 289
    .end local v11    # "$this$_get_Diversity2__u24lambda_u246_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v15    # "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$4":I
    nop

    .line 290
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 288
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 291
    nop

    .line 292
    .end local v8    # "$i$f$PathData":I
    nop

    .line 293
    nop

    .line 294
    nop

    .line 295
    nop

    .line 296
    nop

    .line 297
    nop

    .line 298
    nop

    .line 299
    nop

    .line 300
    nop

    .line 301
    nop

    .line 286
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 302
    nop

    .line 303
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

    .line 80
    .end local v1    # "fillAlpha$iv":F
    .end local v3    # "strokeAlpha$iv":F
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v20    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object v0, v2

    .line 304
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 305
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "fillAlpha$iv":F
    move/from16 v28, v1

    .line 304
    nop

    .line 306
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "strokeAlpha$iv":F
    move/from16 v30, v3

    .line 304
    nop

    .line 307
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .restart local v4    # "pathFillType$iv":I
    move/from16 v25, v4

    .line 304
    const/4 v5, 0x0

    .line 313
    .restart local v5    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 314
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 316
    nop

    .line 318
    nop

    .line 319
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 320
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 321
    nop

    .line 313
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

    .line 322
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 323
    const-string v6, ""

    .restart local v6    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 322
    const/4 v7, 0x0

    .line 324
    .restart local v7    # "$i$f$path-R_LF-3I":I
    nop

    .line 325
    const/4 v8, 0x0

    .line 326
    .restart local v8    # "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 327
    .restart local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_Diversity2__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 81
    .local v12, "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$5":I
    const/high16 v13, 0x41b40000    # 22.5f

    const v15, 0x4181eb85    # 16.24f

    invoke-virtual {v11, v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v45, -0x415c28f6    # -0.32f

    const v46, -0x41c7ae14    # -0.18f

    const v47, -0x40d70a3d    # -0.66f

    const v48, -0x416b851f    # -0.29f

    const/high16 v49, -0x40800000    # -1.0f

    const v50, -0x414ccccd    # -0.35f

    move-object/from16 v44, v11

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v45, 0x3d8f5c29    # 0.07f

    const v46, -0x42333333    # -0.1f

    const v47, 0x3e19999a    # 0.15f

    const v48, -0x41c7ae14    # -0.18f

    const v49, 0x3e570a3d    # 0.21f

    const v50, -0x4170a3d7    # -0.28f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v45, 0x3f8a3d71    # 1.08f

    const v46, -0x4010a3d7    # -1.87f

    const v47, 0x3eeb851f    # 0.46f

    const v48, -0x3f7a3d71    # -4.18f

    const v49, -0x404b851f    # -1.41f

    const v50, -0x3f57ae14    # -5.26f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v45, -0x3ffa3d71    # -2.09f

    const v46, -0x40651eb8    # -1.21f

    const v47, -0x3f67ae14    # -4.76f

    const v48, -0x413851ec    # -0.39f

    const v49, -0x3ef5999a    # -8.65f

    const v50, 0x3f666666    # 0.9f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v13, 0x3f051eb8    # 0.52f

    const v15, 0x3ff851ec    # 1.94f

    invoke-virtual {v11, v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v45, 0x405e147b    # 3.47f

    const v46, -0x406e147b    # -1.14f

    const v47, 0x40b947ae    # 5.79f

    const v48, -0x400f5c29    # -1.88f

    const v49, 0x40e47ae1    # 7.14f

    const v50, -0x40733333    # -1.1f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v45, 0x3f68f5c3    # 0.91f

    const v46, 0x3f07ae14    # 0.53f

    const v47, 0x3f99999a    # 1.2f

    const v48, 0x3fce147b    # 1.61f

    const v49, 0x3f2e147b    # 0.68f

    const v50, 0x4021eb85    # 2.53f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v45, -0x40f0a3d7    # -0.56f

    const v46, 0x3f75c28f    # 0.96f

    const v47, -0x4055c28f    # -1.33f

    const/high16 v48, 0x3f800000    # 1.0f

    const v49, -0x3fbb851f    # -3.07f

    const v50, 0x3fa8f5c3    # 1.32f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v13, -0x410f5c29    # -0.47f

    const v15, 0x3f4f5c29    # 0.81f

    invoke-virtual {v11, v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v45, 0x3f147ae1    # 0.58f

    const v46, 0x3fcf5c29    # 1.62f

    const v47, 0x3f7851ec    # 0.97f

    const v48, 0x40151eb8    # 2.33f

    const v49, 0x3ec7ae14    # 0.39f

    const v50, 0x40547ae1    # 3.32f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v45, -0x40f851ec    # -0.53f

    const v46, 0x3f68f5c3    # 0.91f

    const v47, -0x4031eb85    # -1.61f

    const v48, 0x3f99999a    # 1.2f

    const v49, -0x3fde147b    # -2.53f

    const v50, 0x3f2e147b    # 0.68f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v45, -0x428a3d71    # -0.06f

    const v46, -0x430a3d71    # -0.03f

    const v47, -0x421eb852    # -0.11f

    const v48, -0x4247ae14    # -0.09f

    const v49, -0x41d1eb85    # -0.17f

    const v50, -0x41fae148    # -0.13f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v45, -0x41666666    # -0.3f

    const v46, 0x3f2b851f    # 0.67f

    const v47, -0x40dc28f6    # -0.64f

    const v48, 0x3f9eb852    # 1.24f

    const v49, -0x407c28f6    # -1.03f

    const v50, 0x3fdd70a4    # 1.73f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v45, 0x3d8f5c29    # 0.07f

    const v46, 0x3d23d70a    # 0.04f

    const v47, 0x3e051eb8    # 0.13f

    const v48, 0x3db851ec    # 0.09f

    const v49, 0x3e4ccccd    # 0.2f

    const v50, 0x3e0f5c29    # 0.14f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v45, 0x3fef5c29    # 1.87f

    const v46, 0x3f8a3d71    # 1.08f

    const v47, 0x4085c28f    # 4.18f

    const v48, 0x3eeb851f    # 0.46f

    const v49, 0x40a851ec    # 5.26f

    const v50, -0x404b851f    # -1.41f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const v45, 0x3d75c28f    # 0.06f

    const v46, -0x42333333    # -0.1f

    const v47, 0x3db851ec    # 0.09f

    const v48, -0x41a8f5c3    # -0.21f

    const v49, 0x3e0f5c29    # 0.14f

    const v50, -0x415c28f6    # -0.32f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const v45, 0x3e6147ae    # 0.22f

    const v46, 0x3e8a3d71    # 0.27f

    const v47, 0x3ef5c28f    # 0.48f

    const v48, 0x3f028f5c    # 0.51f

    const v49, 0x3f4ccccd    # 0.8f

    const v50, 0x3f30a3d7    # 0.69f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const v45, 0x3fb70a3d    # 1.43f

    const v46, 0x3f547ae1    # 0.83f

    const v47, 0x405147ae    # 3.27f

    const v48, 0x3eae147b    # 0.34f

    const v49, 0x40833333    # 4.1f

    const v50, -0x40733333    # -1.1f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const v13, 0x41bf70a4    # 23.93f

    const v15, 0x41887ae1    # 17.06f

    move-object/from16 v19, v0

    move/from16 v17, v1

    const v0, 0x4181eb85    # 16.24f

    const/high16 v1, 0x41b40000    # 22.5f

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v1    # "fillAlpha$iv":F
    .local v17, "fillAlpha$iv":F
    .local v19, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v11, v13, v15, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const v0, 0x41aef5c3    # 21.87f

    const v1, 0x419aa3d7    # 19.33f

    invoke-virtual {v11, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const v45, -0x4170a3d7    # -0.28f

    const v46, 0x3ef5c28f    # 0.48f

    const v47, -0x409c28f6    # -0.89f

    const v48, 0x3f23d70a    # 0.64f

    const v49, -0x4050a3d7    # -1.37f

    const v50, 0x3ebd70a4    # 0.37f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    const v45, -0x410a3d71    # -0.48f

    const v46, -0x4170a3d7    # -0.28f

    const v47, -0x40dc28f6    # -0.64f

    const v48, -0x409c28f6    # -0.89f

    const v49, -0x41428f5c    # -0.37f

    const v50, -0x4050a3d7    # -1.37f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const v0, -0x40dc28f6    # -0.64f

    const v1, -0x41428f5c    # -0.37f

    const v13, 0x3f63d70a    # 0.89f

    const v15, 0x3faf5c29    # 1.37f

    invoke-virtual {v11, v13, v0, v15, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    const v45, 0x41afd70a    # 21.98f

    const v46, 0x4191eb85    # 18.24f

    const v47, 0x41b11eb8    # 22.14f

    const v48, 0x4196e148    # 18.86f

    const v49, 0x41aef5c3    # 21.87f

    const v50, 0x419aa3d7    # 19.33f

    invoke-virtual/range {v44 .. v50}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    nop

    .line 327
    .end local v11    # "$this$_get_Diversity2__u24lambda_u246_u24lambda_u244":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$5":I
    nop

    .line 328
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 326
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 329
    nop

    .line 330
    .end local v8    # "$i$f$PathData":I
    nop

    .line 331
    nop

    .line 332
    nop

    .line 333
    nop

    .line 334
    nop

    .line 335
    nop

    .line 336
    nop

    .line 337
    nop

    .line 338
    nop

    .line 339
    nop

    .line 324
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 340
    nop

    .line 341
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

    .line 109
    .end local v3    # "strokeAlpha$iv":F
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v17    # "fillAlpha$iv":F
    .end local v19    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    move-object v0, v2

    .line 342
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 343
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "fillAlpha$iv":F
    move/from16 v28, v1

    .line 342
    nop

    .line 344
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "strokeAlpha$iv":F
    move/from16 v30, v3

    .line 342
    nop

    .line 345
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .restart local v4    # "pathFillType$iv":I
    move/from16 v25, v4

    .line 342
    const/4 v5, 0x0

    .line 351
    .restart local v5    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 352
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 354
    nop

    .line 356
    nop

    .line 357
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 358
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 359
    nop

    .line 351
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

    .line 360
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 361
    const-string v6, ""

    .restart local v6    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 360
    const/4 v7, 0x0

    .line 362
    .restart local v7    # "$i$f$path-R_LF-3I":I
    nop

    .line 363
    const/4 v8, 0x0

    .line 364
    .restart local v8    # "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 365
    .restart local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_Diversity2__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 110
    .local v12, "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$6":I
    const v13, 0x41451eb8    # 12.32f

    const v15, 0x416028f6    # 14.01f

    invoke-virtual {v11, v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    const v36, -0x40c28f5c    # -0.74f

    const v37, 0x40651eb8    # 3.58f

    const v38, -0x405d70a4    # -1.27f

    const v39, 0x40be6666    # 5.95f

    const v40, -0x3fd851ec    # -2.62f

    const v41, 0x40d75c29    # 6.73f

    move-object/from16 v35, v11

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    const v36, -0x40970a3d    # -0.91f

    const v37, 0x3f07ae14    # 0.53f

    const/high16 v38, -0x40000000    # -2.0f

    const v39, 0x3e75c28f    # 0.24f

    const v40, -0x3fde147b    # -2.53f

    const v41, -0x40d1eb85    # -0.68f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    const v36, -0x40f0a3d7    # -0.56f

    const v37, -0x408a3d71    # -0.96f

    const v38, -0x41b33333    # -0.2f

    const v39, -0x402b851f    # -1.66f

    const v40, 0x3ec7ae14    # 0.39f

    const v41, -0x3fab851f    # -3.32f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    const v13, 0x40e33333    # 7.1f

    const v15, 0x417ee148    # 15.93f

    invoke-virtual {v11, v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    const v36, -0x40266666    # -1.7f

    const v37, -0x416147ae    # -0.31f

    const/high16 v38, -0x3fe00000    # -2.5f

    const v39, -0x41570a3d    # -0.33f

    const v40, -0x3fbb851f    # -3.07f

    const v41, -0x40570a3d    # -1.32f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    const v36, -0x40f851ec    # -0.53f

    const v37, -0x40970a3d    # -0.91f

    const v38, -0x418a3d71    # -0.24f

    const/high16 v39, -0x40000000    # -2.0f

    const v40, 0x3f2e147b    # 0.68f

    const v41, -0x3fde147b    # -2.53f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    const v36, 0x3db851ec    # 0.09f

    const v37, -0x42b33333    # -0.05f

    const v38, 0x3e428f5c    # 0.19f

    const v39, -0x425c28f6    # -0.08f

    const v40, 0x3e947ae1    # 0.29f

    const v41, -0x421eb852    # -0.11f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    const v36, -0x414ccccd    # -0.35f

    const v37, -0x40f0a3d7    # -0.56f

    const v38, -0x40dc28f6    # -0.64f

    const v39, -0x406a3d71    # -1.17f

    const v40, -0x40ae147b    # -0.82f

    const v41, -0x40133333    # -1.85f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 119
    const v36, -0x41dc28f6    # -0.16f

    const v37, 0x3d8f5c29    # 0.07f

    const v38, -0x415c28f6    # -0.32f

    const v39, 0x3e0f5c29    # 0.14f

    const v40, -0x410a3d71    # -0.48f

    const v41, 0x3e6b851f    # 0.23f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    const v36, -0x4010a3d7    # -1.87f

    const v37, 0x3f8a3d71    # 1.08f

    const v38, -0x3fe0a3d7    # -2.49f

    const v39, 0x4058f5c3    # 3.39f

    const v40, -0x404b851f    # -1.41f

    const v41, 0x40a851ec    # 5.26f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    const v36, 0x3d75c28f    # 0.06f

    const v37, 0x3dcccccd    # 0.1f

    const v38, 0x3e0f5c29    # 0.14f

    const v39, 0x3e3851ec    # 0.18f

    const v40, 0x3e570a3d    # 0.21f

    const v41, 0x3e8f5c29    # 0.28f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    const v36, -0x4151eb85    # -0.34f

    const v37, 0x3d75c28f    # 0.06f

    const v38, -0x40d1eb85    # -0.68f

    const v39, 0x3e2e147b    # 0.17f

    const/high16 v40, -0x40800000    # -1.0f

    const v41, 0x3eb33333    # 0.35f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    const v36, -0x4048f5c3    # -1.43f

    const v37, 0x3f547ae1    # 0.83f

    const v38, -0x4008f5c3    # -1.93f

    const v39, 0x402a3d71    # 2.66f

    const v40, -0x40733333    # -1.1f

    const v41, 0x40833333    # 4.1f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 124
    const v13, 0x40833333    # 4.1f

    const v15, 0x3f8ccccd    # 1.1f

    move-object/from16 v19, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v19    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x402a3d71    # 2.66f

    move/from16 v20, v1

    .end local v1    # "fillAlpha$iv":F
    .local v20, "fillAlpha$iv":F
    const v1, 0x3ff70a3d    # 1.93f

    invoke-virtual {v11, v0, v1, v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 125
    const v36, 0x3ea3d70a    # 0.32f

    const v37, -0x41c7ae14    # -0.18f

    const v38, 0x3f147ae1    # 0.58f

    const v39, -0x4128f5c3    # -0.42f

    const v40, 0x3f4ccccd    # 0.8f

    const v41, -0x40cf5c29    # -0.69f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 126
    const v36, 0x3d4ccccd    # 0.05f

    const v37, 0x3de147ae    # 0.11f

    const v38, 0x3da3d70a    # 0.08f

    const v39, 0x3e6147ae    # 0.22f

    const v40, 0x3e0f5c29    # 0.14f

    const v41, 0x3ea3d70a    # 0.32f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 127
    const v36, 0x3f8a3d71    # 1.08f

    const v37, 0x3fef5c29    # 1.87f

    const v38, 0x4058f5c3    # 3.39f

    const v39, 0x401f5c29    # 2.49f

    const v40, 0x40a851ec    # 5.26f

    const v41, 0x3fb47ae1    # 1.41f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 128
    const v36, 0x4005c28f    # 2.09f

    const v37, -0x40651eb8    # -1.21f

    const v38, 0x402d70a4    # 2.71f

    const v39, -0x3f847ae1    # -3.93f

    const v40, 0x40633333    # 3.55f

    const v41, -0x3f01eb85    # -7.94f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 129
    const v0, 0x416028f6    # 14.01f

    const v1, 0x41451eb8    # 12.32f

    invoke-virtual {v11, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 130
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    const/high16 v0, 0x40600000    # 3.5f

    const v1, 0x419d999a    # 19.7f

    invoke-virtual {v11, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 132
    const v36, -0x410a3d71    # -0.48f

    const v37, 0x3e8f5c29    # 0.28f

    const v38, -0x40747ae1    # -1.09f

    const v39, 0x3de147ae    # 0.11f

    const v40, -0x4050a3d7    # -1.37f

    const v41, -0x41428f5c    # -0.37f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 133
    const v13, -0x40747ae1    # -1.09f

    const v15, -0x4050a3d7    # -1.37f

    const v0, -0x421eb852    # -0.11f

    const v1, 0x3ebd70a4    # 0.37f

    invoke-virtual {v11, v0, v13, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 134
    const v36, 0x3ef5c28f    # 0.48f

    const v37, -0x4170a3d7    # -0.28f

    const v38, 0x3f8b851f    # 1.09f

    const v39, -0x421eb852    # -0.11f

    const v40, 0x3faf5c29    # 1.37f

    const v41, 0x3ebd70a4    # 0.37f

    invoke-virtual/range {v35 .. v41}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 135
    const v0, 0x407eb852    # 3.98f

    const v1, 0x419b5c29    # 19.42f

    const v13, 0x419d999a    # 19.7f

    const/high16 v15, 0x40600000    # 3.5f

    invoke-virtual {v11, v0, v1, v15, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 136
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 137
    nop

    .line 365
    .end local v11    # "$this$_get_Diversity2__u24lambda_u246_u24lambda_u245":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-Diversity2Kt$Diversity2$1$6":I
    nop

    .line 366
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 364
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 367
    nop

    .line 368
    .end local v8    # "$i$f$PathData":I
    nop

    .line 369
    nop

    .line 370
    nop

    .line 371
    nop

    .line 372
    nop

    .line 373
    nop

    .line 374
    nop

    .line 375
    nop

    .line 376
    nop

    .line 377
    nop

    .line 362
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 378
    nop

    .line 379
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

    .line 109
    .end local v3    # "strokeAlpha$iv":F
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v19    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v20    # "fillAlpha$iv":F
    nop

    .line 144
    .end local v2    # "$this$_get_Diversity2__u24lambda_u246":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v43    # "$i$a$-materialIcon-Diversity2Kt$Diversity2$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v14    # "$i$f$materialIcon":I
    .end local v42    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/Diversity2Kt;->_diversity2:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 139
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
