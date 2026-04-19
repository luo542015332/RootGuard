.class final Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LogsScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2$2;->invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $viewModel:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;)V
    .locals 1

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2$2$1;->$viewModel:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$2$2$1;->$viewModel:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;

    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel;->onClearLogs()V

    .line 44
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "\u7528\u6237\u624b\u52a8\u6e05\u7a7a\u65e5\u5fd7"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->i(Ljava/lang/String;)V

    .line 45
    return-void
.end method
