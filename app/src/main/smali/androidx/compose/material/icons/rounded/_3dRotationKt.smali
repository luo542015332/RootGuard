.class public final Landroidx/compose/material/icons/rounded/_3dRotationKt;
.super Ljava/lang/Object;
.source "_3dRotation.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_3dRotation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _3dRotation.kt\nandroidx/compose/material/icons/rounded/_3dRotationKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,132:1\n122#2:133\n116#2,3:134\n119#2,3:138\n132#2,18:141\n152#2:178\n174#3:137\n694#4,2:159\n706#4,2:161\n708#4,11:167\n64#5,4:163\n*S KotlinDebug\n*F\n+ 1 _3dRotation.kt\nandroidx/compose/material/icons/rounded/_3dRotationKt\n*L\n29#1:133\n29#1:134,3\n29#1:138,3\n30#1:141,18\n30#1:178\n29#1:137\n30#1:159,2\n30#1:161,2\n30#1:167,11\n30#1:163,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "__3dRotation",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "_3dRotation",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "get_3dRotation",
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
.field private static __3dRotation:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final get_3dRotation(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 39
    .param p0, "$this$_3dRotation"    # Landroidx/compose/material/icons/Icons$Rounded;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/_3dRotationKt;->__3dRotation:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "Rounded._3dRotation"

    .local v0, "name$iv":Ljava/lang/String;
    const/4 v14, 0x0

    .line 133
    .local v14, "$i$f$materialIcon":I
    nop

    .line 134
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 135
    nop

    .line 136
    const/high16 v2, 0x41c00000    # 24.0f

    .local v2, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 137
    .local v3, "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 138
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v2, 0x41c00000    # 24.0f

    .restart local v2    # "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 137
    .restart local v3    # "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 139
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v6, 0x41c00000    # 24.0f

    .line 140
    const/high16 v7, 0x41c00000    # 24.0f

    .line 134
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v2, v15

    move-object v3, v0

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 133
    nop

    .local v2, "$this$_get__3dRotation__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon-_3dRotationKt$_3dRotation$1":I
    move-object v4, v2

    .line 141
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 142
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "fillAlpha$iv":F
    move/from16 v20, v5

    .line 141
    nop

    .line 143
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "strokeAlpha$iv":F
    move/from16 v22, v6

    .line 141
    nop

    .line 144
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v7

    .local v7, "pathFillType$iv":I
    move/from16 v17, v7

    .line 141
    const/4 v8, 0x0

    .line 150
    .local v8, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 151
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v10, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v9

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 153
    nop

    .line 155
    nop

    .line 156
    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 157
    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 158
    nop

    .line 150
    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v23, v26

    .local v23, "strokeLineWidth$iv$iv":F
    move-object/from16 v21, v12

    .local v21, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v15, v4

    .line 159
    .local v15, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v19, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v24, "strokeLineCap$iv$iv":I
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 160
    const-string v9, ""

    .local v9, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v9

    .line 159
    const/4 v10, 0x0

    .line 161
    .local v10, "$i$f$path-R_LF-3I":I
    nop

    .line 162
    const/4 v11, 0x0

    .line 163
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v13, 0x0

    .line 164
    .local v13, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v16, v12

    .local v16, "$this$_get__3dRotation__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v34, 0x0

    .line 31
    .local v34, "$i$a$-materialPath-YwgOQQI$default-_3dRotationKt$_3dRotation$1$1":I
    move-object/from16 v35, v0

    .end local v0    # "name$iv":Ljava/lang/String;
    .local v35, "name$iv":Ljava/lang/String;
    const v0, 0x41068f5c    # 8.41f

    const v1, 0x416f5c29    # 14.96f

    move-object/from16 v36, v2

    move-object/from16 v2, v16

    .end local v16    # "$this$_get__3dRotation__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v2, "$this$_get__3dRotation__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v36, "$this$_get__3dRotation__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, -0x41bd70a4    # -0.19f

    const/16 v29, 0x0

    const v30, -0x41428f5c    # -0.37f

    const v31, -0x430a3d71    # -0.03f

    const v32, -0x40fae148    # -0.52f

    const v33, -0x425c28f6    # -0.08f

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v28, -0x41dc28f6    # -0.16f

    const v29, -0x428a3d71    # -0.06f

    const v30, -0x416b851f    # -0.29f

    const v31, -0x41fae148    # -0.13f

    const v32, -0x41333333    # -0.4f

    const v33, -0x418a3d71    # -0.24f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v28, -0x421eb852    # -0.11f

    const v29, -0x42333333    # -0.1f

    const v30, -0x41b33333    # -0.2f

    const v31, -0x419eb852    # -0.22f

    const v32, -0x417ae148    # -0.26f

    const v33, -0x41428f5c    # -0.37f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v28, -0x428a3d71    # -0.06f

    const v29, -0x41f0a3d7    # -0.14f

    const v30, -0x4247ae14    # -0.09f

    const v31, -0x41666666    # -0.3f

    const v32, -0x4247ae14    # -0.09f

    const v33, -0x410f5c29    # -0.47f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v0, -0x4059999a    # -1.3f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const/16 v28, 0x0

    const v29, 0x3eb851ec    # 0.36f

    const v30, 0x3d8f5c29    # 0.07f

    const v31, 0x3f2e147b    # 0.68f

    const v32, 0x3e570a3d    # 0.21f

    const v33, 0x3f733333    # 0.95f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v28, 0x3e0f5c29    # 0.14f

    const v29, 0x3e8a3d71    # 0.27f

    const v30, 0x3ea8f5c3    # 0.33f

    const/high16 v31, 0x3f000000    # 0.5f

    const v32, 0x3f0f5c29    # 0.56f

    const v33, 0x3f30a3d7    # 0.69f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v28, 0x3e75c28f    # 0.24f

    const v29, 0x3e3851ec    # 0.18f

    const v30, 0x3f028f5c    # 0.51f

    const v31, 0x3ea3d70a    # 0.32f

    const v32, 0x3f51eb85    # 0.82f

    const v33, 0x3ed1eb85    # 0.41f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v28, 0x3e99999a    # 0.3f

    const v29, 0x3dcccccd    # 0.1f

    const v30, 0x3f1eb852    # 0.62f

    const v31, 0x3e19999a    # 0.15f

    const v32, 0x3f75c28f    # 0.96f

    const v33, 0x3e19999a    # 0.15f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v28, 0x3ebd70a4    # 0.37f

    const/16 v29, 0x0

    const v30, 0x3f3851ec    # 0.72f

    const v31, -0x42b33333    # -0.05f

    const v32, 0x3f83d70a    # 1.03f

    const v33, -0x41e66666    # -0.15f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v28, 0x3ea3d70a    # 0.32f

    const v29, -0x42333333    # -0.1f

    const v30, 0x3f19999a    # 0.6f

    const/high16 v31, -0x41800000    # -0.25f

    const v32, 0x3f547ae1    # 0.83f

    const v33, -0x411eb852    # -0.44f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v0, 0x3f0ccccd    # 0.55f

    const v1, -0x40c7ae14    # -0.72f

    move/from16 v37, v3

    .end local v3    # "$i$a$-materialIcon-_3dRotationKt$_3dRotation$1":I
    .local v37, "$i$a$-materialIcon-_3dRotationKt$_3dRotation$1":I
    const v3, 0x3ed70a3d    # 0.42f

    move-object/from16 v38, v4

    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v38, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v4, -0x4123d70a    # -0.43f

    invoke-virtual {v2, v3, v4, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v0, -0x40e3d70a    # -0.61f

    const v1, -0x4087ae14    # -0.97f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v2, v3, v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const/16 v28, 0x0

    const v29, -0x41bd70a4    # -0.19f

    const v30, -0x435c28f6    # -0.02f

    const v31, -0x413d70a4    # -0.38f

    const v32, -0x4270a3d7    # -0.07f

    const v33, -0x40f0a3d7    # -0.56f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v28, -0x42b33333    # -0.05f

    const v29, -0x41c7ae14    # -0.18f

    const v30, -0x420a3d71    # -0.12f

    const v31, -0x414ccccd    # -0.35f

    const v32, -0x41947ae1    # -0.23f

    const v33, -0x40fd70a4    # -0.51f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v28, -0x42333333    # -0.1f

    const v29, -0x41dc28f6    # -0.16f

    const v30, -0x418a3d71    # -0.24f

    const v31, -0x41666666    # -0.3f

    const v32, -0x41333333    # -0.4f

    const v33, -0x4123d70a    # -0.43f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v28, -0x41d1eb85    # -0.17f

    const v29, -0x41fae148    # -0.13f

    const v30, -0x41428f5c    # -0.37f

    const v31, -0x41947ae1    # -0.23f

    const v32, -0x40e3d70a    # -0.61f

    const v33, -0x416147ae    # -0.31f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v28, 0x3e4ccccd    # 0.2f

    const v29, -0x4247ae14    # -0.09f

    const v30, 0x3ebd70a4    # 0.37f

    const v31, -0x41b33333    # -0.2f

    const v32, 0x3f051eb8    # 0.52f

    const v33, -0x41570a3d    # -0.33f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v28, 0x3e19999a    # 0.15f

    const v29, -0x41fae148    # -0.13f

    const v30, 0x3e8a3d71    # 0.27f

    const v31, -0x4175c28f    # -0.27f

    const v32, 0x3ebd70a4    # 0.37f

    const v33, -0x4128f5c3    # -0.42f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v28, 0x3dcccccd    # 0.1f

    const v29, -0x41e66666    # -0.15f

    const v30, 0x3e2e147b    # 0.17f

    const v31, -0x41666666    # -0.3f

    const v32, 0x3e6147ae    # 0.22f

    const v33, -0x41147ae1    # -0.46f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v0, -0x415c28f6    # -0.32f

    const v1, -0x410a3d71    # -0.48f

    const v3, 0x3d8f5c29    # 0.07f

    invoke-virtual {v2, v3, v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const/16 v28, 0x0

    const v29, -0x4147ae14    # -0.36f

    const v30, -0x428a3d71    # -0.06f

    const v31, -0x40d1eb85    # -0.68f

    const v32, -0x41c7ae14    # -0.18f

    const v33, -0x408a3d71    # -0.96f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v0, -0x416b851f    # -0.29f

    const v1, -0x40cf5c29    # -0.69f

    const v3, -0x40fd70a4    # -0.51f

    invoke-virtual {v2, v0, v3, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v28, -0x41b33333    # -0.2f

    const v29, -0x41bd70a4    # -0.19f

    const v30, -0x410f5c29    # -0.47f

    const v31, -0x41570a3d    # -0.33f

    const v32, -0x40bae148    # -0.77f

    const v33, -0x4123d70a    # -0.43f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v28, 0x4111999a    # 9.1f

    const v29, 0x4100cccd    # 8.05f

    const v30, 0x410c28f6    # 8.76f

    const/high16 v31, 0x41000000    # 8.0f

    const v32, 0x41063d71    # 8.39f

    const/high16 v33, 0x41000000    # 8.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v28, -0x4147ae14    # -0.36f

    const/16 v29, 0x0

    const v30, -0x40cf5c29    # -0.69f

    const v31, 0x3d4ccccd    # 0.05f

    const/high16 v32, -0x40800000    # -1.0f

    const v33, 0x3e23d70a    # 0.16f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v28, -0x41666666    # -0.3f

    const v29, 0x3de147ae    # 0.11f

    const v30, -0x40ee147b    # -0.57f

    const v31, 0x3e851eb8    # 0.26f

    const v32, -0x40b5c28f    # -0.79f

    const v33, 0x3ee66666    # 0.45f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v28, -0x41a8f5c3    # -0.21f

    const v29, 0x3e428f5c    # 0.19f

    const v30, -0x413d70a4    # -0.38f

    const v31, 0x3ed1eb85    # 0.41f

    const v32, -0x40fd70a4    # -0.51f

    const v33, 0x3f2b851f    # 0.67f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v28, -0x420a3d71    # -0.12f

    const v29, 0x3e851eb8    # 0.26f

    const v30, -0x41c7ae14    # -0.18f

    const v31, 0x3f0a3d71    # 0.54f

    const v32, -0x41c7ae14    # -0.18f

    const v33, 0x3f59999a    # 0.85f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v0, 0x3fa66666    # 1.3f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const/16 v28, 0x0

    const v29, -0x41d1eb85    # -0.17f

    const v30, 0x3cf5c28f    # 0.03f

    const v31, -0x415c28f6    # -0.32f

    const v32, 0x3db851ec    # 0.09f

    const v33, -0x4119999a    # -0.45f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const/high16 v0, 0x3e800000    # 0.25f

    const v1, -0x4151eb85    # -0.34f

    const v3, 0x3e0f5c29    # 0.14f

    const/high16 v4, -0x41800000    # -0.25f

    invoke-virtual {v2, v3, v4, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v0, 0x3ec28f5c    # 0.38f

    const v1, -0x419eb852    # -0.22f

    const v3, 0x3e6b851f    # 0.23f

    const v4, -0x41d1eb85    # -0.17f

    invoke-virtual {v2, v3, v4, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v0, 0x3e99999a    # 0.3f

    const v1, 0x3ef5c28f    # 0.48f

    const v4, -0x425c28f6    # -0.08f

    invoke-virtual {v2, v0, v4, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v28, 0x3ecccccd    # 0.4f

    const/16 v29, 0x0

    const v30, 0x3f333333    # 0.7f

    const v31, 0x3dcccccd    # 0.1f

    const v32, 0x3f63d70a    # 0.89f

    const v33, 0x3e9eb852    # 0.31f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v28, 0x3e428f5c    # 0.19f

    const v29, 0x3e4ccccd    # 0.2f

    const v30, 0x3e947ae1    # 0.29f

    const v31, 0x3efae148    # 0.49f

    const v32, 0x3e947ae1    # 0.29f

    const v33, 0x3f5c28f6    # 0.86f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const/16 v28, 0x0

    const v29, 0x3e3851ec    # 0.18f

    const v30, -0x430a3d71    # -0.03f

    const v31, 0x3eae147b    # 0.34f

    const v32, -0x425c28f6    # -0.08f

    const v33, 0x3efae148    # 0.49f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v0, 0x3e8a3d71    # 0.27f

    const v1, 0x3ebd70a4    # 0.37f

    const v4, -0x41f0a3d7    # -0.14f

    const/high16 v3, -0x41800000    # -0.25f

    invoke-virtual {v2, v4, v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v28, -0x421eb852    # -0.11f

    const v29, 0x3dcccccd    # 0.1f

    const/high16 v30, -0x41800000    # -0.25f

    const v31, 0x3e3851ec    # 0.18f

    const v32, -0x412e147b    # -0.41f

    const v33, 0x3e75c28f    # 0.24f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v28, -0x41dc28f6    # -0.16f

    const v29, 0x3d75c28f    # 0.06f

    const v30, -0x4147ae14    # -0.36f

    const v31, 0x3db851ec    # 0.09f

    const v32, -0x40eb851f    # -0.58f

    const v33, 0x3db851ec    # 0.09f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const/high16 v0, 0x40f00000    # 7.5f

    const v1, 0x41366666    # 11.4f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v0, 0x3f83d70a    # 1.03f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v0, 0x3f451eb8    # 0.77f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v28, 0x3e6147ae    # 0.22f

    const/16 v29, 0x0

    const v30, 0x3ed70a3d    # 0.42f

    const v31, 0x3ca3d70a    # 0.02f

    const v32, 0x3f19999a    # 0.6f

    const v33, 0x3d8f5c29    # 0.07f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const v0, 0x3e051eb8    # 0.13f

    const v1, 0x3ee66666    # 0.45f

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3e6b851f    # 0.23f

    invoke-virtual {v2, v3, v0, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v28, 0x3df5c28f    # 0.12f

    const v29, 0x3de147ae    # 0.11f

    const v30, 0x3e6147ae    # 0.22f

    const v31, 0x3e75c28f    # 0.24f

    const v32, 0x3e947ae1    # 0.29f

    const v33, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const v0, 0x3eb33333    # 0.35f

    const v1, 0x3f11eb85    # 0.57f

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3, v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const/16 v28, 0x0

    const v29, 0x3ed1eb85    # 0.41f

    const v30, -0x420a3d71    # -0.12f

    const v31, 0x3f3851ec    # 0.72f

    const v32, -0x414ccccd    # -0.35f

    const v33, 0x3f6e147b    # 0.93f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v28, -0x41947ae1    # -0.23f

    const v29, 0x3e6b851f    # 0.23f

    const v30, -0x40f33333    # -0.55f

    const v31, 0x3ea8f5c3    # 0.33f

    const v32, -0x408ccccd    # -0.95f

    const v33, 0x3ea8f5c3    # 0.33f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v0, 0x418dae14    # 17.71f

    const v1, 0x4123d70a    # 10.24f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v28, -0x41c7ae14    # -0.18f

    const v29, -0x410f5c29    # -0.47f

    const v30, -0x4123d70a    # -0.43f

    const v31, -0x40a147ae    # -0.87f

    const/high16 v32, -0x40c00000    # -0.75f

    const v33, -0x40666666    # -1.2f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v28, -0x415c28f6    # -0.32f

    const v29, -0x41570a3d    # -0.33f

    const v30, -0x40cccccd    # -0.7f

    const v31, -0x40e8f5c3    # -0.59f

    const v32, -0x406e147b    # -1.14f

    const v33, -0x40bae148    # -0.77f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v28, -0x4123d70a    # -0.43f

    const v29, -0x41c7ae14    # -0.18f

    const v30, -0x40947ae1    # -0.92f

    const v31, -0x4175c28f    # -0.27f

    const v32, -0x40451eb8    # -1.46f

    const v33, -0x4175c28f    # -0.27f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const/high16 v0, 0x41400000    # 12.0f

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    invoke-virtual {v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v0, 0x40133333    # 2.3f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v28, 0x3f0ccccd    # 0.55f

    const/16 v29, 0x0

    const v30, 0x3f87ae14    # 1.06f

    const v31, -0x4247ae14    # -0.09f

    const v32, 0x3fc147ae    # 1.51f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v0, 0x3f947ae1    # 1.16f

    const v1, -0x40bd70a4    # -0.76f

    const v3, 0x3f570a3d    # 0.84f

    const v4, -0x4123d70a    # -0.43f

    invoke-virtual {v2, v3, v4, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v28, 0x3ea3d70a    # 0.32f

    const v29, -0x41570a3d    # -0.33f

    const v30, 0x3f11eb85    # 0.57f

    const v31, -0x40c51eb8    # -0.73f

    const v32, 0x3f3d70a4    # 0.74f

    const v33, -0x4067ae14    # -1.19f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v28, 0x3e2e147b    # 0.17f

    const v29, -0x410f5c29    # -0.47f

    const v30, 0x3e851eb8    # 0.26f

    const v31, -0x40828f5c    # -0.99f

    const v32, 0x3e851eb8    # 0.26f

    const v33, -0x40370a3d    # -1.57f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v0, -0x41333333    # -0.4f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const/16 v28, 0x0

    const v29, -0x40eb851f    # -0.58f

    const v30, -0x4247ae14    # -0.09f

    const v31, -0x40733333    # -1.1f

    const v32, -0x417ae148    # -0.26f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v0, 0x4184a3d7    # 16.58f

    const v1, 0x41433333    # 12.2f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const v29, 0x3ed70a3d    # 0.42f

    const v30, -0x42b33333    # -0.05f

    const v31, 0x3f4a3d71    # 0.79f

    const v32, -0x41f0a3d7    # -0.14f

    const v33, 0x3f90a3d7    # 1.13f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const v28, -0x42333333    # -0.1f

    const v29, 0x3ea8f5c3    # 0.33f

    const v30, -0x418a3d71    # -0.24f

    const v31, 0x3f1eb852    # 0.62f

    const v32, -0x4123d70a    # -0.43f

    const v33, 0x3f59999a    # 0.85f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const v0, -0x40ca3d71    # -0.71f

    const v1, 0x3f07ae14    # 0.53f

    const v3, 0x3ed1eb85    # 0.41f

    const v4, -0x4123d70a    # -0.43f

    invoke-virtual {v2, v4, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const v28, -0x416b851f    # -0.29f

    const v29, 0x3df5c28f    # 0.12f

    const v30, -0x40e147ae    # -0.62f

    const v31, 0x3e3851ec    # 0.18f

    const v32, -0x40828f5c    # -0.99f

    const v33, 0x3e3851ec    # 0.18f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const v0, -0x40970a3d    # -0.91f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const v0, 0x41566666    # 13.4f

    const v1, 0x4111c28f    # 9.11f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const v0, 0x3f7851ec    # 0.97f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    const v28, 0x3f3851ec    # 0.72f

    const/16 v29, 0x0

    const v30, 0x3fa28f5c    # 1.27f

    const v31, 0x3e6b851f    # 0.23f

    const v32, 0x3fd1eb85    # 1.64f

    const v33, 0x3f30a3d7    # 0.69f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const v28, 0x3ec28f5c    # 0.38f

    const v29, 0x3eeb851f    # 0.46f

    const v30, 0x3f11eb85    # 0.57f

    const v31, 0x3f8f5c29    # 1.12f

    const v32, 0x3f11eb85    # 0.57f

    const v33, 0x3ffeb852    # 1.99f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    const v0, 0x41726666    # 15.15f

    const v1, 0x4075c28f    # 3.84f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    const v0, 0x3faa3d71    # 1.33f

    const v1, -0x4055c28f    # -1.33f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    const v28, 0x4045c28f    # 3.09f

    const v29, 0x3fbae148    # 1.46f

    const v30, 0x40aae148    # 5.34f

    const v31, 0x408bd70a    # 4.37f

    const v32, 0x40bc7ae1    # 5.89f

    const v33, 0x40fb851f    # 7.86f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    const v28, 0x3d75c28f    # 0.06f

    const v29, 0x3ed1eb85    # 0.41f

    const v30, 0x3ee147ae    # 0.44f

    const v31, 0x3f30a3d7    # 0.69f

    const v32, 0x3f5c28f6    # 0.86f

    const v33, 0x3f1eb852    # 0.62f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    const v28, 0x3ed1eb85    # 0.41f

    const v29, -0x428a3d71    # -0.06f

    const v30, 0x3f30a3d7    # 0.69f

    const v31, -0x4119999a    # -0.45f

    const v32, 0x3f1eb852    # 0.62f

    const v33, -0x40a3d70a    # -0.86f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    const v28, -0x40e66666    # -0.6f

    const v29, -0x3f8c28f6    # -3.81f

    const v30, -0x3fc28f5c    # -2.96f

    const v31, -0x3f1fae14    # -7.01f

    const v32, -0x3f3851ec    # -6.24f

    const/high16 v33, -0x3ef40000    # -8.75f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    const v28, 0x417f0a3d    # 15.94f

    const v29, 0x3efae148    # 0.49f

    const v30, 0x415c7ae1    # 13.78f

    const v31, -0x41fae148    # -0.13f

    const v32, 0x413570a4    # 11.34f

    const v33, 0x3ca3d70a    # 0.02f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    const v3, 0x4073d70a    # 3.81f

    const v4, 0x40747ae1    # 3.82f

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    const v3, 0x410d999a    # 8.85f

    const v4, 0x41a13333    # 20.15f

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    invoke-virtual {v2, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 119
    const v28, -0x3fba3d71    # -3.09f

    const v29, -0x40451eb8    # -1.46f

    const v30, -0x3f551eb8    # -5.34f

    const v31, -0x3f7428f6    # -4.37f

    const v32, -0x3f43851f    # -5.89f

    const v33, -0x3f047ae1    # -7.86f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    const v28, -0x428a3d71    # -0.06f

    const v29, -0x412e147b    # -0.41f

    const v30, -0x411eb852    # -0.44f

    const v31, -0x40cf5c29    # -0.69f

    const v32, -0x40a3d70a    # -0.86f

    const v33, -0x40e147ae    # -0.62f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    const v28, -0x412e147b    # -0.41f

    const v29, 0x3d75c28f    # 0.06f

    const v30, -0x40cf5c29    # -0.69f

    const v31, 0x3ee66666    # 0.45f

    const v32, -0x40e147ae    # -0.62f

    const v33, 0x3f5c28f6    # 0.86f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    const v28, 0x3f19999a    # 0.6f

    const v29, 0x4073d70a    # 3.81f

    const v30, 0x403d70a4    # 2.96f

    const v31, 0x40e051ec    # 7.01f

    const v32, 0x40c7ae14    # 6.24f

    const/high16 v33, 0x410c0000    # 8.75f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    const v28, 0x3fd5c28f    # 1.67f

    const v29, 0x3f63d70a    # 0.89f

    const v30, 0x40751eb8    # 3.83f

    const v31, 0x3fc147ae    # 1.51f

    const v32, 0x40c8a3d7    # 6.27f

    const v33, 0x3fae147b    # 1.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 124
    const v0, -0x3f8c28f6    # -3.81f

    const v1, -0x3f8b851f    # -3.82f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 125
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 126
    nop

    .line 164
    .end local v2    # "$this$_get__3dRotation__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v34    # "$i$a$-materialPath-YwgOQQI$default-_3dRotationKt$_3dRotation$1$1":I
    nop

    .line 165
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 163
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v13    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 166
    nop

    .line 167
    .end local v11    # "$i$f$PathData":I
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

    .line 174
    nop

    .line 175
    nop

    .line 176
    nop

    .line 161
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 177
    nop

    .line 178
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

    .line 133
    .end local v36    # "$this$_get__3dRotation__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v37    # "$i$a$-materialIcon-_3dRotationKt$_3dRotation$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v14    # "$i$f$materialIcon":I
    .end local v35    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/rounded/_3dRotationKt;->__3dRotation:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 128
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
