.class final Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;
.super Lkotlin/jvm/internal/Lambda;
.source "EnvScoreDetailScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->EnvScoreDetailScreen(Lkotlin/jvm/functions/Function0;Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nEnvScoreDetailScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnvScoreDetailScreen.kt\ncom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4\n+ 2 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/Updater\n*L\n1#1,1008:1\n72#2,6:1009\n78#2:1043\n82#2:1048\n78#3,11:1015\n91#3:1047\n456#4,8:1026\n464#4,3:1040\n467#4,3:1044\n4144#5,6:1034\n*S KotlinDebug\n*F\n+ 1 EnvScoreDetailScreen.kt\ncom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4\n*L\n79#1:1009,6\n79#1:1043\n79#1:1048\n79#1:1015,11\n79#1:1047\n79#1:1026,8\n79#1:1040,3\n79#1:1044,3\n79#1:1034,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u000b\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "paddingValues",
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
.field final synthetic $detectorResults$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $envChecks$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $isLoading$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isScanning$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $moduleStatuses$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $selectedTabIndex$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Ljava/util/List;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/util/DetectorScanner$DetectedApp;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;->$selectedTabIndex$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;->$tabs:Ljava/util/List;

    iput-object p3, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;->$detectorResults$delegate:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;->$isScanning$delegate:Landroidx/compose/runtime/State;

    iput-object p5, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;->$isLoading$delegate:Landroidx/compose/runtime/State;

    iput-object p6, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;->$viewModel:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    iput-object p7, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;->$envChecks$delegate:Landroidx/compose/runtime/State;

    iput-object p8, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;->$moduleStatuses$delegate:Landroidx/compose/runtime/State;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 78
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 47
    .param p1, "paddingValues"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "paddingValues"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C78@2849L2394:EnvScoreDetailScreen.kt#jjkgld"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p3

    .local v3, "$dirty":I
    and-int/lit8 v4, p3, 0xe

    if-nez v4, :cond_1

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v3, v4

    .line 79
    :cond_1
    and-int/lit8 v4, v3, 0x5b

    const/16 v5, 0x12

    if-ne v4, v5, :cond_3

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 140
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v26, v3

    goto/16 :goto_6

    .line 79
    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    const-string v5, "com.pandasu.turbo.ui.screens.envscore.EnvScoreDetailScreen.<anonymous> (EnvScoreDetailScreen.kt:78)"

    const v6, -0x4ff4da18

    invoke-static {v6, v3, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 80
    :cond_4
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 81
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 82
    invoke-static {v4, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 79
    iget-object v8, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;->$selectedTabIndex$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v9, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;->$tabs:Ljava/util/List;

    iget-object v10, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;->$detectorResults$delegate:Landroidx/compose/runtime/State;

    iget-object v11, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;->$isScanning$delegate:Landroidx/compose/runtime/State;

    iget-object v12, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;->$isLoading$delegate:Landroidx/compose/runtime/State;

    iget-object v13, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;->$viewModel:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    iget-object v14, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;->$envChecks$delegate:Landroidx/compose/runtime/State;

    iget-object v15, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;->$moduleStatuses$delegate:Landroidx/compose/runtime/State;

    const/16 v16, 0x0

    .local v4, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v16, "$changed$iv":I
    const/16 v17, 0x0

    .local v17, "$i$f$Column":I
    const v5, -0x1cd0f17e

    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(Column)P(2,3,1)75@3779L61,76@3845L133:Column.kt#2w3rfo"

    invoke-static {v2, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1009
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v5}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v5

    .line 1010
    .local v5, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    sget-object v19, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v6

    .line 1013
    .local v6, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v19, v16, 0x3

    and-int/lit8 v19, v19, 0xe

    shr-int/lit8 v20, v16, 0x3

    and-int/lit8 v20, v20, 0x70

    or-int v7, v19, v20

    invoke-static {v5, v6, v2, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    .local v7, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v19, v16, 0x3

    and-int/lit8 v19, v19, 0x70

    .line 1014
    nop

    .local v19, "$changed$iv$iv":I
    const/16 v20, 0x0

    .local v20, "$i$f$Layout":I
    const v0, -0x4ee9b9da

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1015
    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v22

    .line 1016
    .local v22, "compositeKeyHash$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v0

    .line 1018
    .local v0, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v23, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v23

    .line 1025
    invoke-static {v4}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v24

    shl-int/lit8 v1, v19, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int/lit8 v1, v1, 0x6

    .line 1017
    nop

    .local v1, "$changed$iv$iv$iv":I
    move-object/from16 v25, v24

    .local v25, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v24, v23

    .local v24, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v23, 0x0

    .line 1026
    .local v23, "$i$f$ReusableComposeNode":I
    move/from16 v26, v3

    .end local v3    # "$dirty":I
    .local v26, "$dirty":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    instance-of v3, v3, Landroidx/compose/runtime/Applier;

    if-nez v3, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1027
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1028
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1029
    move-object/from16 v3, v24

    .end local v24    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v3, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 1031
    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v24    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_6
    move-object/from16 v3, v24

    .end local v24    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1033
    :goto_2
    move-object/from16 v24, v3

    .end local v3    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v24    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    .local v3, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    .line 1020
    .local v27, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v28, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v29, v4

    .end local v4    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v29, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1021
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v3, v0, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1023
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .local v4, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v28, 0x0

    .line 1034
    .local v28, "$i$f$set-impl":I
    move-object/from16 v30, v3

    .local v30, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v31, 0x0

    .line 1035
    .local v31, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v30 .. v30}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v32

    if-nez v32, :cond_8

    move-object/from16 v32, v0

    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v32, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v30 .. v30}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v33, v5

    .end local v5    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v33, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v5, v30

    goto :goto_4

    .end local v32    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v33    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v5    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :cond_8
    move-object/from16 v32, v0

    move-object/from16 v33, v5

    .line 1036
    .end local v0    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v5    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v32    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v33    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :goto_3
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v5, v30

    .end local v30    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1037
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1039
    :goto_4
    nop

    .line 1034
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v31    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 1039
    nop

    .line 1024
    .end local v4    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v28    # "$i$f$set-impl":I
    nop

    .line 1033
    .end local v3    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v27    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 1040
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v25

    .end local v25    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v4, v0, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    const v0, 0x7ab4aae9

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1042
    shr-int/lit8 v0, v1, 0x9

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object/from16 v3, p2

    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 1043
    .local v5, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    move/from16 v25, v0

    .end local v0    # "$changed$iv":I
    .local v25, "$changed$iv":I
    const v0, 0x107e0242

    move/from16 v27, v1

    .end local v1    # "$changed$iv$iv$iv":I
    .local v27, "$changed$iv$iv$iv":I
    const-string v1, "C77@3893L9:Column.kt#2w3rfo"

    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v1, v16, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    move-object/from16 v28, v3

    .local v28, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v30, 0x0

    .line 85
    .local v30, "$i$a$-Column-EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1":I
    move-object/from16 v31, v0

    .end local v0    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .local v31, "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, -0xe15e8ef

    move/from16 v46, v1

    .end local v1    # "$changed":I
    .local v46, "$changed":I
    const-string v1, "C86@3114L11,87@3180L11,84@3006L1305:EnvScoreDetailScreen.kt#jjkgld"

    move-object/from16 v2, v28

    .end local v28    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 86
    invoke-static {v8}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->access$EnvScoreDetailScreen$lambda$1(Landroidx/compose/runtime/MutableState;)I

    move-result v34

    .line 87
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v1, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v2, v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v36

    .line 88
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v1, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {v0, v2, v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getPrimary-0d7_KjU()J

    move-result-wide v38

    .line 89
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object/from16 v18, v4

    move/from16 v21, v5

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .end local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v5    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .local v18, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v21, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    invoke-static {v0, v4, v5, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v35

    .line 86
    nop

    .line 89
    nop

    .line 87
    nop

    .line 88
    const/16 v40, 0x0

    const/16 v41, 0x0

    .line 90
    new-instance v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1;

    invoke-direct {v0, v9, v8}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1;-><init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;)V

    const v1, -0x56a1a20a

    invoke-static {v2, v1, v5, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v42, v0

    check-cast v42, Lkotlin/jvm/functions/Function2;

    const v44, 0x180030

    const/16 v45, 0x30

    .line 85
    move-object/from16 v43, v2

    invoke-static/range {v34 .. v45}, Landroidx/compose/material3/TabRowKt;->TabRow-pAZo6Ak(ILandroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    const v0, -0xe15e3a3

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "117@4414L323"

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 117
    invoke-static {v10}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->access$EnvScoreDetailScreen$lambda$6(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 119
    invoke-static {v10}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->access$EnvScoreDetailScreen$lambda$6(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v34

    .line 120
    invoke-static {v11}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->access$EnvScoreDetailScreen$lambda$7(Landroidx/compose/runtime/State;)Z

    move-result v35

    .line 121
    invoke-static {v12}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->access$EnvScoreDetailScreen$lambda$5(Landroidx/compose/runtime/State;)Z

    move-result v36

    .line 118
    new-instance v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$2;

    invoke-direct {v0, v13}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$2;-><init>(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)V

    move-object/from16 v37, v0

    check-cast v37, Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$3;

    invoke-direct {v0, v13}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$3;-><init>(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)V

    move-object/from16 v38, v0

    check-cast v38, Lkotlin/jvm/functions/Function0;

    const/16 v40, 0x8

    move-object/from16 v39, v2

    invoke-static/range {v34 .. v40}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->DetectorScanCard(Ljava/util/List;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    :cond_9
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 128
    invoke-static {v8}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->access$EnvScoreDetailScreen$lambda$1(Landroidx/compose/runtime/MutableState;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 139
    const v0, -0xe15e03c

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_5

    .line 135
    :pswitch_0
    const v0, -0xe15e0cc

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "134@5089L130"

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 136
    invoke-static {v14}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->access$EnvScoreDetailScreen$lambda$3(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v0

    .line 137
    invoke-static {v15}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->access$EnvScoreDetailScreen$lambda$4(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v1

    .line 135
    const/16 v4, 0x48

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->DetailTabContent(Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_5

    .line 129
    :pswitch_1
    const v0, -0xe15e1cb

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "128@4834L233"

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 130
    invoke-static {v14}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->access$EnvScoreDetailScreen$lambda$3(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v34

    .line 131
    invoke-static {v15}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->access$EnvScoreDetailScreen$lambda$4(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v35

    .line 132
    invoke-static {v12}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->access$EnvScoreDetailScreen$lambda$5(Landroidx/compose/runtime/State;)Z

    move-result v36

    .line 129
    new-instance v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$4;

    invoke-direct {v0, v13}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$4;-><init>(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;)V

    move-object/from16 v37, v0

    check-cast v37, Lkotlin/jvm/functions/Function0;

    const/16 v39, 0x48

    const/16 v40, 0x0

    move-object/from16 v38, v2

    invoke-static/range {v34 .. v40}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->OverviewTabContent(Ljava/util/List;Ljava/util/List;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 85
    :goto_5
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 140
    nop

    .line 1043
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v30    # "$i$a$-Column-EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1":I
    .end local v31    # "$this$invoke_u24lambda_u240":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v46    # "$changed":I
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1042
    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v25    # "$changed$iv":I
    nop

    .line 1044
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1045
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1046
    nop

    .end local v18    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v23    # "$i$f$ReusableComposeNode":I
    .end local v24    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$changed$iv$iv$iv":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1047
    nop

    .end local v19    # "$changed$iv$iv":I
    .end local v20    # "$i$f$Layout":I
    .end local v22    # "compositeKeyHash$iv$iv":I
    .end local v32    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1048
    nop

    .end local v6    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v7    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v16    # "$changed$iv":I
    .end local v17    # "$i$f$Column":I
    .end local v29    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v33    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 141
    :cond_a
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
