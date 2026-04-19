.class public final Landroidx/compose/material/icons/rounded/SignalWifiStatusbarConnectedNoInternet4Kt;
.super Ljava/lang/Object;
.source "SignalWifiStatusbarConnectedNoInternet4.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSignalWifiStatusbarConnectedNoInternet4.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SignalWifiStatusbarConnectedNoInternet4.kt\nandroidx/compose/material/icons/rounded/SignalWifiStatusbarConnectedNoInternet4Kt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,62:1\n122#2:63\n116#2,3:64\n119#2,3:68\n132#2,18:71\n152#2:108\n174#3:67\n694#4,2:89\n706#4,2:91\n708#4,11:97\n64#5,4:93\n*S KotlinDebug\n*F\n+ 1 SignalWifiStatusbarConnectedNoInternet4.kt\nandroidx/compose/material/icons/rounded/SignalWifiStatusbarConnectedNoInternet4Kt\n*L\n29#1:63\n29#1:64,3\n29#1:68,3\n31#1:71,18\n31#1:108\n29#1:67\n31#1:89,2\n31#1:91,2\n31#1:97,11\n31#1:93,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_signalWifiStatusbarConnectedNoInternet4",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "SignalWifiStatusbarConnectedNoInternet4",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getSignalWifiStatusbarConnectedNoInternet4",
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
.field private static _signalWifiStatusbarConnectedNoInternet4:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getSignalWifiStatusbarConnectedNoInternet4(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 38
    .param p0, "$this$SignalWifiStatusbarConnectedNoInternet4"    # Landroidx/compose/material/icons/Icons$Rounded;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/SignalWifiStatusbarConnectedNoInternet4Kt;->_signalWifiStatusbarConnectedNoInternet4:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 29
    :cond_0
    nop

    .line 30
    nop

    .line 29
    const-string/jumbo v3, "Rounded.SignalWifiStatusbarConnectedNoInternet4"

    .local v3, "name$iv":Ljava/lang/String;
    const/4 v0, 0x0

    .line 63
    .local v0, "$i$f$materialIcon":I
    nop

    .line 64
    new-instance v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 65
    nop

    .line 66
    const/high16 v2, 0x41c00000    # 24.0f

    .local v2, "$this$dp$iv$iv":F
    const/4 v4, 0x0

    .line 67
    .local v4, "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 68
    .end local v2    # "$this$dp$iv$iv":F
    .end local v4    # "$i$f$getDp":I
    const/high16 v2, 0x41c00000    # 24.0f

    .restart local v2    # "$this$dp$iv$iv":F
    const/4 v5, 0x0

    .line 67
    .local v5, "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 69
    .end local v2    # "$this$dp$iv$iv":F
    .end local v5    # "$i$f$getDp":I
    const/high16 v6, 0x41c00000    # 24.0f

    .line 70
    const/high16 v7, 0x41c00000    # 24.0f

    .line 64
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    nop

    .local v2, "$this$_get_SignalWifiStatusbarConnectedNoInternet4__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/4 v4, 0x0

    .line 31
    .local v4, "$i$a$-materialIcon-SignalWifiStatusbarConnectedNoInternet4Kt$SignalWifiStatusbarConnectedNoInternet4$1":I
    move-object/from16 v22, v2

    .line 71
    .local v22, "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    nop

    .line 72
    const/high16 v23, 0x3f800000    # 1.0f

    .local v23, "fillAlpha$iv":F
    move/from16 v10, v23

    .line 71
    nop

    .line 73
    const/high16 v24, 0x3f800000    # 1.0f

    .local v24, "strokeAlpha$iv":F
    move/from16 v12, v24

    .line 71
    nop

    .line 74
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v25

    .local v25, "pathFillType$iv":I
    move/from16 v7, v25

    .line 71
    const/16 v26, 0x0

    .line 80
    .local v26, "$i$f$materialPath-YwgOQQI":I
    nop

    .line 81
    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v8

    const/4 v11, 0x0

    invoke-direct {v5, v8, v9, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v5

    check-cast v9, Landroidx/compose/ui/graphics/Brush;

    .line 83
    nop

    .line 85
    nop

    .line 86
    sget-object v5, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v14

    .line 87
    sget-object v5, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v15

    .line 88
    nop

    .line 80
    const/high16 v6, 0x3f800000    # 1.0f

    move v13, v6

    .local v11, "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v13, "strokeLineWidth$iv$iv":F
    move-object/from16 v5, v22

    .local v5, "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v9, "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .local v14, "strokeLineCap$iv$iv":I
    .local v15, "strokeLineJoin$iv$iv":I
    move/from16 v16, v6

    .line 89
    .local v16, "strokeLineMiter$iv$iv":F
    nop

    .line 90
    const-string v27, ""

    .local v27, "name$iv$iv":Ljava/lang/String;
    move-object/from16 v8, v27

    .line 89
    const/16 v28, 0x0

    .line 91
    .local v28, "$i$f$path-R_LF-3I":I
    nop

    .line 92
    const/16 v17, 0x0

    .line 93
    .local v17, "$i$f$PathData":I
    new-instance v18, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct/range {v18 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .local v18, "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v19, 0x0

    .line 94
    .local v19, "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    move-object/from16 v20, v18

    .local v20, "$this$_get_SignalWifiStatusbarConnectedNoInternet4__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    const/16 v21, 0x0

    .line 32
    .local v21, "$i$a$-materialPath-YwgOQQI$default-SignalWifiStatusbarConnectedNoInternet4Kt$SignalWifiStatusbarConnectedNoInternet4$1$1":I
    const v6, 0x41b75c29    # 22.92f

    move/from16 v36, v0

    .end local v0    # "$i$f$materialIcon":I
    .local v36, "$i$f$materialIcon":I
    const/high16 v0, 0x41000000    # 8.0f

    move-object/from16 v1, v20

    .end local v20    # "$this$_get_SignalWifiStatusbarConnectedNoInternet4__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .local v1, "$this$_get_SignalWifiStatusbarConnectedNoInternet4__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    invoke-virtual {v1, v6, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 34
    const v0, 0x40ffae14    # 7.99f

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    const v0, -0x3f76b852    # -4.29f

    const v6, 0x4089999a    # 4.3f

    invoke-virtual {v1, v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    const v30, -0x413851ec    # -0.39f

    const v31, 0x3ec7ae14    # 0.39f

    const v32, -0x407d70a4    # -1.02f

    const v33, 0x3ec7ae14    # 0.39f

    const v34, -0x404a3d71    # -1.42f

    const/16 v35, 0x0

    move-object/from16 v29, v1

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    const v0, 0x3f3ae148    # 0.73f

    const v6, 0x411b5c29    # 9.71f

    invoke-virtual {v1, v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    const v30, 0x3ea3d70a    # 0.32f

    const v31, 0x4114cccd    # 9.3f

    const v32, 0x3eb33333    # 0.35f

    const v33, 0x410a147b    # 8.63f

    const v34, 0x3f4a3d71    # 0.79f

    const v35, 0x4103d70a    # 8.24f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    const v30, 0x4071eb85    # 3.78f

    const v31, 0x40b33333    # 5.6f

    const v32, 0x40f66666    # 7.7f

    const/high16 v33, 0x40800000    # 4.0f

    const/high16 v34, 0x41400000    # 12.0f

    const/high16 v35, 0x40800000    # 4.0f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    const v30, 0x418147ae    # 16.16f

    const/high16 v31, 0x40800000    # 4.0f

    const v32, 0x419fc28f    # 19.97f

    const v33, 0x40b051ec    # 5.51f

    const v34, 0x41b75c29    # 22.92f

    const/high16 v35, 0x41000000    # 8.0f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    const/high16 v0, 0x41a00000    # 20.0f

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v1, v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    const v30, -0x40f33333    # -0.55f

    const/16 v31, 0x0

    const/high16 v32, -0x40800000    # -1.0f

    const v33, 0x3ee66666    # 0.45f

    const/high16 v34, -0x40800000    # -1.0f

    const/high16 v35, 0x3f800000    # 1.0f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    const v0, 0x3ee66666    # 0.45f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v6, v6, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    const v0, -0x4119999a    # -0.45f

    move-object/from16 v37, v2

    .end local v2    # "$this$_get_SignalWifiStatusbarConnectedNoInternet4__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .local v37, "$this$_get_SignalWifiStatusbarConnectedNoInternet4__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v6, v0, v6, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    const v6, 0x41a46666    # 20.55f

    const/high16 v0, 0x41900000    # 18.0f

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v6, v0, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {v1, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    const/16 v30, 0x0

    const v31, 0x3f0ccccd    # 0.55f

    const v32, 0x3ee66666    # 0.45f

    const/high16 v33, 0x3f800000    # 1.0f

    const/high16 v34, 0x3f800000    # 1.0f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    const/high16 v0, -0x40800000    # -1.0f

    const v2, -0x4119999a    # -0.45f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v2, v6, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    const/high16 v0, -0x3f800000    # -4.0f

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    const/high16 v30, 0x41a80000    # 21.0f

    const v31, 0x41273333    # 10.45f

    const v32, 0x41a46666    # 20.55f

    const/high16 v33, 0x41200000    # 10.0f

    const/high16 v34, 0x41a00000    # 20.0f

    const/high16 v35, 0x41200000    # 10.0f

    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    nop

    .line 94
    .end local v1    # "$this$_get_SignalWifiStatusbarConnectedNoInternet4__u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v21    # "$i$a$-materialPath-YwgOQQI$default-SignalWifiStatusbarConnectedNoInternet4Kt$SignalWifiStatusbarConnectedNoInternet4$1$1":I
    nop

    .line 95
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v6

    .line 93
    .end local v18    # "$this$PathData_u24lambda_u240$iv$iv$iv":Landroidx/compose/ui/graphics/vector/PathBuilder;
    .end local v19    # "$i$a$-with-VectorKt$PathData$1$iv$iv$iv":I
    nop

    .line 96
    nop

    .line 97
    .end local v17    # "$i$f$PathData":I
    nop

    .line 98
    nop

    .line 99
    nop

    .line 100
    nop

    .line 101
    nop

    .line 102
    nop

    .line 103
    nop

    .line 104
    nop

    .line 105
    nop

    .line 106
    nop

    .line 91
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3800

    const/16 v21, 0x0

    invoke-static/range {v5 .. v21}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 107
    nop

    .line 108
    .end local v5    # "$this$path_u2dR_LF_u2d3I_u24default$iv$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v9    # "fill$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v11    # "stroke$iv$iv":Landroidx/compose/ui/graphics/Brush;
    .end local v13    # "strokeLineWidth$iv$iv":F
    .end local v14    # "strokeLineCap$iv$iv":I
    .end local v15    # "strokeLineJoin$iv$iv":I
    .end local v16    # "strokeLineMiter$iv$iv":F
    .end local v27    # "name$iv$iv":Ljava/lang/String;
    .end local v28    # "$i$f$path-R_LF-3I":I
    nop

    .line 31
    .end local v22    # "$this$materialPath_u2dYwgOQQI_u24default$iv":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .end local v23    # "fillAlpha$iv":F
    .end local v24    # "strokeAlpha$iv":F
    .end local v25    # "pathFillType$iv":I
    .end local v26    # "$i$f$materialPath-YwgOQQI":I
    nop

    .line 63
    .end local v4    # "$i$a$-materialIcon-SignalWifiStatusbarConnectedNoInternet4Kt$SignalWifiStatusbarConnectedNoInternet4$1":I
    .end local v37    # "$this$_get_SignalWifiStatusbarConnectedNoInternet4__u24lambda_u241":Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v36    # "$i$f$materialIcon":I
    sput-object v0, Landroidx/compose/material/icons/rounded/SignalWifiStatusbarConnectedNoInternet4Kt;->_signalWifiStatusbarConnectedNoInternet4:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 58
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
