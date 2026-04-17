.class final Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;
.super Lkotlin/jvm/internal/Lambda;
.source "IsolationScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->IsolationScreen(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIsolationScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsolationScreen.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,426:1\n154#2:427\n83#3,3:428\n1097#4,6:431\n*S KotlinDebug\n*F\n+ 1 IsolationScreen.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4\n*L\n70#1:427\n77#1:428,3\n77#1:431,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u000b\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "pv",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "invoke",
        "(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $appName:Ljava/lang/String;

.field final synthetic $onNavigateToAppIsolation:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $uiState$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/compose/runtime/State;Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/State<",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;",
            ">;",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->$uiState$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->$viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iput-object p4, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->$appName:Ljava/lang/String;

    iput-object p5, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->$onNavigateToAppIsolation:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 68
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .registers 22
    .param p1, "pv"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v14, p2

    const-string v2, "pv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C:IsolationScreen.kt#r3e9si"

    invoke-static {v14, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p3

    .local v2, "$dirty":I
    and-int/lit8 v3, p3, 0xe

    if-nez v3, :cond_20

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x4

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x2

    :goto_1f
    or-int/2addr v2, v3

    :cond_20
    move v15, v2

    .line 69
    .end local v2    # "$dirty":I
    .local v15, "$dirty":I
    and-int/lit8 v2, v15, 0x5b

    const/16 v3, 0x12

    if-ne v2, v3, :cond_33

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2e

    goto :goto_33

    .line 215
    :cond_2e
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_155

    .line 69
    :cond_33
    :goto_33
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_42

    const/4 v2, -0x1

    const-string v3, "com.pandasu.turbo.ui.screens.isolation.IsolationScreen.<anonymous> (IsolationScreen.kt:68)"

    const v4, -0x493dc5eb

    invoke-static {v4, v15, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_42
    iget-object v2, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->$packageName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_9f

    const v2, 0x74adc39c

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "69@2983L490"

    invoke-static {v14, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 70
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    invoke-static {v2, v4, v5, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/16 v3, 0x10

    .local v3, "$this$dp$iv":I
    const/4 v4, 0x0

    .line 427
    .local v4, "$i$f$getDp":I
    int-to-float v5, v3

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 70
    .end local v3    # "$this$dp$iv":I
    .end local v4    # "$i$f$getDp":I
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v7, 0x10

    .local v7, "$this$dp$iv":I
    const/4 v8, 0x0

    .line 427
    .local v8, "$i$f$getDp":I
    int-to-float v9, v7

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 70
    .end local v7    # "$this$dp$iv":I
    .end local v8    # "$i$f$getDp":I
    invoke-virtual {v6, v7}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v10, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$1;

    iget-object v11, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->$uiState$delegate:Landroidx/compose/runtime/State;

    iget-object v12, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->$viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iget-object v13, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->$packageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->$appName:Ljava/lang/String;

    invoke-direct {v10, v11, v12, v13, v9}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$1;-><init>(Landroidx/compose/runtime/State;Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/16 v12, 0x6000

    const/16 v13, 0xee

    const/4 v9, 0x0

    move-object/from16 v11, p2

    invoke-static/range {v2 .. v13}, Landroidx/compose/foundation/lazy/LazyDslKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 69
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto/16 :goto_14c

    .line 76
    :cond_9f
    const v2, 0x74adc5a4

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "76@3522L118,77@3653L8609"

    invoke-static {v14, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 77
    iget-object v2, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->$uiState$delegate:Landroidx/compose/runtime/State;

    # invokes: Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    invoke-static {v2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->access$IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getUserApps()Ljava/util/List;

    move-result-object v2

    iget-object v6, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->$uiState$delegate:Landroidx/compose/runtime/State;

    # invokes: Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    invoke-static {v6}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->access$IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getSystemApps()Ljava/util/List;

    move-result-object v6

    iget-object v7, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->$uiState$delegate:Landroidx/compose/runtime/State;

    # invokes: Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    invoke-static {v7}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->access$IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getSearchQuery()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->$uiState$delegate:Landroidx/compose/runtime/State;

    # invokes: Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    invoke-static {v8}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->access$IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getActiveTab()Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    move-result-object v8

    filled-new-array {v2, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v2

    iget-object v6, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->$viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    const/16 v7, 0x8

    .local v2, "keys$iv":[Ljava/lang/Object;
    .local v7, "$changed$iv":I
    const/4 v8, 0x0

    .local v8, "$i$f$remember":I
    const v9, -0x21de6e89

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v14, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 428
    const/4 v9, 0x0

    .line 429
    .local v9, "invalid$iv":Z
    array-length v10, v2

    const/4 v11, 0x0

    :goto_e9
    if-ge v11, v10, :cond_f5

    aget-object v12, v2, v11

    .local v12, "key$iv":Ljava/lang/Object;
    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v9, v13

    .end local v12    # "key$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    goto :goto_e9

    .line 430
    :cond_f5
    move-object/from16 v10, p2

    .local v10, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 431
    .local v11, "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 432
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v9, :cond_10a

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v12, v3, :cond_108

    goto :goto_10a

    .line 436
    :cond_108
    move-object v3, v12

    goto :goto_114

    .line 433
    :cond_10a
    :goto_10a
    const/4 v3, 0x0

    .line 77
    .local v3, "$i$a$-remember-IsolationScreenKt$IsolationScreen$4$filteredApps$1":I
    invoke-virtual {v6}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->getFilteredApps()Ljava/util/List;

    move-result-object v3

    .line 433
    .end local v3    # "$i$a$-remember-IsolationScreenKt$IsolationScreen$4$filteredApps$1":I
    nop

    .line 434
    .local v3, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 435
    nop

    .line 432
    .end local v3    # "value$iv$iv":Ljava/lang/Object;
    :goto_114
    nop

    .line 431
    .end local v12    # "it$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 430
    .end local v10    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 77
    .end local v2    # "keys$iv":[Ljava/lang/Object;
    .end local v7    # "$changed$iv":I
    .end local v8    # "$i$f$remember":I
    .end local v9    # "invalid$iv":Z
    move-object v13, v3

    check-cast v13, Ljava/util/List;

    .line 78
    .local v13, "filteredApps":Ljava/util/List;
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x0

    invoke-static {v2, v4, v5, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v10, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;

    iget-object v11, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->$uiState$delegate:Landroidx/compose/runtime/State;

    iget-object v12, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->$viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iget-object v9, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->$onNavigateToAppIsolation:Lkotlin/jvm/functions/Function2;

    invoke-direct {v10, v13, v11, v12, v9}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;-><init>(Ljava/util/List;Landroidx/compose/runtime/State;Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lkotlin/jvm/functions/Function2;)V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v12, 0x0

    const/16 v17, 0xfe

    const/4 v9, 0x0

    move-object/from16 v11, p2

    move-object/from16 v16, v13

    .end local v13    # "filteredApps":Ljava/util/List;
    .local v16, "filteredApps":Ljava/util/List;
    move/from16 v13, v17

    invoke-static/range {v2 .. v13}, Landroidx/compose/foundation/lazy/LazyDslKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 76
    .end local v16    # "filteredApps":Ljava/util/List;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_14c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_155

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 216
    :cond_155
    :goto_155
    return-void
.end method
