.class final Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$3$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LogsScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$3;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nLogsScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogsScreen.kt\ncom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$3$1$1\n+ 2 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt\n*L\n1#1,125:1\n136#2,12:126\n*S KotlinDebug\n*F\n+ 1 LogsScreen.kt\ncom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$3$1$1\n*L\n65#1:126,12\n*E\n"
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
.field final synthetic $uiState$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$3$1$1;->$uiState$delegate:Landroidx/compose/runtime/State;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "p1"    # Ljava/lang/Object;

    .line 64
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p0, v0}, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$3$1$1;->invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyListScope;)V
    .registers 12
    .param p1, "$this$LazyColumn"    # Landroidx/compose/foundation/lazy/LazyListScope;

    const-string v0, "$this$LazyColumn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$3$1$1;->$uiState$delegate:Landroidx/compose/runtime/State;

    # invokes: Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt;->LogsScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;
    invoke-static {v0}, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt;->access$LogsScreen$lambda$0(Landroidx/compose/runtime/State;)Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pandasu/turbo/ui/screens/logs/LogsUiState;->getLogs()Ljava/util/List;

    move-result-object v0

    .local v0, "items$iv":Ljava/util/List;
    move-object v1, p1

    .line 126
    .local v1, "$this$items_u24default$iv":Landroidx/compose/foundation/lazy/LazyListScope;
    nop

    .line 128
    const/4 v2, 0x0

    .line 126
    .local v2, "key$iv":Lkotlin/jvm/functions/Function1;
    nop

    .line 129
    sget-object v3, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$3$1$1$invoke$$inlined$items$default$1;->INSTANCE:Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$3$1$1$invoke$$inlined$items$default$1;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 126
    .local v3, "contentType$iv":Lkotlin/jvm/functions/Function1;
    const/4 v4, 0x0

    .line 131
    .local v4, "$i$f$items":I
    nop

    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 133
    nop

    .line 131
    new-instance v6, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$3$1$1$invoke$$inlined$items$default$3;

    invoke-direct {v6, v3, v0}, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$3$1$1$invoke$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 135
    new-instance v7, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$3$1$1$invoke$$inlined$items$default$4;

    invoke-direct {v7, v0}, Lcom/pandasu/turbo/ui/screens/logs/LogsScreenKt$LogsScreen$3$1$1$invoke$$inlined$items$default$4;-><init>(Ljava/util/List;)V

    const v8, -0x25b7f321

    const/4 v9, 0x1

    invoke-static {v8, v9, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v7

    check-cast v7, Lkotlin/jvm/functions/Function4;

    .line 131
    const/4 v8, 0x0

    invoke-interface {v1, v5, v8, v6, v7}, Landroidx/compose/foundation/lazy/LazyListScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 137
    nop

    .line 68
    .end local v0    # "items$iv":Ljava/util/List;
    .end local v1    # "$this$items_u24default$iv":Landroidx/compose/foundation/lazy/LazyListScope;
    .end local v2    # "key$iv":Lkotlin/jvm/functions/Function1;
    .end local v3    # "contentType$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "$i$f$items":I
    return-void
.end method
