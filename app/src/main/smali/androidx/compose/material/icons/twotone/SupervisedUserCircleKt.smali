.class public final Landroidx/compose/material/icons/twotone/SupervisedUserCircleKt;
.super Ljava/lang/Object;
.source "SupervisedUserCircle.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSupervisedUserCircle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SupervisedUserCircle.kt\nandroidx/compose/material/icons/twotone/SupervisedUserCircleKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,111:1\n122#2:112\n116#2,3:113\n119#2,3:117\n132#2,18:120\n152#2:157\n132#2,18:158\n152#2:195\n132#2,18:196\n152#2:233\n174#3:116\n694#4,2:138\n706#4,2:140\n708#4,11:146\n694#4,2:176\n706#4,2:178\n708#4,11:184\n694#4,2:214\n706#4,2:216\n708#4,11:222\n64#5,4:142\n64#5,4:180\n64#5,4:218\n*S KotlinDebug\n*F\n+ 1 SupervisedUserCircle.kt\nandroidx/compose/material/icons/twotone/SupervisedUserCircleKt\n*L\n29#1:112\n29#1:113,3\n29#1:117,3\n30#1:120,18\n30#1:157\n36#1:158,18\n36#1:195\n65#1:196,18\n65#1:233\n29#1:116\n30#1:138,2\n30#1:140,2\n30#1:146,11\n36#1:176,2\n36#1:178,2\n36#1:184,11\n65#1:214,2\n65#1:216,2\n65#1:222,11\n30#1:142,4\n36#1:180,4\n65#1:218,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_supervisedUserCircle",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "SupervisedUserCircle",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getSupervisedUserCircle",
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
.field private static _supervisedUserCircle:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getSupervisedUserCircle(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 49
    .param p0, "$this$SupervisedUserCircle"    # Landroidx/compose/material/icons/Icons$TwoTone;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/SupervisedUserCircleKt;->_supervisedUserCircle:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "TwoTone.SupervisedUserCircle"

    .local v0, "name$iv":Ljava/lang/String;
    const/4 v14, 0x0

    .line 112
    .local v14, "$i$f$materialIcon":I
    nop

    .line 113
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 114
    nop

    .line 115
    const/high16 v2, 0x41c00000    # 24.0f

    .local v2, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 116
    .local v3, "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 117
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v2, 0x41c00000    # 24.0f

    .restart local v2    # "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 116
    .restart local v3    # "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 118
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v6, 0x41c00000    # 24.0f

    .line 119
    const/high16 v7, 0x41c00000    # 24.0f

    .line 113
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v2, v15

    move-object v3, v0

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 112
    nop

    .local v2, "$this$_get_SupervisedUserCircle__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon-SupervisedUserCircleKt$SupervisedUserCircle$1":I
    const v4, 0x3e99999a    # 0.3f

    .local v4, "fillAlpha$iv":F
    move/from16 v20, v4

    const v22, 0x3e99999a    # 0.3f

    .local v22, "strokeAlpha$iv":F
    move-object v5, v2

    .line 120
    .local v5, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 123
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .local v6, "pathFillType$iv":I
    move/from16 v17, v6

    .line 120
    const/4 v7, 0x0

    .line 129
    .local v7, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 130
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v8

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 132
    nop

    .line 134
    nop

    .line 135
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 136
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 137
    nop

    .line 129
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

    .line 138
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 139
    const-string v9, ""

    .local v9, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v9

    .line 138
    const/4 v10, 0x0

    .line 140
    .local v10, "$i$f$path-R_LF-3I":I
    nop

    .line 141
    const/4 v12, 0x0

    .line 142
    .local v12, "$i$f$PathData":I
    new-instance v13, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v13, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v16, 0x0

    .line 143
    .local v16, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v35, v13

    .local v35, "$this$_get_SupervisedUserCircle__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v36, 0x0

    .line 31
    .local v36, "$i$a$-materialPath-YwgOQQI$default-SupervisedUserCircleKt$SupervisedUserCircle$1$1":I
    const/high16 v8, 0x41180000    # 9.5f

    const/high16 v11, 0x41200000    # 10.0f

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    .end local v35    # "$this$_get_SupervisedUserCircle__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_SupervisedUserCircle__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v40, "name$iv":Ljava/lang/String;
    invoke-virtual {v0, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const/4 v11, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v0, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x1

    const/high16 v33, 0x40000000    # 2.0f

    const/16 v34, 0x0

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/high16 v33, -0x40000000    # -2.0f

    invoke-virtual/range {v27 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    nop

    .line 143
    .end local v0    # "$this$_get_SupervisedUserCircle__u24lambda_u243_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v36    # "$i$a$-materialPath-YwgOQQI$default-SupervisedUserCircleKt$SupervisedUserCircle$1$1":I
    nop

    .line 144
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 142
    .end local v13    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v16    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 145
    nop

    .line 146
    .end local v12    # "$i$f$PathData":I
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

    .line 154
    nop

    .line 155
    nop

    .line 140
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 156
    nop

    .line 157
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

    .line 36
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
    move-object v4, v2

    .line 158
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 161
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v5

    .local v5, "pathFillType$iv":I
    move/from16 v25, v5

    .line 158
    const/4 v6, 0x0

    .line 167
    .local v6, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 168
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {v7, v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v7

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 170
    nop

    .line 172
    nop

    .line 173
    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 174
    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 175
    nop

    .line 167
    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v31, v7

    const/4 v9, 0x0

    .local v31, "strokeLineWidth$iv$iv":F
    move-object/from16 v29, v9

    .local v29, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object/from16 v23, v4

    .local v23, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v27, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v32, "strokeLineCap$iv$iv":I
    .local v33, "strokeLineJoin$iv$iv":I
    move/from16 v34, v7

    .line 176
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 177
    const-string v7, ""

    .local v7, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v7

    .line 176
    const/4 v9, 0x0

    .line 178
    .local v9, "$i$f$path-R_LF-3I":I
    nop

    .line 179
    const/4 v10, 0x0

    .line 180
    .local v10, "$i$f$PathData":I
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v11, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 181
    .local v12, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v13, v11

    .local v13, "$this$_get_SupervisedUserCircle__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 37
    .local v22, "$i$a$-materialPath-YwgOQQI$default-SupervisedUserCircleKt$SupervisedUserCircle$1$2":I
    const/high16 v15, 0x41380000    # 11.5f

    const v8, 0x4189ae14    # 17.21f

    invoke-virtual {v13, v15, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const/16 v16, 0x0

    const v17, -0x400f5c29    # -1.88f

    const v18, 0x403eb852    # 2.98f

    const v19, -0x3fd33333    # -2.7f

    const/high16 v20, 0x40900000    # 4.5f

    const v21, -0x3fd33333    # -2.7f

    move-object v15, v13

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v16, 0x3f6147ae    # 0.88f

    const/16 v17, 0x0

    const v18, 0x400f5c29    # 2.24f

    const v19, 0x3e8a3d71    # 0.27f

    const v20, 0x404f5c29    # 3.24f

    const v21, 0x3f5eb852    # 0.87f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v16, 0x3ef5c28f    # 0.48f

    const v17, -0x407d70a4    # -1.02f

    const/high16 v18, 0x3f400000    # 0.75f

    const v19, -0x3ff5c28f    # -2.16f

    const/high16 v20, 0x3f400000    # 0.75f

    const v21, -0x3fa851ec    # -3.37f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const/16 v16, 0x0

    const v17, -0x3f72e148    # -4.41f

    const v18, -0x3f9a3d71    # -3.59f

    const/high16 v19, -0x3f000000    # -8.0f

    const/high16 v20, -0x3f000000    # -8.0f

    const/high16 v21, -0x3f000000    # -8.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/high16 v8, -0x3f000000    # -8.0f

    const v15, 0x4065c28f    # 3.59f

    move/from16 v41, v0

    .end local v0    # "fillAlpha$iv":F
    .local v41, "fillAlpha$iv":F
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {v13, v8, v15, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v17, 0x3f9d70a4    # 1.23f

    const v18, 0x3e947ae1    # 0.29f

    const v19, 0x4018f5c3    # 2.39f

    const v20, 0x3f47ae14    # 0.78f

    const v21, 0x405b851f    # 3.43f

    move v8, v15

    move-object v15, v13

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v16, 0x3fab851f    # 1.34f

    const v17, -0x40851eb8    # -0.98f

    const v18, 0x405b851f    # 3.43f

    const v19, -0x4048f5c3    # -1.43f

    const v20, 0x40975c29    # 4.73f

    const v21, -0x4048f5c3    # -1.43f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v16, 0x3ee147ae    # 0.44f

    const/16 v17, 0x0

    const v18, 0x3f7851ec    # 0.97f

    const v19, 0x3d4ccccd    # 0.05f

    const v20, 0x3fc3d70a    # 1.53f

    const v21, 0x3e23d70a    # 0.16f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v16, -0x40deb852    # -0.63f

    const v17, 0x3f11eb85    # 0.57f

    const v18, -0x407851ec    # -1.06f

    const v19, 0x3f9c28f6    # 1.22f

    const v20, -0x4059999a    # -1.3f

    const v21, 0x3fee147b    # 1.86f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v16, -0x425c28f6    # -0.08f

    const/16 v17, 0x0

    const v18, -0x41e66666    # -0.15f

    const v19, -0x43dc28f6    # -0.01f

    const v20, -0x41947ae1    # -0.23f

    const v21, -0x43dc28f6    # -0.01f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v16, -0x404f5c29    # -1.38f

    const v18, -0x3fc147ae    # -2.98f

    const v19, 0x3f11eb85    # 0.57f

    const v20, -0x3f95c28f    # -3.66f

    const v21, 0x3f8e147b    # 1.11f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v16, 0x3faf5c29    # 1.37f

    const v17, 0x3fd33333    # 1.65f

    const v18, 0x4058f5c3    # 3.39f

    const v19, 0x402eb852    # 2.73f

    const v20, 0x40b51eb8    # 5.66f

    const v21, 0x40370a3d    # 2.86f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v15, -0x3fce147b    # -2.78f

    invoke-virtual {v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const/high16 v15, 0x41100000    # 9.0f

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v13, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v16, 0x3f8e147b    # 1.11f

    const/16 v17, 0x0

    const/high16 v18, 0x40000000    # 2.0f

    const v19, 0x3f63d70a    # 0.89f

    const/high16 v20, 0x40000000    # 2.0f

    const/high16 v21, 0x40000000    # 2.0f

    move-object v15, v13

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const/16 v16, 0x0

    const v17, 0x3f8e147b    # 1.11f

    const v18, -0x409c28f6    # -0.89f

    const/high16 v19, 0x40000000    # 2.0f

    const/high16 v20, -0x40000000    # -2.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v16, -0x4071eb85    # -1.11f

    const/16 v17, 0x0

    const/high16 v18, -0x40000000    # -2.0f

    const v19, -0x409c28f6    # -0.89f

    const/high16 v21, -0x40000000    # -2.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v16, -0x43dc28f6    # -0.01f

    const v17, -0x4071eb85    # -1.11f

    const v18, 0x3f63d70a    # 0.89f

    const/high16 v19, -0x40000000    # -2.0f

    const/high16 v20, 0x40000000    # 2.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const/high16 v15, 0x41500000    # 13.0f

    const/high16 v8, 0x41180000    # 9.5f

    invoke-virtual {v13, v8, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v16, -0x402ccccd    # -1.65f

    const/16 v17, 0x0

    const/high16 v18, -0x3fc00000    # -3.0f

    const v19, -0x40533333    # -1.35f

    const/high16 v20, -0x3fc00000    # -3.0f

    const/high16 v21, -0x3fc00000    # -3.0f

    move v8, v15

    move-object v15, v13

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v15, 0x3faccccd    # 1.35f

    const/high16 v0, -0x3fc00000    # -3.0f

    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v13, v15, v0, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    invoke-virtual {v13, v8, v15, v8, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v15, -0x40533333    # -1.35f

    invoke-virtual {v13, v15, v8, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    nop

    .line 181
    .end local v13    # "$this$_get_SupervisedUserCircle__u24lambda_u243_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-SupervisedUserCircleKt$SupervisedUserCircle$1$2":I
    nop

    .line 182
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 180
    .end local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 183
    nop

    .line 184
    .end local v10    # "$i$f$PathData":I
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

    .line 192
    nop

    .line 193
    nop

    .line 178
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 194
    nop

    .line 195
    .end local v7    # "name$iv$iv":Ljava/lang/String;
    .end local v9    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 65
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "pathFillType$iv":I
    .end local v6    # "$i$f$materialPath-YwgOQQI":I
    .end local v30    # "strokeAlpha$iv":F
    .end local v41    # "fillAlpha$iv":F
    nop

    .line 196
    .restart local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 197
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "fillAlpha$iv":F
    move/from16 v28, v5

    .line 196
    nop

    .line 198
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "strokeAlpha$iv":F
    move/from16 v30, v6

    .line 196
    nop

    .line 199
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v7

    .local v7, "pathFillType$iv":I
    move/from16 v25, v7

    .line 196
    const/4 v9, 0x0

    .line 205
    .local v9, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 206
    new-instance v10, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v10

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 208
    nop

    .line 210
    nop

    .line 211
    sget-object v10, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 212
    sget-object v10, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 213
    nop

    .line 205
    const/high16 v10, 0x3f800000    # 1.0f

    move/from16 v31, v10

    const/4 v11, 0x0

    .restart local v31    # "strokeLineWidth$iv$iv":F
    move-object/from16 v29, v11

    .restart local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .restart local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .restart local v32    # "strokeLineCap$iv$iv":I
    .restart local v33    # "strokeLineJoin$iv$iv":I
    move/from16 v34, v10

    .line 214
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 215
    const-string v10, ""

    .local v10, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v10

    .line 214
    const/4 v11, 0x0

    .line 216
    .local v11, "$i$f$path-R_LF-3I":I
    nop

    .line 217
    const/4 v12, 0x0

    .line 218
    .local v12, "$i$f$PathData":I
    new-instance v13, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v13, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v19, 0x0

    .line 219
    .local v19, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v20, v13

    .local v20, "$this$_get_SupervisedUserCircle__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v21, 0x0

    .line 66
    .local v21, "$i$a$-materialPath-YwgOQQI$default-SupervisedUserCircleKt$SupervisedUserCircle$1$3":I
    const/high16 v15, 0x41480000    # 12.5f

    move-object/from16 v0, v20

    const/high16 v8, 0x41200000    # 10.0f

    .end local v20    # "$this$_get_SupervisedUserCircle__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_SupervisedUserCircle__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v0, v15, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const/16 v43, 0x0

    const v44, -0x402ccccd    # -1.65f

    const v45, -0x40533333    # -1.35f

    const/high16 v46, -0x3fc00000    # -3.0f

    const/high16 v47, -0x3fc00000    # -3.0f

    const/high16 v48, -0x3fc00000    # -3.0f

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const/high16 v1, 0x40400000    # 3.0f

    const v8, 0x3faccccd    # 1.35f

    const/high16 v15, -0x3fc00000    # -3.0f

    invoke-virtual {v0, v15, v8, v15, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    invoke-virtual {v0, v8, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v8, -0x40533333    # -1.35f

    invoke-virtual {v0, v1, v8, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const/high16 v1, 0x41300000    # 11.0f

    const/high16 v8, 0x41180000    # 9.5f

    invoke-virtual {v0, v8, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v43, -0x40f33333    # -0.55f

    const/16 v44, 0x0

    const/high16 v45, -0x40800000    # -1.0f

    const v46, -0x4119999a    # -0.45f

    const/high16 v47, -0x40800000    # -1.0f

    const/high16 v48, -0x40800000    # -1.0f

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v1, 0x3ee66666    # 0.45f

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v8, v15, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    invoke-virtual {v0, v15, v1, v15, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const v1, -0x4119999a    # -0.45f

    invoke-virtual {v0, v1, v15, v8, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const/high16 v1, 0x41500000    # 13.0f

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v0, v8, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v43, 0x3f8e147b    # 1.11f

    const/high16 v45, 0x40000000    # 2.0f

    const v46, -0x409c28f6    # -0.89f

    const/high16 v47, 0x40000000    # 2.0f

    const/high16 v48, -0x40000000    # -2.0f

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const/16 v43, 0x0

    const v44, -0x4071eb85    # -1.11f

    const v45, -0x409c28f6    # -0.89f

    const/high16 v46, -0x40000000    # -2.0f

    const/high16 v47, -0x40000000    # -2.0f

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v43, -0x4071eb85    # -1.11f

    const/16 v44, 0x0

    const v45, -0x3fff5c29    # -2.01f

    const v46, 0x3f63d70a    # 0.89f

    const/high16 v48, 0x40000000    # 2.0f

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const/16 v43, 0x0

    const v44, 0x3f8e147b    # 1.11f

    const v45, 0x3f63d70a    # 0.89f

    const/high16 v46, 0x40000000    # 2.0f

    const/high16 v47, 0x40000000    # 2.0f

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v1, 0x413fd70a    # 11.99f

    const v8, 0x4000a3d7    # 2.01f

    invoke-virtual {v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v43, -0x3f4f5c29    # -5.52f

    const/16 v44, 0x0

    const/high16 v45, -0x3ee00000    # -10.0f

    const v46, 0x408f5c29    # 4.48f

    const/high16 v47, -0x3ee00000    # -10.0f

    const/high16 v48, 0x41200000    # 10.0f

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v1, 0x408f5c29    # 4.48f

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v8, v8, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v1, -0x3f70a3d7    # -4.48f

    const/high16 v15, -0x3ee00000    # -10.0f

    invoke-virtual {v0, v8, v1, v8, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    invoke-virtual {v0, v1, v15, v15, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v1, 0x40bae148    # 5.84f

    const v8, 0x4188f5c3    # 17.12f

    invoke-virtual {v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v43, 0x3f2e147b    # 0.68f

    const v44, -0x40f5c28f    # -0.54f

    const v45, 0x401147ae    # 2.27f

    const v46, -0x4071eb85    # -1.11f

    const v47, 0x406a3d71    # 3.66f

    const v48, -0x4071eb85    # -1.11f

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v43, 0x3d8f5c29    # 0.07f

    const/16 v44, 0x0

    const v45, 0x3e19999a    # 0.15f

    const v46, 0x3c23d70a    # 0.01f

    const v47, 0x3e6b851f    # 0.23f

    const v48, 0x3c23d70a    # 0.01f

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v43, 0x3e75c28f    # 0.24f

    const v44, -0x40dc28f6    # -0.64f

    const v45, 0x3f2b851f    # 0.67f

    const v46, -0x405ae148    # -1.29f

    const v47, 0x3fa66666    # 1.3f

    const v48, -0x4011eb85    # -1.86f

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v43, -0x40f0a3d7    # -0.56f

    const v44, -0x42333333    # -0.1f

    const v45, -0x40747ae1    # -1.09f

    const v46, -0x41dc28f6    # -0.16f

    const v47, -0x403c28f6    # -1.53f

    const v48, -0x41dc28f6    # -0.16f

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v43, -0x4059999a    # -1.3f

    const/16 v44, 0x0

    const v45, -0x3fa70a3d    # -3.39f

    const v46, 0x3ee66666    # 0.45f

    const v47, -0x3f68a3d7    # -4.73f

    const v48, 0x3fb70a3d    # 1.43f

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const/high16 v43, -0x41000000    # -0.5f

    const v44, -0x407ae148    # -1.04f

    const v45, -0x40b851ec    # -0.78f

    const v46, -0x3ff33333    # -2.2f

    const v47, -0x40b851ec    # -0.78f

    const v48, -0x3fa47ae1    # -3.43f

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const/16 v43, 0x0

    const v44, -0x3f72e148    # -4.41f

    const v45, 0x4065c28f    # 3.59f

    const/high16 v46, -0x3f000000    # -8.0f

    const/high16 v47, 0x41000000    # 8.0f

    const/high16 v48, -0x3f000000    # -8.0f

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const v1, 0x4065c28f    # 3.59f

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v0, v8, v1, v8, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const v44, 0x3f99999a    # 1.2f

    const v45, -0x4175c28f    # -0.27f

    const v46, 0x4015c28f    # 2.34f

    const/high16 v47, -0x40c00000    # -0.75f

    const v48, 0x4057ae14    # 3.37f

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const/high16 v43, -0x40800000    # -1.0f

    const v44, -0x40e8f5c3    # -0.59f

    const v45, -0x3fe8f5c3    # -2.36f

    const v46, -0x40a147ae    # -0.87f

    const v47, -0x3fb0a3d7    # -3.24f

    const v48, -0x40a147ae    # -0.87f

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const v43, -0x403d70a4    # -1.52f

    const/16 v44, 0x0

    const/high16 v45, -0x3f700000    # -4.5f

    const v46, 0x3f4f5c29    # 0.81f

    const/high16 v47, -0x3f700000    # -4.5f

    const v48, 0x402ccccd    # 2.7f

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const v1, 0x4031eb85    # 2.78f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const v43, -0x3feeb852    # -2.27f

    const v44, -0x41fae148    # -0.13f

    const v45, -0x3f76b852    # -4.29f

    const v46, -0x40651eb8    # -1.21f

    const v47, -0x3f4ae148    # -5.66f

    const v48, -0x3fc8f5c3    # -2.86f

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    nop

    .line 219
    .end local v0    # "$this$_get_SupervisedUserCircle__u24lambda_u243_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v21    # "$i$a$-materialPath-YwgOQQI$default-SupervisedUserCircleKt$SupervisedUserCircle$1$3":I
    nop

    .line 220
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 218
    .end local v13    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v19    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 221
    nop

    .line 222
    .end local v12    # "$i$f$PathData":I
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

    .line 230
    nop

    .line 231
    nop

    .line 216
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 232
    nop

    .line 233
    .end local v10    # "name$iv$iv":Ljava/lang/String;
    .end local v11    # "$i$f$path-R_LF-3I":I
    .end local v23    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v27    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v29    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v31    # "strokeLineWidth$iv$iv":F
    .end local v32    # "strokeLineCap$iv$iv":I
    .end local v33    # "strokeLineJoin$iv$iv":I
    .end local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 65
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "fillAlpha$iv":F
    .end local v6    # "strokeAlpha$iv":F
    .end local v7    # "pathFillType$iv":I
    .end local v9    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 112
    .end local v2    # "$this$_get_SupervisedUserCircle__u24lambda_u243":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v3    # "$i$a$-materialIcon-SupervisedUserCircleKt$SupervisedUserCircle$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v14    # "$i$f$materialIcon":I
    .end local v40    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/SupervisedUserCircleKt;->_supervisedUserCircle:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 107
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
