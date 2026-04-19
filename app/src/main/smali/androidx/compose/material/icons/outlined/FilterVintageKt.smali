.class public final Landroidx/compose/material/icons/outlined/FilterVintageKt;
.super Ljava/lang/Object;
.source "FilterVintage.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilterVintage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilterVintage.kt\nandroidx/compose/material/icons/outlined/FilterVintageKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,127:1\n122#2:128\n116#2,3:129\n119#2,3:133\n132#2,18:136\n152#2:173\n174#3:132\n694#4,2:154\n706#4,2:156\n708#4,11:162\n64#5,4:158\n*S KotlinDebug\n*F\n+ 1 FilterVintage.kt\nandroidx/compose/material/icons/outlined/FilterVintageKt\n*L\n29#1:128\n29#1:129,3\n29#1:133,3\n30#1:136,18\n30#1:173\n29#1:132\n30#1:154,2\n30#1:156,2\n30#1:162,11\n30#1:158,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_filterVintage",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "FilterVintage",
        "Landroidx/compose/material/icons/Icons$Outlined;",
        "getFilterVintage",
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
.field private static _filterVintage:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getFilterVintage(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 39
    .param p0, "$this$FilterVintage"    # Landroidx/compose/material/icons/Icons$Outlined;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/outlined/FilterVintageKt;->_filterVintage:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "Outlined.FilterVintage"

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

    .local v2, "$this$_get_FilterVintage__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon-FilterVintageKt$FilterVintage$1":I
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
    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v23, v26

    .local v23, "strokeLineWidth$iv$iv":F
    move-object/from16 v21, v12

    .local v21, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v15, v4

    .line 154
    .local v15, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v19, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v24, "strokeLineCap$iv$iv":I
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 155
    const-string v9, ""

    .local v9, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v9

    .line 154
    const/4 v10, 0x0

    .line 156
    .local v10, "$i$f$path-R_LF-3I":I
    nop

    .line 157
    const/4 v11, 0x0

    .line 158
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v13, 0x0

    .line 159
    .local v13, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v16, v12

    .local v16, "$this$_get_FilterVintage__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v34, 0x0

    .line 31
    .local v34, "$i$a$-materialPath-YwgOQQI$default-FilterVintageKt$FilterVintage$1$1":I
    move-object/from16 v35, v0

    .end local v0    # "name$iv":Ljava/lang/String;
    .local v35, "name$iv":Ljava/lang/String;
    const v0, 0x4195999a    # 18.7f

    const v1, 0x41466666    # 12.4f

    move-object/from16 v36, v2

    move-object/from16 v2, v16

    .end local v16    # "$this$_get_FilterVintage__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v2, "$this$_get_FilterVintage__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v36, "$this$_get_FilterVintage__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, -0x4170a3d7    # -0.28f

    const v29, -0x41dc28f6    # -0.16f

    const v30, -0x40ee147b    # -0.57f

    const v31, -0x416b851f    # -0.29f

    const v32, -0x40a3d70a    # -0.86f

    const v33, -0x41333333    # -0.4f

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v28, 0x3e947ae1    # 0.29f

    const v29, -0x421eb852    # -0.11f

    const v30, 0x3f147ae1    # 0.58f

    const v31, -0x418a3d71    # -0.24f

    const v32, 0x3f5c28f6    # 0.86f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v28, 0x3ff5c28f    # 1.92f

    const v29, -0x4071eb85    # -1.11f

    const v30, 0x403f5c29    # 2.99f

    const v31, -0x3fb851ec    # -3.12f

    const/high16 v32, 0x40400000    # 3.0f

    const v33, -0x3f59eb85    # -5.19f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v28, -0x40970a3d    # -0.91f

    const v29, -0x40fae148    # -0.52f

    const v30, -0x40066666    # -1.95f

    const v31, -0x40b33333    # -0.8f

    const v32, -0x3fbf5c29    # -3.01f

    const v33, -0x40b33333    # -0.8f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v28, -0x407d70a4    # -1.02f

    const/16 v29, 0x0

    const v30, -0x3ffccccd    # -2.05f

    const v31, 0x3e851eb8    # 0.26f

    const v32, -0x3fc0a3d7    # -2.99f

    const v33, 0x3f4ccccd    # 0.8f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v28, -0x4170a3d7    # -0.28f

    const v29, 0x3e23d70a    # 0.16f

    const v30, -0x40f5c28f    # -0.54f

    const v31, 0x3eb33333    # 0.35f

    const v32, -0x40b851ec    # -0.78f

    const v33, 0x3f0a3d71    # 0.54f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v28, 0x3d4ccccd    # 0.05f

    const v29, -0x416147ae    # -0.31f

    const v30, 0x3da3d70a    # 0.08f

    const v31, -0x40deb852    # -0.63f

    const v32, 0x3da3d70a    # 0.08f

    const v33, -0x408ccccd    # -0.95f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const/16 v28, 0x0

    const v29, -0x3ff1eb85    # -2.22f

    const v30, -0x40651eb8    # -1.21f

    const v31, -0x3f7b3333    # -4.15f

    const/high16 v32, -0x3fc00000    # -3.0f

    const v33, -0x3f59eb85    # -5.19f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v28, 0x41235c29    # 10.21f

    const v29, 0x3feccccd    # 1.85f

    const/high16 v30, 0x41100000    # 9.0f

    const v31, 0x4071eb85    # 3.78f

    const/high16 v32, 0x41100000    # 9.0f

    const/high16 v33, 0x40c00000    # 6.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const/16 v28, 0x0

    const v29, 0x3ea3d70a    # 0.32f

    const v30, 0x3cf5c28f    # 0.03f

    const v31, 0x3f23d70a    # 0.64f

    const v32, 0x3da3d70a    # 0.08f

    const v33, 0x3f733333    # 0.95f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v28, -0x418a3d71    # -0.24f

    const v29, -0x41b33333    # -0.2f

    const/high16 v30, -0x41000000    # -0.5f

    const v31, -0x413851ec    # -0.39f

    const v32, -0x40b851ec    # -0.78f

    const v33, -0x40f33333    # -0.55f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v28, -0x408f5c29    # -0.94f

    const v29, -0x40f5c28f    # -0.54f

    const v30, -0x4003d70a    # -1.97f

    const v31, -0x40b33333    # -0.8f

    const v32, -0x3fc0a3d7    # -2.99f

    const v33, -0x40b33333    # -0.8f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v28, -0x4079999a    # -1.05f

    const/16 v29, 0x0

    const v30, -0x3ff9999a    # -2.1f

    const v31, 0x3e8f5c29    # 0.28f

    const v32, -0x3fbf5c29    # -3.01f

    const v33, 0x3f4ccccd    # 0.8f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const/16 v28, 0x0

    const v29, 0x40047ae1    # 2.07f

    const v30, 0x3f88f5c3    # 1.07f

    const v31, 0x40828f5c    # 4.08f

    const/high16 v32, 0x40400000    # 3.0f

    const v33, 0x40a6147b    # 5.19f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v28, 0x3e8f5c29    # 0.28f

    const v29, 0x3e23d70a    # 0.16f

    const v30, 0x3f11eb85    # 0.57f

    const v31, 0x3e947ae1    # 0.29f

    const v32, 0x3f5c28f6    # 0.86f

    const v33, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v28, -0x416b851f    # -0.29f

    const v29, 0x3de147ae    # 0.11f

    const v30, -0x40eb851f    # -0.58f

    const v31, 0x3e75c28f    # 0.24f

    const v32, -0x40a3d70a    # -0.86f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v28, -0x400a3d71    # -1.92f

    const v29, 0x3f8e147b    # 1.11f

    const v30, -0x3fc0a3d7    # -2.99f

    const v31, 0x4047ae14    # 3.12f

    const/high16 v32, -0x3fc00000    # -3.0f

    const v33, 0x40a6147b    # 5.19f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v28, 0x3f68f5c3    # 0.91f

    const v29, 0x3f051eb8    # 0.52f

    const v30, 0x3ff9999a    # 1.95f

    const v31, 0x3f4ccccd    # 0.8f

    const v32, 0x4040a3d7    # 3.01f

    const v33, 0x3f4ccccd    # 0.8f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v28, 0x3f828f5c    # 1.02f

    const/16 v29, 0x0

    const v30, 0x40033333    # 2.05f

    const v31, -0x417ae148    # -0.26f

    const v32, 0x403f5c29    # 2.99f

    const v33, -0x40b33333    # -0.8f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v28, 0x3e8f5c29    # 0.28f

    const v29, -0x41dc28f6    # -0.16f

    const v30, 0x3f0a3d71    # 0.54f

    const v31, -0x414ccccd    # -0.35f

    const v32, 0x3f47ae14    # 0.78f

    const v33, -0x40f5c28f    # -0.54f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v28, -0x42b33333    # -0.05f

    const v29, 0x3ea3d70a    # 0.32f

    const v30, -0x425c28f6    # -0.08f

    const v31, 0x3f23d70a    # 0.64f

    const v32, -0x425c28f6    # -0.08f

    const v33, 0x3f75c28f    # 0.96f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const/16 v28, 0x0

    const v29, 0x400e147b    # 2.22f

    const v30, 0x3f9ae148    # 1.21f

    const v31, 0x4084cccd    # 4.15f

    const/high16 v32, 0x40400000    # 3.0f

    const v33, 0x40a6147b    # 5.19f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v28, 0x3fe51eb8    # 1.79f

    const v29, -0x407ae148    # -1.04f

    const/high16 v30, 0x40400000    # 3.0f

    const v31, -0x3fc1eb85    # -2.97f

    const v33, -0x3f59eb85    # -5.19f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const/16 v28, 0x0

    const v29, -0x415c28f6    # -0.32f

    const v30, -0x430a3d71    # -0.03f

    const v31, -0x40dc28f6    # -0.64f

    const v32, -0x425c28f6    # -0.08f

    const v33, -0x408ccccd    # -0.95f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v28, 0x3e75c28f    # 0.24f

    const v29, 0x3e4ccccd    # 0.2f

    const/high16 v30, 0x3f000000    # 0.5f

    const v31, 0x3ec28f5c    # 0.38f

    const v32, 0x3f47ae14    # 0.78f

    const v33, 0x3f0a3d71    # 0.54f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v28, 0x3f70a3d7    # 0.94f

    const v29, 0x3f0a3d71    # 0.54f

    const v30, 0x3ffc28f6    # 1.97f

    const v31, 0x3f4ccccd    # 0.8f

    const v32, 0x403f5c29    # 2.99f

    const v33, 0x3f4ccccd    # 0.8f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v28, 0x3f866666    # 1.05f

    const/16 v29, 0x0

    const v30, 0x40066666    # 2.1f

    const v31, -0x4170a3d7    # -0.28f

    const v32, 0x4040a3d7    # 3.01f

    const v33, -0x40b33333    # -0.8f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v28, -0x43dc28f6    # -0.01f

    const v29, -0x3ffb851f    # -2.07f

    const v30, -0x4075c28f    # -1.08f

    const v31, -0x3f7d70a4    # -4.08f

    const/high16 v32, -0x3fc00000    # -3.0f

    const v33, -0x3f59eb85    # -5.19f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v0, 0x418147ae    # 16.16f

    const v1, 0x410851ec    # 8.52f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v28, 0x3e570a3d    # 0.21f

    const v29, -0x41d1eb85    # -0.17f

    const v30, 0x3ec28f5c    # 0.38f

    const v31, -0x416b851f    # -0.29f

    const v32, 0x3f0a3d71    # 0.54f

    const v33, -0x41428f5c    # -0.37f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v28, 0x3f1c28f6    # 0.61f

    const v29, -0x414ccccd    # -0.35f

    const v30, 0x3fa66666    # 1.3f

    const v31, -0x40f5c28f    # -0.54f

    const/high16 v32, 0x40000000    # 2.0f

    const v33, -0x40f5c28f    # -0.54f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v28, 0x3e8a3d71    # 0.27f

    const/16 v29, 0x0

    const v30, 0x3f07ae14    # 0.53f

    const v31, 0x3cf5c28f    # 0.03f

    const v32, 0x3f4a3d71    # 0.79f

    const v33, 0x3da3d70a    # 0.08f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v28, -0x416147ae    # -0.31f

    const v29, 0x3f68f5c3    # 0.91f

    const v30, -0x408f5c29    # -0.94f

    const v31, 0x3fd851ec    # 1.69f

    const v32, -0x401c28f6    # -1.78f

    const v33, 0x400b851f    # 2.18f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v28, -0x41d1eb85    # -0.17f

    const v29, 0x3dcccccd    # 0.1f

    const v30, -0x4147ae14    # -0.36f

    const v31, 0x3e3851ec    # 0.18f

    const v32, -0x40eb851f    # -0.58f

    const v33, 0x3e8a3d71    # 0.27f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v0, -0x404f5c29    # -1.38f

    const v1, 0x3f051eb8    # 0.52f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v29, -0x41147ae1    # -0.46f

    const v30, -0x412e147b    # -0.41f

    const v31, -0x40a147ae    # -0.87f

    const v32, -0x40c7ae14    # -0.72f

    const v33, -0x406147ae    # -1.24f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v1, 0x3f90a3d7    # 1.13f

    const v0, -0x4099999a    # -0.9f

    invoke-virtual {v2, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v0, 0x4057ae14    # 3.37f

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v2, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v28, 0x3f2147ae    # 0.63f

    const v29, 0x3f3851ec    # 0.72f

    const/high16 v30, 0x3f800000    # 1.0f

    const v31, 0x3fd47ae1    # 1.66f

    const/high16 v32, 0x3f800000    # 1.0f

    const v33, 0x402851ec    # 2.63f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const/16 v28, 0x0

    const v29, 0x3e428f5c    # 0.19f

    const v30, -0x435c28f6    # -0.02f

    const v31, 0x3ed1eb85    # 0.41f

    const v32, -0x42b33333    # -0.05f

    const v33, 0x3f2147ae    # 0.63f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v0, -0x41947ae1    # -0.23f

    const v1, 0x3fb851ec    # 1.44f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v28, 0x4147ae14    # 12.48f

    const v29, 0x41007ae1    # 8.03f

    const v30, 0x4143d70a    # 12.24f

    const/high16 v31, 0x41000000    # 8.0f

    const/high16 v32, 0x41400000    # 12.0f

    const/high16 v33, 0x41000000    # 8.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const v1, -0x40ca3d71    # -0.71f

    const v0, 0x3d8f5c29    # 0.07f

    move/from16 v37, v3

    .end local v3    # "$i$a$-materialIcon-FilterVintageKt$FilterVintage$1":I
    .local v37, "$i$a$-materialIcon-FilterVintageKt$FilterVintage$1":I
    const v3, -0x410a3d71    # -0.48f

    move-object/from16 v38, v4

    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v38, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v4, 0x3cf5c28f    # 0.03f

    invoke-virtual {v2, v3, v4, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v0, -0x4047ae14    # -1.44f

    const v1, -0x41947ae1    # -0.23f

    invoke-virtual {v2, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const v28, 0x413051ec    # 11.02f

    const v29, 0x40cd1eb8    # 6.41f

    const/high16 v30, 0x41300000    # 11.0f

    const v31, 0x40c6147b    # 6.19f

    const/high16 v32, 0x41300000    # 11.0f

    const/high16 v33, 0x40c00000    # 6.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const/16 v28, 0x0

    const v29, -0x40851eb8    # -0.98f

    const v30, 0x3ebd70a4    # 0.37f

    const v31, -0x400b851f    # -1.91f

    const/high16 v32, 0x3f800000    # 1.0f

    const v33, -0x3fd7ae14    # -2.63f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v0, 0x409051ec    # 4.51f

    const v1, 0x40f5c28f    # 7.68f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v28, 0x3e851eb8    # 0.26f

    const v29, -0x428a3d71    # -0.06f

    const v30, 0x3f07ae14    # 0.53f

    const v31, -0x425c28f6    # -0.08f

    const v32, 0x3f4ccccd    # 0.8f

    const v33, -0x425c28f6    # -0.08f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v28, 0x3f30a3d7    # 0.69f

    const/16 v29, 0x0

    const v30, 0x3fb0a3d7    # 1.38f

    const v31, 0x3e3851ec    # 0.18f

    const v32, 0x3ffeb852    # 1.99f

    const v33, 0x3f0a3d71    # 0.54f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v28, 0x3e19999a    # 0.15f

    const v29, 0x3db851ec    # 0.09f

    const v30, 0x3ea3d70a    # 0.32f

    const v31, 0x3e4ccccd    # 0.2f

    const v32, 0x3efae148    # 0.49f

    const v33, 0x3eb33333    # 0.35f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v0, 0x3f933333    # 1.15f

    const v1, 0x3f75c28f    # 0.96f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v28, -0x41666666    # -0.3f

    const v29, 0x3eb851ec    # 0.36f

    const v30, -0x40f851ec    # -0.53f

    const v31, 0x3f428f5c    # 0.76f

    const v32, -0x40cccccd    # -0.7f

    const v33, 0x3f99999a    # 1.2f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const v0, -0x40fae148    # -0.52f

    const v1, -0x404f5c29    # -1.38f

    invoke-virtual {v2, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v28, -0x41a8f5c3    # -0.21f

    const v29, -0x4247ae14    # -0.09f

    const v30, -0x41333333    # -0.4f

    const v31, -0x41c7ae14    # -0.18f

    const v32, -0x40f0a3d7    # -0.56f

    const v33, -0x4175c28f    # -0.27f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v28, -0x40a147ae    # -0.87f

    const/high16 v29, -0x41000000    # -0.5f

    const v30, -0x404147ae    # -1.49f

    const v31, -0x405d70a4    # -1.27f

    const v32, -0x401ae148    # -1.79f

    const v33, -0x3ff47ae1    # -2.18f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v1, 0x40fae148    # 7.84f

    const v3, 0x4177851f    # 15.47f

    invoke-virtual {v2, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v28, -0x41a8f5c3    # -0.21f

    const v29, 0x3e2e147b    # 0.17f

    const v30, -0x413d70a4    # -0.38f

    const v31, 0x3e947ae1    # 0.29f

    const v32, -0x40f5c28f    # -0.54f

    const v33, 0x3ebd70a4    # 0.37f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v28, -0x40e3d70a    # -0.61f

    const v29, 0x3eb33333    # 0.35f

    const v30, -0x4059999a    # -1.3f

    const v31, 0x3f0a3d71    # 0.54f

    const/high16 v32, -0x40000000    # -2.0f

    const v33, 0x3f0a3d71    # 0.54f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v28, -0x4175c28f    # -0.27f

    const/16 v29, 0x0

    const v30, -0x40f851ec    # -0.53f

    const v31, -0x430a3d71    # -0.03f

    const v32, -0x40b5c28f    # -0.79f

    const v33, -0x425c28f6    # -0.08f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v28, 0x3e9eb852    # 0.31f

    const v29, -0x40970a3d    # -0.91f

    const v30, 0x3f70a3d7    # 0.94f

    const v31, -0x4027ae14    # -1.69f

    const v32, 0x3fe3d70a    # 1.78f

    const v33, -0x3ff47ae1    # -2.18f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v28, 0x3e2e147b    # 0.17f

    const v29, -0x42333333    # -0.1f

    const v30, 0x3eb851ec    # 0.36f

    const v31, -0x41c7ae14    # -0.18f

    const v32, 0x3f147ae1    # 0.58f

    const v33, -0x4175c28f    # -0.27f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const v1, 0x3fb0a3d7    # 1.38f

    invoke-virtual {v2, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const v28, 0x3e23d70a    # 0.16f

    const v29, 0x3eeb851f    # 0.46f

    const v30, 0x3ed1eb85    # 0.41f

    const v31, 0x3f6147ae    # 0.88f

    const v32, 0x3f3851ec    # 0.72f

    const v33, 0x3f9eb852    # 1.24f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const v0, -0x406f5c29    # -1.13f

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v2, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const v0, 0x41a50a3d    # 20.63f

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const v28, -0x40deb852    # -0.63f

    const v29, -0x40c7ae14    # -0.72f

    const/high16 v30, -0x40800000    # -1.0f

    const v31, -0x402b851f    # -1.66f

    const/high16 v32, -0x40800000    # -1.0f

    const v33, -0x3fd7ae14    # -2.63f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const/16 v28, 0x0

    const v29, -0x41b33333    # -0.2f

    const v30, 0x3ca3d70a    # 0.02f

    const v31, -0x412e147b    # -0.41f

    const v32, 0x3d75c28f    # 0.06f

    const v33, -0x40d9999a    # -0.65f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    const v0, 0x3e6147ae    # 0.22f

    const v3, -0x404a3d71    # -1.42f

    invoke-virtual {v2, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const v28, 0x3e6b851f    # 0.23f

    const v29, 0x3d23d70a    # 0.04f

    const v30, 0x3ef0a3d7    # 0.47f

    const v31, 0x3d8f5c29    # 0.07f

    const v32, 0x3f3851ec    # 0.72f

    const v33, 0x3d8f5c29    # 0.07f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    const v28, 0x3e75c28f    # 0.24f

    const/16 v29, 0x0

    const v30, 0x3ef5c28f    # 0.48f

    const v31, -0x430a3d71    # -0.03f

    const v32, 0x3f35c28f    # 0.71f

    const v33, -0x4270a3d7    # -0.07f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    const v0, 0x3e6b851f    # 0.23f

    const v3, 0x3fb851ec    # 1.44f

    invoke-virtual {v2, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    const v28, 0x3d23d70a    # 0.04f

    const v29, 0x3e6147ae    # 0.22f

    const v30, 0x3d75c28f    # 0.06f

    const v31, 0x3ee147ae    # 0.44f

    const v32, 0x3d75c28f    # 0.06f

    const v33, 0x3f2147ae    # 0.63f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    const/16 v28, 0x0

    const v29, 0x3f7ae148    # 0.98f

    const v30, -0x41428f5c    # -0.37f

    const v31, 0x3ff47ae1    # 1.91f

    const/high16 v32, -0x40800000    # -1.0f

    const v33, 0x402851ec    # 2.63f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    const v0, 0x4195851f    # 18.69f

    const v3, 0x41831eb8    # 16.39f

    invoke-virtual {v2, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    const v28, -0x40cf5c29    # -0.69f

    const/16 v29, 0x0

    const v30, -0x404f5c29    # -1.38f

    const v31, -0x41c7ae14    # -0.18f

    const v32, -0x400147ae    # -1.99f

    const v33, -0x40f5c28f    # -0.54f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    const v28, -0x41c7ae14    # -0.18f

    const v29, -0x42333333    # -0.1f

    const v30, -0x4151eb85    # -0.34f

    const v31, -0x419eb852    # -0.22f

    const v32, -0x41051eb8    # -0.49f

    const v33, -0x4151eb85    # -0.34f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    const v0, -0x406ccccd    # -1.15f

    const v3, -0x408a3d71    # -0.96f

    invoke-virtual {v2, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    const v28, 0x3e99999a    # 0.3f

    const v29, -0x4147ae14    # -0.36f

    const v30, 0x3f0a3d71    # 0.54f

    const v31, -0x40bd70a4    # -0.76f

    const v32, 0x3f333333    # 0.7f

    const v33, -0x40651eb8    # -1.21f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    const v0, 0x3f051eb8    # 0.52f

    invoke-virtual {v2, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    const v28, 0x3e6147ae    # 0.22f

    const v29, 0x3da3d70a    # 0.08f

    const v30, 0x3ed1eb85    # 0.41f

    const v31, 0x3e2e147b    # 0.17f

    const v32, 0x3f11eb85    # 0.57f

    const v33, 0x3e851eb8    # 0.26f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    const v28, 0x3f59999a    # 0.85f

    const v29, 0x3efae148    # 0.49f

    const v30, 0x3fbc28f6    # 1.47f

    const v31, 0x3fa28f5c    # 1.27f

    const v32, 0x3fe3d70a    # 1.78f

    const v33, 0x400b851f    # 2.18f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 119
    const v28, -0x4175c28f    # -0.27f

    const v29, 0x3d8f5c29    # 0.07f

    const v30, -0x40f5c28f    # -0.54f

    const v31, 0x3db851ec    # 0.09f

    const v32, -0x40b33333    # -0.8f

    const v33, 0x3db851ec    # 0.09f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    nop

    .line 159
    .end local v2    # "$this$_get_FilterVintage__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v34    # "$i$a$-materialPath-YwgOQQI$default-FilterVintageKt$FilterVintage$1$1":I
    nop

    .line 160
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 158
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v13    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 161
    nop

    .line 162
    .end local v11    # "$i$f$PathData":I
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

    move-result-object v0

    .line 172
    nop

    .line 173
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

    .line 128
    .end local v36    # "$this$_get_FilterVintage__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v37    # "$i$a$-materialIcon-FilterVintageKt$FilterVintage$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v14    # "$i$f$materialIcon":I
    .end local v35    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/outlined/FilterVintageKt;->_filterVintage:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 123
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
