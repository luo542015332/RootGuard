.class public final Landroidx/compose/material/icons/rounded/Forward30Kt;
.super Ljava/lang/Object;
.source "Forward30.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForward30.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Forward30.kt\nandroidx/compose/material/icons/rounded/Forward30Kt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,145:1\n122#2:146\n116#2,3:147\n119#2,3:151\n132#2,18:154\n152#2:191\n174#3:150\n694#4,2:172\n706#4,2:174\n708#4,11:180\n64#5,4:176\n*S KotlinDebug\n*F\n+ 1 Forward30.kt\nandroidx/compose/material/icons/rounded/Forward30Kt\n*L\n29#1:146\n29#1:147,3\n29#1:151,3\n30#1:154,18\n30#1:191\n29#1:150\n30#1:172,2\n30#1:174,2\n30#1:180,11\n30#1:176,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_forward30",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Forward30",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getForward30",
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
.field private static _forward30:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getForward30(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 39
    .param p0, "$this$Forward30"    # Landroidx/compose/material/icons/Icons$Rounded;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/Forward30Kt;->_forward30:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "Rounded.Forward30"

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

    .local v2, "$this$_get_Forward30__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v3, 0x0

    .line 30
    .local v3, "$i$a$-materialIcon-Forward30Kt$Forward30$1":I
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

    .local v16, "$this$_get_Forward30__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v34, 0x0

    .line 31
    .local v34, "$i$a$-materialPath-YwgOQQI$default-Forward30Kt$Forward30$1$1":I
    move-object/from16 v35, v0

    .end local v0    # "name$iv":Ljava/lang/String;
    .local v35, "name$iv":Ljava/lang/String;
    const v0, 0x41975c29    # 18.92f

    const/high16 v1, 0x41500000    # 13.0f

    move-object/from16 v36, v2

    move-object/from16 v2, v16

    .end local v16    # "$this$_get_Forward30__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v2, "$this$_get_Forward30__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v36, "$this$_get_Forward30__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 32
    const/high16 v28, -0x41000000    # -0.5f

    const/16 v29, 0x0

    const v30, -0x40970a3d    # -0.91f

    const v31, 0x3ebd70a4    # 0.37f

    const v32, -0x40851eb8    # -0.98f

    const v33, 0x3f5c28f6    # 0.86f

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const v28, -0x410a3d71    # -0.48f

    const v29, 0x4057ae14    # 3.37f

    const v30, -0x3f8eb852    # -3.77f

    const v31, 0x40bae148    # 5.84f

    const v32, -0x3f128f5c    # -7.42f

    const v33, 0x409eb852    # 4.96f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const/high16 v28, -0x3ff00000    # -2.25f

    const v29, -0x40f5c28f    # -0.54f

    const v30, -0x3f85c28f    # -3.91f

    const v31, -0x3feeb852    # -2.27f

    const v32, -0x3f73851f    # -4.39f

    const v33, -0x3f6f0a3d    # -4.53f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v28, 0x40aa3d71    # 5.32f

    const v29, 0x4126b852    # 10.42f

    const v30, 0x410451ec    # 8.27f

    const/high16 v31, 0x40e00000    # 7.0f

    const/high16 v32, 0x41400000    # 12.0f

    const/high16 v33, 0x40e00000    # 7.0f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v0, 0x40328f5c    # 2.79f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const/16 v28, 0x0

    const v29, 0x3ee66666    # 0.45f

    const v30, 0x3f0a3d71    # 0.54f

    const v31, 0x3f2b851f    # 0.67f

    const v32, 0x3f59999a    # 0.85f

    const v33, 0x3eb33333    # 0.35f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v0, 0x40728f5c    # 3.79f

    const v1, -0x3f8d70a4    # -3.79f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v28, 0x3e4ccccd    # 0.2f

    const v29, -0x41b33333    # -0.2f

    const v30, 0x3e4ccccd    # 0.2f

    const v31, -0x40fd70a4    # -0.51f

    const/16 v32, 0x0

    const v33, -0x40ca3d71    # -0.71f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    invoke-virtual {v2, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    const v28, -0x416147ae    # -0.31f

    const v29, -0x416147ae    # -0.31f

    const v30, -0x40a66666    # -0.85f

    const v31, -0x4247ae14    # -0.09f

    const v32, -0x40a66666    # -0.85f

    const v33, 0x3eb851ec    # 0.36f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/high16 v0, 0x41400000    # 12.0f

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v28, -0x3f61eb85    # -4.94f

    const/16 v29, 0x0

    const v30, -0x3ef28f5c    # -8.84f

    const v31, 0x408f5c29    # 4.48f

    const v32, -0x3f051eb8    # -7.84f

    const v33, 0x4119999a    # 9.6f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v28, 0x3f19999a    # 0.6f

    const v29, 0x40470a3d    # 3.11f

    const v30, 0x4039999a    # 2.9f

    const/high16 v31, 0x40b00000    # 5.5f

    const v32, 0x40bfae14    # 5.99f

    const v33, 0x40c6147b    # 6.19f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v28, 0x409a8f5c    # 4.83f

    const v29, 0x3f8a3d71    # 1.08f

    const v30, 0x41126666    # 9.15f

    const v31, -0x3ff33333    # -2.2f

    const v32, 0x411c51ec    # 9.77f

    const v33, -0x3f2a8f5c    # -6.67f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v28, 0x3db851ec    # 0.09f

    const v29, -0x40e8f5c3    # -0.59f

    const v30, -0x41333333    # -0.4f

    const v31, -0x4070a3d7    # -1.12f

    const/high16 v32, -0x40800000    # -1.0f

    const v33, -0x4070a3d7    # -1.12f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const v0, 0x4128a3d7    # 10.54f

    const v1, 0x4173851f    # 15.22f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    const v28, -0x428a3d71    # -0.06f

    const v29, 0x3d4ccccd    # 0.05f

    const v30, -0x420a3d71    # -0.12f

    const v31, 0x3db851ec    # 0.09f

    const v32, -0x41b33333    # -0.2f

    const v33, 0x3df5c28f    # 0.12f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const v0, -0x4175c28f    # -0.27f

    const v1, -0x41d1eb85    # -0.17f

    move/from16 v37, v3

    .end local v3    # "$i$a$-materialIcon-Forward30Kt$Forward30$1":I
    .local v37, "$i$a$-materialIcon-Forward30Kt$Forward30$1":I
    const v3, 0x3d23d70a    # 0.04f

    invoke-virtual {v2, v1, v3, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const v28, -0x4247ae14    # -0.09f

    const/16 v29, 0x0

    const v30, -0x41d1eb85    # -0.17f

    const v31, -0x43dc28f6    # -0.01f

    const/high16 v32, -0x41800000    # -0.25f

    const v33, -0x42dc28f6    # -0.04f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const v0, -0x428a3d71    # -0.06f

    const v3, -0x41b33333    # -0.2f

    const v1, -0x41f0a3d7    # -0.14f

    move-object/from16 v38, v4

    .end local v4    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v38, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const v4, -0x421eb852    # -0.11f

    invoke-virtual {v2, v1, v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const v0, -0x41fae148    # -0.13f

    const v3, -0x42333333    # -0.1f

    const v4, -0x41d1eb85    # -0.17f

    invoke-virtual {v2, v3, v3, v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const v0, -0x419eb852    # -0.22f

    const v4, -0x42b33333    # -0.05f

    invoke-virtual {v2, v4, v1, v4, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    const v0, -0x40a66666    # -0.85f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    const/16 v28, 0x0

    const v29, 0x3e570a3d    # 0.21f

    const v30, 0x3d23d70a    # 0.04f

    const v31, 0x3ec7ae14    # 0.39f

    const v32, 0x3df5c28f    # 0.12f

    const v33, 0x3f0ccccd    # 0.55f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    const v0, 0x3e8f5c29    # 0.28f

    const v4, 0x3ec28f5c    # 0.38f

    const v3, 0x3e428f5c    # 0.19f

    const v1, 0x3ea8f5c3    # 0.33f

    invoke-virtual {v2, v3, v0, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    const v0, 0x3eeb851f    # 0.46f

    const v3, 0x3e6b851f    # 0.23f

    const v4, 0x3e947ae1    # 0.29f

    const v1, 0x3e3851ec    # 0.18f

    invoke-virtual {v2, v4, v1, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    const v0, 0x3f07ae14    # 0.53f

    const v3, 0x3d8f5c29    # 0.07f

    const v4, 0x3eb33333    # 0.35f

    const v1, 0x3d8f5c29    # 0.07f

    invoke-virtual {v2, v4, v1, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    const v28, 0x3e570a3d    # 0.21f

    const/16 v29, 0x0

    const v30, 0x3ed1eb85    # 0.41f

    const v31, -0x430a3d71    # -0.03f

    const v32, 0x3f19999a    # 0.6f

    const v33, -0x425c28f6    # -0.08f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    const v0, 0x3ef5c28f    # 0.48f

    const v1, -0x418a3d71    # -0.24f

    const v3, 0x3eae147b    # 0.34f

    const v4, -0x41f0a3d7    # -0.14f

    invoke-virtual {v2, v3, v4, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    const v0, 0x3ea3d70a    # 0.32f

    const v1, -0x413851ec    # -0.39f

    const v3, 0x3e75c28f    # 0.24f

    const v4, -0x418a3d71    # -0.24f

    invoke-virtual {v2, v3, v4, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    const v0, -0x40f851ec    # -0.53f

    const v1, 0x3df5c28f    # 0.12f

    const v3, -0x41570a3d    # -0.33f

    invoke-virtual {v2, v1, v3, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    const/16 v28, 0x0

    const v29, -0x41947ae1    # -0.23f

    const v30, -0x428a3d71    # -0.06f

    const v31, -0x411eb852    # -0.44f

    const v32, -0x41c7ae14    # -0.18f

    const v33, -0x40e3d70a    # -0.61f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    const v0, -0x40f5c28f    # -0.54f

    const v4, -0x413851ec    # -0.39f

    const v3, -0x41666666    # -0.3f

    invoke-virtual {v2, v3, v3, v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    const v28, 0x3dcccccd    # 0.1f

    const v29, -0x42b33333    # -0.05f

    const v30, 0x3e4ccccd    # 0.2f

    const v31, -0x42333333    # -0.1f

    const v32, 0x3e8f5c29    # 0.28f

    const v33, -0x41d1eb85    # -0.17f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    const v0, 0x3e4ccccd    # 0.2f

    const v4, -0x419eb852    # -0.22f

    const v1, 0x3e19999a    # 0.15f

    const v3, -0x41f0a3d7    # -0.14f

    invoke-virtual {v2, v1, v3, v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    const v0, 0x3e051eb8    # 0.13f

    const/high16 v1, -0x41800000    # -0.25f

    const v3, 0x3dcccccd    # 0.1f

    const v4, -0x41dc28f6    # -0.16f

    invoke-virtual {v2, v3, v4, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    const v0, -0x4175c28f    # -0.27f

    const v1, -0x41c7ae14    # -0.18f

    const v4, 0x3d23d70a    # 0.04f

    invoke-virtual {v2, v4, v1, v4, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    const/16 v28, 0x0

    const v29, -0x41b33333    # -0.2f

    const v30, -0x42dc28f6    # -0.04f

    const v31, -0x41428f5c    # -0.37f

    const v32, -0x421eb852    # -0.11f

    const v33, -0x40f851ec    # -0.53f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    const v0, -0x4170a3d7    # -0.28f

    const v4, -0x413d70a4    # -0.38f

    const v1, -0x41d1eb85    # -0.17f

    const v3, -0x41666666    # -0.3f

    invoke-virtual {v2, v1, v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    const v1, -0x41147ae1    # -0.46f

    const v3, -0x41947ae1    # -0.23f

    const v4, -0x41c7ae14    # -0.18f

    invoke-virtual {v2, v0, v4, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    const v0, -0x40e8f5c3    # -0.59f

    const v1, -0x425c28f6    # -0.08f

    const v4, -0x41428f5c    # -0.37f

    const v3, -0x425c28f6    # -0.08f

    invoke-virtual {v2, v4, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    const v28, -0x41bd70a4    # -0.19f

    const/16 v29, 0x0

    const v30, -0x413d70a4    # -0.38f

    const v31, 0x3cf5c28f    # 0.03f

    const v32, -0x40f5c28f    # -0.54f

    const v33, 0x3da3d70a    # 0.08f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    const v0, -0x411eb852    # -0.44f

    const v1, 0x3e6b851f    # 0.23f

    const v3, -0x415c28f6    # -0.32f

    const v4, 0x3e051eb8    # 0.13f

    invoke-virtual {v2, v3, v4, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    const v0, 0x3ebd70a4    # 0.37f

    const v1, 0x3e6147ae    # 0.22f

    const v3, -0x41947ae1    # -0.23f

    const v4, -0x41666666    # -0.3f

    invoke-virtual {v2, v3, v1, v4, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    const v0, 0x3e99999a    # 0.3f

    const v3, 0x3ef5c28f    # 0.48f

    const v4, -0x421eb852    # -0.11f

    invoke-virtual {v2, v4, v0, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    const v0, 0x3f59999a    # 0.85f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    const/16 v28, 0x0

    const v29, -0x4270a3d7    # -0.07f

    const v30, 0x3ca3d70a    # 0.02f

    const v31, -0x41f0a3d7    # -0.14f

    const v32, 0x3d4ccccd    # 0.05f

    const v33, -0x41b33333    # -0.2f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    const v0, 0x3d8f5c29    # 0.07f

    const v3, -0x41e66666    # -0.15f

    const v1, -0x421eb852    # -0.11f

    const v4, 0x3df5c28f    # 0.12f

    invoke-virtual {v2, v0, v1, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    const v0, -0x4270a3d7    # -0.07f

    const v1, 0x3de147ae    # 0.11f

    const v3, -0x42333333    # -0.1f

    const v4, 0x3e3851ec    # 0.18f

    invoke-virtual {v2, v1, v0, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    const v0, -0x430a3d71    # -0.03f

    const v3, -0x430a3d71    # -0.03f

    const v4, 0x3e0f5c29    # 0.14f

    const v1, 0x3e6147ae    # 0.22f

    invoke-virtual {v2, v4, v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    const v28, 0x3dcccccd    # 0.1f

    const/16 v29, 0x0

    const v30, 0x3e3851ec    # 0.18f

    const v31, 0x3c23d70a    # 0.01f

    const/high16 v32, 0x3e800000    # 0.25f

    const v33, 0x3d23d70a    # 0.04f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    const v0, 0x3e051eb8    # 0.13f

    const v1, 0x3d75c28f    # 0.06f

    const v3, 0x3e3851ec    # 0.18f

    const v4, 0x3de147ae    # 0.11f

    invoke-virtual {v2, v0, v1, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    const v0, 0x3da3d70a    # 0.08f

    const v1, 0x3e2e147b    # 0.17f

    invoke-virtual {v2, v0, v4, v4, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    const v0, 0x3e0f5c29    # 0.14f

    const v3, 0x3e6147ae    # 0.22f

    const v4, 0x3d23d70a    # 0.04f

    invoke-virtual {v2, v4, v0, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    const/16 v28, 0x0

    const v29, 0x3e3851ec    # 0.18f

    const v30, -0x42b33333    # -0.05f

    const v31, 0x3ea3d70a    # 0.32f

    const v32, -0x41dc28f6    # -0.16f

    const v33, 0x3edc28f6    # 0.43f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    const v0, -0x417ae148    # -0.26f

    const v3, -0x410a3d71    # -0.48f

    const v4, 0x3e23d70a    # 0.16f

    invoke-virtual {v2, v0, v4, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    const v0, -0x4123d70a    # -0.43f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    const v0, 0x3f28f5c3    # 0.66f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    const v0, 0x3ee66666    # 0.45f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    const v28, 0x3de147ae    # 0.11f

    const/16 v29, 0x0

    const v30, 0x3e4ccccd    # 0.2f

    const v31, 0x3c23d70a    # 0.01f

    const v32, 0x3e947ae1    # 0.29f

    const v33, 0x3d23d70a    # 0.04f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    const v0, 0x3d75c28f    # 0.06f

    const v1, 0x3de147ae    # 0.11f

    const v3, 0x3e6147ae    # 0.22f

    invoke-virtual {v2, v4, v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    const v0, 0x3e4ccccd    # 0.2f

    const v3, 0x3e0f5c29    # 0.14f

    const v4, 0x3df5c28f    # 0.12f

    invoke-virtual {v2, v1, v4, v3, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    const v0, 0x3d4ccccd    # 0.05f

    const v1, 0x3e947ae1    # 0.29f

    const v3, 0x3e3851ec    # 0.18f

    invoke-virtual {v2, v0, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    const/16 v28, 0x0

    const v29, 0x3db851ec    # 0.09f

    const v30, -0x43dc28f6    # -0.01f

    const v31, 0x3e2e147b    # 0.17f

    const v32, -0x42dc28f6    # -0.04f

    const v33, 0x3e75c28f    # 0.24f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    const v1, -0x425c28f6    # -0.08f

    const v3, -0x41fae148    # -0.13f

    const v0, 0x3de147ae    # 0.11f

    const v4, 0x3e2e147b    # 0.17f

    invoke-virtual {v2, v1, v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    const v0, 0x41670a3d    # 14.44f

    const v1, 0x413c7ae1    # 11.78f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    const v28, -0x41c7ae14    # -0.18f

    const v29, -0x4270a3d7    # -0.07f

    const v30, -0x41428f5c    # -0.37f

    const v31, -0x42333333    # -0.1f

    const v32, -0x40e8f5c3    # -0.59f

    const v33, -0x42333333    # -0.1f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    const v0, 0x3cf5c28f    # 0.03f

    const v1, -0x40e8f5c3    # -0.59f

    const v3, -0x412e147b    # -0.41f

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3, v0, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    const v0, -0x4119999a    # -0.45f

    const v1, -0x41570a3d    # -0.33f

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3e3851ec    # 0.18f

    invoke-virtual {v2, v1, v4, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    const v0, -0x416b851f    # -0.29f

    const v1, 0x3f11eb85    # 0.57f

    const v3, 0x3eae147b    # 0.34f

    const v4, -0x41947ae1    # -0.23f

    invoke-virtual {v2, v4, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3f51eb85    # 0.82f

    const v3, -0x42333333    # -0.1f

    invoke-virtual {v2, v3, v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 105
    const v0, 0x3f3d70a4    # 0.74f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    const/16 v28, 0x0

    const v29, 0x3ea3d70a    # 0.32f

    const v30, 0x3d23d70a    # 0.04f

    const v31, 0x3f19999a    # 0.6f

    const v32, 0x3de147ae    # 0.11f

    const v33, 0x3f51eb85    # 0.82f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    const v0, 0x3e99999a    # 0.3f

    const v1, 0x3f11eb85    # 0.57f

    const v3, 0x3ed70a3d    # 0.42f

    const v4, 0x3e2e147b    # 0.17f

    invoke-virtual {v2, v4, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    const v0, 0x3e851eb8    # 0.26f

    const v1, 0x3eeb851f    # 0.46f

    const v3, 0x3e8f5c29    # 0.28f

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-virtual {v2, v3, v0, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    const v0, 0x3ebd70a4    # 0.37f

    const v1, 0x3f170a3d    # 0.59f

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v0, v3, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    const v0, -0x430a3d71    # -0.03f

    const v3, 0x3ed1eb85    # 0.41f

    const v4, -0x42333333    # -0.1f

    invoke-virtual {v2, v3, v0, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 111
    const v0, 0x3ee66666    # 0.45f

    const v1, -0x41c7ae14    # -0.18f

    const v3, -0x41570a3d    # -0.33f

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-virtual {v2, v4, v1, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    const v0, -0x4151eb85    # -0.34f

    const v1, -0x40ee147b    # -0.57f

    const v3, 0x3e947ae1    # 0.29f

    const v4, 0x3e6147ae    # 0.22f

    invoke-virtual {v2, v4, v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    const/high16 v0, -0x41000000    # -0.5f

    const v1, -0x40ae147b    # -0.82f

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3, v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    const v0, -0x40c28f5c    # -0.74f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    const v29, -0x415c28f6    # -0.32f

    const v30, -0x42dc28f6    # -0.04f

    const v31, -0x40e66666    # -0.6f

    const v32, -0x421eb852    # -0.11f

    const v33, -0x40ae147b    # -0.82f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    const v0, -0x4128f5c3    # -0.42f

    const v1, -0x40ee147b    # -0.57f

    const v3, -0x41666666    # -0.3f

    const v4, -0x41d1eb85    # -0.17f

    invoke-virtual {v2, v4, v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    const v0, -0x417ae148    # -0.26f

    const v1, -0x41147ae1    # -0.46f

    const v3, -0x4170a3d7    # -0.28f

    const v4, -0x41570a3d    # -0.33f

    invoke-virtual {v2, v3, v0, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 119
    const v0, 0x41673333    # 14.45f

    const v1, 0x4165999a    # 14.35f

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    const v29, 0x3e428f5c    # 0.19f

    const v30, -0x43dc28f6    # -0.01f

    const v31, 0x3eb33333    # 0.35f

    const v32, -0x42dc28f6    # -0.04f

    const v33, 0x3ef5c28f    # 0.48f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    const v0, 0x3e75c28f    # 0.24f

    const v1, 0x3ea3d70a    # 0.32f

    const v3, -0x428a3d71    # -0.06f

    const v4, -0x421eb852    # -0.11f

    invoke-virtual {v2, v3, v0, v4, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    const v0, -0x41bd70a4    # -0.19f

    const v1, 0x3e2e147b    # 0.17f

    const v3, 0x3e0f5c29    # 0.14f

    invoke-virtual {v2, v4, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    const v0, -0x41dc28f6    # -0.16f

    const/high16 v1, -0x41800000    # -0.25f

    const v3, 0x3d4ccccd    # 0.05f

    invoke-virtual {v2, v0, v3, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 124
    const v0, -0x435c28f6    # -0.02f

    const v3, -0x41c7ae14    # -0.18f

    const v4, -0x42b33333    # -0.05f

    invoke-virtual {v2, v3, v0, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 125
    const v0, -0x4247ae14    # -0.09f

    const v1, -0x41bd70a4    # -0.19f

    const v3, -0x41f0a3d7    # -0.14f

    const v4, -0x41d1eb85    # -0.17f

    invoke-virtual {v2, v3, v0, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 126
    const v0, -0x420a3d71    # -0.12f

    const v1, -0x415c28f6    # -0.32f

    const v3, -0x4247ae14    # -0.09f

    const v4, -0x41bd70a4    # -0.19f

    invoke-virtual {v2, v3, v4, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 127
    const v0, -0x42dc28f6    # -0.04f

    const v1, -0x410a3d71    # -0.48f

    const v3, -0x42dc28f6    # -0.04f

    const v4, -0x416b851f    # -0.29f

    invoke-virtual {v2, v3, v4, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 128
    const v0, -0x4087ae14    # -0.97f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 129
    const v29, -0x41bd70a4    # -0.19f

    const v30, 0x3c23d70a    # 0.01f

    const v31, -0x414ccccd    # -0.35f

    const v32, 0x3d23d70a    # 0.04f

    const v33, -0x410a3d71    # -0.48f

    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 130
    const v0, 0x3d75c28f    # 0.06f

    const v1, -0x416147ae    # -0.31f

    const v3, -0x41947ae1    # -0.23f

    const v4, 0x3df5c28f    # 0.12f

    invoke-virtual {v2, v0, v3, v4, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    const v0, 0x3e428f5c    # 0.19f

    const v1, -0x41f0a3d7    # -0.14f

    const v3, -0x41d1eb85    # -0.17f

    const v4, 0x3de147ae    # 0.11f

    invoke-virtual {v2, v4, v1, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 132
    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3e23d70a    # 0.16f

    const v3, -0x42b33333    # -0.05f

    invoke-virtual {v2, v1, v3, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 133
    const v0, 0x3ca3d70a    # 0.02f

    const/high16 v1, 0x3e800000    # 0.25f

    const v3, 0x3d4ccccd    # 0.05f

    const v4, 0x3e3851ec    # 0.18f

    invoke-virtual {v2, v4, v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 134
    const v0, 0x3db851ec    # 0.09f

    const v1, 0x3e428f5c    # 0.19f

    const v3, 0x3e2e147b    # 0.17f

    const v4, 0x3e0f5c29    # 0.14f

    invoke-virtual {v2, v4, v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 135
    const v1, 0x3e9eb852    # 0.31f

    const v3, 0x3df5c28f    # 0.12f

    const v4, 0x3e3851ec    # 0.18f

    invoke-virtual {v2, v0, v4, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 136
    const v0, 0x3ef5c28f    # 0.48f

    const v1, 0x3e947ae1    # 0.29f

    const v3, 0x3d23d70a    # 0.04f

    invoke-virtual {v2, v3, v1, v3, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 137
    const v0, 0x3f7851ec    # 0.97f

    invoke-virtual {v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 138
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 139
    nop

    .line 177
    .end local v2    # "$this$_get_Forward30__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v34    # "$i$a$-materialPath-YwgOQQI$default-Forward30Kt$Forward30$1$1":I
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

    move-result-object v0

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

    .line 30
    .end local v5    # "fillAlpha$iv":F
    .end local v6    # "strokeAlpha$iv":F
    .end local v7    # "pathFillType$iv":I
    .end local v8    # "$i$f$materialPath-YwgOQQI":I
    .end local v38    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 146
    .end local v36    # "$this$_get_Forward30__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v37    # "$i$a$-materialIcon-Forward30Kt$Forward30$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v14    # "$i$f$materialIcon":I
    .end local v35    # "name$iv":Ljava/lang/String;
    sput-object v0, Landroidx/compose/material/icons/rounded/Forward30Kt;->_forward30:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 141
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
