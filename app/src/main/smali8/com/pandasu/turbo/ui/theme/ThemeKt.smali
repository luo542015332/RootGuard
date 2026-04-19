.class public final Lcom/pandasu/turbo/ui/theme/ThemeKt;
.super Ljava/lang/Object;
.source "Theme.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTheme.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Theme.kt\ncom/pandasu/turbo/ui/theme/ThemeKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,85:1\n76#2:86\n76#2:87\n*S KotlinDebug\n*F\n+ 1 Theme.kt\ncom/pandasu/turbo/ui/theme/ThemeKt\n*L\n65#1:86\n71#1:87\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a>\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0011\u0010\u0012\u001a\r\u0012\u0004\u0012\u00020\u000c0\u0013\u00a2\u0006\u0002\u0008\u0014H\u0007\u00a2\u0006\u0002\u0010\u0015\u001a\u0016\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u000e\"\u0013\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0002\u0010\u0003\"\u0013\u0010\u0005\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0006\u0010\u0003\"\u0013\u0010\u0007\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0003\"\u0013\u0010\t\u001a\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\n\u0010\u0003\u00a8\u0006\u0018"
    }
    d2 = {
        "errorColor",
        "Landroidx/compose/ui/graphics/Color;",
        "getErrorColor",
        "()J",
        "J",
        "infoColor",
        "getInfoColor",
        "successColor",
        "getSuccessColor",
        "warningColor",
        "getWarningColor",
        "RootGuardTheme",
        "",
        "darkTheme",
        "",
        "dynamicColor",
        "themeId",
        "",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "(ZZLjava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
        "getPandaColorScheme",
        "Landroidx/compose/material3/ColorScheme;",
        "app_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final errorColor:J

.field private static final infoColor:J

.field private static final successColor:J

.field private static final warningColor:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const-wide v0, 0xff4caf50L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/pandasu/turbo/ui/theme/ThemeKt;->successColor:J

    .line 21
    const-wide v0, 0xffff9800L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/pandasu/turbo/ui/theme/ThemeKt;->warningColor:J

    .line 22
    const-wide v0, 0xfff44336L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/pandasu/turbo/ui/theme/ThemeKt;->errorColor:J

    .line 23
    const-wide v0, 0xff2196f3L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lcom/pandasu/turbo/ui/theme/ThemeKt;->infoColor:J

    return-void
.end method

.method public static final RootGuardTheme(ZZLjava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 17
    .param p0, "darkTheme"    # Z
    .param p1, "dynamicColor"    # Z
    .param p2, "themeId"    # Ljava/lang/String;
    .param p3, "content"    # Lkotlin/jvm/functions/Function2;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v7, p3

    move/from16 v8, p5

    const-string v0, "content"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    const v0, -0x752fbce0

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(RootGuardTheme)P(1,2,3)57@1880L21,70@2362L7,79@2666L114:Theme.kt#igbqk4"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, v8, 0xe

    if-nez v2, :cond_2

    and-int/lit8 v2, p6, 0x1

    if-nez v2, :cond_0

    move/from16 v2, p0

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move/from16 v2, p0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_2
    move/from16 v2, p0

    :goto_1
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    move/from16 v4, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v8, 0x70

    if-nez v4, :cond_5

    move/from16 v4, p1

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    goto :goto_3

    :cond_5
    move/from16 v4, p1

    :goto_3
    and-int/lit8 v5, p6, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v6, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v8, 0x380

    if-nez v6, :cond_8

    move-object/from16 v6, p2

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_4

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v1, v10

    goto :goto_5

    :cond_8
    move-object/from16 v6, p2

    :goto_5
    and-int/lit8 v10, p6, 0x8

    if-eqz v10, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v10, v8, 0x1c00

    if-nez v10, :cond_b

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x800

    goto :goto_6

    :cond_a
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v1, v10

    :cond_b
    :goto_7
    and-int/lit16 v10, v1, 0x16db

    const/16 v11, 0x492

    if-ne v10, v11, :cond_d

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v10

    if-nez v10, :cond_c

    goto :goto_8

    .line 85
    :cond_c
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move v14, v1

    move v10, v2

    move v12, v4

    move-object v13, v6

    goto/16 :goto_d

    .line 62
    :cond_d
    :goto_8
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v10, v8, 0x1

    const/4 v11, 0x0

    if-eqz v10, :cond_10

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v10

    if-eqz v10, :cond_e

    goto :goto_9

    .line 60
    :cond_e
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_f

    and-int/lit8 v1, v1, -0xf

    :cond_f
    move v14, v1

    move v10, v2

    move v12, v4

    move-object v13, v6

    goto :goto_b

    .line 62
    :cond_10
    :goto_9
    and-int/lit8 v10, p6, 0x1

    if-eqz v10, :cond_11

    .line 58
    invoke-static {v9, v11}, Landroidx/compose/foundation/DarkThemeKt;->isSystemInDarkTheme(Landroidx/compose/runtime/Composer;I)Z

    move-result v2

    .end local p0    # "darkTheme":Z
    .local v2, "darkTheme":Z
    and-int/lit8 v1, v1, -0xf

    :cond_11
    if-eqz v3, :cond_12

    .line 59
    const/4 v3, 0x0

    .end local p1    # "dynamicColor":Z
    .local v3, "dynamicColor":Z
    goto :goto_a

    .line 58
    .end local v3    # "dynamicColor":Z
    .restart local p1    # "dynamicColor":Z
    :cond_12
    move v3, v4

    .line 59
    .end local p1    # "dynamicColor":Z
    .restart local v3    # "dynamicColor":Z
    :goto_a
    if-eqz v5, :cond_13

    .line 60
    const-string v4, "classic"

    move v14, v1

    move v10, v2

    move v12, v3

    move-object v13, v4

    .end local p2    # "themeId":Ljava/lang/String;
    .local v4, "themeId":Ljava/lang/String;
    goto :goto_b

    .line 59
    .end local v4    # "themeId":Ljava/lang/String;
    .restart local p2    # "themeId":Ljava/lang/String;
    :cond_13
    move v14, v1

    move v10, v2

    move v12, v3

    move-object v13, v6

    .line 60
    .end local v1    # "$dirty":I
    .end local v2    # "darkTheme":Z
    .end local v3    # "dynamicColor":Z
    .end local p2    # "themeId":Ljava/lang/String;
    .local v10, "darkTheme":Z
    .local v12, "dynamicColor":Z
    .local v13, "themeId":Ljava/lang/String;
    .local v14, "$dirty":I
    :goto_b
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 62
    const/4 v1, -0x1

    const-string v2, "com.pandasu.turbo.ui.theme.RootGuardTheme (Theme.kt:61)"

    invoke-static {v0, v14, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_14
    const v0, -0x77ea32cf

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "64@2155L7"

    invoke-static {v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 63
    nop

    .line 64
    const-string v0, "CC:CompositionLocal.kt#9igjgp"

    const v1, 0x789c5f52

    if-eqz v12, :cond_16

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_16

    .line 65
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    .local v2, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v3, 0x0

    .local v3, "$changed$iv":I
    const/4 v4, 0x0

    .line 86
    .local v4, "$i$f$getCurrent":I
    invoke-static {v9, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 65
    .end local v2    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v3    # "$changed$iv":I
    .end local v4    # "$i$f$getCurrent":I
    move-object v2, v5

    check-cast v2, Landroid/content/Context;

    .line 66
    .local v2, "context":Landroid/content/Context;
    if-eqz v10, :cond_15

    invoke-static {v2}, Landroidx/compose/material3/DynamicTonalPaletteKt;->dynamicDarkColorScheme(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    goto :goto_c

    :cond_15
    invoke-static {v2}, Landroidx/compose/material3/DynamicTonalPaletteKt;->dynamicLightColorScheme(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    .end local v2    # "context":Landroid/content/Context;
    goto :goto_c

    .line 68
    :cond_16
    invoke-static {v13, v10}, Lcom/pandasu/turbo/ui/theme/ThemeKt;->getPandaColorScheme(Ljava/lang/String;Z)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    .line 63
    :goto_c
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v15, v3

    .line 71
    .local v15, "colorScheme":Landroidx/compose/material3/ColorScheme;
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    .local v2, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v3, 0x0

    .restart local v3    # "$changed$iv":I
    const/4 v4, 0x0

    .line 87
    .restart local v4    # "$i$f$getCurrent":I
    invoke-static {v9, v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 71
    .end local v2    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v3    # "$changed$iv":I
    .end local v4    # "$i$f$getCurrent":I
    move-object v6, v0

    check-cast v6, Landroid/view/View;

    .local v6, "view":Landroid/view/View;
    const v0, -0x77ea317a

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "72@2408L246"

    invoke-static {v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v6}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_17

    .line 73
    new-instance v0, Lcom/pandasu/turbo/ui/theme/ThemeKt$RootGuardTheme$1;

    invoke-direct {v0, v6, v15, v10}, Lcom/pandasu/turbo/ui/theme/ThemeKt$RootGuardTheme$1;-><init>(Landroid/view/View;Landroidx/compose/material3/ColorScheme;Z)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v9, v11}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    :cond_17
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 81
    const/4 v1, 0x0

    .line 82
    invoke-static {}, Lcom/pandasu/turbo/ui/theme/TypeKt;->getTypography()Landroidx/compose/material3/Typography;

    move-result-object v2

    .line 83
    and-int/lit16 v0, v14, 0x1c00

    or-int/lit16 v5, v0, 0x180

    const/4 v11, 0x2

    .line 80
    move-object v0, v15

    move-object/from16 v3, p3

    move-object v4, v9

    move-object/from16 v16, v6

    .end local v6    # "view":Landroid/view/View;
    .local v16, "view":Landroid/view/View;
    move v6, v11

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt;->MaterialTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 85
    .end local v15    # "colorScheme":Landroidx/compose/material3/ColorScheme;
    .end local v16    # "view":Landroid/view/View;
    :cond_18
    :goto_d
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_19

    new-instance v15, Lcom/pandasu/turbo/ui/theme/ThemeKt$RootGuardTheme$2;

    move-object v0, v15

    move v1, v10

    move v2, v12

    move-object v3, v13

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/pandasu/turbo/ui/theme/ThemeKt$RootGuardTheme$2;-><init>(ZZLjava/lang/String;Lkotlin/jvm/functions/Function2;II)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_19
    return-void
.end method

.method public static final getErrorColor()J
    .locals 2

    .line 22
    sget-wide v0, Lcom/pandasu/turbo/ui/theme/ThemeKt;->errorColor:J

    return-wide v0
.end method

.method public static final getInfoColor()J
    .locals 2

    .line 23
    sget-wide v0, Lcom/pandasu/turbo/ui/theme/ThemeKt;->infoColor:J

    return-wide v0
.end method

.method public static final getPandaColorScheme(Ljava/lang/String;Z)Landroidx/compose/material3/ColorScheme;
    .locals 63
    .param p0, "themeId"    # Ljava/lang/String;
    .param p1, "darkTheme"    # Z

    const-string v0, "themeId"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static/range {p0 .. p0}, Lcom/pandasu/turbo/ui/theme/PandaThemeKt;->getPandaTheme(Ljava/lang/String;)Lcom/pandasu/turbo/ui/theme/PandaTheme;

    move-result-object v0

    .line 31
    .local v0, "theme":Lcom/pandasu/turbo/ui/theme/PandaTheme;
    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/theme/PandaTheme;->isDark()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/theme/PandaTheme;->getPrimary-0d7_KjU()J

    move-result-wide v3

    .line 45
    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/theme/PandaTheme;->getSecondary-0d7_KjU()J

    move-result-wide v13

    .line 46
    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/theme/PandaTheme;->getTertiary-0d7_KjU()J

    move-result-wide v21

    .line 47
    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/theme/PandaTheme;->getBackground-0d7_KjU()J

    move-result-wide v29

    .line 48
    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/theme/PandaTheme;->getSurface-0d7_KjU()J

    move-result-wide v33

    .line 49
    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/theme/PandaTheme;->getOnPrimary-0d7_KjU()J

    move-result-wide v5

    .line 50
    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/theme/PandaTheme;->getOnBackground-0d7_KjU()J

    move-result-wide v31

    .line 51
    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/theme/PandaTheme;->getOnSurface-0d7_KjU()J

    move-result-wide v35

    .line 44
    nop

    .line 49
    nop

    .line 43
    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    .line 45
    nop

    .line 43
    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    .line 46
    nop

    .line 43
    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    .line 47
    nop

    .line 50
    nop

    .line 48
    nop

    .line 51
    nop

    .line 43
    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const-wide/16 v59, 0x0

    const v61, 0x1ffe1ddc

    const/16 v62, 0x0

    invoke-static/range {v3 .. v62}, Landroidx/compose/material3/ColorSchemeKt;->lightColorScheme-G1PFc-w$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/theme/PandaTheme;->getPrimary-0d7_KjU()J

    move-result-wide v3

    .line 34
    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/theme/PandaTheme;->getSecondary-0d7_KjU()J

    move-result-wide v13

    .line 35
    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/theme/PandaTheme;->getTertiary-0d7_KjU()J

    move-result-wide v21

    .line 36
    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/theme/PandaTheme;->getBackground-0d7_KjU()J

    move-result-wide v29

    .line 37
    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/theme/PandaTheme;->getSurface-0d7_KjU()J

    move-result-wide v33

    .line 38
    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/theme/PandaTheme;->getOnPrimary-0d7_KjU()J

    move-result-wide v5

    .line 39
    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/theme/PandaTheme;->getOnBackground-0d7_KjU()J

    move-result-wide v31

    .line 40
    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/theme/PandaTheme;->getOnSurface-0d7_KjU()J

    move-result-wide v35

    .line 33
    nop

    .line 38
    nop

    .line 32
    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    .line 34
    nop

    .line 32
    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    .line 35
    nop

    .line 32
    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    .line 36
    nop

    .line 39
    nop

    .line 37
    nop

    .line 40
    nop

    .line 32
    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const-wide/16 v59, 0x0

    const v61, 0x1ffe1ddc

    const/16 v62, 0x0

    invoke-static/range {v3 .. v62}, Landroidx/compose/material3/ColorSchemeKt;->darkColorScheme-G1PFc-w$default(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    .line 31
    :goto_1
    return-object v2
.end method

.method public static final getSuccessColor()J
    .locals 2

    .line 20
    sget-wide v0, Lcom/pandasu/turbo/ui/theme/ThemeKt;->successColor:J

    return-wide v0
.end method

.method public static final getWarningColor()J
    .locals 2

    .line 21
    sget-wide v0, Lcom/pandasu/turbo/ui/theme/ThemeKt;->warningColor:J

    return-wide v0
.end method
