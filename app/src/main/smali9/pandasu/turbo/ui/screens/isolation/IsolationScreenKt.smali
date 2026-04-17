.class public final Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;
.super Ljava/lang/Object;
.source "IsolationScreen.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIsolationScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsolationScreen.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt\n+ 2 HiltViewModel.kt\nandroidx/hilt/navigation/compose/HiltViewModelKt\n+ 3 ViewModel.kt\nandroidx/lifecycle/viewmodel/compose/ViewModelKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 5 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 8 Composer.kt\nandroidx/compose/runtime/Updater\n+ 9 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 10 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 11 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,426:1\n43#2,7:427\n86#3,6:434\n154#4:440\n154#4:441\n154#4:442\n154#4:478\n154#4:491\n154#4:492\n154#4:493\n154#4:494\n154#4:495\n154#4:532\n154#4:533\n74#5,5:443\n79#5:476\n83#5:490\n77#5,2:496\n79#5:526\n83#5:531\n78#6,11:448\n91#6:489\n78#6,11:498\n91#6:530\n456#7,8:459\n464#7,3:473\n467#7,3:486\n456#7,8:509\n464#7,3:523\n467#7,3:527\n4144#8,6:467\n4144#8,6:517\n13309#9:477\n13310#9:485\n1097#10,6:479\n81#11:534\n*S KotlinDebug\n*F\n+ 1 IsolationScreen.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt\n*L\n42#1:427,7\n42#1:434,6\n224#1:440\n228#1:441\n238#1:442\n241#1:478\n250#1:491\n256#1:492\n282#1:493\n306#1:494\n341#1:495\n391#1:532\n393#1:533\n238#1:443,5\n238#1:476\n238#1:490\n341#1:496,2\n341#1:526\n341#1:531\n238#1:448,11\n238#1:489\n341#1:498,11\n341#1:530\n238#1:459,8\n238#1:473,3\n238#1:486,3\n341#1:509,8\n341#1:523,3\n341#1:527,3\n238#1:467,6\n341#1:517,6\n239#1:477\n239#1:485\n241#1:479,6\n44#1:534\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\u001a+\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u001a9\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0010\u000e\u001a+\u0010\u000f\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u001a9\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0016H\u0007\u00a2\u0006\u0002\u0010\u0018\u001a)\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u001b2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00010\u0005H\u0007\u00a2\u0006\u0002\u0010\u001d\u001aw\u0010\u001e\u001a\u00020\u00012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001b2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00162\u001c\u0008\u0002\u0010\"\u001a\u0016\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u0001\u0018\u00010#2\u0010\u0008\u0002\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00162\u0008\u0008\u0002\u0010%\u001a\u00020\u00142\u0008\u0008\u0002\u0010&\u001a\u00020\'H\u0007\u00a2\u0006\u0002\u0010(\u001a1\u0010)\u001a\u00020\u00012\u0006\u0010*\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020\u00142\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010\u0005H\u0007\u00a2\u0006\u0002\u0010-\u001a\u001d\u0010.\u001a\u00020\u00012\u0006\u0010/\u001a\u00020\u001b2\u0006\u00100\u001a\u00020\u0014H\u0007\u00a2\u0006\u0002\u00101\u001a#\u00102\u001a\u00020\u00012\u0006\u00103\u001a\u00020\u001b2\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0016H\u0007\u00a2\u0006\u0002\u00105\u001a=\u00106\u001a\u00020\u00012\u0006\u00107\u001a\u00020\u001b2\u0006\u00108\u001a\u00020\u001b2\u0006\u00109\u001a\u00020\u001b2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00162\u0008\u0008\u0002\u0010:\u001a\u00020;H\u0007\u00a2\u0006\u0002\u0010<\u001a!\u0010=\u001a\u00020\u00012\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u00020?\u0012\u0004\u0012\u00020\u00010\u0005H\u0007\u00a2\u0006\u0002\u0010@\u001a\u0015\u0010A\u001a\u00020\u00012\u0006\u0010%\u001a\u00020\u0014H\u0007\u00a2\u0006\u0002\u0010B\u00a8\u0006C\u00b2\u0006\n\u0010D\u001a\u00020EX\u008a\u0084\u0002"
    }
    d2 = {
        "AdvancedIsolationSettings",
        "",
        "config",
        "Lcom/pandasu/turbo/data/model/IsolationConfig;",
        "onConfigChange",
        "Lkotlin/Function1;",
        "(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V",
        "AppFilterTabRow",
        "activeTab",
        "Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;",
        "onTabSelected",
        "userCount",
        "",
        "systemCount",
        "(Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lkotlin/jvm/functions/Function1;IILandroidx/compose/runtime/Composer;I)V",
        "AppIsolationCard",
        "AppListItem",
        "appInfo",
        "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
        "isIsolated",
        "",
        "onToggle",
        "Lkotlin/Function0;",
        "onClick",
        "(Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
        "AppSearchBar",
        "query",
        "",
        "onQueryChange",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V",
        "IsolationScreen",
        "packageName",
        "appName",
        "onNavigateBack",
        "onNavigateToAppIsolation",
        "Lkotlin/Function2;",
        "onNavigateToLogs",
        "hasRootPermission",
        "viewModel",
        "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Landroidx/compose/runtime/Composer;II)V",
        "IsolationToggleItem",
        "title",
        "checked",
        "onCheckedChange",
        "(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V",
        "MessageCard",
        "message",
        "isError",
        "(Ljava/lang/String;ZLandroidx/compose/runtime/Composer;I)V",
        "ModuleStatusCard",
        "report",
        "onDismiss",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
        "PresetButton",
        "emoji",
        "label",
        "desc",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V",
        "PresetSelectionCard",
        "onSelectPreset",
        "Lcom/pandasu/turbo/data/model/IsolationLevel;",
        "(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V",
        "RootPermissionStatusCard",
        "(ZLandroidx/compose/runtime/Composer;I)V",
        "app_debug",
        "uiState",
        "Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;"
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
.method public static final AdvancedIsolationSettings(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .registers 14
    .param p0, "config"    # Lcom/pandasu/turbo/data/model/IsolationConfig;
    .param p1, "onConfigChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const-string v0, "onConfigChange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    const v0, 0x69dc7a0a

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    const-string v1, "C(AdvancedIsolationSettings)372@22411L589:IsolationScreen.kt#r3e9si"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, -0x1

    const-string v2, "com.pandasu.turbo.ui.screens.isolation.AdvancedIsolationSettings (IsolationScreen.kt:371)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 373
    :cond_1d
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AdvancedIsolationSettings$1;

    invoke-direct {v6, p0, p1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AdvancedIsolationSettings$1;-><init>(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/jvm/functions/Function1;)V

    const v7, 0x5268a7fc

    invoke-static {p2, v7, v3, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function3;

    const v8, 0x30006

    const/16 v9, 0x1e

    move-object v3, v0

    move-object v7, p2

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4d
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_5d

    new-instance v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AdvancedIsolationSettings$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AdvancedIsolationSettings$2;-><init>(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/jvm/functions/Function1;I)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 382
    :cond_5d
    return-void
.end method

.method public static final AppFilterTabRow(Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lkotlin/jvm/functions/Function1;IILandroidx/compose/runtime/Composer;I)V
    .registers 61
    .param p0, "activeTab"    # Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;
    .param p1, "onTabSelected"    # Lkotlin/jvm/functions/Function1;
    .param p2, "userCount"    # I
    .param p3, "systemCount"    # I
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;",
            "Lkotlin/Unit;",
            ">;II",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p5

    const-string v0, "activeTab"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTabSelected"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    const v0, -0x135b4f45

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(AppFilterTabRow)P(!2,3)237@13570L574:IsolationScreen.kt#r3e9si"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, v10, 0xe

    if-nez v2, :cond_32

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x4

    goto :goto_31

    :cond_30
    const/4 v2, 0x2

    :goto_31
    or-int/2addr v1, v2

    :cond_32
    and-int/lit8 v2, v10, 0x70

    if-nez v2, :cond_42

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/16 v2, 0x20

    goto :goto_41

    :cond_3f
    const/16 v2, 0x10

    :goto_41
    or-int/2addr v1, v2

    :cond_42
    and-int/lit16 v2, v10, 0x380

    if-nez v2, :cond_52

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    const/16 v2, 0x100

    goto :goto_51

    :cond_4f
    const/16 v2, 0x80

    :goto_51
    or-int/2addr v1, v2

    :cond_52
    and-int/lit16 v2, v10, 0x1c00

    if-nez v2, :cond_62

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/16 v2, 0x800

    goto :goto_61

    :cond_5f
    const/16 v2, 0x400

    :goto_61
    or-int/2addr v1, v2

    :cond_62
    move v12, v1

    .end local v1    # "$dirty":I
    .local v12, "$dirty":I
    and-int/lit16 v1, v12, 0x16db

    const/16 v2, 0x492

    if-ne v1, v2, :cond_75

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_70

    goto :goto_75

    .line 244
    :cond_70
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_2e8

    .line 237
    :cond_75
    :goto_75
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_81

    const/4 v1, -0x1

    const-string v2, "com.pandasu.turbo.ui.screens.isolation.AppFilterTabRow (IsolationScreen.kt:236)"

    invoke-static {v0, v12, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 238
    :cond_81
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v1, 0x10

    .local v1, "$this$dp$iv":I
    const/4 v2, 0x0

    .line 442
    .local v2, "$i$f$getDp":I
    int-to-float v4, v1

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 238
    .end local v1    # "$this$dp$iv":I
    .end local v2    # "$i$f$getDp":I
    const/4 v2, 0x4

    .local v2, "$this$dp$iv":I
    const/4 v4, 0x0

    .line 442
    .local v4, "$i$f$getDp":I
    int-to-float v5, v2

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 238
    .end local v2    # "$this$dp$iv":I
    .end local v4    # "$i$f$getDp":I
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v2, 0x8

    .restart local v2    # "$this$dp$iv":I
    const/4 v4, 0x0

    .line 442
    .restart local v4    # "$i$f$getDp":I
    int-to-float v5, v2

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 238
    .end local v2    # "$this$dp$iv":I
    .end local v4    # "$i$f$getDp":I
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .local v1, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/16 v2, 0x36

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v2, "$changed$iv":I
    const/4 v4, 0x0

    .local v4, "$i$f$Row":I
    const v5, 0x2952b718

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(Row)P(2,1,3)76@3779L58,77@3842L130:Row.kt#2w3rfo"

    invoke-static {v11, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 443
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v5

    .line 446
    .local v5, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    shr-int/lit8 v13, v2, 0x3

    and-int/lit8 v13, v13, 0xe

    shr-int/lit8 v14, v2, 0x3

    and-int/lit8 v14, v14, 0x70

    or-int/2addr v13, v14

    invoke-static {v1, v5, v11, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    .local v13, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v14, v2, 0x3

    and-int/lit8 v14, v14, 0x70

    .line 447
    nop

    .local v14, "$changed$iv$iv":I
    const/4 v15, 0x0

    .local v15, "$i$f$Layout":I
    const v3, -0x4ee9b9da

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v11, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 448
    const/4 v3, 0x0

    invoke-static {v11, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v16

    .line 449
    .local v16, "compositeKeyHash$iv$iv":I
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    .line 451
    .local v3, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v17

    .line 458
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v18

    move-object/from16 v19, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v19, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v14, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit8 v0, v0, 0x6

    .line 450
    move-object/from16 v20, v17

    .local v0, "$changed$iv$iv$iv":I
    .local v20, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v17, v18

    .local v17, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v18, 0x0

    .line 459
    .local v18, "$i$f$ReusableComposeNode":I
    move-object/from16 v21, v1

    .end local v1    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v21, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_10f

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 460
    :cond_10f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 461
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_11e

    .line 462
    move-object/from16 v1, v20

    .end local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v1, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_123

    .line 464
    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_11e
    move-object/from16 v1, v20

    .end local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 466
    :goto_123
    move-object/from16 v20, v1

    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 453
    .local v22, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v24, v4

    .end local v4    # "$i$f$Row":I
    .local v24, "$i$f$Row":I
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v1, v13, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 454
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 456
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .local v4, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v23, 0x0

    .line 467
    .local v23, "$i$f$set-impl":I
    move-object/from16 v25, v1

    .local v25, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 468
    .local v26, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v27

    if-nez v27, :cond_167

    move-object/from16 v27, v3

    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v27, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v28, v5

    .end local v5    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v28, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_164

    goto :goto_16b

    :cond_164
    move-object/from16 v5, v25

    goto :goto_17b

    .end local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v28    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .restart local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v5    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    :cond_167
    move-object/from16 v27, v3

    move-object/from16 v28, v5

    .line 469
    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v5    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .restart local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v28    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    :goto_16b
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v5, v25

    .end local v25    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 470
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 472
    :goto_17b
    nop

    .line 467
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 472
    nop

    .line 457
    .end local v4    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v23    # "$i$f$set-impl":I
    nop

    .line 466
    .end local v1    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 473
    invoke-static {v11}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v3, v0, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v17

    .end local v17    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v4, v1, v11, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const v1, 0x7ab4aae9

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 475
    shr-int/lit8 v1, v0, 0x9

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object v3, v11

    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 476
    .local v5, "$i$a$-Layout-RowKt$Row$1$iv":I
    move/from16 v17, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v17, "$changed$iv$iv$iv":I
    const v0, -0x1378c731

    move/from16 v22, v1

    .end local v1    # "$changed$iv":I
    .local v22, "$changed$iv":I
    const-string v1, "C78@3887L9:Row.kt#2w3rfo"

    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v1, v2, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    move-object/from16 v29, v0

    check-cast v29, Landroidx/compose/foundation/layout/RowScope;

    .local v29, "$this$AppFilterTabRow_u24lambda_u243":Landroidx/compose/foundation/layout/RowScope;
    move-object v0, v3

    .local v0, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v23, 0x0

    .line 239
    .local v23, "$i$a$-Row-IsolationScreenKt$AppFilterTabRow$1":I
    move/from16 v25, v1

    .end local v1    # "$changed":I
    .local v25, "$changed":I
    const v1, 0xb205c89

    move/from16 v26, v2

    .end local v2    # "$changed$iv":I
    .local v26, "$changed$iv":I
    const-string v2, "C:IsolationScreen.kt#r3e9si"

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v1, -0x19fcc882

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "*240@13904L224"

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->values()[Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    move-result-object v1

    .local v1, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 477
    .local v2, "$i$f$forEach":I
    move/from16 v46, v2

    .end local v2    # "$i$f$forEach":I
    .local v46, "$i$f$forEach":I
    array-length v2, v1

    move-object/from16 v47, v4

    const/4 v4, 0x0

    .end local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v47, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    :goto_1de
    if-ge v4, v2, :cond_2c1

    aget-object v48, v1, v4

    .local v48, "element$iv":Ljava/lang/Object;
    move-object/from16 v49, v48

    .local v49, "tab":Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;
    const/16 v50, 0x0

    .line 240
    .local v50, "$i$a$-forEach-IsolationScreenKt$AppFilterTabRow$1$1":I
    sget-object v30, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {v49 .. v49}, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->ordinal()I

    move-result v31

    aget v30, v30, v31

    packed-switch v30, :pswitch_data_304

    move-object/from16 v52, v1

    .end local v1    # "$this$forEach$iv":[Ljava/lang/Object;
    .local v52, "$this$forEach$iv":[Ljava/lang/Object;
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .end local v52    # "$this$forEach$iv":[Ljava/lang/Object;
    .restart local v1    # "$this$forEach$iv":[Ljava/lang/Object;
    :pswitch_1f9
    move/from16 v30, v9

    goto :goto_201

    :pswitch_1fc
    move/from16 v30, v8

    goto :goto_201

    :pswitch_1ff
    add-int v30, v8, v9

    :goto_201
    move/from16 v51, v30

    .line 241
    .local v51, "c":I
    move-object/from16 v52, v1

    move-object/from16 v1, v49

    .end local v49    # "tab":Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;
    .local v1, "tab":Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;
    .restart local v52    # "$this$forEach$iv":[Ljava/lang/Object;
    if-ne v1, v6, :cond_20c

    const/16 v35, 0x1

    goto :goto_20e

    :cond_20c
    const/16 v35, 0x0

    :goto_20e
    move/from16 v49, v2

    const/16 v2, 0x14

    .local v2, "$this$dp$iv":I
    const/16 v30, 0x0

    .line 478
    .local v30, "$i$f$getDp":I
    move/from16 v53, v5

    .end local v5    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .local v53, "$i$a$-Layout-RowKt$Row$1$iv":I
    int-to-float v5, v2

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 241
    .end local v2    # "$this$dp$iv":I
    .end local v30    # "$i$f$getDp":I
    invoke-static {v2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v2

    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v30, v5

    check-cast v30, Landroidx/compose/ui/Modifier;

    const/high16 v31, 0x3f800000    # 1.0f

    const/16 v32, 0x0

    const/16 v33, 0x2

    const/16 v34, 0x0

    invoke-static/range {v29 .. v34}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v33

    const v5, -0x25ac01e9

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v30

    or-int v5, v5, v30

    .local v5, "invalid$iv":Z
    move-object/from16 v30, v0

    .local v30, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v31, 0x0

    .line 479
    .local v31, "$i$f$cache":I
    invoke-interface/range {v30 .. v30}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/16 v32, 0x0

    .line 480
    .local v32, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v5, :cond_25e

    sget-object v34, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v36, v5

    .end local v5    # "invalid$iv":Z
    .local v36, "invalid$iv":Z
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_258

    goto :goto_260

    .line 484
    :cond_258
    move-object v5, v6

    move-object/from16 v34, v5

    move-object/from16 v6, v30

    goto :goto_273

    .line 480
    .end local v36    # "invalid$iv":Z
    .restart local v5    # "invalid$iv":Z
    :cond_25e
    move/from16 v36, v5

    .line 481
    .end local v5    # "invalid$iv":Z
    .restart local v36    # "invalid$iv":Z
    :goto_260
    const/4 v5, 0x0

    .line 241
    .local v5, "$i$a$-cache-IsolationScreenKt$AppFilterTabRow$1$1$1":I
    move/from16 v34, v5

    .end local v5    # "$i$a$-cache-IsolationScreenKt$AppFilterTabRow$1$1$1":I
    .local v34, "$i$a$-cache-IsolationScreenKt$AppFilterTabRow$1$1$1":I
    new-instance v5, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppFilterTabRow$1$1$1$1;

    invoke-direct {v5, v7, v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppFilterTabRow$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 481
    .end local v34    # "$i$a$-cache-IsolationScreenKt$AppFilterTabRow$1$1$1":I
    nop

    .line 482
    .local v5, "value$iv":Ljava/lang/Object;
    move-object/from16 v34, v6

    move-object/from16 v6, v30

    .end local v30    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v34, "it$iv":Ljava/lang/Object;
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 483
    nop

    .line 480
    .end local v5    # "value$iv":Ljava/lang/Object;
    :goto_273
    nop

    .line 479
    .end local v32    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v34    # "it$iv":Ljava/lang/Object;
    nop

    .line 241
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v31    # "$i$f$cache":I
    .end local v36    # "invalid$iv":Z
    move-object/from16 v31, v5

    check-cast v31, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    new-instance v5, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppFilterTabRow$1$1$2;

    move/from16 v6, v51

    .end local v51    # "c":I
    .local v6, "c":I
    invoke-direct {v5, v1, v6}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppFilterTabRow$1$1$2;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;I)V

    move-object/from16 v51, v1

    .end local v1    # "tab":Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;
    .local v51, "tab":Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;
    const v1, 0x9161d8f

    move/from16 v54, v6

    const/4 v6, 0x1

    .end local v6    # "c":I
    .local v54, "c":I
    invoke-static {v0, v1, v6, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Lkotlin/jvm/functions/Function2;

    const/16 v34, 0x0

    const/4 v1, 0x0

    const/16 v36, 0x0

    move-object/from16 v37, v2

    check-cast v37, Landroidx/compose/ui/graphics/Shape;

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v43, 0x180

    const/16 v44, 0x0

    const/16 v45, 0xf70

    move/from16 v30, v35

    move-object/from16 v35, v1

    move-object/from16 v42, v0

    invoke-static/range {v30 .. v45}, Landroidx/compose/material3/ChipKt;->FilterChip(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/material3/SelectableChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V

    .line 242
    nop

    .line 477
    .end local v50    # "$i$a$-forEach-IsolationScreenKt$AppFilterTabRow$1$1":I
    .end local v51    # "tab":Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;
    .end local v54    # "c":I
    nop

    .end local v48    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v6, p0

    move/from16 v2, v49

    move-object/from16 v1, v52

    move/from16 v5, v53

    goto/16 :goto_1de

    .line 485
    .end local v52    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v53    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .local v1, "$this$forEach$iv":[Ljava/lang/Object;
    .local v5, "$i$a$-Layout-RowKt$Row$1$iv":I
    :cond_2c1
    move-object/from16 v52, v1

    move/from16 v53, v5

    .end local v1    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v5    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .end local v46    # "$i$f$forEach":I
    .restart local v53    # "$i$a$-Layout-RowKt$Row$1$iv":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 239
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 243
    nop

    .line 476
    .end local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v23    # "$i$a$-Row-IsolationScreenKt$AppFilterTabRow$1":I
    .end local v25    # "$changed":I
    .end local v29    # "$this$AppFilterTabRow_u24lambda_u243":Landroidx/compose/foundation/layout/RowScope;
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 475
    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$changed$iv":I
    .end local v53    # "$i$a$-Layout-RowKt$Row$1$iv":I
    nop

    .line 486
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 487
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 488
    nop

    .end local v17    # "$changed$iv$iv$iv":I
    .end local v18    # "$i$f$ReusableComposeNode":I
    .end local v20    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v47    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 489
    nop

    .end local v14    # "$changed$iv$iv":I
    .end local v15    # "$i$f$Layout":I
    .end local v16    # "compositeKeyHash$iv$iv":I
    .end local v27    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 490
    nop

    .end local v13    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v19    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v21    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v24    # "$i$f$Row":I
    .end local v26    # "$changed$iv":I
    .end local v28    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2e8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 244
    :cond_2e8
    :goto_2e8
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_303

    new-instance v13, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppFilterTabRow$2;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppFilterTabRow$2;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lkotlin/jvm/functions/Function1;III)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_303
    return-void

    :pswitch_data_304
    .packed-switch 0x1
        :pswitch_1ff
        :pswitch_1fc
        :pswitch_1f9
    .end packed-switch
.end method

.method public static final AppIsolationCard(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .registers 14
    .param p0, "config"    # Lcom/pandasu/turbo/data/model/IsolationConfig;
    .param p1, "onConfigChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const-string v0, "onConfigChange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    const v0, 0x599e5a74

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    const-string v1, "C(AppIsolationCard)316@18954L1452:IsolationScreen.kt#r3e9si"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, -0x1

    const-string v2, "com.pandasu.turbo.ui.screens.isolation.AppIsolationCard (IsolationScreen.kt:315)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 317
    :cond_1d
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppIsolationCard$1;

    invoke-direct {v6, p0, p1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppIsolationCard$1;-><init>(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/jvm/functions/Function1;)V

    const v7, 0x49b35442    # 1469064.2f

    invoke-static {p2, v7, v3, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function3;

    const v8, 0x30006

    const/16 v9, 0x1e

    move-object v3, v0

    move-object v7, p2

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4d
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_5d

    new-instance v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppIsolationCard$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppIsolationCard$2;-><init>(Lcom/pandasu/turbo/data/model/IsolationConfig;Lkotlin/jvm/functions/Function1;I)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 337
    :cond_5d
    return-void
.end method

.method public static final AppListItem(Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .registers 28
    .param p0, "appInfo"    # Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    .param p1, "isIsolated"    # Z
    .param p2, "onToggle"    # Lkotlin/jvm/functions/Function0;
    .param p3, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v5, p3

    move/from16 v4, p5

    const-string v0, "appInfo"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onToggle"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    const v0, -0x40a970d

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .end local p4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v3, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(AppListItem)P(!2,3)281@15588L2505:IsolationScreen.kt#r3e9si"

    invoke-static {v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p5

    .local v1, "$dirty":I
    and-int/lit8 v2, v4, 0xe

    if-nez v2, :cond_37

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v2, 0x4

    goto :goto_36

    :cond_35
    const/4 v2, 0x2

    :goto_36
    or-int/2addr v1, v2

    :cond_37
    and-int/lit8 v2, v4, 0x70

    if-nez v2, :cond_47

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_44

    const/16 v2, 0x20

    goto :goto_46

    :cond_44
    const/16 v2, 0x10

    :goto_46
    or-int/2addr v1, v2

    :cond_47
    and-int/lit16 v2, v4, 0x380

    if-nez v2, :cond_57

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    const/16 v2, 0x100

    goto :goto_56

    :cond_54
    const/16 v2, 0x80

    :goto_56
    or-int/2addr v1, v2

    :cond_57
    and-int/lit16 v2, v4, 0x1c00

    if-nez v2, :cond_67

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    const/16 v2, 0x800

    goto :goto_66

    :cond_64
    const/16 v2, 0x400

    :goto_66
    or-int/2addr v1, v2

    :cond_67
    move v2, v1

    .end local v1    # "$dirty":I
    .local v2, "$dirty":I
    and-int/lit16 v1, v2, 0x16db

    const/16 v9, 0x492

    if-ne v1, v9, :cond_7a

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_75

    goto :goto_7a

    .line 301
    :cond_75
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_12d

    .line 281
    :cond_7a
    :goto_7a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_86

    const/4 v1, -0x1

    const-string v9, "com.pandasu.turbo.ui.screens.isolation.AppListItem (IsolationScreen.kt:280)"

    invoke-static {v0, v2, v1, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 282
    :cond_86
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x1

    invoke-static {v0, v1, v15, v9}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v1, 0x10

    .local v1, "$this$dp$iv":I
    const/4 v9, 0x0

    .line 493
    .local v9, "$i$f$getDp":I
    int-to-float v10, v1

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 282
    .end local v1    # "$this$dp$iv":I
    .end local v9    # "$i$f$getDp":I
    const/4 v9, 0x2

    .local v9, "$this$dp$iv":I
    const/4 v10, 0x0

    .line 493
    .local v10, "$i$f$getDp":I
    int-to-float v11, v9

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 282
    .end local v9    # "$this$dp$iv":I
    .end local v10    # "$i$f$getDp":I
    invoke-static {v0, v1, v9}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x7

    const/4 v0, 0x0

    move-object/from16 v13, p3

    move v1, v15

    move-object v15, v0

    invoke-static/range {v9 .. v15}, Landroidx/compose/foundation/ClickableKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const/16 v0, 0x8

    .local v0, "$this$dp$iv":I
    const/4 v10, 0x0

    .line 493
    .restart local v10    # "$i$f$getDp":I
    int-to-float v11, v0

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 282
    .end local v0    # "$this$dp$iv":I
    .end local v10    # "$i$f$getDp":I
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/compose/ui/graphics/Shape;

    .line 283
    if-eqz v7, :cond_e9

    const v0, 0x1c1d0666

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "282@15775L11"

    invoke-static {v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v11, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v3, v11}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getPrimaryContainer-0d7_KjU()J

    move-result-wide v11

    const v13, 0x3e99999a    # 0.3f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/16 v18, 0x0

    invoke-static/range {v11 .. v18}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v11

    goto :goto_100

    :cond_e9
    const v0, 0x1c1d0698

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "282@15842L11"

    invoke-static {v3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v11, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v3, v11}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v11

    :goto_100
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppListItem$1;

    invoke-direct {v0, v7, v8, v6}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppListItem$1;-><init>(ZLkotlin/jvm/functions/Function0;Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;)V

    const v15, 0x38b72b4e

    invoke-static {v3, v15, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lkotlin/jvm/functions/Function2;

    const/high16 v20, 0xc00000

    const/16 v21, 0x78

    .line 282
    const/4 v0, 0x0

    move v15, v0

    move-object/from16 v19, v3

    invoke-static/range {v9 .. v21}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_12d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 301
    :cond_12d
    :goto_12d
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_14b

    new-instance v10, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppListItem$2;

    move-object v0, v10

    move-object/from16 v1, p0

    move v11, v2

    .end local v2    # "$dirty":I
    .local v11, "$dirty":I
    move/from16 v2, p1

    move-object v12, v3

    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppListItem$2;-><init>(Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_14d

    .end local v11    # "$dirty":I
    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$dirty":I
    .restart local v3    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_14b
    move v11, v2

    move-object v12, v3

    .end local v2    # "$dirty":I
    .end local v3    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v11    # "$dirty":I
    .restart local v12    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_14d
    return-void
.end method

.method public static final AppSearchBar(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .registers 114
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "onQueryChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v14, p3

    const-string v2, "query"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onQueryChange"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    const v2, -0x5407b8fe

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(AppSearchBar)P(1)228@13168L11,228@13243L11,228@13124L158,221@12394L967:IsolationScreen.kt#r3e9si"

    invoke-static {v13, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p3

    .local v3, "$dirty":I
    and-int/lit8 v4, v14, 0xe

    if-nez v4, :cond_2e

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v4, 0x4

    goto :goto_2d

    :cond_2c
    const/4 v4, 0x2

    :goto_2d
    or-int/2addr v3, v4

    :cond_2e
    and-int/lit8 v4, v14, 0x70

    if-nez v4, :cond_3e

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    const/16 v4, 0x20

    goto :goto_3d

    :cond_3b
    const/16 v4, 0x10

    :goto_3d
    or-int/2addr v3, v4

    :cond_3e
    move v12, v3

    .end local v3    # "$dirty":I
    .local v12, "$dirty":I
    and-int/lit8 v3, v12, 0x5b

    const/16 v4, 0x12

    if-ne v3, v4, :cond_55

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_4c

    goto :goto_55

    .line 232
    :cond_4c
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v28, v12

    move-object/from16 v29, v13

    goto/16 :goto_19a

    .line 221
    :cond_55
    :goto_55
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_61

    const/4 v3, -0x1

    const-string v4, "com.pandasu.turbo.ui.screens.isolation.AppSearchBar (IsolationScreen.kt:220)"

    invoke-static {v2, v12, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 224
    :cond_61
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-static {v2, v3, v9, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/16 v3, 0x10

    .local v3, "$this$dp$iv":I
    const/4 v4, 0x0

    .line 440
    .local v4, "$i$f$getDp":I
    int-to-float v5, v3

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 224
    .end local v3    # "$this$dp$iv":I
    .end local v4    # "$i$f$getDp":I
    const/4 v4, 0x4

    .local v4, "$this$dp$iv":I
    const/4 v5, 0x0

    .line 440
    .local v5, "$i$f$getDp":I
    int-to-float v6, v4

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 224
    .end local v4    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    invoke-static {v2, v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 228
    const/16 v3, 0xc

    .restart local v3    # "$this$dp$iv":I
    const/4 v4, 0x0

    .line 441
    .local v4, "$i$f$getDp":I
    int-to-float v5, v3

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 228
    .end local v3    # "$this$dp$iv":I
    .end local v4    # "$i$f$getDp":I
    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v109

    .line 229
    sget-object v15, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v4, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v3, v13, v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material3/ColorScheme;->getOutline-0d7_KjU()J

    move-result-wide v16

    const v18, 0x3e99999a    # 0.3f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xe

    const/16 v23, 0x0

    invoke-static/range {v16 .. v23}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v39

    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v4, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v3, v13, v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v16

    const/high16 v18, 0x3f000000    # 0.5f

    invoke-static/range {v16 .. v23}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v37

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

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

    const-wide/16 v61, 0x0

    const-wide/16 v63, 0x0

    const-wide/16 v65, 0x0

    const-wide/16 v67, 0x0

    const-wide/16 v69, 0x0

    const-wide/16 v71, 0x0

    const-wide/16 v73, 0x0

    const-wide/16 v75, 0x0

    const-wide/16 v77, 0x0

    const-wide/16 v79, 0x0

    const-wide/16 v81, 0x0

    const-wide/16 v83, 0x0

    const-wide/16 v85, 0x0

    const-wide/16 v87, 0x0

    const-wide/16 v89, 0x0

    const-wide/16 v91, 0x0

    const-wide/16 v93, 0x0

    const-wide/16 v95, 0x0

    const-wide/16 v97, 0x0

    const-wide/16 v99, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const/16 v106, 0xc00

    const v107, 0x7fffe7ff

    const/16 v108, 0xfff

    move-object/from16 v101, v13

    invoke-virtual/range {v15 .. v108}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->colors-0hiis_0(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIIII)Landroidx/compose/material3/TextFieldColors;

    move-result-object v22

    .line 230
    new-instance v23, Landroidx/compose/foundation/text/KeyboardOptions;

    move-object/from16 v15, v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    sget-object v3, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSearch-eUduSuo()I

    move-result v27

    const/16 v28, 0x7

    const/16 v29, 0x0

    invoke-direct/range {v23 .. v29}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(IZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 223
    nop

    .line 224
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/pandasu/turbo/ui/screens/isolation/ComposableSingletons$IsolationScreenKt;->INSTANCE:Lcom/pandasu/turbo/ui/screens/isolation/ComposableSingletons$IsolationScreenKt;

    invoke-virtual {v7}, Lcom/pandasu/turbo/ui/screens/isolation/ComposableSingletons$IsolationScreenKt;->getLambda-9$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    sget-object v8, Lcom/pandasu/turbo/ui/screens/isolation/ComposableSingletons$IsolationScreenKt;->INSTANCE:Lcom/pandasu/turbo/ui/screens/isolation/ComposableSingletons$IsolationScreenKt;

    invoke-virtual {v8}, Lcom/pandasu/turbo/ui/screens/isolation/ComposableSingletons$IsolationScreenKt;->getLambda-10$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    .line 227
    new-instance v10, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppSearchBar$1;

    invoke-direct {v10, v1, v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppSearchBar$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const v11, -0x1891c287

    invoke-static {v13, v11, v9, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v9

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move/from16 v28, v12

    .end local v12    # "$dirty":I
    .local v28, "$dirty":I
    move-object/from16 v12, v16

    const/16 v16, 0x0

    move-object/from16 v29, v13

    .end local v13    # "$composer":Landroidx/compose/runtime/Composer;
    .local v29, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v13, v16

    const/16 v16, 0x0

    move-object/from16 v14, v16

    .line 230
    nop

    .line 228
    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v109

    check-cast v21, Landroidx/compose/ui/graphics/Shape;

    .line 229
    const v23, 0x36c00180

    and-int/lit8 v24, v28, 0xe

    or-int v23, v24, v23

    and-int/lit8 v24, v28, 0x70

    or-int v24, v23, v24

    const/high16 v25, 0xc30000

    const v27, 0x1d7c78

    .line 222
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v23, v29

    invoke-static/range {v0 .. v27}, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_19a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 232
    :cond_19a
    :goto_19a
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_1b1

    new-instance v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppSearchBar$2;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    invoke-direct {v1, v2, v3, v4}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$AppSearchBar$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1b7

    :cond_1b1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    :goto_1b7
    return-void
.end method

.method public static final IsolationScreen(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Landroidx/compose/runtime/Composer;II)V
    .registers 41
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "onNavigateBack"    # Lkotlin/jvm/functions/Function0;
    .param p3, "onNavigateToAppIsolation"    # Lkotlin/jvm/functions/Function2;
    .param p4, "onNavigateToLogs"    # Lkotlin/jvm/functions/Function0;
    .param p5, "hasRootPermission"    # Z
    .param p6, "viewModel"    # Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v10, p2

    move/from16 v11, p8

    const-string v0, "onNavigateBack"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const v0, 0x37067fc4

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(IsolationScreen)P(5!1,2,3,4)41@1772L15,43@1829L16,44@1850L84,45@1939L130,47@2075L10203:IsolationScreen.kt#r3e9si"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_22

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v3, p0

    goto :goto_35

    :cond_22
    and-int/lit8 v3, v11, 0xe

    if-nez v3, :cond_33

    move-object/from16 v3, p0

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    const/4 v4, 0x4

    goto :goto_31

    :cond_30
    const/4 v4, 0x2

    :goto_31
    or-int/2addr v1, v4

    goto :goto_35

    :cond_33
    move-object/from16 v3, p0

    :goto_35
    and-int/lit8 v4, p9, 0x2

    if-eqz v4, :cond_3e

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v5, p1

    goto :goto_53

    :cond_3e
    and-int/lit8 v5, v11, 0x70

    if-nez v5, :cond_51

    move-object/from16 v5, p1

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    const/16 v6, 0x20

    goto :goto_4f

    :cond_4d
    const/16 v6, 0x10

    :goto_4f
    or-int/2addr v1, v6

    goto :goto_53

    :cond_51
    move-object/from16 v5, p1

    :goto_53
    and-int/lit8 v6, p9, 0x4

    if-eqz v6, :cond_5a

    or-int/lit16 v1, v1, 0x180

    goto :goto_6a

    :cond_5a
    and-int/lit16 v6, v11, 0x380

    if-nez v6, :cond_6a

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    const/16 v6, 0x100

    goto :goto_69

    :cond_67
    const/16 v6, 0x80

    :goto_69
    or-int/2addr v1, v6

    :cond_6a
    :goto_6a
    and-int/lit8 v6, p9, 0x8

    if-eqz v6, :cond_73

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v7, p3

    goto :goto_88

    :cond_73
    and-int/lit16 v7, v11, 0x1c00

    if-nez v7, :cond_86

    move-object/from16 v7, p3

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_82

    const/16 v8, 0x800

    goto :goto_84

    :cond_82
    const/16 v8, 0x400

    :goto_84
    or-int/2addr v1, v8

    goto :goto_88

    :cond_86
    move-object/from16 v7, p3

    :goto_88
    and-int/lit8 v8, p9, 0x10

    if-eqz v8, :cond_91

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v12, p4

    goto :goto_a8

    :cond_91
    const v12, 0xe000

    and-int/2addr v12, v11

    if-nez v12, :cond_a6

    move-object/from16 v12, p4

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a2

    const/16 v13, 0x4000

    goto :goto_a4

    :cond_a2
    const/16 v13, 0x2000

    :goto_a4
    or-int/2addr v1, v13

    goto :goto_a8

    :cond_a6
    move-object/from16 v12, p4

    :goto_a8
    and-int/lit8 v13, p9, 0x20

    if-eqz v13, :cond_b2

    const/high16 v14, 0x30000

    or-int/2addr v1, v14

    move/from16 v14, p5

    goto :goto_c8

    :cond_b2
    const/high16 v14, 0x70000

    and-int/2addr v14, v11

    if-nez v14, :cond_c6

    move/from16 v14, p5

    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v15

    if-eqz v15, :cond_c2

    const/high16 v15, 0x20000

    goto :goto_c4

    :cond_c2
    const/high16 v15, 0x10000

    :goto_c4
    or-int/2addr v1, v15

    goto :goto_c8

    :cond_c6
    move/from16 v14, p5

    :goto_c8
    and-int/lit8 v15, p9, 0x40

    if-eqz v15, :cond_d0

    const/high16 v16, 0x80000

    or-int v1, v1, v16

    :cond_d0
    move/from16 v16, v1

    .end local v1    # "$dirty":I
    .local v16, "$dirty":I
    const/16 v1, 0x40

    if-ne v15, v1, :cond_f4

    const v17, 0x2db6db

    and-int v1, v16, v17

    const v0, 0x92492

    if-ne v1, v0, :cond_f4

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_e7

    goto :goto_f4

    .line 217
    :cond_e7
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v15, p6

    move-object v13, v5

    move-object/from16 v28, v7

    move-object/from16 v29, v12

    move-object v12, v3

    goto/16 :goto_28c

    .line 43
    :cond_f4
    :goto_f4
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    const v18, -0x380001

    const/16 v1, 0x8

    if-eqz v0, :cond_12b

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_107

    goto :goto_12b

    .line 433
    :cond_107
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    if-eqz v15, :cond_11c

    and-int v0, v16, v18

    move v8, v0

    move-object v15, v3

    move-object/from16 v28, v7

    move-object/from16 v29, v12

    move v13, v14

    const/16 v26, 0x40

    move-object/from16 v12, p6

    move-object v14, v5

    .end local v16    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_1de

    .end local v0    # "$dirty":I
    .restart local v16    # "$dirty":I
    :cond_11c
    move-object v15, v3

    move-object/from16 v28, v7

    move-object/from16 v29, v12

    move v13, v14

    move/from16 v8, v16

    const/16 v26, 0x40

    move-object/from16 v12, p6

    move-object v14, v5

    goto/16 :goto_1de

    .line 43
    :cond_12b
    :goto_12b
    if-eqz v2, :cond_12f

    .line 36
    const/4 v0, 0x0

    .end local p0    # "packageName":Ljava/lang/String;
    .local v0, "packageName":Ljava/lang/String;
    goto :goto_130

    .line 43
    .end local v0    # "packageName":Ljava/lang/String;
    .restart local p0    # "packageName":Ljava/lang/String;
    :cond_12f
    move-object v0, v3

    .line 36
    .end local p0    # "packageName":Ljava/lang/String;
    .restart local v0    # "packageName":Ljava/lang/String;
    :goto_130
    if-eqz v4, :cond_136

    .line 37
    const/4 v2, 0x0

    move-object/from16 v19, v2

    .end local p1    # "appName":Ljava/lang/String;
    .local v2, "appName":Ljava/lang/String;
    goto :goto_138

    .line 36
    .end local v2    # "appName":Ljava/lang/String;
    .restart local p1    # "appName":Ljava/lang/String;
    :cond_136
    move-object/from16 v19, v5

    .line 37
    .end local p1    # "appName":Ljava/lang/String;
    .local v19, "appName":Ljava/lang/String;
    :goto_138
    if-eqz v6, :cond_13e

    .line 39
    const/4 v2, 0x0

    move-object/from16 v20, v2

    .end local p3    # "onNavigateToAppIsolation":Lkotlin/jvm/functions/Function2;
    .local v2, "onNavigateToAppIsolation":Lkotlin/jvm/functions/Function2;
    goto :goto_140

    .line 37
    .end local v2    # "onNavigateToAppIsolation":Lkotlin/jvm/functions/Function2;
    .restart local p3    # "onNavigateToAppIsolation":Lkotlin/jvm/functions/Function2;
    :cond_13e
    move-object/from16 v20, v7

    .line 39
    .end local p3    # "onNavigateToAppIsolation":Lkotlin/jvm/functions/Function2;
    .local v20, "onNavigateToAppIsolation":Lkotlin/jvm/functions/Function2;
    :goto_140
    if-eqz v8, :cond_144

    .line 40
    const/4 v2, 0x0

    move-object v12, v2

    .end local p4    # "onNavigateToLogs":Lkotlin/jvm/functions/Function0;
    .local v12, "onNavigateToLogs":Lkotlin/jvm/functions/Function0;
    :cond_144
    if-eqz v13, :cond_148

    .line 41
    const/4 v2, 0x1

    move v14, v2

    .end local p5    # "hasRootPermission":Z
    .local v14, "hasRootPermission":Z
    :cond_148
    if-eqz v15, :cond_1d0

    .line 42
    const/4 v13, 0x0

    .local v13, "$changed$iv":I
    const/4 v15, 0x0

    .local v15, "$i$f$hiltViewModel":I
    const v2, 0x70b323c8

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(hiltViewModel)P(1)*42@1793L7,47@1936L47,48@1995L54:HiltViewModel.kt#9mcars"

    invoke-static {v9, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 427
    sget-object v2, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    sget v3, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->$stable:I

    invoke-virtual {v2, v9, v3}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v2

    if-eqz v2, :cond_1c2

    move-object v8, v2

    .line 430
    .local v8, "viewModelStoreOwner$iv":Landroidx/lifecycle/ViewModelStoreOwner;
    const/16 v21, 0x0

    .line 432
    .local v21, "key$iv":Ljava/lang/String;
    invoke-static {v8, v9, v1}, Landroidx/hilt/navigation/compose/HiltViewModelKt;->createHiltViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v22

    .local v22, "factory$iv":Landroidx/lifecycle/ViewModelProvider$Factory;
    and-int/lit8 v2, v13, 0x70

    or-int/lit16 v2, v2, 0x208

    .line 433
    move/from16 v23, v2

    .local v23, "$changed$iv$iv":I
    const/16 v24, 0x0

    .local v24, "$i$f$viewModel":I
    const v2, 0x671a9c9b

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(viewModel)P(3,2,1)*80@3834L7,90@4209L68:ViewModel.kt#3tja67"

    invoke-static {v9, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 434
    instance-of v2, v8, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v2, :cond_188

    .line 435
    move-object v2, v8

    check-cast v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v2

    move-object v5, v2

    goto :goto_18d

    .line 437
    :cond_188
    sget-object v2, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    check-cast v2, Landroidx/lifecycle/viewmodel/CreationExtras;

    move-object v5, v2

    :goto_18d
    nop

    .local v5, "extras$iv$iv":Landroidx/lifecycle/viewmodel/CreationExtras;
    const-class v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    .line 439
    shl-int/lit8 v3, v23, 0x3

    and-int/lit16 v3, v3, 0x380

    const v4, 0x9048

    or-int v7, v3, v4

    const/16 v25, 0x0

    move v6, v1

    const/16 v26, 0x40

    move-object v1, v2

    move-object v2, v8

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object v6, v9

    move-object/from16 v28, v8

    .end local v8    # "viewModelStoreOwner$iv":Landroidx/lifecycle/ViewModelStoreOwner;
    .local v28, "viewModelStoreOwner$iv":Landroidx/lifecycle/ViewModelStoreOwner;
    move/from16 v8, v25

    invoke-static/range {v1 .. v8}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Ljava/lang/Class;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 433
    .end local v5    # "extras$iv$iv":Landroidx/lifecycle/viewmodel/CreationExtras;
    .end local v23    # "$changed$iv$iv":I
    .end local v24    # "$i$f$viewModel":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v13    # "$changed$iv":I
    .end local v15    # "$i$f$hiltViewModel":I
    .end local v21    # "key$iv":Ljava/lang/String;
    .end local v22    # "factory$iv":Landroidx/lifecycle/ViewModelProvider$Factory;
    .end local v28    # "viewModelStoreOwner$iv":Landroidx/lifecycle/ViewModelStoreOwner;
    check-cast v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    .end local p6    # "viewModel":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;
    .local v1, "viewModel":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;
    and-int v2, v16, v18

    move-object v15, v0

    move v8, v2

    move-object/from16 v29, v12

    move v13, v14

    move-object/from16 v14, v19

    move-object/from16 v28, v20

    move-object v12, v1

    .end local v16    # "$dirty":I
    .local v2, "$dirty":I
    goto :goto_1de

    .line 427
    .end local v1    # "viewModel":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;
    .end local v2    # "$dirty":I
    .restart local v13    # "$changed$iv":I
    .restart local v15    # "$i$f$hiltViewModel":I
    .restart local v16    # "$dirty":I
    .restart local p6    # "viewModel":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;
    :cond_1c2
    const/4 v1, 0x0

    .line 428
    .local v1, "$i$a$-checkNotNull-HiltViewModelKt$hiltViewModel$1$iv":I
    nop

    .line 427
    .end local v1    # "$i$a$-checkNotNull-HiltViewModelKt$hiltViewModel$1$iv":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    .end local v13    # "$changed$iv":I
    .end local v15    # "$i$f$hiltViewModel":I
    :cond_1d0
    const/16 v26, 0x40

    move-object v15, v0

    move-object/from16 v29, v12

    move v13, v14

    move/from16 v8, v16

    move-object/from16 v14, v19

    move-object/from16 v28, v20

    move-object/from16 v12, p6

    .line 433
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v16    # "$dirty":I
    .end local v19    # "appName":Ljava/lang/String;
    .end local v20    # "onNavigateToAppIsolation":Lkotlin/jvm/functions/Function2;
    .end local p6    # "viewModel":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;
    .local v8, "$dirty":I
    .local v12, "viewModel":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;
    .local v13, "hasRootPermission":Z
    .local v14, "appName":Ljava/lang/String;
    .local v15, "packageName":Ljava/lang/String;
    .local v28, "onNavigateToAppIsolation":Lkotlin/jvm/functions/Function2;
    .local v29, "onNavigateToLogs":Lkotlin/jvm/functions/Function0;
    :goto_1de
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1f0

    .line 43
    const/4 v0, -0x1

    const-string v1, "com.pandasu.turbo.ui.screens.isolation.IsolationScreen (IsolationScreen.kt:42)"

    const v2, 0x37067fc4

    invoke-static {v2, v8, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 44
    :cond_1f0
    invoke-virtual {v12}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->getUiState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/16 v2, 0x8

    invoke-static {v0, v1, v9, v2, v7}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v27

    .line 45
    .local v27, "uiState$delegate":Landroidx/compose/runtime/State;
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$1;

    invoke-direct {v2, v12, v13, v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;ZLkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v3, v8, 0xf

    and-int/lit8 v3, v3, 0xe

    or-int/lit8 v3, v3, 0x40

    invoke-static {v0, v2, v9, v3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 46
    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;

    invoke-direct {v0, v15, v14, v12, v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    and-int/lit8 v1, v8, 0xe

    or-int/lit16 v1, v1, 0x200

    and-int/lit8 v2, v8, 0x70

    or-int/2addr v1, v2

    invoke-static {v15, v14, v0, v9, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/16 v16, 0x0

    .line 49
    new-instance v6, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$3;

    move-object v0, v6

    move-object v1, v15

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v4, v29

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)V

    const v0, 0x7dc8d380

    invoke-static {v9, v0, v7, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    .line 68
    new-instance v6, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;

    move-object v3, v6

    move-object v4, v15

    move-object/from16 v5, v27

    move-object v2, v6

    move-object v6, v12

    move v1, v7

    move-object v7, v14

    move/from16 v30, v8

    .end local v8    # "$dirty":I
    .local v30, "$dirty":I
    move-object/from16 v8, v28

    invoke-direct/range {v3 .. v8}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;-><init>(Ljava/lang/String;Landroidx/compose/runtime/State;Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    const v3, -0x493dc5eb

    invoke-static {v9, v3, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const v25, 0x30000030

    const/16 v26, 0x1fd

    .line 48
    move-object v2, v12

    .end local v12    # "viewModel":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;
    .local v2, "viewModel":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;
    move-object/from16 v12, v16

    move v3, v13

    .end local v13    # "hasRootPermission":Z
    .local v3, "hasRootPermission":Z
    move-object v13, v0

    move-object v5, v14

    const/4 v0, 0x0

    .end local v14    # "appName":Ljava/lang/String;
    .local v5, "appName":Ljava/lang/String;
    move-object v14, v0

    const/4 v0, 0x0

    .end local v15    # "packageName":Ljava/lang/String;
    .local v4, "packageName":Ljava/lang/String;
    move-object v15, v0

    move-object/from16 v16, v17

    move/from16 v17, v18

    move-wide/from16 v18, v19

    move-wide/from16 v20, v21

    move-object/from16 v22, v23

    move-object/from16 v23, v1

    move-object/from16 v24, v9

    invoke-static/range {v12 .. v26}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_286

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 217
    .end local v27    # "uiState$delegate":Landroidx/compose/runtime/State;
    :cond_286
    move-object v15, v2

    move v14, v3

    move-object v12, v4

    move-object v13, v5

    move/from16 v16, v30

    .end local v2    # "viewModel":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;
    .end local v3    # "hasRootPermission":Z
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "appName":Ljava/lang/String;
    .end local v30    # "$dirty":I
    .local v12, "packageName":Ljava/lang/String;
    .local v13, "appName":Ljava/lang/String;
    .local v14, "hasRootPermission":Z
    .local v15, "viewModel":Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;
    .restart local v16    # "$dirty":I
    :goto_28c
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_2b2

    new-instance v17, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;

    move-object/from16 v0, v17

    move-object v1, v12

    move-object v2, v13

    move-object/from16 v3, p2

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    move v6, v14

    move-object v7, v15

    move-object v10, v8

    move/from16 v8, p8

    move-object/from16 v18, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v18, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$5;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;II)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_2b4

    .end local v18    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2b2
    move-object/from16 v18, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v18    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_2b4
    return-void
.end method

.method private static final IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .registers 5
    .param p0, "$uiState$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;",
            ">;)",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;"
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 534
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    .line 44
    return-object v0
.end method

.method public static final IsolationToggleItem(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .registers 53
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "checked"    # Z
    .param p2, "onCheckedChange"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v15, p1

    move-object/from16 v13, p2

    move/from16 v14, p4

    const-string v1, "title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onCheckedChange"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    const v1, -0x36693b71

    move-object/from16 v2, p3

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(IsolationToggleItem)P(2)340@20521L293:IsolationScreen.kt#r3e9si"

    invoke-static {v12, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p4

    .local v2, "$dirty":I
    and-int/lit8 v3, v14, 0xe

    if-nez v3, :cond_30

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v3, 0x4

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x2

    :goto_2f
    or-int/2addr v2, v3

    :cond_30
    and-int/lit8 v3, v14, 0x70

    if-nez v3, :cond_40

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_3d

    const/16 v3, 0x20

    goto :goto_3f

    :cond_3d
    const/16 v3, 0x10

    :goto_3f
    or-int/2addr v2, v3

    :cond_40
    and-int/lit16 v3, v14, 0x380

    if-nez v3, :cond_50

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    const/16 v3, 0x100

    goto :goto_4f

    :cond_4d
    const/16 v3, 0x80

    :goto_4f
    or-int/2addr v2, v3

    :cond_50
    move v11, v2

    .end local v2    # "$dirty":I
    .local v11, "$dirty":I
    and-int/lit16 v2, v11, 0x2db

    const/16 v3, 0x92

    if-ne v2, v3, :cond_67

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_5e

    goto :goto_67

    .line 345
    :cond_5e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v44, v11

    move-object/from16 v45, v12

    goto/16 :goto_22a

    .line 340
    :cond_67
    :goto_67
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_73

    const/4 v2, -0x1

    const-string v3, "com.pandasu.turbo.ui.screens.isolation.IsolationToggleItem (IsolationScreen.kt:339)"

    invoke-static {v1, v11, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 341
    :cond_73
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v5, 0x4

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 495
    .local v6, "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 341
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v1, v2, v5, v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v25

    .local v25, "modifier$iv":Landroidx/compose/ui/Modifier;
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .local v9, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v10

    .local v10, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    const/16 v1, 0x1b6

    .local v1, "$changed$iv":I
    move/from16 v26, v1

    .end local v1    # "$changed$iv":I
    .local v26, "$changed$iv":I
    const/16 v27, 0x0

    .local v27, "$i$f$Row":I
    const v1, 0x2952b718

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(Row)P(2,1,3)76@3779L58,77@3842L130:Row.kt#2w3rfo"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 496
    shr-int/lit8 v1, v26, 0x3

    and-int/lit8 v1, v1, 0xe

    shr-int/lit8 v2, v26, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    invoke-static {v9, v10, v12, v1}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    .local v8, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v1, v26, 0x3

    and-int/lit8 v1, v1, 0x70

    .line 497
    move/from16 v28, v1

    .local v28, "$changed$iv$iv":I
    const/16 v29, 0x0

    .local v29, "$i$f$Layout":I
    const v1, -0x4ee9b9da

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 498
    const/4 v1, 0x0

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v30

    .line 499
    .local v30, "compositeKeyHash$iv$iv":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v7

    .line 501
    .local v7, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    .line 508
    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v2

    shl-int/lit8 v3, v28, 0x9

    and-int/lit16 v3, v3, 0x1c00

    or-int/lit8 v3, v3, 0x6

    .line 500
    move-object v6, v1

    .local v6, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object v4, v2

    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move/from16 v31, v3

    .local v31, "$changed$iv$iv$iv":I
    const/16 v32, 0x0

    .line 509
    .local v32, "$i$f$ReusableComposeNode":I
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_f3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 510
    :cond_f3
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 511
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_100

    .line 512
    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_103

    .line 514
    :cond_100
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 516
    :goto_103
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 503
    .local v2, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v1, v8, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 504
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v1, v7, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 506
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .local v3, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/4 v5, 0x0

    .line 517
    .local v5, "$i$f$set-impl":I
    move-object/from16 p3, v1

    .local p3, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 518
    .local v16, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v17

    if-nez v17, :cond_13f

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move/from16 v17, v2

    .end local v2    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    .local v17, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13c

    goto :goto_141

    :cond_13c
    move-object/from16 v2, p3

    goto :goto_151

    .end local v17    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    .restart local v2    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    :cond_13f
    move/from16 v17, v2

    .line 519
    .end local v2    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    .restart local v17    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    :goto_141
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p3

    .end local p3    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v2, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 520
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 522
    :goto_151
    nop

    .line 517
    .end local v2    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 522
    nop

    .line 507
    .end local v3    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v5    # "$i$f$set-impl":I
    nop

    .line 516
    .end local v1    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 523
    invoke-static {v12}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v1, v31, 0x3

    and-int/lit8 v1, v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v0, v12, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const v0, 0x7ab4aae9

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 525
    shr-int/lit8 v0, v31, 0x9

    and-int/lit8 v33, v0, 0xe

    .local v33, "$changed$iv":I
    move-object v0, v12

    .local v0, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v34, 0x0

    .line 526
    .local v34, "$i$a$-Layout-RowKt$Row$1$iv":I
    const v1, -0x1378c731

    const-string v2, "C78@3887L9:Row.kt#2w3rfo"

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v2, v26, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v35, v2, 0x6

    .local v35, "$changed":I
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .local v1, "$this$IsolationToggleItem_u24lambda_u244":Landroidx/compose/foundation/layout/RowScope;
    move-object v5, v0

    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v21, v5

    move-object/from16 v36, v1

    .end local v1    # "$this$IsolationToggleItem_u24lambda_u244":Landroidx/compose/foundation/layout/RowScope;
    .local v36, "$this$IsolationToggleItem_u24lambda_u244":Landroidx/compose/foundation/layout/RowScope;
    const/16 v37, 0x0

    .line 342
    .local v37, "$i$a$-Row-IsolationScreenKt$IsolationToggleItem$1":I
    const v1, 0x15f41593

    const-string v2, "C341@20717L10,341@20683L56,342@20748L60:IsolationScreen.kt#r3e9si"

    invoke-static {v5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v38, v4

    move-object v1, v5

    .end local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    .local v38, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-wide/from16 v4, v16

    const/16 v16, 0x0

    move-object/from16 v39, v6

    .end local v6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v39, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v6, v16

    move-object/from16 v40, v7

    .end local v7    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v40, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    move-object/from16 v7, v16

    move-object/from16 v41, v8

    .end local v8    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v41, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    move-object/from16 v8, v16

    const-wide/16 v16, 0x0

    move-object/from16 v42, v9

    move-object/from16 v43, v10

    .end local v9    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v10    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v42, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v43, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    move-wide/from16 v9, v16

    const/16 v16, 0x0

    move/from16 v44, v11

    .end local v11    # "$dirty":I
    .local v44, "$dirty":I
    move-object/from16 v11, v16

    move-object/from16 v45, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v45, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v12, v16

    const-wide/16 v16, 0x0

    move-wide/from16 v13, v16

    const/16 v16, 0x0

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v2, v1, v3}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/Typography;->getBodyMedium()Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    and-int/lit8 v22, v44, 0xe

    const/16 v23, 0x0

    const v24, 0xfffe

    move-object/from16 v2, p0

    move-object/from16 v47, v0

    .end local v0    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .local v47, "$composer$iv":Landroidx/compose/runtime/Composer;
    move-object/from16 v0, p0

    move-object/from16 v46, v1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .end local v1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v46, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 343
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    shr-int/lit8 v0, v44, 0x3

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v1, v44, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int v8, v0, v1

    const/16 v9, 0x7c

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v7, v46

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 342
    invoke-static/range {v46 .. v46}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 344
    nop

    .line 526
    .end local v35    # "$changed":I
    .end local v36    # "$this$IsolationToggleItem_u24lambda_u244":Landroidx/compose/foundation/layout/RowScope;
    .end local v37    # "$i$a$-Row-IsolationScreenKt$IsolationToggleItem$1":I
    .end local v46    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v47 .. v47}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 525
    .end local v33    # "$changed$iv":I
    .end local v34    # "$i$a$-Layout-RowKt$Row$1$iv":I
    .end local v47    # "$composer$iv":Landroidx/compose/runtime/Composer;
    nop

    .line 527
    invoke-interface/range {v45 .. v45}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 528
    invoke-interface/range {v45 .. v45}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 529
    nop

    .end local v31    # "$changed$iv$iv$iv":I
    .end local v32    # "$i$f$ReusableComposeNode":I
    .end local v38    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v39    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {v45 .. v45}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 530
    nop

    .end local v28    # "$changed$iv$iv":I
    .end local v29    # "$i$f$Layout":I
    .end local v30    # "compositeKeyHash$iv$iv":I
    .end local v40    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v45 .. v45}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 531
    nop

    .end local v25    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v26    # "$changed$iv":I
    .end local v27    # "$i$f$Row":I
    .end local v41    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v42    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v43    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_22a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 345
    :cond_22a
    :goto_22a
    invoke-interface/range {v45 .. v45}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_243

    new-instance v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationToggleItem$2;

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationToggleItem$2;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;I)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_24b

    :cond_243
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p4

    :goto_24b
    return-void
.end method

.method public static final MessageCard(Ljava/lang/String;ZLandroidx/compose/runtime/Composer;I)V
    .registers 24
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "isError"    # Z
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "message"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    const v3, -0x44374380

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v4, "C(MessageCard)P(1)306@18301L131,305@18196L646:IsolationScreen.kt#r3e9si"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v4, p3

    .local v4, "$dirty":I
    and-int/lit8 v5, v2, 0xe

    if-nez v5, :cond_29

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v5, 0x4

    goto :goto_28

    :cond_27
    const/4 v5, 0x2

    :goto_28
    or-int/2addr v4, v5

    :cond_29
    and-int/lit8 v5, v2, 0x70

    if-nez v5, :cond_39

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_36

    const/16 v5, 0x20

    goto :goto_38

    :cond_36
    const/16 v5, 0x10

    :goto_38
    or-int/2addr v4, v5

    :cond_39
    move v14, v4

    .end local v4    # "$dirty":I
    .local v14, "$dirty":I
    and-int/lit8 v4, v14, 0x5b

    const/16 v5, 0x12

    if-ne v4, v5, :cond_4f

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_47

    goto :goto_4f

    .line 313
    :cond_47
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v19, v14

    move-object v2, v15

    goto/16 :goto_f0

    .line 305
    :cond_4f
    :goto_4f
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_5b

    const/4 v4, -0x1

    const-string v5, "com.pandasu.turbo.ui.screens.isolation.MessageCard (IsolationScreen.kt:304)"

    invoke-static {v3, v14, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 306
    :cond_5b
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x1

    invoke-static {v3, v4, v13, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/16 v4, 0x10

    .local v4, "$this$dp$iv":I
    const/4 v5, 0x0

    .line 494
    .local v5, "$i$f$getDp":I
    int-to-float v6, v4

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 306
    .end local v4    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    const/4 v5, 0x4

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 494
    .local v6, "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 306
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v3, v4, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/16 v16, 0x0

    .line 307
    sget-object v4, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    if-eqz v1, :cond_97

    const v5, -0x4de3809b

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "306@18356L11"

    invoke-static {v15, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v6, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v5, v15, v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material3/ColorScheme;->getErrorContainer-0d7_KjU()J

    move-result-wide v5

    goto :goto_ae

    :cond_97
    const v5, -0x4de3806d

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "306@18402L11"

    invoke-static {v15, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v6, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v5, v15, v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material3/ColorScheme;->getTertiaryContainer-0d7_KjU()J

    move-result-wide v5

    :goto_ae
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    sget v17, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v17, v17, 0xc

    const/16 v18, 0xe

    move-object v13, v15

    move/from16 v19, v14

    .end local v14    # "$dirty":I
    .local v19, "$dirty":I
    move/from16 v14, v17

    move-object v2, v15

    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v15, v18

    invoke-virtual/range {v4 .. v15}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$MessageCard$1;

    invoke-direct {v4, v1, v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$MessageCard$1;-><init>(ZLjava/lang/String;)V

    const v5, 0x7877124e

    const/4 v9, 0x1

    invoke-static {v2, v5, v9, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lkotlin/jvm/functions/Function3;

    const v11, 0x30006

    const/16 v12, 0x1a

    .line 306
    move-object v4, v3

    move-object/from16 v5, v16

    move-object v10, v2

    invoke-static/range {v4 .. v12}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_f0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 313
    :cond_f0
    :goto_f0
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_104

    new-instance v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$MessageCard$2;

    move-object v5, v2

    move/from16 v2, p3

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    invoke-direct {v4, v0, v1, v2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$MessageCard$2;-><init>(Ljava/lang/String;ZI)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_107

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_104
    move-object v5, v2

    move/from16 v2, p3

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_107
    return-void
.end method

.method public static final ModuleStatusCard(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .registers 23
    .param p0, "report"    # Ljava/lang/String;
    .param p1, "onDismiss"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "report"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "onDismiss"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    const v3, 0x4bfc99fd    # 3.3108986E7f

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v4, "C(ModuleStatusCard)P(1)391@23291L11,391@23249L69,389@23124L1686:IsolationScreen.kt#r3e9si"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v4, p3

    .local v4, "$dirty":I
    and-int/lit8 v5, v2, 0xe

    if-nez v5, :cond_2e

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v5, 0x4

    goto :goto_2d

    :cond_2c
    const/4 v5, 0x2

    :goto_2d
    or-int/2addr v4, v5

    :cond_2e
    and-int/lit8 v5, v2, 0x70

    if-nez v5, :cond_3e

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const/16 v5, 0x20

    goto :goto_3d

    :cond_3b
    const/16 v5, 0x10

    :goto_3d
    or-int/2addr v4, v5

    :cond_3e
    move v14, v4

    .end local v4    # "$dirty":I
    .local v14, "$dirty":I
    and-int/lit8 v4, v14, 0x5b

    const/16 v5, 0x12

    if-ne v4, v5, :cond_54

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_4c

    goto :goto_54

    .line 425
    :cond_4c
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v18, v14

    move-object v2, v15

    goto/16 :goto_da

    .line 389
    :cond_54
    :goto_54
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_60

    const/4 v4, -0x1

    const-string v5, "com.pandasu.turbo.ui.screens.isolation.ModuleStatusCard (IsolationScreen.kt:388)"

    invoke-static {v3, v14, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 391
    :cond_60
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x1

    invoke-static {v3, v4, v13, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/16 v4, 0x10

    .local v4, "$this$dp$iv":I
    const/4 v5, 0x0

    .line 532
    .local v5, "$i$f$getDp":I
    int-to-float v6, v4

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 391
    .end local v4    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    const/16 v5, 0x8

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 532
    .local v6, "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 391
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    invoke-static {v3, v4, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 392
    sget-object v4, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    sget-object v5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v6, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v5, v15, v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material3/ColorScheme;->getSurfaceVariant-0d7_KjU()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    sget v16, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v16, v16, 0xc

    const/16 v17, 0xe

    move-object v13, v15

    move/from16 v18, v14

    .end local v14    # "$dirty":I
    .local v18, "$dirty":I
    move/from16 v14, v16

    move-object v2, v15

    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v15, v17

    invoke-virtual/range {v4 .. v15}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v6

    .line 393
    const/16 v4, 0x10

    .restart local v4    # "$this$dp$iv":I
    const/4 v5, 0x0

    .line 533
    .local v5, "$i$f$getDp":I
    int-to-float v7, v4

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 393
    .end local v4    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    invoke-static {v4}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v4

    .line 391
    nop

    .line 393
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/graphics/Shape;

    .line 392
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 394
    new-instance v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$ModuleStatusCard$1;

    invoke-direct {v4, v1, v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$ModuleStatusCard$1;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    const v9, -0x15593f91

    const/4 v10, 0x1

    invoke-static {v2, v9, v10, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lkotlin/jvm/functions/Function3;

    const v11, 0x30006

    const/16 v12, 0x18

    .line 390
    move-object v4, v3

    move-object v10, v2

    invoke-static/range {v4 .. v12}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_da

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 425
    :cond_da
    :goto_da
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_ee

    new-instance v4, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$ModuleStatusCard$2;

    move-object v5, v2

    move/from16 v2, p3

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    invoke-direct {v4, v0, v1, v2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$ModuleStatusCard$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_f1

    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v2    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_ee
    move-object v5, v2

    move/from16 v2, p3

    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v5    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_f1
    return-void
.end method

.method public static final PresetButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .registers 35
    .param p0, "emoji"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p4, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p6

    const-string v0, "emoji"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    const v0, 0x5fb49451

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(PresetButton)P(1,2!1,4)362@21838L11,362@21796L73,362@21719L571:IsolationScreen.kt#r3e9si"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p6

    .local v1, "$dirty":I
    and-int/lit8 v2, p7, 0x1

    if-eqz v2, :cond_35

    or-int/lit8 v1, v1, 0x6

    goto :goto_43

    :cond_35
    and-int/lit8 v2, v12, 0xe

    if-nez v2, :cond_43

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 v2, 0x4

    goto :goto_42

    :cond_41
    const/4 v2, 0x2

    :goto_42
    or-int/2addr v1, v2

    :cond_43
    :goto_43
    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_4a

    or-int/lit8 v1, v1, 0x30

    goto :goto_5a

    :cond_4a
    and-int/lit8 v2, v12, 0x70

    if-nez v2, :cond_5a

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    const/16 v2, 0x20

    goto :goto_59

    :cond_57
    const/16 v2, 0x10

    :goto_59
    or-int/2addr v1, v2

    :cond_5a
    :goto_5a
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_61

    or-int/lit16 v1, v1, 0x180

    goto :goto_71

    :cond_61
    and-int/lit16 v2, v12, 0x380

    if-nez v2, :cond_71

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    const/16 v2, 0x100

    goto :goto_70

    :cond_6e
    const/16 v2, 0x80

    :goto_70
    or-int/2addr v1, v2

    :cond_71
    :goto_71
    and-int/lit8 v2, p7, 0x8

    if-eqz v2, :cond_78

    or-int/lit16 v1, v1, 0xc00

    goto :goto_88

    :cond_78
    and-int/lit16 v2, v12, 0x1c00

    if-nez v2, :cond_88

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    const/16 v2, 0x800

    goto :goto_87

    :cond_85
    const/16 v2, 0x400

    :goto_87
    or-int/2addr v1, v2

    :cond_88
    :goto_88
    and-int/lit8 v2, p7, 0x10

    if-eqz v2, :cond_91

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v3, p4

    goto :goto_a8

    :cond_91
    const v3, 0xe000

    and-int/2addr v3, v12

    if-nez v3, :cond_a6

    move-object/from16 v3, p4

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    const/16 v4, 0x4000

    goto :goto_a4

    :cond_a2
    const/16 v4, 0x2000

    :goto_a4
    or-int/2addr v1, v4

    goto :goto_a8

    :cond_a6
    move-object/from16 v3, p4

    :goto_a8
    move v14, v1

    .end local v1    # "$dirty":I
    .local v14, "$dirty":I
    const v1, 0xb6db

    and-int/2addr v1, v14

    const/16 v4, 0x2492

    if-ne v1, v4, :cond_c1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_b8

    goto :goto_c1

    .line 369
    :cond_b8
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v25, v3

    move/from16 v26, v14

    goto/16 :goto_132

    .line 362
    :cond_c1
    :goto_c1
    if-eqz v2, :cond_ca

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v25, v1

    .end local p4    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_cc

    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p4    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_ca
    move-object/from16 v25, v3

    .end local p4    # "modifier":Landroidx/compose/ui/Modifier;
    .local v25, "modifier":Landroidx/compose/ui/Modifier;
    :goto_cc
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_d8

    const/4 v1, -0x1

    const-string v2, "com.pandasu.turbo.ui.screens.isolation.PresetButton (IsolationScreen.kt:361)"

    invoke-static {v0, v14, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 363
    :cond_d8
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object/from16 v0, v25

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/ClickableKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v13, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v3, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v2, v7, v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/ColorScheme;->getSecondaryContainer-0d7_KjU()J

    move-result-wide v2

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    sget v4, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v23, v4, 0xc

    const/16 v24, 0xe

    move/from16 v26, v14

    .end local v14    # "$dirty":I
    .local v26, "$dirty":I
    move-wide v14, v2

    move-object/from16 v22, v7

    invoke-virtual/range {v13 .. v24}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$PresetButton$1;

    invoke-direct {v2, v8, v9, v10}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$PresetButton$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v3, -0x7751db61

    const/4 v4, 0x1

    invoke-static {v7, v3, v4, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lkotlin/jvm/functions/Function3;

    const/high16 v20, 0x30000

    const/16 v21, 0x1a

    move-object v13, v0

    move-object v14, v1

    move-object/from16 v19, v7

    invoke-static/range {v13 .. v21}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_132

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 369
    :cond_132
    :goto_132
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_153

    new-instance v14, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$PresetButton$2;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v25

    move/from16 v6, p6

    move-object v15, v7

    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$PresetButton$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;II)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_154

    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v7    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_153
    move-object v15, v7

    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v15    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_154
    return-void
.end method

.method public static final PresetSelectionCard(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .registers 14
    .param p0, "onSelectPreset"    # Lkotlin/jvm/functions/Function1;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/pandasu/turbo/data/model/IsolationLevel;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const-string v0, "onSelectPreset"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    const v0, 0x2f95634

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v1, "C(PresetSelectionCard)348@20902L682:IsolationScreen.kt#r3e9si"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v1, p2

    .local v1, "$dirty":I
    and-int/lit8 v2, p2, 0xe

    const/4 v3, 0x2

    if-nez v2, :cond_21

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x4

    goto :goto_20

    :cond_1f
    move v2, v3

    :goto_20
    or-int/2addr v1, v2

    :cond_21
    move v10, v1

    .end local v1    # "$dirty":I
    .local v10, "$dirty":I
    and-int/lit8 v1, v10, 0xb

    if-ne v1, v3, :cond_31

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_31

    .line 359
    :cond_2d
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_6d

    .line 348
    :cond_31
    :goto_31
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v1, -0x1

    const-string v2, "com.pandasu.turbo.ui.screens.isolation.PresetSelectionCard (IsolationScreen.kt:347)"

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 349
    :cond_3d
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$PresetSelectionCard$1;

    invoke-direct {v6, p0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$PresetSelectionCard$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    const v7, 0x68c85a6

    invoke-static {p1, v7, v3, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function3;

    const v8, 0x30006

    const/16 v9, 0x1e

    move-object v3, v0

    move-object v7, p1

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 359
    :cond_6d
    :goto_6d
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_7d

    new-instance v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$PresetSelectionCard$2;

    invoke-direct {v1, p0, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$PresetSelectionCard$2;-><init>(Lkotlin/jvm/functions/Function1;I)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_7d
    return-void
.end method

.method public static final RootPermissionStatusCard(ZLandroidx/compose/runtime/Composer;I)V
    .registers 27
    .param p0, "hasRootPermission"    # Z
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    .line 248
    move/from16 v0, p0

    move/from16 v1, p2

    const v2, -0x28e09ceb

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .end local p1    # "$composer":Landroidx/compose/runtime/Composer;
    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const-string v3, "C(RootPermissionStatusCard)250@14372L203,248@14258L1155:IsolationScreen.kt#r3e9si"

    invoke-static {v15, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p2

    .local v3, "$dirty":I
    and-int/lit8 v4, v1, 0xe

    const/4 v5, 0x2

    if-nez v4, :cond_23

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v4, 0x4

    goto :goto_22

    :cond_21
    move v4, v5

    :goto_22
    or-int/2addr v3, v4

    :cond_23
    move v14, v3

    .end local v3    # "$dirty":I
    .local v14, "$dirty":I
    and-int/lit8 v3, v14, 0xb

    if-ne v3, v5, :cond_36

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_36

    .line 277
    :cond_2f
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v16, v14

    goto/16 :goto_f2

    .line 248
    :cond_36
    :goto_36
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_42

    const/4 v3, -0x1

    const-string v4, "com.pandasu.turbo.ui.screens.isolation.RootPermissionStatusCard (IsolationScreen.kt:247)"

    invoke-static {v2, v14, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 250
    :cond_42
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x1

    invoke-static {v2, v3, v13, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/16 v3, 0x10

    .local v3, "$this$dp$iv":I
    const/4 v4, 0x0

    .line 491
    .local v4, "$i$f$getDp":I
    int-to-float v5, v3

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 250
    .end local v3    # "$this$dp$iv":I
    .end local v4    # "$i$f$getDp":I
    const/16 v4, 0x8

    .local v4, "$this$dp$iv":I
    const/4 v5, 0x0

    .line 491
    .local v5, "$i$f$getDp":I
    int-to-float v6, v4

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 250
    .end local v4    # "$this$dp$iv":I
    .end local v5    # "$i$f$getDp":I
    invoke-static {v2, v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 251
    sget-object v3, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    const v4, -0x1edc99a2

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "253@14520L11"

    invoke-static {v15, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 252
    if-eqz v0, :cond_8b

    .line 253
    const-wide v4, 0xff4caf50L

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v16

    const v18, 0x3dcccccd    # 0.1f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xe

    const/16 v23, 0x0

    invoke-static/range {v16 .. v23}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    goto :goto_a3

    .line 254
    :cond_8b
    sget-object v4, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v5, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v4, v15, v5}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material3/ColorScheme;->getErrorContainer-0d7_KjU()J

    move-result-wide v5

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xe

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    .line 252
    :goto_a3
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    sget v12, Landroidx/compose/material3/CardDefaults;->$stable:I

    shl-int/lit8 v16, v12, 0xc

    const/16 v17, 0xe

    .line 251
    move-object v12, v15

    move/from16 v13, v16

    move/from16 v16, v14

    .end local v14    # "$dirty":I
    .local v16, "$dirty":I
    move/from16 v14, v17

    invoke-virtual/range {v3 .. v14}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v5

    .line 256
    const/16 v3, 0xc

    .restart local v3    # "$this$dp$iv":I
    const/4 v4, 0x0

    .line 492
    .local v4, "$i$f$getDp":I
    int-to-float v6, v3

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 256
    .end local v3    # "$this$dp$iv":I
    .end local v4    # "$i$f$getDp":I
    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v3

    .line 250
    nop

    .line 256
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/graphics/Shape;

    .line 251
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 257
    new-instance v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$RootPermissionStatusCard$1;

    invoke-direct {v3, v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$RootPermissionStatusCard$1;-><init>(Z)V

    const v8, -0x23c2599d

    const/4 v9, 0x1

    invoke-static {v15, v8, v9, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function3;

    const v10, 0x30006

    const/16 v11, 0x18

    .line 249
    move-object v3, v2

    move-object v9, v15

    invoke-static/range {v3 .. v11}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_f2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 277
    :cond_f2
    :goto_f2
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-eqz v2, :cond_102

    new-instance v3, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$RootPermissionStatusCard$2;

    invoke-direct {v3, v0, v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$RootPermissionStatusCard$2;-><init>(ZI)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_102
    return-void
.end method

.method public static final synthetic access$IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .registers 2
    .param p0, "$uiState$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v0

    return-object v0
.end method
