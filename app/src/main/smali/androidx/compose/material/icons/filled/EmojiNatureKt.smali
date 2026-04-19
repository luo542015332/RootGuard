.class public final Landroidx/compose/material/icons/filled/EmojiNatureKt;
.super Ljava/lang/Object;
.source "EmojiNature.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmojiNature.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmojiNature.kt\nandroidx/compose/material/icons/filled/EmojiNatureKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,129:1\n122#2:130\n116#2,3:131\n119#2,3:135\n132#2,18:138\n152#2:175\n132#2,18:176\n152#2:213\n174#3:134\n694#4,2:156\n706#4,2:158\n708#4,11:164\n694#4,2:194\n706#4,2:196\n708#4,11:202\n64#5,4:160\n64#5,4:198\n*S KotlinDebug\n*F\n+ 1 EmojiNature.kt\nandroidx/compose/material/icons/filled/EmojiNatureKt\n*L\n29#1:130\n29#1:131,3\n29#1:135,3\n30#1:138,18\n30#1:175\n65#1:176,18\n65#1:213\n29#1:134\n30#1:156,2\n30#1:158,2\n30#1:164,11\n65#1:194,2\n65#1:196,2\n65#1:202,11\n30#1:160,4\n65#1:198,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_emojiNature",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "EmojiNature",
        "Landroidx/compose/material/icons/Icons$Filled;",
        "getEmojiNature",
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
.field private static _emojiNature:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getEmojiNature(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 43
    .param p0, "$this$EmojiNature"    # Landroidx/compose/material/icons/Icons$Filled;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/filled/EmojiNatureKt;->_emojiNature:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string v0, "Filled.EmojiNature"

    .local v0, "name$iv":Ljava/lang/String;
    const/4 v14, 0x0

    .line 130
    .local v14, "$i$f$materialIcon":I
    nop

    .line 131
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 132
    nop

    .line 133
    const/high16 v2, 0x41c00000    # 24.0f

    .local v2, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 134
    .local v3, "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 135
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v2, 0x41c00000    # 24.0f

    .restart local v2    # "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 134
    .restart local v3    # "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 136
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v6, 0x41c00000    # 24.0f

    .line 137
    const/high16 v7, 0x41c00000    # 24.0f

    .line 131
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v2, v15

    move-object v3, v0

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 130
    nop

    .local v2, "$this$_get_EmojiNature__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon-EmojiNatureKt$EmojiNature$1":I
    move-object v4, v2

    .line 138
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 139
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "fillAlpha$iv":F
    move/from16 v20, v5

    .line 138
    nop

    .line 140
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "strokeAlpha$iv":F
    move/from16 v22, v6

    .line 138
    nop

    .line 141
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v7

    .local v7, "pathFillType$iv":I
    move/from16 v17, v7

    .line 138
    const/4 v8, 0x0

    .line 147
    .local v8, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 148
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v10, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v9

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 150
    nop

    .line 152
    nop

    .line 153
    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 154
    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 155
    nop

    .line 147
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

    .line 156
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 157
    const-string v10, ""

    .local v10, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v10

    .line 156
    const/4 v11, 0x0

    .line 158
    .local v11, "$i$f$path-R_LF-3I":I
    nop

    .line 159
    const/4 v13, 0x0

    .line 160
    .local v13, "$i$f$PathData":I
    new-instance v16, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v16, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v27, 0x0

    .line 161
    .local v27, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v35, v16

    .local v35, "$this$_get_EmojiNature__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v36, 0x0

    .line 31
    .local v36, "$i$a$-materialPath-YwgOQQI$default-EmojiNatureKt$EmojiNature$1$1":I
    const v12, 0x41af851f    # 21.94f

    const v9, 0x409c28f6    # 4.88f

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    .end local v35    # "$this$_get_EmojiNature__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_EmojiNature__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v40, "name$iv":Ljava/lang/String;
    invoke-virtual {v0, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v29, 0x41ae147b    # 21.76f

    const v30, 0x408b3333    # 4.35f

    const/high16 v31, 0x41aa0000    # 21.25f

    const/high16 v32, 0x40800000    # 4.0f

    const v33, 0x41a570a4    # 20.68f

    const/high16 v34, 0x40800000    # 4.0f

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v29, -0x430a3d71    # -0.03f

    const/16 v30, 0x0

    const v31, -0x428a3d71    # -0.06f

    const/16 v32, 0x0

    const v33, -0x4247ae14    # -0.09f

    const/16 v34, 0x0

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v9, 0x419ccccd    # 19.6f

    invoke-virtual {v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v9, -0x416147ae    # -0.31f

    const v12, -0x4087ae14    # -0.97f

    invoke-virtual {v0, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v29, 0x41993333    # 19.15f

    const v30, 0x401b851f    # 2.43f

    const v31, 0x4194e148    # 18.61f

    const/high16 v32, 0x40000000    # 2.0f

    const/high16 v33, 0x41900000    # 18.0f

    const/high16 v34, 0x40000000    # 2.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v29, -0x40e3d70a    # -0.61f

    const/16 v30, 0x0

    const v31, -0x406ccccd    # -1.15f

    const v32, 0x3edc28f6    # 0.43f

    const v33, -0x405ae148    # -1.29f

    const v34, 0x3f851eb8    # 1.04f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v9, 0x41833333    # 16.4f

    const/high16 v12, 0x40800000    # 4.0f

    invoke-virtual {v0, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v9, -0x40851eb8    # -0.98f

    invoke-virtual {v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v29, -0x430a3d71    # -0.03f

    const v31, -0x428a3d71    # -0.06f

    const/16 v32, 0x0

    const v33, -0x4247ae14    # -0.09f

    const/16 v34, 0x0

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v29, -0x40ee147b    # -0.57f

    const v31, -0x4075c28f    # -1.08f

    const v32, 0x3eb33333    # 0.35f

    const v33, -0x405eb852    # -1.26f

    const v34, 0x3f6147ae    # 0.88f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v29, -0x41bd70a4    # -0.19f

    const v30, 0x3f0f5c29    # 0.56f

    const v31, 0x3d23d70a    # 0.04f

    const v32, 0x3f95c28f    # 1.17f

    const v33, 0x3f0f5c29    # 0.56f

    const v34, 0x3fbd70a4    # 1.48f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v9, 0x3f051eb8    # 0.52f

    const v12, 0x3f5eb852    # 0.87f

    invoke-virtual {v0, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v9, 0x4171999a    # 15.1f

    const v12, 0x4101eb85    # 8.12f

    invoke-virtual {v0, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v29, -0x41947ae1    # -0.23f

    const v30, 0x3f147ae1    # 0.58f

    const v31, -0x42dc28f6    # -0.04f

    const/high16 v32, 0x3fa00000    # 1.25f

    const v33, 0x3ee66666    # 0.45f

    const v34, 0x3fcf5c29    # 1.62f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v29, 0x417c7ae1    # 15.78f

    const v30, 0x411e8f5c    # 9.91f

    const v31, 0x41807ae1    # 16.06f

    const/high16 v32, 0x41200000    # 10.0f

    const v33, 0x4182a3d7    # 16.33f

    const/high16 v34, 0x41200000    # 10.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v29, 0x3e9eb852    # 0.31f

    const/16 v30, 0x0

    const v31, 0x3f1c28f6    # 0.61f

    const v32, -0x421eb852    # -0.11f

    const v33, 0x3f5c28f6    # 0.86f

    const v34, -0x415c28f6    # -0.32f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v9, 0x410fae14    # 8.98f

    const/high16 v12, 0x41900000    # 18.0f

    invoke-virtual {v0, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v9, 0x3f4f5c29    # 0.81f

    const v12, 0x3f333333    # 0.7f

    invoke-virtual {v0, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v29, 0x41987ae1    # 19.06f

    const v30, 0x411e3d71    # 9.89f

    const v31, 0x419ae148    # 19.36f

    const/high16 v32, 0x41200000    # 10.0f

    const v33, 0x419d5c29    # 19.67f

    const/high16 v34, 0x41200000    # 10.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v29, 0x3e8a3d71    # 0.27f

    const/16 v30, 0x0

    const v31, 0x3f0ccccd    # 0.55f

    const v32, -0x4247ae14    # -0.09f

    const v33, 0x3f47ae14    # 0.78f

    const v34, -0x417ae148    # -0.26f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const/high16 v29, 0x3f000000    # 0.5f

    const v30, -0x41428f5c    # -0.37f

    const v31, 0x3f2e147b    # 0.68f

    const v32, -0x407ae148    # -1.04f

    const v33, 0x3ee66666    # 0.45f

    const v34, -0x4030a3d7    # -1.62f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v9, -0x413851ec    # -0.39f

    const v12, -0x406147ae    # -1.24f

    invoke-virtual {v0, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v9, -0x40fae148    # -0.52f

    const v12, 0x3f5eb852    # 0.87f

    invoke-virtual {v0, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v29, 0x41af1eb8    # 21.89f

    const v30, 0x40c1999a    # 6.05f

    const v31, 0x41b0f5c3    # 22.12f

    const v32, 0x40ae147b    # 5.44f

    const v33, 0x41af851f    # 21.94f

    const v34, 0x409c28f6    # 4.88f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const/high16 v12, 0x40e00000    # 7.0f

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v0, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v29, -0x40f33333    # -0.55f

    const/16 v30, 0x0

    const/high16 v31, -0x40800000    # -1.0f

    const v32, -0x4119999a    # -0.45f

    const/high16 v33, -0x40800000    # -1.0f

    const/high16 v34, -0x40800000    # -1.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const/16 v29, 0x0

    const v30, -0x40f33333    # -0.55f

    const v31, 0x3ee66666    # 0.45f

    const/high16 v32, -0x40800000    # -1.0f

    const/high16 v33, 0x3f800000    # 1.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v9, 0x3ee66666    # 0.45f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v0, v12, v9, v12, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const/high16 v29, 0x41980000    # 19.0f

    const v30, 0x40d1999a    # 6.55f

    const v31, 0x41946666    # 18.55f

    const/high16 v32, 0x40e00000    # 7.0f

    const/high16 v33, 0x41900000    # 18.0f

    const/high16 v34, 0x40e00000    # 7.0f

    invoke-virtual/range {v28 .. v34}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    nop

    .line 161
    .end local v0    # "$this$_get_EmojiNature__u24lambda_u242_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v36    # "$i$a$-materialPath-YwgOQQI$default-EmojiNatureKt$EmojiNature$1$1":I
    nop

    .line 162
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 160
    .end local v16    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v27    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 163
    nop

    .line 164
    .end local v13    # "$i$f$PathData":I
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

    .line 172
    nop

    .line 173
    nop

    .line 158
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 174
    nop

    .line 175
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

    .line 65
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "fillAlpha$iv":F
    .end local v6    # "strokeAlpha$iv":F
    .end local v7    # "pathFillType$iv":I
    .end local v8    # "$i$f$materialPath-YwgOQQI":I
    move-object v0, v2

    .line 176
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 177
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "fillAlpha$iv":F
    move/from16 v28, v4

    .line 176
    nop

    .line 178
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "strokeAlpha$iv":F
    move/from16 v30, v5

    .line 176
    nop

    .line 179
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .local v6, "pathFillType$iv":I
    move/from16 v25, v6

    .line 176
    const/4 v7, 0x0

    .line 185
    .local v7, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 186
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v8

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 188
    nop

    .line 190
    nop

    .line 191
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 192
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 193
    nop

    .line 185
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

    .line 194
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 195
    const-string v8, ""

    .local v8, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v8

    .line 194
    const/4 v9, 0x0

    .line 196
    .local v9, "$i$f$path-R_LF-3I":I
    nop

    .line 197
    const/4 v10, 0x0

    .line 198
    .local v10, "$i$f$PathData":I
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v11, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 199
    .local v12, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v13, v11

    .local v13, "$this$_get_EmojiNature__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v22, 0x0

    .line 66
    .local v22, "$i$a$-materialPath-YwgOQQI$default-EmojiNatureKt$EmojiNature$1$2":I
    const v15, 0x4157d70a    # 13.49f

    move-object/from16 v41, v0

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v41, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v0, 0x412828f6    # 10.51f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v16, -0x4123d70a    # -0.43f

    const v17, -0x4123d70a    # -0.43f

    const v18, -0x408f5c29    # -0.94f

    const v19, -0x40c51eb8    # -0.73f

    const v20, -0x404147ae    # -1.49f

    const v21, -0x4091eb85    # -0.93f

    move-object v15, v13

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v15, 0x3fb0a3d7    # 1.38f

    invoke-virtual {v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v16, -0x421eb852    # -0.11f

    const v17, -0x43dc28f6    # -0.01f

    const v18, -0x41947ae1    # -0.23f

    const v19, -0x430a3d71    # -0.03f

    const v20, -0x4151eb85    # -0.34f

    const v21, -0x430a3d71    # -0.03f

    move-object v15, v13

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v16, -0x407d70a4    # -1.02f

    const/16 v17, 0x0

    const v18, -0x3ffccccd    # -2.05f

    const v19, 0x3ec7ae14    # 0.39f

    const v20, -0x3fcae148    # -2.83f

    const v21, 0x3f95c28f    # 1.17f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v16, -0x41dc28f6    # -0.16f

    const v17, 0x3e23d70a    # 0.16f

    const v18, -0x41666666    # -0.3f

    const v19, 0x3eae147b    # 0.34f

    const v20, -0x4123d70a    # -0.43f

    const v21, 0x3f07ae14    # 0.53f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const/high16 v15, 0x40c00000    # 6.0f

    const v0, 0x412851ec    # 10.52f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v16, -0x403851ec    # -1.56f

    const v17, -0x40f33333    # -0.55f

    const v18, -0x3fae147b    # -3.28f

    const v19, 0x3e8a3d71    # 0.27f

    const v20, -0x3f8ae148    # -3.83f

    const v21, 0x3fe8f5c3    # 1.82f

    move-object v15, v13

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v16, -0x4175c28f    # -0.27f

    const/high16 v17, 0x3f400000    # 0.75f

    const v18, -0x41947ae1    # -0.23f

    const v19, 0x3fc8f5c3    # 1.57f

    const v20, 0x3df5c28f    # 0.12f

    const v21, 0x40128f5c    # 2.29f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const v16, 0x3e6b851f    # 0.23f

    const v17, 0x3ef5c28f    # 0.48f

    const v18, 0x3f147ae1    # 0.58f

    const v19, 0x3f5eb852    # 0.87f

    const/high16 v20, 0x3f800000    # 1.0f

    const v21, 0x3f947ae1    # 1.16f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v16, -0x413d70a4    # -0.38f

    const v17, 0x3faccccd    # 1.35f

    const v18, -0x428a3d71    # -0.06f

    const v19, 0x40366666    # 2.85f

    const v21, 0x407a3d71    # 3.91f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v16, 0x3f87ae14    # 1.06f

    const v17, 0x3f87ae14    # 1.06f

    const v18, 0x40247ae1    # 2.57f

    const v19, 0x3fb0a3d7    # 1.38f

    const v20, 0x407a3d71    # 3.91f

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v16, 0x3e947ae1    # 0.29f

    const v17, 0x3ed70a3d    # 0.42f

    const v18, 0x3f2e147b    # 0.68f

    const v19, 0x3f451eb8    # 0.77f

    const v20, 0x3f947ae1    # 1.16f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v16, 0x411c7ae1    # 9.78f

    const v17, 0x41af3333    # 21.9f

    const v18, 0x41235c29    # 10.21f

    const/high16 v19, 0x41b00000    # 22.0f

    const v20, 0x412a6666    # 10.65f

    const/high16 v21, 0x41b00000    # 22.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v16, 0x3eae147b    # 0.34f

    const/16 v17, 0x0

    const v18, 0x3f2e147b    # 0.68f

    const v19, -0x428a3d71    # -0.06f

    const v20, 0x3f8147ae    # 1.01f

    const v21, -0x41d1eb85    # -0.17f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v16, 0x3fc7ae14    # 1.56f

    const v17, -0x40f33333    # -0.55f

    const v18, 0x401851ec    # 2.38f

    const v19, -0x3feeb852    # -2.27f

    const v20, 0x3fe8f5c3    # 1.82f

    const v21, -0x3f89999a    # -3.85f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v0, -0x4050a3d7    # -1.37f

    const v15, -0x40fae148    # -0.52f

    invoke-virtual {v13, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v16, 0x3e3851ec    # 0.18f

    const v17, -0x41fae148    # -0.13f

    const v18, 0x3eb851ec    # 0.36f

    const v19, -0x4175c28f    # -0.27f

    const v20, 0x3f07ae14    # 0.53f

    const v21, -0x4123d70a    # -0.43f

    move-object v15, v13

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v16, 0x3f5eb852    # 0.87f

    const v17, -0x40a147ae    # -0.87f

    const v18, 0x3f9eb852    # 1.24f

    const v19, -0x3ffd70a4    # -2.04f

    const v20, 0x3f91eb85    # 1.14f

    const v21, -0x3fb51eb8    # -3.17f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v0, -0x40347ae1    # -1.59f

    invoke-virtual {v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v16, 0x4163851f    # 14.22f

    const v17, 0x41375c29    # 11.46f

    const v18, 0x415eb852    # 13.92f

    const v19, 0x412f3333    # 10.95f

    const v20, 0x4157d70a    # 13.49f

    const v21, 0x412828f6    # 10.51f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v0, 0x409570a4    # 4.67f

    const v15, 0x4164a3d7    # 14.29f

    invoke-virtual {v13, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const/high16 v16, -0x41800000    # -0.25f

    const v17, -0x4247ae14    # -0.09f

    const v18, -0x4119999a    # -0.45f

    const v19, -0x4175c28f    # -0.27f

    const v20, -0x40ee147b    # -0.57f

    const v21, -0x40fd70a4    # -0.51f

    move-object v15, v13

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v0, -0x42dc28f6    # -0.04f

    const v15, -0x40bd70a4    # -0.76f

    const v1, -0x41fae148    # -0.13f

    move-object/from16 v42, v2

    .end local v2    # "$this$_get_EmojiNature__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v42, "$this$_get_EmojiNature__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v2, -0x40fd70a4    # -0.51f

    invoke-virtual {v13, v1, v2, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const v16, 0x3e428f5c    # 0.19f

    const v17, -0x40fae148    # -0.52f

    const v18, 0x3f428f5c    # 0.76f

    const v19, -0x40b5c28f    # -0.79f

    const v20, 0x3fa147ae    # 1.26f

    const v21, -0x40e3d70a    # -0.61f

    move-object v15, v13

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const v0, 0x404a3d71    # 3.16f

    const v1, 0x3f9851ec    # 1.19f

    invoke-virtual {v13, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const v16, 0x40ea8f5c    # 7.33f

    const v17, 0x41633333    # 14.2f

    const v18, 0x40bb3333    # 5.85f

    const v19, 0x416b5c29    # 14.71f

    const v20, 0x409570a4    # 4.67f

    const v21, 0x4164a3d7    # 14.29f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const v0, 0x412fd70a    # 10.99f

    const v1, 0x419f851f    # 19.94f

    invoke-virtual {v13, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const/high16 v16, -0x41800000    # -0.25f

    const v17, 0x3db851ec    # 0.09f

    const v18, -0x40fae148    # -0.52f

    const v19, 0x3da3d70a    # 0.08f

    const v20, -0x40bd70a4    # -0.76f

    const v21, -0x42dc28f6    # -0.04f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const v16, -0x418a3d71    # -0.24f

    const v17, -0x421eb852    # -0.11f

    const v18, -0x4128f5c3    # -0.42f

    const v19, -0x415c28f6    # -0.32f

    const v20, -0x40fd70a4    # -0.51f

    const v21, -0x40ee147b    # -0.57f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    const v16, -0x4128f5c3    # -0.42f

    const v17, -0x4068f5c3    # -1.18f

    const v18, 0x3db851ec    # 0.09f

    const v19, -0x3fd66666    # -2.65f

    const v20, 0x3f333333    # 0.7f

    const v21, -0x3f8ccccd    # -3.8f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const v0, 0x3f970a3d    # 1.18f

    const v1, 0x404851ec    # 3.13f

    invoke-virtual {v13, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    const v16, 0x413c7ae1    # 11.78f

    const v17, 0x419970a4    # 19.18f

    const v18, 0x413828f6    # 11.51f

    const v19, 0x419e147b    # 19.76f

    const v20, 0x412fd70a    # 10.99f

    const v21, 0x419f851f    # 19.94f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    const v0, 0x41433333    # 12.2f

    const v1, 0x4169999a    # 14.6f

    invoke-virtual {v13, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    const v0, -0x40e3d70a    # -0.61f

    const v1, -0x4031eb85    # -1.61f

    invoke-virtual {v13, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    const/16 v16, 0x0

    const v17, -0x43dc28f6    # -0.01f

    const v18, -0x43dc28f6    # -0.01f

    const v19, -0x435c28f6    # -0.02f

    const v20, -0x435c28f6    # -0.02f

    const v21, -0x430a3d71    # -0.03f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    const v16, -0x435c28f6    # -0.02f

    const v17, -0x42dc28f6    # -0.04f

    const v18, -0x42dc28f6    # -0.04f

    const v19, -0x425c28f6    # -0.08f

    const v20, -0x428a3d71    # -0.06f

    const v21, -0x420a3d71    # -0.12f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    const v19, -0x4270a3d7    # -0.07f

    const v20, -0x4270a3d7    # -0.07f

    const v21, -0x421eb852    # -0.11f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    const v16, -0x430a3d71    # -0.03f

    const v17, -0x430a3d71    # -0.03f

    const v18, -0x428a3d71    # -0.06f

    const v19, -0x428a3d71    # -0.06f

    const v20, -0x4247ae14    # -0.09f

    const v21, -0x4247ae14    # -0.09f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    const v18, -0x4270a3d7    # -0.07f

    const v19, -0x42b33333    # -0.05f

    const v20, -0x421eb852    # -0.11f

    const v21, -0x4270a3d7    # -0.07f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    const v16, -0x42dc28f6    # -0.04f

    const v17, -0x435c28f6    # -0.02f

    const v20, -0x420a3d71    # -0.12f

    const v21, -0x428a3d71    # -0.06f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    const v16, -0x43dc28f6    # -0.01f

    const/16 v17, 0x0

    const v18, -0x435c28f6    # -0.02f

    const v19, -0x43dc28f6    # -0.01f

    const v20, -0x430a3d71    # -0.03f

    const v21, -0x435c28f6    # -0.02f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    const v0, 0x41166666    # 9.4f

    const v1, 0x413ccccd    # 11.8f

    invoke-virtual {v13, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 119
    const v16, 0x3eb851ec    # 0.36f

    const v17, -0x416b851f    # -0.29f

    const v18, 0x3f4a3d71    # 0.79f

    const v19, -0x41147ae1    # -0.46f

    const v20, 0x3fa147ae    # 1.26f

    const v21, -0x41147ae1    # -0.46f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    const v16, 0x3f07ae14    # 0.53f

    const/16 v17, 0x0

    const v18, 0x3f851eb8    # 1.04f

    const v19, 0x3e570a3d    # 0.21f

    const v20, 0x3fb47ae1    # 1.41f

    const v21, 0x3f170a3d    # 0.59f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    const v16, 0x414ccccd    # 12.8f

    const v17, 0x414a8f5c    # 12.66f

    const v18, 0x414d70a4    # 12.84f

    const v19, 0x415cf5c3    # 13.81f

    const v20, 0x41433333    # 12.2f

    const v21, 0x4169999a    # 14.6f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    nop

    .line 199
    .end local v13    # "$this$_get_EmojiNature__u24lambda_u242_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v22    # "$i$a$-materialPath-YwgOQQI$default-EmojiNatureKt$EmojiNature$1$2":I
    nop

    .line 200
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 198
    .end local v11    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 201
    nop

    .line 202
    .end local v10    # "$i$f$PathData":I
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

    .line 210
    nop

    .line 211
    nop

    .line 196
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 212
    nop

    .line 213
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

    .line 65
    .end local v4    # "fillAlpha$iv":F
    .end local v5    # "strokeAlpha$iv":F
    .end local v6    # "pathFillType$iv":I
    .end local v7    # "$i$f$materialPath-YwgOQQI":I
    .end local v41    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 130
    .end local v3    # "$i$a$-materialIcon-EmojiNatureKt$EmojiNature$1":I
    .end local v42    # "$this$_get_EmojiNature__u24lambda_u242":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v14    # "$i$f$materialIcon":I
    .end local v40    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/filled/EmojiNatureKt;->_emojiNature:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 125
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
