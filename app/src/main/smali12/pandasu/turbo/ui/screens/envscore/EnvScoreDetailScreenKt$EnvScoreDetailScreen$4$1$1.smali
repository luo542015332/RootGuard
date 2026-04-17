.class final Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EnvScoreDetailScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnvScoreDetailScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnvScoreDetailScreen.kt\ncom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,1008:1\n1864#2,2:1009\n1866#2:1018\n1097#3,6:1011\n154#4:1017\n*S KotlinDebug\n*F\n+ 1 EnvScoreDetailScreen.kt\ncom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1\n*L\n91#1:1009,2\n91#1:1018\n94#1:1011,6\n95#1:1017\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1;->$tabs:Ljava/util/List;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1;->$selectedTabIndex$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 90
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .registers 30
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p2

    const-string v1, "C*91@3342L937:EnvScoreDetailScreen.kt#jjkgld"

    invoke-static {v15, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 91
    and-int/lit8 v1, v14, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_1c

    .line 113
    :cond_17
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_fd

    .line 91
    :cond_1c
    :goto_1c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, -0x1

    const-string v2, "com.pandasu.turbo.ui.screens.envscore.EnvScoreDetailScreen.<anonymous>.<anonymous>.<anonymous> (EnvScoreDetailScreen.kt:90)"

    const v3, -0x56a1a20a

    invoke-static {v3, v14, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2b
    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1;->$tabs:Ljava/util/List;

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/Iterable;

    .local v16, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    iget-object v13, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1;->$selectedTabIndex$delegate:Landroidx/compose/runtime/MutableState;

    const/16 v17, 0x0

    .line 1009
    .local v17, "$i$f$forEachIndexed":I
    const/4 v1, 0x0

    .line 1010
    .local v1, "index$iv":I
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .local v19, "item$iv":Ljava/lang/Object;
    add-int/lit8 v20, v1, 0x1

    .end local v1    # "index$iv":I
    .local v20, "index$iv":I
    if-gez v1, :cond_4b

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4b
    move-object/from16 v12, v19

    check-cast v12, Ljava/lang/String;

    .local v12, "title":Ljava/lang/String;
    move v11, v1

    .local v11, "index":I
    const/16 v21, 0x0

    .line 93
    .local v21, "$i$a$-forEachIndexed-EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1$1":I
    # invokes: Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->EnvScoreDetailScreen$lambda$1(Landroidx/compose/runtime/MutableState;)I
    invoke-static {v13}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->access$EnvScoreDetailScreen$lambda$1(Landroidx/compose/runtime/MutableState;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v11, :cond_5b

    move v1, v2

    goto :goto_5c

    :cond_5b
    const/4 v1, 0x0

    :goto_5c
    const v3, 0x106a263b

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v4

    or-int/2addr v3, v4

    .line 94
    nop

    .local v3, "invalid$iv":Z
    move-object/from16 v4, p1

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 1011
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 1012
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_81

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_7f

    goto :goto_81

    .line 1016
    :cond_7f
    move-object v8, v6

    goto :goto_8e

    .line 1013
    :cond_81
    :goto_81
    const/4 v8, 0x0

    .line 94
    .local v8, "$i$a$-cache-EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1$1$1":I
    new-instance v9, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1$1$1$1;

    invoke-direct {v9, v11, v13}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1$1$1$1;-><init>(ILandroidx/compose/runtime/MutableState;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1013
    .end local v8    # "$i$a$-cache-EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1$1$1":I
    move-object v8, v9

    .line 1014
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1015
    nop

    .line 1012
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_8e
    nop

    .line 1011
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 94
    .end local v3    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    move-object v3, v8

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 95
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    const/16 v5, 0x8

    .local v5, "$this$dp$iv":I
    const/4 v6, 0x0

    .line 1017
    .local v6, "$i$f$getDp":I
    int-to-float v7, v5

    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 95
    .end local v5    # "$this$dp$iv":I
    .end local v6    # "$i$f$getDp":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v7, v5, v2, v6}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v5, 0x0

    .line 96
    new-instance v6, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1$1$2;

    invoke-direct {v6, v12}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1$1$2;-><init>(Ljava/lang/String;)V

    const v7, 0xa6b4b42

    invoke-static {v15, v7, v2, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 102
    new-instance v7, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1$1$3;

    invoke-direct {v7, v11, v12}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1$1$3;-><init>(ILjava/lang/String;)V

    const v8, 0x53f99ee1

    invoke-static {v15, v8, v2, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const-wide/16 v8, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const v25, 0x36180

    const/16 v26, 0x1c8

    .line 92
    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v8

    move-wide/from16 v9, v22

    move/from16 v22, v11

    .end local v11    # "index":I
    .local v22, "index":I
    move-object/from16 v11, v24

    move-object/from16 v23, v12

    .end local v12    # "title":Ljava/lang/String;
    .local v23, "title":Ljava/lang/String;
    move-object/from16 v12, p1

    move-object/from16 v24, v13

    move/from16 v13, v25

    move/from16 v14, v26

    invoke-static/range {v1 .. v14}, Landroidx/compose/material3/TabKt;->Tab-wqdebIU(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    .line 113
    nop

    .line 1010
    .end local v21    # "$i$a$-forEachIndexed-EnvScoreDetailScreenKt$EnvScoreDetailScreen$4$1$1$1":I
    .end local v22    # "index":I
    .end local v23    # "title":Ljava/lang/String;
    move/from16 v14, p2

    move/from16 v1, v20

    move-object/from16 v13, v24

    .end local v19    # "item$iv":Ljava/lang/Object;
    goto/16 :goto_3a

    .line 1018
    .end local v20    # "index$iv":I
    .restart local v1    # "index$iv":I
    :cond_f3
    nop

    .end local v1    # "index$iv":I
    .end local v16    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$forEachIndexed":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_fd

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 114
    :cond_fd
    :goto_fd
    return-void
.end method
