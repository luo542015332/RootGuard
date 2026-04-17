.class public final Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$4;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyDsl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2;->invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt$items$4\n+ 2 IsolationScreen.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,423:1\n209#2:424\n210#2:428\n211#2:435\n1747#3,3:425\n1097#4,6:429\n*S KotlinDebug\n*F\n+ 1 IsolationScreen.kt\ncom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2\n*L\n209#1:425,3\n210#1:429,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "it",
        "",
        "invoke",
        "(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V",
        "androidx/compose/foundation/lazy/LazyDslKt$items$4"
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
.field final synthetic $items:Ljava/util/List;

.field final synthetic $onNavigateToAppIsolation$inlined:Lkotlin/jvm/functions/Function2;

.field final synthetic $uiState$delegate$inlined:Landroidx/compose/runtime/State;

.field final synthetic $viewModel$inlined:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/State;Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;)V
    .registers 5

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$4;->$items:Ljava/util/List;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$4;->$onNavigateToAppIsolation$inlined:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$4;->$uiState$delegate$inlined:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$4;->$viewModel$inlined:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    const/4 p2, 0x4

    invoke-direct {p0, p2}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;

    .line 145
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object v2, p3

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$4;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V
    .registers 23
    .param p1, "$this$items"    # Landroidx/compose/foundation/lazy/LazyItemScope;
    .param p2, "it"    # I
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "$this$items"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "C145@6530L22:LazyDsl.kt#428nma"

    invoke-static {v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v4, p4

    .local v4, "$dirty":I
    and-int/lit8 v5, p4, 0xe

    if-nez v5, :cond_22

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v5, 0x4

    goto :goto_21

    :cond_20
    const/4 v5, 0x2

    :goto_21
    or-int/2addr v4, v5

    :cond_22
    and-int/lit8 v5, p4, 0x70

    if-nez v5, :cond_32

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/16 v5, 0x20

    goto :goto_31

    :cond_2f
    const/16 v5, 0x10

    :goto_31
    or-int/2addr v4, v5

    .line 146
    :cond_32
    and-int/lit16 v5, v4, 0x2db

    const/16 v6, 0x92

    if-ne v5, v6, :cond_44

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_3f

    goto :goto_44

    :cond_3f
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_112

    :cond_44
    :goto_44
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_53

    const/4 v5, -0x1

    const-string v6, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:144)"

    const v7, -0x25b7f321

    invoke-static {v7, v4, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_53
    iget-object v5, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$4;->$items:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    and-int/lit8 v6, v4, 0xe

    .local v6, "$changed":I
    check-cast v5, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;

    .local v5, "app":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    move-object/from16 v7, p1

    .local v7, "$this$invoke_u24lambda_u244":Landroidx/compose/foundation/lazy/LazyItemScope;
    move-object v13, v7

    .end local v7    # "$this$invoke_u24lambda_u244":Landroidx/compose/foundation/lazy/LazyItemScope;
    .local v13, "$this$invoke_u24lambda_u244":Landroidx/compose/foundation/lazy/LazyItemScope;
    move-object/from16 v14, p3

    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 424
    .local v15, "$i$a$-items$default-IsolationScreenKt$IsolationScreen$4$2$10":I
    const v7, 0x3df5a85c

    const-string v8, "C*209@12024L128:IsolationScreen.kt#r3e9si"

    invoke-static {v14, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    iget-object v7, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$4;->$uiState$delegate$inlined:Landroidx/compose/runtime/State;

    # invokes: Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    invoke-static {v7}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->access$IsolationScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->getIsolatedApps()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 425
    .local v8, "$i$f$any":I
    instance-of v9, v7, Ljava/util/Collection;

    if-eqz v9, :cond_87

    move-object v9, v7

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_87

    const/4 v8, 0x0

    goto :goto_af

    .line 426
    :cond_87
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_ae

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lcom/pandasu/turbo/data/model/IsolationConfig;

    .local v12, "it":Lcom/pandasu/turbo/data/model/IsolationConfig;
    const/16 v16, 0x0

    .line 424
    .local v16, "$i$a$-any-IsolationScreenKt$IsolationScreen$4$2$10$iso$1":I
    invoke-virtual {v12}, Lcom/pandasu/turbo/data/model/IsolationConfig;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 426
    .end local v12    # "it":Lcom/pandasu/turbo/data/model/IsolationConfig;
    .end local v16    # "$i$a$-any-IsolationScreenKt$IsolationScreen$4$2$10$iso$1":I
    if-eqz v1, :cond_ab

    const/4 v1, 0x1

    move v8, v1

    goto :goto_af

    :cond_ab
    move-object/from16 v1, p1

    goto :goto_8b

    .line 427
    .end local v11    # "element$iv":Ljava/lang/Object;
    :cond_ae
    const/4 v8, 0x0

    .line 424
    .end local v7    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$any":I
    :goto_af
    nop

    .line 428
    .local v8, "iso":Z
    new-instance v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$10$1;

    iget-object v7, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$4;->$viewModel$inlined:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    invoke-direct {v1, v7, v5}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$10$1;-><init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;)V

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const v1, -0x25ac0936

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$4;->$onNavigateToAppIsolation$inlined:Lkotlin/jvm/functions/Function2;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v1, v7

    .local v1, "invalid$iv":Z
    move-object v7, v14

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 429
    .local v10, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 430
    .local v12, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_e1

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v17, v1

    .end local v1    # "invalid$iv":Z
    .local v17, "invalid$iv":Z
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v11, v1, :cond_df

    goto :goto_e3

    .line 434
    :cond_df
    move-object v1, v11

    goto :goto_f4

    .line 430
    .end local v17    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_e1
    move/from16 v17, v1

    .line 431
    .end local v1    # "invalid$iv":Z
    .restart local v17    # "invalid$iv":Z
    :goto_e3
    const/4 v1, 0x0

    .line 428
    .local v1, "$i$a$-cache-IsolationScreenKt$IsolationScreen$4$2$10$2":I
    move/from16 v16, v1

    .end local v1    # "$i$a$-cache-IsolationScreenKt$IsolationScreen$4$2$10$2":I
    .local v16, "$i$a$-cache-IsolationScreenKt$IsolationScreen$4$2$10$2":I
    new-instance v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$10$2$1;

    iget-object v2, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$4;->$onNavigateToAppIsolation$inlined:Lkotlin/jvm/functions/Function2;

    invoke-direct {v1, v2, v5}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$2$10$2$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 431
    .end local v16    # "$i$a$-cache-IsolationScreenKt$IsolationScreen$4$2$10$2":I
    nop

    .line 432
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 433
    nop

    .line 430
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_f4
    nop

    .line 429
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 428
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    .end local v17    # "invalid$iv":Z
    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v1, v6, 0x3

    and-int/lit8 v12, v1, 0xe

    move-object v7, v5

    move-object v11, v14

    invoke-static/range {v7 .. v12}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->AppListItem(Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 424
    invoke-static {v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 435
    .end local v8    # "iso":Z
    nop

    .line 146
    .end local v5    # "app":Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    .end local v6    # "$changed":I
    .end local v13    # "$this$invoke_u24lambda_u244":Landroidx/compose/foundation/lazy/LazyItemScope;
    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$a$-items$default-IsolationScreenKt$IsolationScreen$4$2$10":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_112

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 147
    :cond_112
    :goto_112
    return-void
.end method
