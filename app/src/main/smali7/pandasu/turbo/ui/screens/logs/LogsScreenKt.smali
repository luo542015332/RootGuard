.class public final Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt;
.super Ljava/lang/Object;
.source "LogsScreen.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogsScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogsScreen.kt\ncom/pandasu/turbo/ui/screens/logs/LogsScreenKt\n+ 2 HiltViewModel.kt\nandroidx/hilt/navigation/compose/HiltViewModelKt\n+ 3 ViewModel.kt\nandroidx/lifecycle/viewmodel/compose/ViewModelKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,125:1\n43#2,7:126\n86#3,6:133\n81#4:139\n*S KotlinDebug\n*F\n+ 1 LogsScreen.kt\ncom/pandasu/turbo/ui/screens/logs/LogsScreenKt\n*L\n20#1:126,7\n20#1:133,6\n22#1:139\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0004\u001a%\u0010\u0005\u001a\u00020\u00012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b\u00b2\u0006\n\u0010\u000c\u001a\u00020\rX\u008a\u0084\u0002"
    }
    d2 = {
        "LogItem",
        "",
        "log",
        "Lcom/pandasu/turbo/ui/screens/logs/LogEntry;",
        "(Lcom/pandasu/turbo/ui/screens/logs/LogEntry;Landroidx/compose/runtime/Composer;I)V",
        "LogsScreen",
        "onNavigateBack",
        "Lkotlin/Function0;",
        "viewModel",
        "Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;",
        "(Lkotlin/jvm/functions/Function0;Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;Landroidx/compose/runtime/Composer;II)V",
        "app_debug",
        "uiState",
        "Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final LogItem(Lcom/pandasu/turbo/ui/screens/logs/LogEntry;Landroidx/compose/runtime/Composer;I)V
    .registers 22
    .param p0, "log"    # Lcom/pandasu/turbo/ui/screens/logs/LogEntry;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "log"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const v2, -0x6c6a97c1

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(LogItem)80@2712L991:LogsScreen.kt#k9h623"

    invoke-static {v12, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p2

    .local v3, "$dirty":I
    and-int/lit8 v4, v1, 0xe

    const/4 v5, 0x2

    if-nez v4, :cond_28

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x4

    goto :goto_27

    :cond_26
    move v4, v5

    :goto_27
    or-int/2addr v3, v4

    :cond_28
    move v13, v3

    .end local v3    # "$dirty":I
    .local v13, "$dirty":I
    and-int/lit8 v3, v13, 0xb

    if-ne v3, v5, :cond_39

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_39

    .line 111
    :cond_34
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_15d

    .line 73
    :cond_39
    :goto_39
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_45

    const/4 v3, -0x1

    const-string v4, "com.pandasu.turbo.ui.screens.logs.LogItem (LogsScreen.kt:72)"

    invoke-static {v2, v13, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 74
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/pandasu/turbo/ui/screens/logs/LogEntry;->getLevel()Lcom/pandasu/turbo/ui/screens/logs/LogLevel;

    move-result-object v2

    sget-object v3, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/pandasu/turbo/ui/screens/logs/LogLevel;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_16e

    .line 78
    const v2, 0x14715b2b

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2

    :pswitch_63
    const v2, 0x14716576

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "77@2675L11"

    invoke-static {v12, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/material/icons/filled/BugReportKt;->getBugReport(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v2

    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v4, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v3, v12, v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material3/ColorScheme;->getSecondary-0d7_KjU()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto/16 :goto_117

    .line 77
    :pswitch_91
    const v2, 0x14716525

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "76@2590L11"

    invoke-static {v12, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/material/icons/filled/ErrorKt;->getError(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v2

    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v4, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v3, v12, v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material3/ColorScheme;->getError-0d7_KjU()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_117

    .line 76
    :pswitch_be
    const v2, 0x147164cf

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "75@2506L11"

    invoke-static {v12, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/material/icons/filled/WarningKt;->getWarning(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v2

    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v4, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v3, v12, v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material3/ColorScheme;->getTertiary-0d7_KjU()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_117

    .line 75
    :pswitch_eb
    const v2, 0x1471647b

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "74@2419L11"

    invoke-static {v12, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {v2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/material/icons/filled/InfoKt;->getInfo(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v2

    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v4, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v3, v12, v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 74
    :goto_117
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroidx/compose/ui/graphics/vector/ImageVector;

    .local v14, "icon":Landroidx/compose/ui/graphics/vector/ImageVector;
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v10

    .line 82
    .local v10, "color":J
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 83
    new-instance v8, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogItem$1;

    invoke-direct {v8, v14, v10, v11, v0}, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogItem$1;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;JLcom/pandasu/turbo/ui/screens/logs/LogEntry;)V

    const v9, -0x749dcef3

    invoke-static {v12, v9, v5, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function3;

    const v15, 0x30006

    const/16 v16, 0x1e

    .line 81
    move-object v5, v2

    move-object v9, v12

    move-wide/from16 v17, v10

    .end local v10    # "color":J
    .local v17, "color":J
    move v10, v15

    move/from16 v11, v16

    invoke-static/range {v3 .. v11}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_15d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 111
    .end local v14    # "icon":Landroidx/compose/ui/graphics/vector/ImageVector;
    .end local v17    # "color":J
    :cond_15d
    :goto_15d
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_16d

    new-instance v3, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogItem$2;

    invoke-direct {v3, v0, v1}, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogItem$2;-><init>(Lcom/pandasu/turbo/ui/screens/logs/LogEntry;I)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_16d
    return-void

    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_eb
        :pswitch_be
        :pswitch_91
        :pswitch_63
    .end packed-switch
.end method

.method public static final LogsScreen(Lkotlin/jvm/functions/Function0;Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;Landroidx/compose/runtime/Composer;II)V
    .registers 30
    .param p0, "onNavigateBack"    # Lkotlin/jvm/functions/Function0;
    .param p1, "viewModel"    # Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const-string v3, "onNavigateBack"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const v3, 0x788e1094

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v4, "C(LogsScreen)19@697L15,21@754L16,24@800L136,31@946L1324:LogsScreen.kt#k9h623"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v4, p3

    .local v4, "$dirty":I
    and-int/lit8 v5, v2, 0x1

    const/4 v6, 0x2

    if-eqz v5, :cond_23

    or-int/lit8 v4, v4, 0x6

    goto :goto_31

    :cond_23
    and-int/lit8 v5, v1, 0xe

    if-nez v5, :cond_31

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v5, 0x4

    goto :goto_30

    :cond_2f
    move v5, v6

    :goto_30
    or-int/2addr v4, v5

    :cond_31
    :goto_31
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_37

    or-int/lit8 v4, v4, 0x10

    :cond_37
    move v12, v4

    .end local v4    # "$dirty":I
    .local v12, "$dirty":I
    if-ne v5, v6, :cond_50

    and-int/lit8 v4, v12, 0x5b

    const/16 v6, 0x12

    if-ne v4, v6, :cond_50

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_47

    goto :goto_50

    .line 70
    :cond_47
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p1

    move-object/from16 v20, v15

    goto/16 :goto_165

    .line 21
    :cond_50
    :goto_50
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v4, v1, 0x1

    const/16 v13, 0x8

    if-eqz v4, :cond_69

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_60

    goto :goto_69

    .line 132
    :cond_60
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    if-eqz v5, :cond_e5

    and-int/lit8 v12, v12, -0x71

    goto/16 :goto_e5

    .line 21
    :cond_69
    :goto_69
    if-eqz v5, :cond_e5

    .line 20
    const/4 v14, 0x0

    .local v14, "$changed$iv":I
    const/16 v16, 0x0

    .local v16, "$i$f$hiltViewModel":I
    const v4, 0x70b323c8

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(hiltViewModel)P(1)*42@1793L7,47@1936L47,48@1995L54:HiltViewModel.kt#9mcars"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 126
    sget-object v4, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    sget v5, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->$stable:I

    invoke-virtual {v4, v15, v5}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v4

    if-eqz v4, :cond_d7

    move-object v11, v4

    .line 129
    .local v11, "viewModelStoreOwner$iv":Landroidx/lifecycle/ViewModelStoreOwner;
    const/16 v17, 0x0

    .line 131
    .local v17, "key$iv":Ljava/lang/String;
    invoke-static {v11, v15, v13}, Landroidx/hilt/navigation/compose/HiltViewModelKt;->createHiltViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v18

    .local v18, "factory$iv":Landroidx/lifecycle/ViewModelProvider$Factory;
    and-int/lit8 v4, v14, 0x70

    or-int/lit16 v4, v4, 0x208

    .line 132
    move/from16 v19, v4

    .local v19, "$changed$iv$iv":I
    const/16 v20, 0x0

    .local v20, "$i$f$viewModel":I
    const v4, 0x671a9c9b

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(viewModel)P(3,2,1)*80@3834L7,90@4209L68:ViewModel.kt#3tja67"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 133
    instance-of v4, v11, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v4, :cond_aa

    .line 134
    move-object v4, v11

    check-cast v4, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v4}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v4

    move-object v8, v4

    goto :goto_af

    .line 136
    :cond_aa
    sget-object v4, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    check-cast v4, Landroidx/lifecycle/viewmodel/CreationExtras;

    move-object v8, v4

    :goto_af
    nop

    .local v8, "extras$iv$iv":Landroidx/lifecycle/viewmodel/CreationExtras;
    const-class v4, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;

    .line 138
    shl-int/lit8 v5, v19, 0x3

    and-int/lit16 v5, v5, 0x380

    const v6, 0x9048

    or-int v10, v5, v6

    const/16 v21, 0x0

    move-object v5, v11

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object v9, v15

    move-object/from16 v22, v11

    .end local v11    # "viewModelStoreOwner$iv":Landroidx/lifecycle/ViewModelStoreOwner;
    .local v22, "viewModelStoreOwner$iv":Landroidx/lifecycle/ViewModelStoreOwner;
    move/from16 v11, v21

    invoke-static/range {v4 .. v11}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Ljava/lang/Class;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;

    move-result-object v4

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 132
    .end local v8    # "extras$iv$iv":Landroidx/lifecycle/viewmodel/CreationExtras;
    .end local v19    # "$changed$iv$iv":I
    .end local v20    # "$i$f$viewModel":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v14    # "$changed$iv":I
    .end local v16    # "$i$f$hiltViewModel":I
    .end local v17    # "key$iv":Ljava/lang/String;
    .end local v18    # "factory$iv":Landroidx/lifecycle/ViewModelProvider$Factory;
    .end local v22    # "viewModelStoreOwner$iv":Landroidx/lifecycle/ViewModelStoreOwner;
    check-cast v4, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;

    .end local p1    # "viewModel":Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;
    .local v4, "viewModel":Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;
    and-int/lit8 v12, v12, -0x71

    move-object v14, v4

    goto :goto_e7

    .line 126
    .end local v4    # "viewModel":Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;
    .restart local v14    # "$changed$iv":I
    .restart local v16    # "$i$f$hiltViewModel":I
    .restart local p1    # "viewModel":Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;
    :cond_d7
    const/4 v2, 0x0

    .line 127
    .local v2, "$i$a$-checkNotNull-HiltViewModelKt$hiltViewModel$1$iv":I
    nop

    .line 126
    .end local v2    # "$i$a$-checkNotNull-HiltViewModelKt$hiltViewModel$1$iv":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    .end local v14    # "$changed$iv":I
    .end local v16    # "$i$f$hiltViewModel":I
    :cond_e5
    :goto_e5
    move-object/from16 v14, p1

    .end local p1    # "viewModel":Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;
    .local v14, "viewModel":Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;
    :goto_e7
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 21
    const/4 v4, -0x1

    const-string v5, "com.pandasu.turbo.ui.screens.logs.LogsScreen (LogsScreen.kt:20)"

    invoke-static {v3, v12, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 22
    :cond_f6
    invoke-virtual {v14}, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;->getUiState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v15, v13, v5}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v3

    .line 25
    .local v3, "uiState$delegate":Landroidx/compose/runtime/State;
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v7, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$1;

    invoke-direct {v7, v14, v4}, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$1;-><init>(Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/16 v4, 0x46

    invoke-static {v6, v7, v15, v4}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v4, 0x0

    .line 33
    new-instance v6, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2;

    invoke-direct {v6, v0, v14}, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2;-><init>(Lkotlin/jvm/functions/Function0;Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;)V

    const v7, 0x1b0e4550

    invoke-static {v15, v7, v5, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    .line 57
    new-instance v11, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$3;

    invoke-direct {v11, v3}, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$3;-><init>(Landroidx/compose/runtime/State;)V

    const v13, -0x7ce27d5b

    invoke-static {v15, v13, v5, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, Lkotlin/jvm/functions/Function3;

    const v22, 0x30000030

    const/16 v23, 0x1fd

    .line 32
    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move-wide/from16 v10, v16

    move/from16 v24, v12

    .end local v12    # "$dirty":I
    .local v24, "$dirty":I
    move-wide/from16 v12, v18

    move-object/from16 v19, v14

    .end local v14    # "viewModel":Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;
    .local v19, "viewModel":Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;
    move-object/from16 v14, v20

    move-object/from16 v20, v15

    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .local v20, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v17, v22

    move/from16 v18, v23

    invoke-static/range {v4 .. v18}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_161

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 70
    .end local v3    # "uiState$delegate":Landroidx/compose/runtime/State;
    :cond_161
    move-object/from16 v3, v19

    move/from16 v12, v24

    .end local v19    # "viewModel":Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;
    .end local v24    # "$dirty":I
    .local v3, "viewModel":Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;
    .restart local v12    # "$dirty":I
    :goto_165
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v4

    if-eqz v4, :cond_175

    new-instance v5, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$4;

    invoke-direct {v5, v0, v3, v1, v2}, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$4;-><init>(Lkotlin/jvm/functions/Function0;Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;II)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-interface {v4, v5}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_175
    return-void
.end method

.method private static final LogsScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;
    .registers 5
    .param p0, "$uiState$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;",
            ">;)",
            "Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;"
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 139
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;

    .line 22
    return-object v0
.end method

.method public static final synthetic access$LogsScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;
    .registers 2
    .param p0, "$uiState$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt;->LogsScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;

    move-result-object v0

    return-object v0
.end method
