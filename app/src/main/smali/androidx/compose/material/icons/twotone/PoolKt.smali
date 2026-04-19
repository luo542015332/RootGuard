.class public final Landroidx/compose/material/icons/twotone/PoolKt;
.super Ljava/lang/Object;
.source "Pool.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pool.kt\nandroidx/compose/material/icons/twotone/PoolKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,200:1\n122#2:201\n116#2,3:202\n119#2,3:206\n132#2,18:209\n152#2:246\n132#2,18:247\n152#2:284\n132#2,18:285\n152#2:322\n132#2,18:323\n152#2:360\n174#3:205\n694#4,2:227\n706#4,2:229\n708#4,11:235\n694#4,2:265\n706#4,2:267\n708#4,11:273\n694#4,2:303\n706#4,2:305\n708#4,11:311\n694#4,2:341\n706#4,2:343\n708#4,11:349\n64#5,4:231\n64#5,4:269\n64#5,4:307\n64#5,4:345\n*S KotlinDebug\n*F\n+ 1 Pool.kt\nandroidx/compose/material/icons/twotone/PoolKt\n*L\n29#1:201\n29#1:202,3\n29#1:206,3\n30#1:209,18\n30#1:246\n105#1:247,18\n105#1:284\n111#1:285,18\n111#1:322\n189#1:323,18\n189#1:360\n29#1:205\n30#1:227,2\n30#1:229,2\n30#1:235,11\n105#1:265,2\n105#1:267,2\n105#1:273,11\n111#1:303,2\n111#1:305,2\n111#1:311,11\n189#1:341,2\n189#1:343,2\n189#1:349,11\n30#1:231,4\n105#1:269,4\n111#1:307,4\n189#1:345,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_pool",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Pool",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getPool",
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
.field private static _pool:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getPool(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 43
    .param p0, "$this$Pool"    # Landroidx/compose/material/icons/Icons$TwoTone;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/PoolKt;->_pool:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "TwoTone.Pool"

    .local v0, "name$iv":Ljava/lang/String;
    const/4 v14, 0x0

    .line 201
    .local v14, "$i$f$materialIcon":I
    nop

    .line 202
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 203
    nop

    .line 204
    const/high16 v2, 0x41c00000    # 24.0f

    .local v2, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 205
    .local v3, "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 206
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v2, 0x41c00000    # 24.0f

    .restart local v2    # "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 205
    .restart local v3    # "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 207
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v6, 0x41c00000    # 24.0f

    .line 208
    const/high16 v7, 0x41c00000    # 24.0f

    .line 202
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v2, v15

    move-object v3, v0

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 201
    nop

    .local v2, "$this$_get_Pool__u24lambda_u244":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon-PoolKt$Pool$1":I
    const v4, 0x3e99999a    # 0.3f

    .local v4, "fillAlpha$iv":F
    move/from16 v20, v4

    const v22, 0x3e99999a    # 0.3f

    .local v22, "strokeAlpha$iv":F
    move-object v5, v2

    .line 209
    .local v5, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 212
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v6

    .local v6, "pathFillType$iv":I
    move/from16 v17, v6

    .line 209
    const/4 v7, 0x0

    .line 218
    .local v7, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 219
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v8

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 221
    nop

    .line 223
    nop

    .line 224
    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 225
    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 226
    nop

    .line 218
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

    .line 227
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 228
    const-string v9, ""

    .local v9, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v9

    .line 227
    const/4 v10, 0x0

    .line 229
    .local v10, "$i$f$path-R_LF-3I":I
    nop

    .line 230
    const/4 v12, 0x0

    .line 231
    .local v12, "$i$f$PathData":I
    new-instance v13, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v13, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v16, 0x0

    .line 232
    .local v16, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v34, v13

    .local v34, "$this$_get_Pool__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v35, 0x0

    .line 31
    .local v35, "$i$a$-materialPath-YwgOQQI$default-PoolKt$Pool$1$1":I
    const/high16 v11, 0x41a80000    # 21.0f

    const/high16 v8, 0x41b00000    # 22.0f

    move-object/from16 v40, v0

    move-object/from16 v0, v34

    .end local v34    # "$this$_get_Pool__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v0, "$this$_get_Pool__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v40, "name$iv":Ljava/lang/String;
    invoke-virtual {v0, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const v28, -0x4071eb85    # -1.11f

    const/16 v29, 0x0

    const v30, -0x40228f5c    # -1.73f

    const v31, -0x41428f5c    # -0.37f

    const v32, -0x3ff47ae1    # -2.18f

    const v33, -0x40dc28f6    # -0.64f

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v28, -0x41428f5c    # -0.37f

    const v29, -0x419eb852    # -0.22f

    const v30, -0x40e66666    # -0.6f

    const v31, -0x4147ae14    # -0.36f

    const v32, -0x406ccccd    # -1.15f

    const v33, -0x4147ae14    # -0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v28, -0x40f0a3d7    # -0.56f

    const/16 v29, 0x0

    const v30, -0x40b851ec    # -0.78f

    const v31, 0x3e051eb8    # 0.13f

    const v33, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v28, -0x41147ae1    # -0.46f

    const v29, 0x3e8a3d71    # 0.27f

    const v30, -0x40770a3d    # -1.07f

    const v31, 0x3f23d70a    # 0.64f

    const v32, -0x3ff47ae1    # -2.18f

    const v33, 0x3f23d70a    # 0.64f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v11, -0x40228f5c    # -1.73f

    const v8, -0x41428f5c    # -0.37f

    const v1, -0x3ff47ae1    # -2.18f

    move/from16 v42, v3

    .end local v3    # "$i$a$-materialIcon-PoolKt$Pool$1":I
    .local v42, "$i$a$-materialIcon-PoolKt$Pool$1":I
    const v3, -0x40dc28f6    # -0.64f

    invoke-virtual {v0, v11, v8, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v28, -0x41428f5c    # -0.37f

    const v29, -0x419eb852    # -0.22f

    const v30, -0x40e66666    # -0.6f

    const v31, -0x4147ae14    # -0.36f

    const v32, -0x406ccccd    # -1.15f

    const v33, -0x4147ae14    # -0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v28, -0x40f0a3d7    # -0.56f

    const/16 v29, 0x0

    const v30, -0x40b851ec    # -0.78f

    const v31, 0x3e051eb8    # 0.13f

    const v33, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v28, -0x41147ae1    # -0.46f

    const v29, 0x3e8a3d71    # 0.27f

    const v30, -0x4075c28f    # -1.08f

    const v31, 0x3f23d70a    # 0.64f

    const v32, -0x3ff3d70a    # -2.19f

    const v33, 0x3f23d70a    # 0.64f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    invoke-virtual {v0, v11, v8, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v28, -0x41428f5c    # -0.37f

    const v29, -0x41947ae1    # -0.23f

    const v30, -0x40e66666    # -0.6f

    const v31, -0x4147ae14    # -0.36f

    const v32, -0x406ccccd    # -1.15f

    const v33, -0x4147ae14    # -0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v1, -0x40b851ec    # -0.78f

    const v3, 0x3e051eb8    # 0.13f

    const v8, -0x406ccccd    # -1.15f

    const v11, 0x3eb851ec    # 0.36f

    invoke-virtual {v0, v1, v3, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v28, -0x41147ae1    # -0.46f

    const v29, 0x3e8a3d71    # 0.27f

    const v30, -0x4075c28f    # -1.08f

    const v31, 0x3f23d70a    # 0.64f

    const v32, -0x3ff3d70a    # -2.19f

    const v33, 0x3f23d70a    # 0.64f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v28, 0x3f0f5c29    # 0.56f

    const/16 v29, 0x0

    const v30, 0x3f47ae14    # 0.78f

    const v31, -0x41fae148    # -0.13f

    const v32, 0x3f933333    # 1.15f

    const v33, -0x4147ae14    # -0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v28, 0x3eeb851f    # 0.46f

    const v29, -0x4175c28f    # -0.27f

    const v30, 0x3f8a3d71    # 1.08f

    const v31, -0x40dc28f6    # -0.64f

    const v32, 0x400c28f6    # 2.19f

    const v33, -0x40dc28f6    # -0.64f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v1, 0x3fdd70a4    # 1.73f

    const v3, 0x3ebd70a4    # 0.37f

    const v8, 0x400b851f    # 2.18f

    const v11, 0x3f23d70a    # 0.64f

    invoke-virtual {v0, v1, v3, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v28, 0x3ebd70a4    # 0.37f

    const v29, 0x3e6b851f    # 0.23f

    const v30, 0x3f170a3d    # 0.59f

    const v31, 0x3eb851ec    # 0.36f

    const v32, 0x3f933333    # 1.15f

    const v33, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v28, 0x3f0f5c29    # 0.56f

    const/16 v29, 0x0

    const v30, 0x3f47ae14    # 0.78f

    const v31, -0x41fae148    # -0.13f

    const v33, -0x4147ae14    # -0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v28, 0x3eeb851f    # 0.46f

    const v29, -0x4175c28f    # -0.27f

    const v30, 0x3f8a3d71    # 1.08f

    const v31, -0x40dc28f6    # -0.64f

    const v32, 0x400c28f6    # 2.19f

    const v33, -0x40dc28f6    # -0.64f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    invoke-virtual {v0, v1, v3, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v28, 0x3ebd70a4    # 0.37f

    const v29, 0x3e6147ae    # 0.22f

    const v30, 0x3f19999a    # 0.6f

    const v31, 0x3eb851ec    # 0.36f

    const v32, 0x3f933333    # 1.15f

    const v33, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v1, 0x3f47ae14    # 0.78f

    const v3, -0x41fae148    # -0.13f

    const v8, 0x3f933333    # 1.15f

    const v11, -0x4147ae14    # -0.36f

    invoke-virtual {v0, v1, v3, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v28, 0x3ee66666    # 0.45f

    const v29, -0x4175c28f    # -0.27f

    const v30, 0x3f88f5c3    # 1.07f

    const v31, -0x40dc28f6    # -0.64f

    const v32, 0x400b851f    # 2.18f

    const v33, -0x40dc28f6    # -0.64f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v1, 0x400b851f    # 2.18f

    const v3, 0x3fdd70a4    # 1.73f

    const v8, 0x3f23d70a    # 0.64f

    const v11, 0x3ebd70a4    # 0.37f

    invoke-virtual {v0, v3, v11, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const v28, 0x3ebd70a4    # 0.37f

    const v29, 0x3e6b851f    # 0.23f

    const v30, 0x3f170a3d    # 0.59f

    const v31, 0x3eb851ec    # 0.36f

    const v32, 0x3f933333    # 1.15f

    const v33, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const/high16 v3, 0x41840000    # 16.5f

    const/high16 v8, 0x41b00000    # 22.0f

    invoke-virtual {v0, v8, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v28, -0x4071eb85    # -1.11f

    const/16 v29, 0x0

    const v30, -0x40228f5c    # -1.73f

    const v31, -0x41428f5c    # -0.37f

    const v32, -0x3ff47ae1    # -2.18f

    const v33, -0x40dc28f6    # -0.64f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v28, -0x41428f5c    # -0.37f

    const v29, -0x419eb852    # -0.22f

    const v30, -0x40e66666    # -0.6f

    const v31, -0x4147ae14    # -0.36f

    const v32, -0x406ccccd    # -1.15f

    const v33, -0x4147ae14    # -0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v28, -0x40f0a3d7    # -0.56f

    const/16 v29, 0x0

    const v30, -0x40b851ec    # -0.78f

    const v31, 0x3e051eb8    # 0.13f

    const v33, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v28, -0x4119999a    # -0.45f

    const v29, 0x3e8a3d71    # 0.27f

    const v30, -0x40770a3d    # -1.07f

    const v31, 0x3f23d70a    # 0.64f

    const v32, -0x3ff47ae1    # -2.18f

    const v33, 0x3f23d70a    # 0.64f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v1, -0x40228f5c    # -1.73f

    const v3, -0x41428f5c    # -0.37f

    const v8, -0x3ff47ae1    # -2.18f

    const v11, -0x40dc28f6    # -0.64f

    invoke-virtual {v0, v1, v3, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v28, -0x41428f5c    # -0.37f

    const v29, -0x419eb852    # -0.22f

    const v30, -0x40e66666    # -0.6f

    const v31, -0x4147ae14    # -0.36f

    const v32, -0x406ccccd    # -1.15f

    const v33, -0x4147ae14    # -0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v28, -0x40f0a3d7    # -0.56f

    const/16 v29, 0x0

    const v30, -0x40b851ec    # -0.78f

    const v31, 0x3e051eb8    # 0.13f

    const v33, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v28, -0x4119999a    # -0.45f

    const v29, 0x3e8a3d71    # 0.27f

    const v30, -0x40770a3d    # -1.07f

    const v31, 0x3f23d70a    # 0.64f

    const v32, -0x3ff47ae1    # -2.18f

    const v33, 0x3f23d70a    # 0.64f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v1, -0x3ff47ae1    # -2.18f

    const v3, -0x40dc28f6    # -0.64f

    const v8, -0x41428f5c    # -0.37f

    const v11, -0x40228f5c    # -1.73f

    invoke-virtual {v0, v11, v8, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v28, -0x41428f5c    # -0.37f

    const v29, -0x419eb852    # -0.22f

    const v30, -0x40e66666    # -0.6f

    const v31, -0x4147ae14    # -0.36f

    const v32, -0x406ccccd    # -1.15f

    const v33, -0x4147ae14    # -0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v1, 0x3eb851ec    # 0.36f

    const v3, 0x3e051eb8    # 0.13f

    const v8, -0x406ccccd    # -1.15f

    const v11, -0x40b851ec    # -0.78f

    invoke-virtual {v0, v11, v3, v8, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v28, -0x410f5c29    # -0.47f

    const v29, 0x3e8a3d71    # 0.27f

    const v30, -0x40747ae1    # -1.09f

    const v31, 0x3f23d70a    # 0.64f

    const v32, -0x3ff33333    # -2.2f

    const v33, 0x3f23d70a    # 0.64f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v28, 0x3f0f5c29    # 0.56f

    const/16 v29, 0x0

    const v30, 0x3f47ae14    # 0.78f

    const v31, -0x41fae148    # -0.13f

    const v32, 0x3f933333    # 1.15f

    const v33, -0x4147ae14    # -0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v28, 0x3ee66666    # 0.45f

    const v29, -0x4175c28f    # -0.27f

    const v30, 0x3f88f5c3    # 1.07f

    const v31, -0x40dc28f6    # -0.64f

    const v32, 0x400b851f    # 2.18f

    const v33, -0x40dc28f6    # -0.64f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v1, 0x400b851f    # 2.18f

    const v3, 0x3fdd70a4    # 1.73f

    const v8, 0x3f23d70a    # 0.64f

    const v11, 0x3ebd70a4    # 0.37f

    invoke-virtual {v0, v3, v11, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const v28, 0x3ebd70a4    # 0.37f

    const v29, 0x3e6147ae    # 0.22f

    const v30, 0x3f19999a    # 0.6f

    const v31, 0x3eb851ec    # 0.36f

    const v32, 0x3f933333    # 1.15f

    const v33, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v28, 0x3f0f5c29    # 0.56f

    const/16 v29, 0x0

    const v30, 0x3f47ae14    # 0.78f

    const v31, -0x41fae148    # -0.13f

    const v33, -0x4147ae14    # -0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const v28, 0x3ee66666    # 0.45f

    const v29, -0x4175c28f    # -0.27f

    const v30, 0x3f88f5c3    # 1.07f

    const v31, -0x40dc28f6    # -0.64f

    const v32, 0x400b851f    # 2.18f

    const v33, -0x40dc28f6    # -0.64f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v1, 0x400b851f    # 2.18f

    const v3, 0x3fdd70a4    # 1.73f

    const v8, 0x3f23d70a    # 0.64f

    const v11, 0x3ebd70a4    # 0.37f

    invoke-virtual {v0, v3, v11, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v28, 0x3ebd70a4    # 0.37f

    const v29, 0x3e6147ae    # 0.22f

    const v30, 0x3f19999a    # 0.6f

    const v31, 0x3eb851ec    # 0.36f

    const v32, 0x3f933333    # 1.15f

    const v33, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v1, 0x3f933333    # 1.15f

    const v3, 0x3f47ae14    # 0.78f

    const v8, -0x41fae148    # -0.13f

    const v11, -0x4147ae14    # -0.36f

    invoke-virtual {v0, v3, v8, v1, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v28, 0x3ee66666    # 0.45f

    const v29, -0x4175c28f    # -0.27f

    const v30, 0x3f88f5c3    # 1.07f

    const v31, -0x40dc28f6    # -0.64f

    const v32, 0x400b851f    # 2.18f

    const v33, -0x40dc28f6    # -0.64f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v1, 0x400b851f    # 2.18f

    const v3, 0x3fdd70a4    # 1.73f

    const v8, 0x3f23d70a    # 0.64f

    const v11, 0x3ebd70a4    # 0.37f

    invoke-virtual {v0, v3, v11, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v28, 0x3ebd70a4    # 0.37f

    const v29, 0x3e6147ae    # 0.22f

    const v30, 0x3f19999a    # 0.6f

    const v31, 0x3eb851ec    # 0.36f

    const v32, 0x3f933333    # 1.15f

    const v33, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const/high16 v1, 0x41b00000    # 22.0f

    const/high16 v3, 0x41840000    # 16.5f

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v1, 0x410ab852    # 8.67f

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v28, 0x3f0f5c29    # 0.56f

    const/16 v29, 0x0

    const v30, 0x3f47ae14    # 0.78f

    const v31, -0x41fae148    # -0.13f

    const v33, -0x4147ae14    # -0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v28, 0x3eeb851f    # 0.46f

    const v29, -0x4175c28f    # -0.27f

    const v30, 0x3f8a3d71    # 1.08f

    const v31, -0x40dc28f6    # -0.64f

    const v32, 0x400c28f6    # 2.19f

    const v33, -0x40dc28f6    # -0.64f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v1, 0x400b851f    # 2.18f

    const v3, 0x3fdd70a4    # 1.73f

    const v8, 0x3f23d70a    # 0.64f

    const v11, 0x3ebd70a4    # 0.37f

    invoke-virtual {v0, v3, v11, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v28, 0x3ebd70a4    # 0.37f

    const v29, 0x3e6147ae    # 0.22f

    const v30, 0x3f19999a    # 0.6f

    const v31, 0x3eb851ec    # 0.36f

    const v32, 0x3f933333    # 1.15f

    const v33, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v1, 0x3f933333    # 1.15f

    const v3, 0x3f47ae14    # 0.78f

    const v8, -0x41fae148    # -0.13f

    const v11, -0x4147ae14    # -0.36f

    invoke-virtual {v0, v3, v8, v1, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v28, 0x3df5c28f    # 0.12f

    const v29, -0x4270a3d7    # -0.07f

    const v30, 0x3e851eb8    # 0.26f

    const v31, -0x41e66666    # -0.15f

    const v32, 0x3ed1eb85    # 0.41f

    const v33, -0x41947ae1    # -0.23f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v1, 0x4127ae14    # 10.48f

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const v28, 0x410ee148    # 8.93f

    const v29, 0x405ccccd    # 3.45f

    const/high16 v30, 0x40f00000    # 7.5f

    const v31, 0x403f5c29    # 2.99f

    const/high16 v32, 0x40a00000    # 5.0f

    const/high16 v33, 0x40400000    # 3.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const/high16 v1, 0x40200000    # 2.5f

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    const v28, 0x3fe8f5c3    # 1.82f

    const v29, -0x43dc28f6    # -0.01f

    const v30, 0x4038f5c3    # 2.89f

    const v31, 0x3ec7ae14    # 0.39f

    const/high16 v32, 0x40800000    # 4.0f

    const/high16 v33, 0x3fc00000    # 1.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const/high16 v1, -0x3fb00000    # -3.25f

    const/high16 v3, 0x40500000    # 3.25f

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const v28, 0x3e9eb852    # 0.31f

    const v29, 0x3df5c28f    # 0.12f

    const v30, 0x3f0f5c29    # 0.56f

    const v31, 0x3e8a3d71    # 0.27f

    const v32, 0x3f451eb8    # 0.77f

    const v33, 0x3ec7ae14    # 0.39f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const v28, 0x3ebd70a4    # 0.37f

    const v29, 0x3e6b851f    # 0.23f

    const v30, 0x3f170a3d    # 0.59f

    const v31, 0x3eb851ec    # 0.36f

    const v32, 0x3f933333    # 1.15f

    const v33, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    nop

    .line 232
    .end local v0    # "$this$_get_Pool__u24lambda_u244_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v35    # "$i$a$-materialPath-YwgOQQI$default-PoolKt$Pool$1$1":I
    nop

    .line 233
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 231
    .end local v13    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v16    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 234
    nop

    .line 235
    .end local v12    # "$i$f$PathData":I
    nop

    .line 236
    nop

    .line 237
    nop

    .line 238
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

    .line 229
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 245
    nop

    .line 246
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

    .line 105
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

    .line 247
    .local v1, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 250
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v3

    .local v3, "pathFillType$iv":I
    move/from16 v25, v3

    .line 247
    const/4 v4, 0x0

    .line 256
    .local v4, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 257
    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v5

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 259
    nop

    .line 261
    nop

    .line 262
    sget-object v5, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 263
    sget-object v5, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 264
    nop

    .line 256
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

    .line 265
    .local v34, "strokeLineMiter$iv$iv":F
    nop

    .line 266
    const-string v5, ""

    .local v5, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v5

    .line 265
    const/4 v6, 0x0

    .line 267
    .local v6, "$i$f$path-R_LF-3I":I
    nop

    .line 268
    const/4 v7, 0x0

    .line 269
    .local v7, "$i$f$PathData":I
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v8, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v9, 0x0

    .line 270
    .local v9, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v10, v8

    .local v10, "$this$_get_Pool__u24lambda_u244_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v11, 0x0

    .line 106
    .local v11, "$i$a$-materialPath-YwgOQQI$default-PoolKt$Pool$1$2":I
    const/high16 v12, 0x40b00000    # 5.5f

    const/high16 v13, 0x41840000    # 16.5f

    invoke-virtual {v10, v13, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    const/high16 v12, -0x3fe00000    # -2.5f

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    const/high16 v16, 0x40200000    # 2.5f

    const/high16 v17, 0x40200000    # 2.5f

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/high16 v21, 0x40a00000    # 5.0f

    const/16 v22, 0x0

    move-object v15, v10

    invoke-virtual/range {v15 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    const/high16 v21, -0x3f600000    # -5.0f

    invoke-virtual/range {v15 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    nop

    .line 270
    .end local v10    # "$this$_get_Pool__u24lambda_u244_u24lambda_u241":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v11    # "$i$a$-materialPath-YwgOQQI$default-PoolKt$Pool$1$2":I
    nop

    .line 271
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 269
    .end local v8    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v9    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 272
    nop

    .line 273
    .end local v7    # "$i$f$PathData":I
    nop

    .line 274
    nop

    .line 275
    nop

    .line 276
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

    .line 267
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x3800

    const/16 v39, 0x0

    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 283
    nop

    .line 284
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

    .line 111
    .end local v0    # "fillAlpha$iv":F
    .end local v1    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v3    # "pathFillType$iv":I
    .end local v4    # "$i$f$materialPath-YwgOQQI":I
    .end local v30    # "strokeAlpha$iv":F
    move-object v0, v2

    .line 285
    .local v0, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 286
    const/high16 v1, 0x3f800000    # 1.0f

    .local v1, "fillAlpha$iv":F
    move/from16 v28, v1

    .line 285
    nop

    .line 287
    const/high16 v3, 0x3f800000    # 1.0f

    .local v3, "strokeAlpha$iv":F
    move/from16 v30, v3

    .line 285
    nop

    .line 288
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .local v4, "pathFillType$iv":I
    move/from16 v25, v4

    .line 285
    const/4 v5, 0x0

    .line 294
    .local v5, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 295
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 297
    nop

    .line 299
    nop

    .line 300
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 301
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 302
    nop

    .line 294
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

    .line 303
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 304
    const-string v6, ""

    .local v6, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 303
    const/4 v7, 0x0

    .line 305
    .local v7, "$i$f$path-R_LF-3I":I
    nop

    .line 306
    const/4 v8, 0x0

    .line 307
    .local v8, "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v9, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 308
    .local v10, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_Pool__u24lambda_u244_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 112
    .local v12, "$i$a$-materialPath-YwgOQQI$default-PoolKt$Pool$1$3":I
    const/high16 v13, 0x41b00000    # 22.0f

    const/high16 v15, 0x41840000    # 16.5f

    invoke-virtual {v11, v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    const v13, -0x435c28f6    # -0.02f

    invoke-virtual {v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    const v13, 0x3ca3d70a    # 0.02f

    invoke-virtual {v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    const/high16 v13, 0x41200000    # 10.0f

    const/high16 v15, 0x41000000    # 8.0f

    invoke-virtual {v11, v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    const/high16 v13, -0x3fb00000    # -3.25f

    const/high16 v15, 0x40500000    # 3.25f

    invoke-virtual {v11, v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    const v16, 0x3e9eb852    # 0.31f

    const v17, 0x3df5c28f    # 0.12f

    const v18, 0x3f0f5c29    # 0.56f

    const v19, 0x3e8a3d71    # 0.27f

    const v20, 0x3f451eb8    # 0.77f

    const v21, 0x3ec7ae14    # 0.39f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 119
    const v16, 0x3ebd70a4    # 0.37f

    const v17, 0x3e6b851f    # 0.23f

    const v18, 0x3f170a3d    # 0.59f

    const v19, 0x3eb851ec    # 0.36f

    const v20, 0x3f933333    # 1.15f

    const v21, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    move-object/from16 v22, v0

    move/from16 v41, v1

    const v0, -0x41fae148    # -0.13f

    const v1, -0x4147ae14    # -0.36f

    const v13, 0x3f933333    # 1.15f

    const v15, 0x3f47ae14    # 0.78f

    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v1    # "fillAlpha$iv":F
    .local v22, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v41, "fillAlpha$iv":F
    invoke-virtual {v11, v15, v0, v13, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    const v16, 0x3eeb851f    # 0.46f

    const v17, -0x4175c28f    # -0.27f

    const v18, 0x3f8a3d71    # 1.08f

    const v19, -0x40dc28f6    # -0.64f

    const v20, 0x400c28f6    # 2.19f

    const v21, -0x40dc28f6    # -0.64f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    const v0, 0x400b851f    # 2.18f

    const v1, 0x3fdd70a4    # 1.73f

    const v13, 0x3f23d70a    # 0.64f

    const v15, 0x3ebd70a4    # 0.37f

    invoke-virtual {v11, v1, v15, v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    const v16, 0x3ebd70a4    # 0.37f

    const v17, 0x3e6147ae    # 0.22f

    const v18, 0x3f19999a    # 0.6f

    const v19, 0x3eb851ec    # 0.36f

    const v20, 0x3f933333    # 1.15f

    const v21, 0x3eb851ec    # 0.36f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 124
    const v16, 0x3f0ccccd    # 0.55f

    const/16 v17, 0x0

    const v18, 0x3f47ae14    # 0.78f

    const v19, -0x41fae148    # -0.13f

    const v21, -0x4147ae14    # -0.36f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 125
    const v16, 0x3df5c28f    # 0.12f

    const v17, -0x4270a3d7    # -0.07f

    const v18, 0x3e851eb8    # 0.26f

    const v19, -0x41e66666    # -0.15f

    const v20, 0x3ed1eb85    # 0.41f

    const v21, -0x41947ae1    # -0.23f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 126
    const v0, 0x4127ae14    # 10.48f

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v11, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 127
    const v16, 0x410ee148    # 8.93f

    const v17, 0x405ccccd    # 3.45f

    const/high16 v18, 0x40f00000    # 7.5f

    const v19, 0x403f5c29    # 2.99f

    const/high16 v20, 0x40a00000    # 5.0f

    const/high16 v21, 0x40400000    # 3.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 128
    const/high16 v0, 0x40200000    # 2.5f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 129
    const v16, 0x3fe8f5c3    # 1.82f

    const v17, -0x43dc28f6    # -0.01f

    const v18, 0x4038f5c3    # 2.89f

    const v19, 0x3ec7ae14    # 0.39f

    const/high16 v20, 0x40800000    # 4.0f

    const/high16 v21, 0x3fc00000    # 1.5f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 130
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v11, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 132
    const v0, 0x40ab3333    # 5.35f

    const/high16 v1, 0x41780000    # 15.5f

    invoke-virtual {v11, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 133
    const v16, 0x3f0ccccd    # 0.55f

    const/16 v17, 0x0

    const v18, 0x3f47ae14    # 0.78f

    const v19, 0x3e0f5c29    # 0.14f

    const v20, 0x3f933333    # 1.15f

    const v21, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 134
    const v16, 0x3ee66666    # 0.45f

    const v17, 0x3e8a3d71    # 0.27f

    const v18, 0x3f88f5c3    # 1.07f

    const v19, 0x3f23d70a    # 0.64f

    const v20, 0x400b851f    # 2.18f

    const v21, 0x3f23d70a    # 0.64f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 135
    const v0, -0x40dc28f6    # -0.64f

    const v1, -0x41428f5c    # -0.37f

    const v13, 0x400b851f    # 2.18f

    const v15, 0x3fdd70a4    # 1.73f

    invoke-virtual {v11, v15, v1, v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 136
    const v16, 0x3ebd70a4    # 0.37f

    const v17, -0x41947ae1    # -0.23f

    const v18, 0x3f170a3d    # 0.59f

    const v19, -0x4147ae14    # -0.36f

    const v20, 0x3f933333    # 1.15f

    const v21, -0x4147ae14    # -0.36f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 137
    const v16, 0x3f0ccccd    # 0.55f

    const/16 v17, 0x0

    const v18, 0x3f47ae14    # 0.78f

    const v19, 0x3e0f5c29    # 0.14f

    const v21, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 138
    const v16, 0x3ee66666    # 0.45f

    const v17, 0x3e8a3d71    # 0.27f

    const v18, 0x3f88f5c3    # 1.07f

    const v19, 0x3f23d70a    # 0.64f

    const v20, 0x400b851f    # 2.18f

    const v21, 0x3f23d70a    # 0.64f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 139
    const v0, -0x40dc28f6    # -0.64f

    const v1, -0x41428f5c    # -0.37f

    const v13, 0x400b851f    # 2.18f

    const v15, 0x3fdd70a4    # 1.73f

    invoke-virtual {v11, v15, v1, v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 140
    const v16, 0x3ebd70a4    # 0.37f

    const v17, -0x41947ae1    # -0.23f

    const v18, 0x3f170a3d    # 0.59f

    const v19, -0x4147ae14    # -0.36f

    const v20, 0x3f933333    # 1.15f

    const v21, -0x4147ae14    # -0.36f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 141
    const v16, 0x3f0ccccd    # 0.55f

    const/16 v17, 0x0

    const v18, 0x3f47ae14    # 0.78f

    const v19, 0x3e0f5c29    # 0.14f

    const v21, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 142
    const v16, 0x3ee66666    # 0.45f

    const v17, 0x3e8a3d71    # 0.27f

    const v18, 0x3f87ae14    # 1.06f

    const v19, 0x3f2147ae    # 0.63f

    const v20, 0x400a3d71    # 2.16f

    const v21, 0x3f23d70a    # 0.64f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 143
    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 144
    const v16, -0x40f33333    # -0.55f

    const/16 v17, 0x0

    const v18, -0x40b851ec    # -0.78f

    const v19, -0x41f0a3d7    # -0.14f

    const v20, -0x406ccccd    # -1.15f

    const v21, -0x4147ae14    # -0.36f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 145
    const v16, -0x4119999a    # -0.45f

    const v17, -0x4175c28f    # -0.27f

    const v18, -0x40770a3d    # -1.07f

    const v19, -0x40dc28f6    # -0.64f

    const v20, -0x3ff47ae1    # -2.18f

    const v21, -0x40dc28f6    # -0.64f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 146
    const v0, -0x3ff47ae1    # -2.18f

    const v1, -0x40228f5c    # -1.73f

    const v13, 0x3f23d70a    # 0.64f

    const v15, 0x3ebd70a4    # 0.37f

    invoke-virtual {v11, v1, v15, v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 147
    const v16, -0x41428f5c    # -0.37f

    const v17, 0x3e6b851f    # 0.23f

    const v18, -0x40e66666    # -0.6f

    const v19, 0x3eb851ec    # 0.36f

    const v20, -0x406ccccd    # -1.15f

    const v21, 0x3eb851ec    # 0.36f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 148
    const v0, -0x41f0a3d7    # -0.14f

    const v1, -0x406ccccd    # -1.15f

    const v13, -0x40b851ec    # -0.78f

    const v15, -0x4147ae14    # -0.36f

    invoke-virtual {v11, v13, v0, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 149
    const v16, -0x4119999a    # -0.45f

    const v17, -0x4175c28f    # -0.27f

    const v18, -0x40770a3d    # -1.07f

    const v19, -0x40dc28f6    # -0.64f

    const v20, -0x3ff47ae1    # -2.18f

    const v21, -0x40dc28f6    # -0.64f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 150
    const v0, -0x3ff47ae1    # -2.18f

    const v1, -0x40228f5c    # -1.73f

    const v13, 0x3f23d70a    # 0.64f

    const v15, 0x3ebd70a4    # 0.37f

    invoke-virtual {v11, v1, v15, v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 151
    const v16, -0x41428f5c    # -0.37f

    const v17, 0x3e6b851f    # 0.23f

    const v18, -0x40e8f5c3    # -0.59f

    const v19, 0x3eb851ec    # 0.36f

    const v20, -0x406ccccd    # -1.15f

    const v21, 0x3eb851ec    # 0.36f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 152
    const v16, -0x40f33333    # -0.55f

    const/16 v17, 0x0

    const v18, -0x40b851ec    # -0.78f

    const v19, -0x41f0a3d7    # -0.14f

    const v21, -0x4147ae14    # -0.36f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 153
    const v16, -0x4119999a    # -0.45f

    const v17, -0x4175c28f    # -0.27f

    const v18, -0x40770a3d    # -1.07f

    const v19, -0x40dc28f6    # -0.64f

    const v20, -0x3ff47ae1    # -2.18f

    const v21, -0x40dc28f6    # -0.64f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 154
    const v0, -0x3ff47ae1    # -2.18f

    const v1, -0x40228f5c    # -1.73f

    const v13, 0x3f23d70a    # 0.64f

    const v15, 0x3ebd70a4    # 0.37f

    invoke-virtual {v11, v1, v15, v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 155
    const v16, -0x41428f5c    # -0.37f

    const v17, 0x3e6b851f    # 0.23f

    const v18, -0x40e8f5c3    # -0.59f

    const v19, 0x3eb851ec    # 0.36f

    const v20, -0x406ccccd    # -1.15f

    const v21, 0x3eb851ec    # 0.36f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 156
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 157
    const v16, 0x3f8e147b    # 1.11f

    const/16 v17, 0x0

    const v18, 0x3fdd70a4    # 1.73f

    const v19, -0x41428f5c    # -0.37f

    const v20, 0x400ccccd    # 2.2f

    const v21, -0x40dc28f6    # -0.64f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 158
    const v16, 0x3ebd70a4    # 0.37f

    const v17, -0x41947ae1    # -0.23f

    const v18, 0x3f19999a    # 0.6f

    const v19, -0x4147ae14    # -0.36f

    const v20, 0x3f933333    # 1.15f

    const v21, -0x4147ae14    # -0.36f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 159
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 160
    const v0, 0x41955c29    # 18.67f

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v11, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 161
    const v16, -0x4071eb85    # -1.11f

    const/16 v17, 0x0

    const v18, -0x40228f5c    # -1.73f

    const v19, 0x3ebd70a4    # 0.37f

    const v20, -0x3ff47ae1    # -2.18f

    const v21, 0x3f23d70a    # 0.64f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 162
    const v16, -0x41428f5c    # -0.37f

    const v17, 0x3e6b851f    # 0.23f

    const v18, -0x40e66666    # -0.6f

    const v19, 0x3eb851ec    # 0.36f

    const v20, -0x406ccccd    # -1.15f

    const v21, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 163
    const v16, -0x40f33333    # -0.55f

    const/16 v17, 0x0

    const v18, -0x40b851ec    # -0.78f

    const v19, -0x41f0a3d7    # -0.14f

    const v21, -0x4147ae14    # -0.36f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 164
    const v16, -0x4119999a    # -0.45f

    const v17, -0x4175c28f    # -0.27f

    const v18, -0x40770a3d    # -1.07f

    const v19, -0x40dc28f6    # -0.64f

    const v20, -0x3ff47ae1    # -2.18f

    const v21, -0x40dc28f6    # -0.64f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 165
    const v0, -0x3ff3d70a    # -2.19f

    const v1, -0x40228f5c    # -1.73f

    const v13, 0x3f23d70a    # 0.64f

    const v15, 0x3ebd70a4    # 0.37f

    invoke-virtual {v11, v1, v15, v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 166
    const v16, -0x41428f5c    # -0.37f

    const v17, 0x3e6b851f    # 0.23f

    const v18, -0x40e8f5c3    # -0.59f

    const v19, 0x3eb851ec    # 0.36f

    const v20, -0x406ccccd    # -1.15f

    const v21, 0x3eb851ec    # 0.36f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 167
    const v0, -0x406ccccd    # -1.15f

    const v1, -0x40b851ec    # -0.78f

    const v13, -0x41fae148    # -0.13f

    const v15, -0x4147ae14    # -0.36f

    invoke-virtual {v11, v1, v13, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 168
    const v16, -0x4119999a    # -0.45f

    const v17, -0x4175c28f    # -0.27f

    const v18, -0x40770a3d    # -1.07f

    const v19, -0x40dc28f6    # -0.64f

    const v20, -0x3ff47ae1    # -2.18f

    const v21, -0x40dc28f6    # -0.64f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 169
    const v0, -0x3ff3d70a    # -2.19f

    const v1, -0x40228f5c    # -1.73f

    const v13, 0x3f23d70a    # 0.64f

    const v15, 0x3ebd70a4    # 0.37f

    invoke-virtual {v11, v1, v15, v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 170
    const v16, -0x41428f5c    # -0.37f

    const v17, 0x3e6b851f    # 0.23f

    const v18, -0x40e8f5c3    # -0.59f

    const v19, 0x3eb851ec    # 0.36f

    const v20, -0x406ccccd    # -1.15f

    const v21, 0x3eb851ec    # 0.36f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 171
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 172
    const v16, 0x3f8e147b    # 1.11f

    const/16 v17, 0x0

    const v18, 0x3fdd70a4    # 1.73f

    const v19, -0x41428f5c    # -0.37f

    const v20, 0x400c28f6    # 2.19f

    const v21, -0x40dc28f6    # -0.64f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 173
    const v16, 0x3ebd70a4    # 0.37f

    const v17, -0x41947ae1    # -0.23f

    const v18, 0x3f19999a    # 0.6f

    const v19, -0x4147ae14    # -0.36f

    const v20, 0x3f933333    # 1.15f

    const v21, -0x4147ae14    # -0.36f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 174
    const v16, 0x3f0ccccd    # 0.55f

    const/16 v17, 0x0

    const v18, 0x3f47ae14    # 0.78f

    const v19, 0x3e051eb8    # 0.13f

    const v21, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 175
    const v16, 0x3ee66666    # 0.45f

    const v17, 0x3e8a3d71    # 0.27f

    const v18, 0x3f88f5c3    # 1.07f

    const v19, 0x3f23d70a    # 0.64f

    const v20, 0x400b851f    # 2.18f

    const v21, 0x3f23d70a    # 0.64f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 176
    const v0, 0x400c28f6    # 2.19f

    const v1, -0x40dc28f6    # -0.64f

    const v13, -0x41428f5c    # -0.37f

    const v15, 0x3fdd70a4    # 1.73f

    invoke-virtual {v11, v15, v13, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 177
    const v16, 0x3ebd70a4    # 0.37f

    const v17, -0x41947ae1    # -0.23f

    const v18, 0x3f170a3d    # 0.59f

    const v19, -0x4147ae14    # -0.36f

    const v20, 0x3f933333    # 1.15f

    const v21, -0x4147ae14    # -0.36f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 178
    const v16, 0x3f0ccccd    # 0.55f

    const/16 v17, 0x0

    const v18, 0x3f47ae14    # 0.78f

    const v19, 0x3e0f5c29    # 0.14f

    const v21, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 179
    const v16, 0x3ee66666    # 0.45f

    const v17, 0x3e8a3d71    # 0.27f

    const v18, 0x3f88f5c3    # 1.07f

    const v19, 0x3f23d70a    # 0.64f

    const v20, 0x400b851f    # 2.18f

    const v21, 0x3f23d70a    # 0.64f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 180
    const v0, 0x3fdc28f6    # 1.72f

    const v1, -0x40dc28f6    # -0.64f

    const v13, -0x41428f5c    # -0.37f

    const v15, 0x400b851f    # 2.18f

    invoke-virtual {v11, v0, v13, v15, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 181
    const v16, 0x3ebd70a4    # 0.37f

    const v17, -0x41947ae1    # -0.23f

    const v18, 0x3f170a3d    # 0.59f

    const v19, -0x4147ae14    # -0.36f

    const v20, 0x3f933333    # 1.15f

    const v21, -0x4147ae14    # -0.36f

    move-object v15, v11

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 182
    const v16, 0x3f0ccccd    # 0.55f

    const/16 v17, 0x0

    const v18, 0x3f47ae14    # 0.78f

    const v19, 0x3e0f5c29    # 0.14f

    const v21, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 183
    const v16, 0x3ee66666    # 0.45f

    const v17, 0x3e8a3d71    # 0.27f

    const v18, 0x3f88f5c3    # 1.07f

    const v19, 0x3f23d70a    # 0.64f

    const v20, 0x400b851f    # 2.18f

    const v21, 0x3f23d70a    # 0.64f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 184
    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 185
    const v16, -0x40f0a3d7    # -0.56f

    const/16 v17, 0x0

    const v18, -0x40b851ec    # -0.78f

    const v19, -0x41fae148    # -0.13f

    const v20, -0x406ccccd    # -1.15f

    const v21, -0x4147ae14    # -0.36f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 186
    const v16, -0x4119999a    # -0.45f

    const v17, -0x4175c28f    # -0.27f

    const v18, -0x40770a3d    # -1.07f

    const v19, -0x40dc28f6    # -0.64f

    const v20, -0x3ff47ae1    # -2.18f

    const v21, -0x40dc28f6    # -0.64f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 187
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 188
    nop

    .line 308
    .end local v11    # "$this$_get_Pool__u24lambda_u244_u24lambda_u242":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-PoolKt$Pool$1$3":I
    nop

    .line 309
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 307
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 310
    nop

    .line 311
    .end local v8    # "$i$f$PathData":I
    nop

    .line 312
    nop

    .line 313
    nop

    .line 314
    nop

    .line 315
    nop

    .line 316
    nop

    .line 317
    nop

    .line 318
    nop

    .line 319
    nop

    .line 320
    nop

    .line 305
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 321
    nop

    .line 322
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

    .line 189
    .end local v3    # "strokeAlpha$iv":F
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    .end local v22    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v41    # "fillAlpha$iv":F
    move-object v0, v2

    .line 323
    .restart local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 324
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "fillAlpha$iv":F
    move/from16 v28, v1

    .line 323
    nop

    .line 325
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "strokeAlpha$iv":F
    move/from16 v30, v3

    .line 323
    nop

    .line 326
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v4

    .restart local v4    # "pathFillType$iv":I
    move/from16 v25, v4

    .line 323
    const/4 v5, 0x0

    .line 332
    .restart local v5    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 333
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/ui/graphics/Brush;

    .line 335
    nop

    .line 337
    nop

    .line 338
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v32

    .line 339
    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v33

    .line 340
    nop

    .line 332
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

    .line 341
    .restart local v34    # "strokeLineMiter$iv$iv":F
    nop

    .line 342
    const-string v6, ""

    .restart local v6    # "name$iv$iv":Ljava/lang/String;
    move-object/from16 v26, v6

    .line 341
    const/4 v7, 0x0

    .line 343
    .restart local v7    # "$i$f$path-R_LF-3I":I
    nop

    .line 344
    const/4 v8, 0x0

    .line 345
    .restart local v8    # "$i$f$PathData":I
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .restart local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v10, 0x0

    .line 346
    .restart local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object v11, v9

    .local v11, "$this$_get_Pool__u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v12, 0x0

    .line 190
    .local v12, "$i$a$-materialPath-YwgOQQI$default-PoolKt$Pool$1$4":I
    const/high16 v13, 0x40b00000    # 5.5f

    const/high16 v15, 0x41840000    # 16.5f

    invoke-virtual {v11, v15, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 191
    const/high16 v13, -0x3fe00000    # -2.5f

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 192
    const/high16 v16, 0x40200000    # 2.5f

    const/high16 v17, 0x40200000    # 2.5f

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/high16 v21, 0x40a00000    # 5.0f

    const/16 v22, 0x0

    move-object v15, v11

    invoke-virtual/range {v15 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 193
    const/high16 v21, -0x3f600000    # -5.0f

    invoke-virtual/range {v15 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 194
    nop

    .line 346
    .end local v11    # "$this$_get_Pool__u24lambda_u244_u24lambda_u243":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v12    # "$i$a$-materialPath-YwgOQQI$default-PoolKt$Pool$1$4":I
    nop

    .line 347
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v24

    .line 345
    .end local v9    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v10    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 348
    nop

    .line 349
    .end local v8    # "$i$f$PathData":I
    nop

    .line 350
    nop

    .line 351
    nop

    .line 352
    nop

    .line 353
    nop

    .line 354
    nop

    .line 355
    nop

    .line 356
    nop

    .line 357
    nop

    .line 358
    nop

    .line 343
    invoke-static/range {v23 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v8

    .line 359
    nop

    .line 360
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

    .line 189
    .end local v0    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v1    # "fillAlpha$iv":F
    .end local v3    # "strokeAlpha$iv":F
    .end local v4    # "pathFillType$iv":I
    .end local v5    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 201
    .end local v2    # "$this$_get_Pool__u24lambda_u244":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v42    # "$i$a$-materialIcon-PoolKt$Pool$1":I
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v14    # "$i$f$materialIcon":I
    .end local v40    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/twotone/PoolKt;->_pool:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 196
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
