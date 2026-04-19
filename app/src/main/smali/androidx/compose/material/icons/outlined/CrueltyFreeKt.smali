.class public final Landroidx/compose/material/icons/outlined/CrueltyFreeKt;
.super Ljava/lang/Object;
.source "CrueltyFree.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrueltyFree.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrueltyFree.kt\nandroidx/compose/material/icons/outlined/CrueltyFreeKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,93:1\n122#2:94\n116#2,3:95\n119#2,3:99\n132#2,18:102\n152#2:139\n174#3:98\n694#4,2:120\n706#4,2:122\n708#4,11:128\n64#5,4:124\n*S KotlinDebug\n*F\n+ 1 CrueltyFree.kt\nandroidx/compose/material/icons/outlined/CrueltyFreeKt\n*L\n29#1:94\n29#1:95,3\n29#1:99,3\n30#1:102,18\n30#1:139\n29#1:98\n30#1:120,2\n30#1:122,2\n30#1:128,11\n30#1:124,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_crueltyFree",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "CrueltyFree",
        "Landroidx/compose/material/icons/Icons$Outlined;",
        "getCrueltyFree",
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
.field private static _crueltyFree:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getCrueltyFree(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 39
    .param p0, "$this$CrueltyFree"    # Landroidx/compose/material/icons/Icons$Outlined;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/outlined/CrueltyFreeKt;->_crueltyFree:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "Outlined.CrueltyFree"

    .local v0, "name$iv":Ljava/lang/String;
    const/4 v14, 0x0

    .line 94
    .local v14, "$i$f$materialIcon":I
    nop

    .line 95
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 96
    nop

    .line 97
    const/high16 v2, 0x41c00000    # 24.0f

    .local v2, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 98
    .local v3, "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 99
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v2, 0x41c00000    # 24.0f

    .restart local v2    # "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 98
    .restart local v3    # "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 100
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v6, 0x41c00000    # 24.0f

    .line 101
    const/high16 v7, 0x41c00000    # 24.0f

    .line 95
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v2, v15

    move-object v3, v0

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    nop

    .local v2, "$this$_get_CrueltyFree__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon-CrueltyFreeKt$CrueltyFree$1":I
    move-object v4, v2

    .line 102
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 103
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "fillAlpha$iv":F
    move/from16 v20, v5

    .line 102
    nop

    .line 104
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "strokeAlpha$iv":F
    move/from16 v22, v6

    .line 102
    nop

    .line 105
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v7

    .local v7, "pathFillType$iv":I
    move/from16 v17, v7

    .line 102
    const/4 v8, 0x0

    .line 111
    .local v8, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 112
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v10, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v9

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 114
    nop

    .line 116
    nop

    .line 117
    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 118
    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 119
    nop

    .line 111
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

    .line 120
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 121
    const-string v10, ""

    .local v10, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v10

    .line 120
    const/4 v11, 0x0

    .line 122
    .local v11, "$i$f$path-R_LF-3I":I
    nop

    .line 123
    const/4 v12, 0x0

    .line 124
    .local v12, "$i$f$PathData":I
    new-instance v13, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v13, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v16, 0x0

    .line 125
    .local v16, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v34, v13

    .local v34, "$this$_get_CrueltyFree__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v35, 0x0

    .line 31
    .local v35, "$i$a$-materialPath-YwgOQQI$default-CrueltyFreeKt$CrueltyFree$1$1":I
    const/high16 v9, 0x41880000    # 17.0f

    move-object/from16 v37, v0

    .end local v0    # "name$iv":Ljava/lang/String;
    .local v37, "name$iv":Ljava/lang/String;
    const/high16 v0, 0x41600000    # 14.0f

    move-object/from16 v1, v34

    .end local v34    # "$this$_get_CrueltyFree__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v1, "$this$_get_CrueltyFree__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v1, v9, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, -0x418a3d71    # -0.24f

    const v29, -0x418a3d71    # -0.24f

    const v30, -0x411eb852    # -0.44f

    const v31, -0x41051eb8    # -0.49f

    const v32, -0x40d9999a    # -0.65f

    const/high16 v33, -0x40c00000    # -0.75f

    move-object/from16 v27, v1

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v28, 0x418c147b    # 17.51f

    const/high16 v29, 0x41380000    # 11.5f

    const/high16 v30, 0x41980000    # 19.0f

    const v31, 0x4108f5c3    # 8.56f

    const/high16 v32, 0x41980000    # 19.0f

    const/high16 v33, 0x40a00000    # 5.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/16 v28, 0x0

    const v29, -0x40066666    # -1.95f

    const v30, -0x40c28f5c    # -0.74f

    const/high16 v31, -0x3fc00000    # -3.0f

    const/high16 v32, -0x40000000    # -2.0f

    const/high16 v33, -0x3fc00000    # -3.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v28, -0x403ae148    # -1.54f

    const/16 v29, 0x0

    const v30, -0x3f828f5c    # -3.96f

    const v31, 0x4003d70a    # 2.06f

    const/high16 v32, -0x3f600000    # -5.0f

    const v33, 0x40bf0a3d    # 5.97f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v28, 0x412f5c29    # 10.96f

    const v29, 0x4081eb85    # 4.06f

    const v30, 0x4108a3d7    # 8.54f

    const/high16 v31, 0x40000000    # 2.0f

    const/high16 v32, 0x40e00000    # 7.0f

    const/high16 v33, 0x40000000    # 2.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v28, 0x40b7ae14    # 5.74f

    const/high16 v29, 0x40000000    # 2.0f

    const/high16 v30, 0x40a00000    # 5.0f

    const v31, 0x40433333    # 3.05f

    const/high16 v32, 0x40a00000    # 5.0f

    const/high16 v33, 0x40a00000    # 5.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const/16 v28, 0x0

    const v29, 0x4063d70a    # 3.56f

    const v30, 0x3fbeb852    # 1.49f

    const/high16 v31, 0x40d00000    # 6.5f

    const v32, 0x4029999a    # 2.65f

    const/high16 v33, 0x41040000    # 8.25f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v28, 0x40ee147b    # 7.44f

    const v29, 0x415828f6    # 13.51f

    const v30, 0x40e7ae14    # 7.24f

    const v31, 0x415c28f6    # 13.76f

    const/high16 v32, 0x40e00000    # 7.0f

    const/high16 v33, 0x41600000    # 14.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const/high16 v28, -0x41800000    # -0.25f

    const/high16 v29, 0x3e800000    # 0.25f

    const/high16 v30, -0x40000000    # -2.0f

    const v31, 0x3fb1eb85    # 1.39f

    const/high16 v32, -0x40000000    # -2.0f

    const/high16 v33, 0x40600000    # 3.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const/high16 v28, 0x40a00000    # 5.0f

    const v29, 0x419fd70a    # 19.98f

    const v30, 0x40e0a3d7    # 7.02f

    const/high16 v31, 0x41b00000    # 22.0f

    const/high16 v32, 0x41180000    # 9.5f

    const/high16 v33, 0x41b00000    # 22.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/high16 v28, 0x3fc00000    # 1.5f

    const/16 v29, 0x0

    const/high16 v30, 0x40200000    # 2.5f

    const/high16 v31, -0x41000000    # -0.5f

    const/high16 v32, 0x40200000    # 2.5f

    const/high16 v33, -0x41000000    # -0.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const/high16 v9, 0x40200000    # 2.5f

    const/high16 v0, 0x3f000000    # 0.5f

    move-object/from16 v38, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .end local v2    # "$this$_get_CrueltyFree__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v38, "$this$_get_CrueltyFree__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v1, v2, v0, v9, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v28, 0x401eb852    # 2.48f

    const/high16 v30, 0x40900000    # 4.5f

    const v31, -0x3ffeb852    # -2.02f

    const/high16 v32, 0x40900000    # 4.5f

    const/high16 v33, -0x3f700000    # -4.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const/high16 v28, 0x41980000    # 19.0f

    const v29, 0x41763d71    # 15.39f

    const/high16 v30, 0x418a0000    # 17.25f

    const/high16 v31, 0x41640000    # 14.25f

    const/high16 v32, 0x41880000    # 17.0f

    const/high16 v33, 0x41600000    # 14.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v2, 0x41870a3d    # 16.88f

    const v9, 0x4080f5c3    # 4.03f

    invoke-virtual {v1, v2, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v28, 0x4187851f    # 16.94f

    const v29, 0x40866666    # 4.2f

    const/high16 v30, 0x41880000    # 17.0f

    const v31, 0x409051ec    # 4.51f

    const/high16 v33, 0x40a00000    # 5.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const/16 v28, 0x0

    const v29, 0x4035c28f    # 2.84f

    const v30, -0x4071eb85    # -1.11f

    const v31, 0x40a7ae14    # 5.24f

    const v32, -0x3ffb851f    # -2.07f

    const v33, 0x40d8f5c3    # 6.78f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v28, -0x413d70a4    # -0.38f

    const v29, -0x417ae148    # -0.26f

    const v30, -0x40ab851f    # -0.83f

    const v31, -0x410a3d71    # -0.48f

    const v32, -0x404ccccd    # -1.4f

    const v33, -0x40e147ae    # -0.62f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v28, 0x415c51ec    # 13.77f

    const v29, 0x40d47ae1    # 6.64f

    const v30, 0x417f851f    # 15.97f

    const v31, 0x408a8f5c    # 4.33f

    const v32, 0x41870a3d    # 16.88f

    const v33, 0x4080f5c3    # 4.03f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const/high16 v2, 0x40e00000    # 7.0f

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const/16 v28, 0x0

    const v29, -0x41051eb8    # -0.49f

    const v30, 0x3d75c28f    # 0.06f

    const v31, -0x40b33333    # -0.8f

    const v32, 0x3df5c28f    # 0.12f

    const v33, -0x4087ae14    # -0.97f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v28, 0x3f68f5c3    # 0.91f

    const v29, 0x3e99999a    # 0.3f

    const v30, 0x40470a3d    # 3.11f

    const v31, 0x40270a3d    # 2.61f

    const v32, 0x40570a3d    # 3.36f

    const v33, 0x40e428f6    # 7.13f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v28, -0x40eb851f    # -0.58f

    const v29, 0x3e0f5c29    # 0.14f

    const v30, -0x407c28f6    # -1.03f

    const v31, 0x3eb33333    # 0.35f

    const v32, -0x404ccccd    # -1.4f

    const v33, 0x3f1eb852    # 0.62f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v28, 0x4101c28f    # 8.11f

    const v29, 0x4123d70a    # 10.24f

    const/high16 v30, 0x40e00000    # 7.0f

    const v31, 0x40fae148    # 7.84f

    const/high16 v32, 0x40e00000    # 7.0f

    const/high16 v33, 0x40a00000    # 5.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const/high16 v2, 0x41680000    # 14.5f

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const/high16 v28, -0x40800000    # -1.0f

    const/16 v29, 0x0

    const v30, -0x4019999a    # -1.8f

    const v31, -0x41570a3d    # -0.33f

    const v32, -0x3ff1eb85    # -2.22f

    const v33, -0x40f0a3d7    # -0.56f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v28, 0x414b3333    # 12.7f

    const v29, 0x419a147b    # 19.26f

    const/high16 v30, 0x41500000    # 13.0f

    const v31, 0x4195d70a    # 18.73f

    const/high16 v32, 0x41500000    # 13.0f

    const/high16 v33, 0x41940000    # 18.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const/16 v28, 0x0

    const v29, -0x4170a3d7    # -0.28f

    const v30, -0x4119999a    # -0.45f

    const/high16 v31, -0x41000000    # -0.5f

    const/high16 v32, -0x40800000    # -1.0f

    const/high16 v33, -0x41000000    # -0.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v2, 0x3e6147ae    # 0.22f

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v1, v9, v2, v9, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v29, 0x3e6b851f    # 0.23f

    const v30, 0x3e99999a    # 0.3f

    const v31, 0x3f428f5c    # 0.76f

    const v32, 0x3f3851ec    # 0.72f

    const v33, 0x3f70a3d7    # 0.94f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v28, 0x4134cccd    # 11.3f

    const v29, 0x419d5c29    # 19.67f

    const/high16 v30, 0x41280000    # 10.5f

    const/high16 v31, 0x41a00000    # 20.0f

    const/high16 v32, 0x41180000    # 9.5f

    const/high16 v33, 0x41a00000    # 20.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v28, 0x4101eb85    # 8.12f

    const/high16 v29, 0x41a00000    # 20.0f

    const/high16 v30, 0x40e00000    # 7.0f

    const v31, 0x41970a3d    # 18.88f

    const/high16 v32, 0x40e00000    # 7.0f

    const/high16 v33, 0x418c0000    # 17.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const/16 v28, 0x0

    const v29, -0x40cccccd    # -0.7f

    const v30, 0x3edc28f6    # 0.43f

    const v31, -0x406147ae    # -1.24f

    const/high16 v32, 0x3f800000    # 1.0f

    const v33, -0x40228f5c    # -1.73f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v28, 0x3ee147ae    # 0.44f

    const v29, -0x4147ae14    # -0.36f

    const v30, 0x3f1c28f6    # 0.61f

    const v31, -0x40fae148    # -0.52f

    const v32, 0x3fa66666    # 1.3f

    const v33, -0x4050a3d7    # -1.37f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v28, 0x3f428f5c    # 0.76f

    const v29, -0x408ccccd    # -0.95f

    const v30, 0x3f8b851f    # 1.09f

    const v31, -0x404ccccd    # -1.4f

    const v32, 0x402ccccd    # 2.7f

    const v33, -0x404ccccd    # -1.4f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v0, 0x402ccccd    # 2.7f

    const v2, 0x3fb33333    # 1.4f

    const v9, 0x3ff851ec    # 1.94f

    move/from16 v36, v3

    .end local v3    # "$i$a$-materialIcon-CrueltyFreeKt$CrueltyFree$1":I
    .local v36, "$i$a$-materialIcon-CrueltyFreeKt$CrueltyFree$1":I
    const v3, 0x3ee66666    # 0.45f

    invoke-virtual {v1, v9, v3, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v28, 0x3f30a3d7    # 0.69f

    const v29, 0x3f59999a    # 0.85f

    const v30, 0x3f5c28f6    # 0.86f

    const v31, 0x3f8147ae    # 1.01f

    const v32, 0x3fa66666    # 1.3f

    const v33, 0x3faf5c29    # 1.37f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v28, 0x3f11eb85    # 0.57f

    const v29, 0x3efae148    # 0.49f

    const/high16 v30, 0x3f800000    # 1.0f

    const v31, 0x3f83d70a    # 1.03f

    const/high16 v32, 0x3f800000    # 1.0f

    const v33, 0x3fdd70a4    # 1.73f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const/high16 v28, 0x41880000    # 17.0f

    const v29, 0x41970a3d    # 18.88f

    const v30, 0x417e147b    # 15.88f

    const/high16 v31, 0x41a00000    # 20.0f

    const/high16 v32, 0x41680000    # 14.5f

    const/high16 v33, 0x41a00000    # 20.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const/high16 v0, 0x41800000    # 16.0f

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const/16 v28, 0x0

    const v29, 0x3ed1eb85    # 0.41f

    const v30, -0x419eb852    # -0.22f

    const/high16 v31, 0x3f400000    # 0.75f

    const/high16 v32, -0x41000000    # -0.5f

    const/high16 v33, 0x3f400000    # 0.75f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const/high16 v2, 0x41500000    # 13.0f

    const v3, 0x418347ae    # 16.41f

    invoke-virtual {v1, v2, v3, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const v29, -0x412e147b    # -0.41f

    const v30, 0x3e6147ae    # 0.22f

    const/high16 v31, -0x40c00000    # -0.75f

    const/high16 v32, 0x3f000000    # 0.5f

    const/high16 v33, -0x40c00000    # -0.75f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v2, 0x417970a4    # 15.59f

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v1, v9, v2, v9, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const/high16 v9, 0x41300000    # 11.0f

    invoke-virtual {v1, v9, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v29, 0x3ed1eb85    # 0.41f

    const v30, -0x419eb852    # -0.22f

    const/high16 v31, 0x3f400000    # 0.75f

    const/high16 v32, -0x41000000    # -0.5f

    const/high16 v33, 0x3f400000    # 0.75f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2, v3, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v29, -0x412e147b    # -0.41f

    const v30, 0x3e6147ae    # 0.22f

    const/high16 v31, -0x40c00000    # -0.75f

    const/high16 v32, 0x3f000000    # 0.5f

    const/high16 v33, -0x40c00000    # -0.75f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v2, 0x417970a4    # 15.59f

    invoke-virtual {v1, v9, v2, v9, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    nop

    .line 125
    .end local v1    # "$this$_get_CrueltyFree__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v35    # "$i$a$-materialPath-YwgOQQI$default-CrueltyFreeKt$CrueltyFree$1$1":I
    nop

    .line 126
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 124
    .end local v13    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v16    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 127
    nop

    .line 128
    .end local v12    # "$i$f$PathData":I
    nop

    .line 129
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

    .line 122
    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 138
    nop

    .line 139
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

    .line 30
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "fillAlpha$iv":F
    .end local v6    # "strokeAlpha$iv":F
    .end local v7    # "pathFillType$iv":I
    .end local v8    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 94
    .end local v36    # "$i$a$-materialIcon-CrueltyFreeKt$CrueltyFree$1":I
    .end local v38    # "$this$_get_CrueltyFree__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v14    # "$i$f$materialIcon":I
    .end local v37    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/outlined/CrueltyFreeKt;->_crueltyFree:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 89
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
