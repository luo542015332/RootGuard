.class final Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LogsScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/RowScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/layout/RowScope;",
        "invoke",
        "(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $viewModel:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;)V
    .locals 1

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2$2;->$viewModel:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;

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

    .line 41
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2$2;->invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V
    .locals 11
    .param p1, "$this$TopAppBar"    # Landroidx/compose/foundation/layout/RowScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    const-string v0, "$this$TopAppBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "C41@1301L265,47@1587L262:LogsScreen.kt#k9h623"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 42
    and-int/lit8 v0, p3, 0x51

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.pandasu.turbo.ui.screens.logs.LogsScreen.<anonymous>.<anonymous> (LogsScreen.kt:41)"

    const v2, 0x2420c7f

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2$2$1;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2$2;->$viewModel:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2$2$1;-><init>(Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;)V

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v0, Lcom/pandasu/turbo/ui/screens/logs/ComposableSingletons$LogsScreenKt;->INSTANCE:Lcom/pandasu/turbo/ui/screens/logs/ComposableSingletons$LogsScreenKt;

    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/screens/logs/ComposableSingletons$LogsScreenKt;->getLambda-3$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    const/high16 v9, 0x30000

    const/16 v10, 0x1e

    move-object v8, p2

    invoke-static/range {v2 .. v10}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 48
    new-instance v0, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2$2$2;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2$2;->$viewModel:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2$2$2;-><init>(Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;)V

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function0;

    sget-object v0, Lcom/pandasu/turbo/ui/screens/logs/ComposableSingletons$LogsScreenKt;->INSTANCE:Lcom/pandasu/turbo/ui/screens/logs/ComposableSingletons$LogsScreenKt;

    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/screens/logs/ComposableSingletons$LogsScreenKt;->getLambda-4$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static/range {v2 .. v10}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 54
    :cond_3
    :goto_1
    return-void
.end method
