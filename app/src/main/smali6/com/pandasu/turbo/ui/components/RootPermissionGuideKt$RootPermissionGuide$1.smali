.class final Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootPermissionGuide.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt;->RootPermissionGuide(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
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
    c = "com.pandasu.turbo.ui.components.RootPermissionGuideKt$RootPermissionGuide$1"
    f = "RootPermissionGuide.kt"
    i = {}
    l = {
        0x31,
        0x37
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $isChecking$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onAuthorized:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $status$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->$onAuthorized:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->$status$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->$isChecking$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;

    iget-object v1, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->$onAuthorized:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->$status$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->$isChecking$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 42
    iget v1, p0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v1    # "this":Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v0    # "this":Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 43
    .restart local v1    # "this":Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_0
    nop

    .line 44
    iget-object v2, v1, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->$status$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v3, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->INSTANCE:Lcom/pandasu/turbo/util/RootEnvironmentDetector;

    iget-object v4, v1, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->$context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->getAuthorizationStatus(Landroid/content/Context;)Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt;->access$RootPermissionGuide$lambda$2(Landroidx/compose/runtime/MutableState;Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;)V

    .line 45
    iget-object v2, v1, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->$isChecking$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt;->access$RootPermissionGuide$lambda$5(Landroidx/compose/runtime/MutableState;Z)V

    .line 48
    iget-object v2, v1, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->$status$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt;->access$RootPermissionGuide$lambda$1(Landroidx/compose/runtime/MutableState;)Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->getHasPermission()Z

    move-result v2

    if-ne v2, v4, :cond_0

    move v3, v4

    :cond_0
    if-eqz v3, :cond_2

    .line 49
    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput v4, v1, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->label:I

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4, v2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_1

    .line 42
    return-object v0

    .line 49
    :cond_1
    move-object v0, v1

    .line 50
    .end local v1    # "this":Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;
    .restart local v0    # "this":Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;
    :goto_1
    iget-object v1, v0, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->$onAuthorized:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 51
    nop

    .line 57
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 55
    .end local v0    # "this":Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;
    .restart local v1    # "this":Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;
    :cond_2
    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x2

    iput v3, v1, Lcom/pandasu/turbo/ui/components/RootPermissionGuideKt$RootPermissionGuide$1;->label:I

    const-wide/16 v3, 0xbb8

    invoke-static {v3, v4, v2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3

    .line 42
    return-object v0

    .line 55
    :cond_3
    :goto_2
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
