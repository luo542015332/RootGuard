.class public final Landroidx/compose/material/icons/rounded/WebhookKt;
.super Ljava/lang/Object;
.source "Webhook.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebhook.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Webhook.kt\nandroidx/compose/material/icons/rounded/WebhookKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,92:1\n122#2:93\n116#2,3:94\n119#2,3:98\n132#2,18:101\n152#2:138\n174#3:97\n694#4,2:119\n706#4,2:121\n708#4,11:127\n64#5,4:123\n*S KotlinDebug\n*F\n+ 1 Webhook.kt\nandroidx/compose/material/icons/rounded/WebhookKt\n*L\n29#1:93\n29#1:94,3\n29#1:98,3\n30#1:101,18\n30#1:138\n29#1:97\n30#1:119,2\n30#1:121,2\n30#1:127,11\n30#1:123,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_webhook",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Webhook",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getWebhook",
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
.field private static _webhook:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getWebhook(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 38
    .param p0, "$this$Webhook"    # Landroidx/compose/material/icons/Icons$Rounded;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/WebhookKt;->_webhook:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "Rounded.Webhook"

    .local v0, "name$iv":Ljava/lang/String;
    const/4 v14, 0x0

    .line 93
    .local v14, "$i$f$materialIcon":I
    nop

    .line 94
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 95
    nop

    .line 96
    const/high16 v2, 0x41c00000    # 24.0f

    .local v2, "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 97
    .local v3, "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 98
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v2, 0x41c00000    # 24.0f

    .restart local v2    # "$this$dp$iv$iv":F
    const/4 v3, 0x0

    .line 97
    .restart local v3    # "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 99
    .end local v2    # "$this$dp$iv$iv":F
    .end local v3    # "$i$f$getDp":I
    const/high16 v6, 0x41c00000    # 24.0f

    .line 100
    const/high16 v7, 0x41c00000    # 24.0f

    .line 94
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v2, v15

    move-object v3, v0

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    nop

    .local v2, "$this$_get_Webhook__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon-WebhookKt$Webhook$1":I
    move-object v4, v2

    .line 101
    .local v4, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 102
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "fillAlpha$iv":F
    move/from16 v20, v5

    .line 101
    nop

    .line 103
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "strokeAlpha$iv":F
    move/from16 v22, v6

    .line 101
    nop

    .line 104
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v7

    .local v7, "pathFillType$iv":I
    move/from16 v17, v7

    .line 101
    const/4 v8, 0x0

    .line 110
    .local v8, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 111
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v10, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v9

    check-cast v19, Landroidx/compose/ui/graphics/Brush;

    .line 113
    nop

    .line 115
    nop

    .line 116
    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v24

    .line 117
    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v25

    .line 118
    nop

    .line 110
    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v23, v26

    .local v23, "strokeLineWidth$iv$iv":F
    move-object/from16 v21, v12

    .local v21, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    move-object v15, v4

    .line 119
    .local v15, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v19, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v24, "strokeLineCap$iv$iv":I
    .local v25, "strokeLineJoin$iv$iv":I
    .local v26, "strokeLineMiter$iv$iv":F
    nop

    .line 120
    const-string v9, ""

    .local v9, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v18, v9

    .line 119
    const/4 v10, 0x0

    .line 121
    .local v10, "$i$f$path-R_LF-3I":I
    nop

    .line 122
    const/4 v11, 0x0

    .line 123
    .local v11, "$i$f$PathData":I
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v12, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/4 v13, 0x0

    .line 124
    .local v13, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v16, v12

    .local v16, "$this$_get_Webhook__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v34, 0x0

    .line 31
    .local v34, "$i$a$-materialPath-YwgOQQI$default-WebhookKt$Webhook$1$1":I
    move-object/from16 v35, v0

    .end local v0    # "name$iv":Ljava/lang/String;
    .local v35, "name$iv":Ljava/lang/String;
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x41800000    # 16.0f

    move-object/from16 v36, v2

    move-object/from16 v2, v16

    .end local v16    # "$this$_get_Webhook__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v2, "$this$_get_Webhook__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v36, "$this$_get_Webhook__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const/16 v28, 0x0

    const v29, -0x40147ae1    # -1.84f

    const/high16 v30, 0x3f800000    # 1.0f

    const v31, -0x3fa33333    # -3.45f

    const v32, 0x401eb852    # 2.48f

    const v33, -0x3f75c28f    # -4.32f

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v28, 0x40a4cccd    # 5.15f

    const v29, 0x4134a3d7    # 11.29f

    const/high16 v30, 0x40c00000    # 6.0f

    const v31, 0x413c28f6    # 11.76f

    const/high16 v32, 0x40c00000    # 6.0f

    const v33, 0x4148a3d7    # 12.54f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/16 v28, 0x0

    const v29, 0x3eb851ec    # 0.36f

    const v30, -0x41bd70a4    # -0.19f

    const v31, 0x3f2e147b    # 0.68f

    const/high16 v32, -0x41000000    # -0.5f

    const v33, 0x3f5c28f6    # 0.86f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v28, 0x40933333    # 4.6f

    const v29, 0x415eb852    # 13.92f

    const/high16 v30, 0x40800000    # 4.0f

    const v31, 0x416e3d71    # 14.89f

    const/high16 v32, 0x40800000    # 4.0f

    const/high16 v33, 0x41800000    # 16.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const/16 v28, 0x0

    const v29, 0x3feccccd    # 1.85f

    const v30, 0x3fd70a3d    # 1.68f

    const v31, 0x4053d70a    # 3.31f

    const v32, 0x40666666    # 3.6f

    const v33, 0x403c28f6    # 2.94f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v28, 0x3fb5c28f    # 1.42f

    const v29, -0x4170a3d7    # -0.28f

    const v30, 0x4019999a    # 2.4f

    const v31, -0x4031eb85    # -1.61f

    const v32, 0x4019999a    # 2.4f

    const v33, -0x3fbc28f6    # -3.06f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const/16 v28, 0x0

    const v29, -0x41051eb8    # -0.49f

    const v30, 0x3ec7ae14    # 0.39f

    const v31, -0x409eb852    # -0.88f

    const v32, 0x3f6147ae    # 0.88f

    const v33, -0x409eb852    # -0.88f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v2, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v28, 0x3e8a3d71    # 0.27f

    const v29, -0x416147ae    # -0.31f

    const v30, 0x3f2b851f    # 0.67f

    const/high16 v31, -0x41000000    # -0.5f

    const v32, 0x3f8f5c29    # 1.12f

    const/high16 v33, -0x41000000    # -0.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const v28, 0x3f547ae1    # 0.83f

    const/16 v29, 0x0

    const/high16 v30, 0x3fc00000    # 1.5f

    const v31, 0x3f2b851f    # 0.67f

    const/high16 v32, 0x3fc00000    # 1.5f

    const/high16 v33, 0x3fc00000    # 1.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const/16 v28, 0x0

    const v29, 0x3f547ae1    # 0.83f

    const v30, -0x40d47ae1    # -0.67f

    const/high16 v31, 0x3fc00000    # 1.5f

    const/high16 v32, -0x40400000    # -1.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v28, -0x411eb852    # -0.44f

    const/16 v29, 0x0

    const v30, -0x40a8f5c3    # -0.84f

    const v31, -0x41bd70a4    # -0.19f

    const v32, -0x4070a3d7    # -1.12f

    const/high16 v33, -0x41000000    # -0.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v1, -0x3f8147ae    # -3.98f

    invoke-virtual {v2, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v28, -0x41147ae1    # -0.46f

    const v29, 0x4011eb85    # 2.28f

    const v30, -0x3fe147ae    # -2.48f

    const/high16 v31, 0x40800000    # 4.0f

    const v32, -0x3f633333    # -4.9f

    const/high16 v33, 0x40800000    # 4.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    const v28, 0x4087ae14    # 4.24f

    const/high16 v29, 0x41a80000    # 21.0f

    const/high16 v30, 0x40000000    # 2.0f

    const v31, 0x4196147b    # 18.76f

    const/high16 v32, 0x40000000    # 2.0f

    const/high16 v33, 0x41800000    # 16.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v1, 0x4182f5c3    # 16.37f

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-virtual {v2, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v28, 0x3f266666    # 0.65f

    const/16 v29, 0x0

    const v30, 0x3f91eb85    # 1.14f

    const v31, -0x40e147ae    # -0.62f

    const v32, 0x3f7851ec    # 0.97f

    const/high16 v33, -0x40600000    # -1.25f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v28, 0x418651ec    # 16.79f

    const v29, 0x4065c28f    # 3.59f

    const v30, 0x416d47ae    # 14.83f

    const/high16 v31, 0x40000000    # 2.0f

    const/high16 v32, 0x41480000    # 12.5f

    const/high16 v33, 0x40000000    # 2.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v28, -0x3fcf5c29    # -2.76f

    const/16 v29, 0x0

    const/high16 v30, -0x3f600000    # -5.0f

    const v31, 0x400f5c29    # 2.24f

    const/high16 v32, -0x3f600000    # -5.0f

    const/high16 v33, 0x40a00000    # 5.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const/16 v28, 0x0

    const v29, 0x3fb70a3d    # 1.43f

    const v30, 0x3f19999a    # 0.6f

    const v31, 0x402d70a4    # 2.71f

    const v32, 0x3fc66666    # 1.55f

    const v33, 0x4067ae14    # 3.62f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v1, -0x3fe9999a    # -2.35f

    const v0, 0x4079999a    # 3.9f

    invoke-virtual {v2, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v28, 0x40c0a3d7    # 6.02f

    const v29, 0x416a8f5c    # 14.66f

    const/high16 v30, 0x40b00000    # 5.5f

    const v31, 0x417451ec    # 15.27f

    const/high16 v32, 0x40b00000    # 5.5f

    const/high16 v33, 0x41800000    # 16.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const/16 v28, 0x0

    const v29, 0x3f547ae1    # 0.83f

    const v30, 0x3f2b851f    # 0.67f

    const/high16 v31, 0x3fc00000    # 1.5f

    const/high16 v32, 0x3fc00000    # 1.5f

    const/high16 v33, 0x3fc00000    # 1.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v0, -0x40d47ae1    # -0.67f

    const/high16 v1, -0x40400000    # -1.5f

    move/from16 v37, v3

    .end local v3    # "$i$a$-materialIcon-WebhookKt$Webhook$1":I
    .local v37, "$i$a$-materialIcon-WebhookKt$Webhook$1":I
    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v2, v3, v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v29, -0x41dc28f6    # -0.16f

    const v30, -0x435c28f6    # -0.02f

    const v31, -0x416147ae    # -0.31f

    const v32, -0x4270a3d7    # -0.07f

    const v33, -0x4119999a    # -0.45f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v0, 0x40370a3d    # 2.86f

    const/high16 v1, -0x3f680000    # -4.75f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const/high16 v28, 0x3e800000    # 0.25f

    const v29, -0x412e147b    # -0.41f

    const v30, 0x3e051eb8    # 0.13f

    const v31, -0x408ccccd    # -0.95f

    const v32, -0x4170a3d7    # -0.28f

    const v33, -0x4067ae14    # -1.19f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v28, 0x4121c28f    # 10.11f

    const v29, 0x411147ae    # 9.08f

    const/high16 v30, 0x41180000    # 9.5f

    const v31, 0x4101c28f    # 8.11f

    const/high16 v32, 0x41180000    # 9.5f

    const/high16 v33, 0x40e00000    # 7.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const/16 v28, 0x0

    const v29, -0x402ccccd    # -1.65f

    const v30, 0x3faccccd    # 1.35f

    const/high16 v31, -0x3fc00000    # -3.0f

    const/high16 v32, 0x40400000    # 3.0f

    const/high16 v33, -0x3fc00000    # -3.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v28, 0x3fb0a3d7    # 1.38f

    const/16 v29, 0x0

    const v30, 0x40228f5c    # 2.54f

    const v31, 0x3f6e147b    # 0.93f

    const v32, 0x4038f5c3    # 2.89f

    const v33, 0x400ccccd    # 2.2f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const v28, 0x417851ec    # 15.52f

    const v29, 0x40d51eb8    # 6.66f

    const v30, 0x417e6666    # 15.9f

    const/high16 v31, 0x40e00000    # 7.0f

    const v32, 0x4182f5c3    # 16.37f

    const/high16 v33, 0x40e00000    # 7.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const/high16 v0, 0x41880000    # 17.0f

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v28, -0x413d70a4    # -0.38f

    const/16 v29, 0x0

    const/high16 v30, -0x40c00000    # -0.75f

    const v31, 0x3d8f5c29    # 0.07f

    const v32, -0x40747ae1    # -1.09f

    const v33, 0x3e4ccccd    # 0.2f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v28, -0x41333333    # -0.4f

    const v29, 0x3e23d70a    # 0.16f

    const v30, -0x40a3d70a    # -0.86f

    const v31, -0x42dc28f6    # -0.04f

    const v32, -0x4075c28f    # -1.08f

    const v33, -0x412e147b    # -0.41f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v3, -0x3fd9999a    # -2.6f

    const v0, -0x3f75c28f    # -4.32f

    invoke-virtual {v2, v3, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const v28, 0x41387ae1    # 11.53f

    const v29, 0x4105999a    # 8.35f

    const/high16 v30, 0x41300000    # 11.0f

    const v31, 0x40f7ae14    # 7.74f

    const/high16 v32, 0x41300000    # 11.0f

    const/high16 v33, 0x40e00000    # 7.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const/16 v28, 0x0

    const v29, -0x40ab851f    # -0.83f

    const v30, 0x3f2b851f    # 0.67f

    const/high16 v31, -0x40400000    # -1.5f

    const/high16 v32, 0x3fc00000    # 1.5f

    const/high16 v33, -0x40400000    # -1.5f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v0, 0x40c570a4    # 6.17f

    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v2, v3, v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v29, 0x3e19999a    # 0.15f

    const v30, -0x435c28f6    # -0.02f

    const v31, 0x3e947ae1    # 0.29f

    const v32, -0x428a3d71    # -0.06f

    const v33, 0x3edc28f6    # 0.43f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v0, 0x400c28f6    # 2.19f

    const v1, 0x4069999a    # 3.65f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v28, 0x418347ae    # 16.41f

    const v29, 0x41307ae1    # 11.03f

    const v30, 0x4185999a    # 16.7f

    const/high16 v31, 0x41300000    # 11.0f

    const/high16 v32, 0x41880000    # 17.0f

    const/high16 v33, 0x41300000    # 11.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v28, 0x4030a3d7    # 2.76f

    const/16 v29, 0x0

    const/high16 v30, 0x40a00000    # 5.0f

    const v31, 0x400f5c29    # 2.24f

    const/high16 v32, 0x40a00000    # 5.0f

    const/high16 v33, 0x40a00000    # 5.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const/16 v28, 0x0

    const v29, 0x4030a3d7    # 2.76f

    const v30, -0x3ff0a3d7    # -2.24f

    const/high16 v31, 0x40a00000    # 5.0f

    const/high16 v32, -0x3f600000    # -5.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const v28, -0x40a3d70a    # -0.86f

    const/16 v29, 0x0

    const v30, -0x4028f5c3    # -1.68f

    const v31, -0x419eb852    # -0.22f

    const v32, -0x3fe70a3d    # -2.39f

    const v33, -0x40e3d70a    # -0.61f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v28, -0x40947ae1    # -0.92f

    const/high16 v29, -0x41000000    # -0.5f

    const v30, -0x40eb851f    # -0.58f

    const v31, -0x400e147b    # -1.89f

    const v32, 0x3ef0a3d7    # 0.47f

    const v33, -0x400e147b    # -1.89f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v28, 0x3e2e147b    # 0.17f

    const/16 v29, 0x0

    const v30, 0x3eae147b    # 0.34f

    const v31, 0x3d4ccccd    # 0.05f

    const v32, 0x3efae148    # 0.49f

    const v33, 0x3e0f5c29    # 0.14f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v28, 0x417fd70a    # 15.99f

    const v29, 0x4196f5c3    # 18.87f

    const v30, 0x4183d70a    # 16.48f

    const/high16 v31, 0x41980000    # 19.0f

    const/high16 v32, 0x41880000    # 17.0f

    const/high16 v33, 0x41980000    # 19.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v28, 0x3fd33333    # 1.65f

    const/16 v29, 0x0

    const/high16 v30, 0x40400000    # 3.0f

    const v31, -0x40533333    # -1.35f

    const/high16 v32, 0x40400000    # 3.0f

    const/high16 v33, -0x3fc00000    # -3.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v0, 0x41953333    # 18.65f

    const/high16 v1, 0x41880000    # 17.0f

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v2, v0, v3, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    nop

    .line 124
    .end local v2    # "$this$_get_Webhook__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v34    # "$i$a$-materialPath-YwgOQQI$default-WebhookKt$Webhook$1$1":I
    nop

    .line 125
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v16

    .line 123
    .end local v12    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v13    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 126
    nop

    .line 127
    .end local v11    # "$i$f$PathData":I
    nop

    .line 128
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

    .line 121
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x3800

    const/16 v31, 0x0

    invoke-static/range {v15 .. v31}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 137
    nop

    .line 138
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
    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v5    # "fillAlpha$iv":F
    .end local v6    # "strokeAlpha$iv":F
    .end local v7    # "pathFillType$iv":I
    .end local v8    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 93
    .end local v36    # "$this$_get_Webhook__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v37    # "$i$a$-materialIcon-WebhookKt$Webhook$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v14    # "$i$f$materialIcon":I
    .end local v35    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/rounded/WebhookKt;->_webhook:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 88
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
