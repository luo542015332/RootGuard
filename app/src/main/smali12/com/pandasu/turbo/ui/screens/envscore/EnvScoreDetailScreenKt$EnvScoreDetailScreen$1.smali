.class final Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EnvScoreDetailScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.pandasu.turbo.ui.screens.envscore.EnvScoreDetailScreenKt$EnvScoreDetailScreen$1"
    f = "EnvScoreDetailScreen.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $viewModel:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

.field label:I


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$1;->$viewModel:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$1;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$1;->$viewModel:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-direct {v0, v1, p2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$1;-><init>(Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 54
    iget v0, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 55
    .local v0, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$1;->$viewModel:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-virtual {v1}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->loadData()V

    .line 56
    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$1;->$viewModel:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-virtual {v1}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->scanDetectors()V

    .line 57
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
