.class final Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;
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
    c = "com.pandasu.turbo.ui.screens.envscore.EnvScoreDetailScreenKt$EnvScoreDetailScreen$2"
    f = "EnvScoreDetailScreen.kt"
    i = {}
    l = {
        0x3e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $message$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;->$message$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;->$viewModel:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;->$message$delegate:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;->$viewModel:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;-><init>(Landroidx/compose/runtime/State;Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 60
    iget v1, p0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$a$-let-EnvScoreDetailScreenKt$EnvScoreDetailScreen$2$1":I
    iget-object v2, v0, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;
    .end local v1    # "$i$a$-let-EnvScoreDetailScreenKt$EnvScoreDetailScreen$2$1":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 61
    .local v1, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;->$message$delegate:Landroidx/compose/runtime/State;

    invoke-static {v2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt;->access$EnvScoreDetailScreen$lambda$8(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;->$viewModel:Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;

    const/4 v3, 0x0

    .line 62
    .local v3, "$i$a$-let-EnvScoreDetailScreenKt$EnvScoreDetailScreen$2$1":I
    iput-object v2, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v1, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;->label:I

    const-wide/16 v4, 0xbb8

    invoke-static {v4, v5, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 60
    return-object v0

    .line 62
    :cond_0
    move-object v0, v1

    move v1, v3

    .line 63
    .end local v3    # "$i$a$-let-EnvScoreDetailScreenKt$EnvScoreDetailScreen$2$1":I
    .restart local v0    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;
    .local v1, "$i$a$-let-EnvScoreDetailScreenKt$EnvScoreDetailScreen$2$1":I
    :goto_0
    invoke-virtual {v2}, Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailViewModel;->clearMessage()V

    .line 64
    nop

    .line 61
    .end local v1    # "$i$a$-let-EnvScoreDetailScreenKt$EnvScoreDetailScreen$2$1":I
    move-object v1, v0

    .line 65
    .end local v0    # "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;
    .local v1, "this":Lcom/pandasu/turbo/ui/screens/envscore/EnvScoreDetailScreenKt$EnvScoreDetailScreen$2;
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
