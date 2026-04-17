.class final Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LogsScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt;->LogsScreen(Lkotlin/jvm/functions/Function0;Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;Landroidx/compose/runtime/Composer;II)V
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
.field final synthetic $onNavigateBack:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2;->$onNavigateBack:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2;->$viewModel:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 33
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .registers 14
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C33@987L894:LogsScreen.kt#k9h623"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 34
    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_15

    .line 55
    :cond_11
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_62

    .line 34
    :cond_15
    :goto_15
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, -0x1

    const-string v1, "com.pandasu.turbo.ui.screens.logs.LogsScreen.<anonymous> (LogsScreen.kt:33)"

    const v2, 0x1b0e4550

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_24
    sget-object v0, Lcom/pandasu/turbo/ui/screens/logs/ComposableSingletons$LogsScreenKt;->INSTANCE:Lcom/pandasu/turbo/ui/screens/logs/ComposableSingletons$LogsScreenKt;

    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/screens/logs/ComposableSingletons$LogsScreenKt;->getLambda-1$app_debug()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2$1;

    iget-object v3, p0, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2;->$onNavigateBack:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v3}, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    const v3, 0x51566e96

    const/4 v4, 0x1

    invoke-static {p1, v3, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 41
    new-instance v0, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2$2;

    iget-object v5, p0, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2;->$viewModel:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;

    invoke-direct {v0, v5}, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2$2;-><init>(Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;)V

    const v5, 0x2420c7f

    invoke-static {p1, v5, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0xd86

    const/16 v10, 0x72

    .line 34
    move-object v8, p1

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/AppBarKt;->TopAppBar(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 56
    :cond_62
    :goto_62
    return-void
.end method
