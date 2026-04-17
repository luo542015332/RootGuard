.class final Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IsolationScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$1$2;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/pandasu/turbo/data/model/IsolationLevel;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/pandasu/turbo/data/model/IsolationLevel;",
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
.field final synthetic $appName:Ljava/lang/String;

.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$1$2$1;->$viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$1$2$1;->$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$1$2$1;->$appName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "p1"    # Ljava/lang/Object;

    .line 72
    move-object v0, p1

    check-cast v0, Lcom/pandasu/turbo/data/model/IsolationLevel;

    invoke-virtual {p0, v0}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$1$2$1;->invoke(Lcom/pandasu/turbo/data/model/IsolationLevel;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/pandasu/turbo/data/model/IsolationLevel;)V
    .registers 5
    .param p1, "it"    # Lcom/pandasu/turbo/data/model/IsolationLevel;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$1$2$1;->$viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$1$2$1;->$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$4$1$2$1;->$appName:Ljava/lang/String;

    if-nez v2, :cond_f

    const-string v2, ""

    :cond_f
    invoke-virtual {v0, v1, v2, p1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->applyPreset(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/model/IsolationLevel;)V

    return-void
.end method
