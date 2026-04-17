.class final Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IsolationScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt;->IsolationScreen(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Landroidx/compose/runtime/Composer;II)V
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
    c = "com.pandasu.turbo.ui.screens.isolation.IsolationScreenKt$IsolationScreen$2"
    f = "IsolationScreen.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $appName:Ljava/lang/String;

.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;->$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;->$appName:Ljava/lang/String;

    iput-object p3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;->$viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 7
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

    new-instance v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;->$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;->$appName:Ljava/lang/String;

    iget-object v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;->$viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 46
    iget v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;->label:I

    packed-switch v0, :pswitch_data_24

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;->$packageName:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v2, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;->$appName:Ljava/lang/String;

    if-eqz v2, :cond_21

    iget-object v3, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationScreenKt$IsolationScreen$2;->$viewModel:Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;

    invoke-virtual {v3, v1, v2}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationViewModel;->loadAppConfig(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
