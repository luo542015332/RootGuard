.class final Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;
.super Lkotlin/jvm/internal/Lambda;
.source "IsolationScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/foundation/lazy/LazyListScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIsolationScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsolationScreen.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt\n*L\n1#1,426:1\n1#2:427\n136#3,12:428\n*S KotlinDebug\n*F\n+ 1 IsolationScreen.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2\n*L\n208#1:428,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/lazy/LazyListScope;",
        "invoke"
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
.field final synthetic $filteredApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;"
        }
    .end annotation
.end field

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
.method constructor <init>(Ljava/util/List;Landroidx/compose/runtime/State;Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lkotlin/jvm/functions/Function2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;",
            ">;",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$filteredApps:Ljava/util/List;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$uiState$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iput-object p4, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$onNavigateToAppIsolation:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "p1"    # Ljava/lang/Object;

    .line 78
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p0, v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V
    .registers 17
    .param p1, "$this$LazyColumn"    # Landroidx/compose/foundation/lazy/LazyListScope;

    move-object v0, p0

    const-string v1, "$this$LazyColumn"

    move-object/from16 v8, p1

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$1;

    iget-object v2, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$uiState$delegate:Landroidx/compose/runtime/State;

    invoke-direct {v1, v2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$1;-><init>(Landroidx/compose/runtime/State;)V

    const v2, 0x785d014d

    const/4 v9, 0x1

    invoke-static {v2, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function3;

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListScope;->item$default(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    .line 80
    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$uiState$delegate:Landroidx/compose/runtime/State;

    # invokes: Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    invoke-static {v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->access$IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getSuccessMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 427
    .local v1, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 80
    .local v10, "$i$a$-let-IsolationScreenKt$IsolationScreen$4$2$2":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$2$1;

    invoke-direct {v2, v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$2$1;-><init>(Ljava/lang/String;)V

    const v5, -0x72d6cbd3    # -5.213995E-31f

    invoke-static {v5, v9, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function3;

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListScope;->item$default(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    .line 81
    .end local v1    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-let-IsolationScreenKt$IsolationScreen$4$2$2":I
    :cond_48
    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$uiState$delegate:Landroidx/compose/runtime/State;

    # invokes: Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    invoke-static {v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->access$IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 427
    .restart local v1    # "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 81
    .local v10, "$i$a$-let-IsolationScreenKt$IsolationScreen$4$2$3":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$3$1;

    invoke-direct {v2, v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$3$1;-><init>(Ljava/lang/String;)V

    const v5, 0x1ec74ee4

    invoke-static {v5, v9, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function3;

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListScope;->item$default(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    .line 84
    .end local v1    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-let-IsolationScreenKt$IsolationScreen$4$2$3":I
    :cond_6d
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$4;

    iget-object v2, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iget-object v5, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$uiState$delegate:Landroidx/compose/runtime/State;

    invoke-direct {v1, v2, v5}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$4;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Landroidx/compose/runtime/State;)V

    const v2, 0xc3c5404

    invoke-static {v2, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function3;

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListScope;->item$default(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    .line 195
    new-instance v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$5;

    iget-object v2, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$uiState$delegate:Landroidx/compose/runtime/State;

    iget-object v5, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    invoke-direct {v1, v2, v5}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$5;-><init>(Landroidx/compose/runtime/State;Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)V

    const v2, -0x6785e77b

    invoke-static {v2, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function3;

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListScope;->item$default(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    .line 196
    new-instance v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$6;

    iget-object v2, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$uiState$delegate:Landroidx/compose/runtime/State;

    iget-object v5, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    invoke-direct {v1, v2, v5}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$6;-><init>(Landroidx/compose/runtime/State;Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)V

    const v2, 0x24b7dd06

    invoke-static {v2, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function3;

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListScope;->item$default(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    .line 197
    new-instance v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$7;

    iget-object v2, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$filteredApps:Ljava/util/List;

    iget-object v5, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$uiState$delegate:Landroidx/compose/runtime/State;

    iget-object v6, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    invoke-direct {v1, v2, v5, v6}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$7;-><init>(Ljava/util/List;Landroidx/compose/runtime/State;Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)V

    const v2, -0x4f0a5e79

    invoke-static {v2, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function3;

    const/4 v6, 0x3

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListScope;->item$default(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    .line 203
    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$uiState$delegate:Landroidx/compose/runtime/State;

    # invokes: Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    invoke-static {v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->access$IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isAppListLoading()Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 204
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v1, Lcom/pandasu/turbo/ui/screens/isolation/ComposableSingletons$IsolationScreenKt;->INSTANCE:Lcom/pandasu/turbo/ui/screens/isolation/ComposableSingletons$IsolationScreenKt;

    invoke-virtual {v1}, Lcom/pandasu/turbo/ui/screens/isolation/ComposableSingletons$IsolationScreenKt;->getLambda-7$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListScope;->item$default(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    goto :goto_150

    .line 205
    :cond_f0
    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$filteredApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_113

    .line 206
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$8;

    iget-object v2, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$uiState$delegate:Landroidx/compose/runtime/State;

    invoke-direct {v1, v2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$8;-><init>(Landroidx/compose/runtime/State;)V

    const v2, 0x3abcce51

    invoke-static {v2, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function3;

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListScope;->item$default(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    goto :goto_150

    .line 208
    :cond_113
    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$filteredApps:Ljava/util/List;

    .local v1, "items$iv":Ljava/util/List;
    sget-object v2, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$9;->INSTANCE:Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$9;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .local v2, "key$iv":Lkotlin/jvm/functions/Function1;
    iget-object v3, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$onNavigateToAppIsolation:Lkotlin/jvm/functions/Function2;

    iget-object v4, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$uiState$delegate:Landroidx/compose/runtime/State;

    iget-object v5, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->$viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    move-object/from16 v6, p1

    .line 428
    .local v6, "$this$items_u24default$iv":Landroidx/compose/foundation/lazy/LazyListScope;
    nop

    .line 431
    sget-object v7, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$1;->INSTANCE:Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$1;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 428
    .local v7, "contentType$iv":Lkotlin/jvm/functions/Function1;
    const/4 v10, 0x0

    .line 433
    .local v10, "$i$f$items":I
    nop

    .line 434
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    .line 435
    if-eqz v2, :cond_136

    .line 433
    new-instance v12, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$2;

    invoke-direct {v12, v2, v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v12, Lkotlin/jvm/functions/Function1;

    goto :goto_137

    .line 435
    :cond_136
    const/4 v12, 0x0

    .line 433
    :goto_137
    new-instance v13, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$3;

    invoke-direct {v13, v7, v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 437
    new-instance v14, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$4;

    invoke-direct {v14, v1, v3, v4, v5}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$4;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/State;Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)V

    const v3, -0x25b7f321

    invoke-static {v3, v9, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function4;

    .line 433
    invoke-interface {v6, v11, v12, v13, v3}, Landroidx/compose/foundation/lazy/LazyListScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 439
    nop

    .line 213
    .end local v1    # "items$iv":Ljava/util/List;
    .end local v2    # "key$iv":Lkotlin/jvm/functions/Function1;
    .end local v6    # "$this$items_u24default$iv":Landroidx/compose/foundation/lazy/LazyListScope;
    .end local v7    # "contentType$iv":Lkotlin/jvm/functions/Function1;
    .end local v10    # "$i$f$items":I
    :goto_150
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v1, Lcom/pandasu/turbo/ui/screens/isolation/ComposableSingletons$IsolationScreenKt;->INSTANCE:Lcom/pandasu/turbo/ui/screens/isolation/ComposableSingletons$IsolationScreenKt;

    invoke-virtual {v1}, Lcom/pandasu/turbo/ui/screens/isolation/ComposableSingletons$IsolationScreenKt;->getLambda-8$app_debug()Lkotlin/jvm/functions/Function3;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyListScope;->item$default(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    .line 214
    return-void
.end method
