.class final Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CompatibilityTester.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/utils/CompatibilityTester;->runFullCompatibilityTest(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.pandasu.turbo.utils.CompatibilityTester$runFullCompatibilityTest$1"
    f = "CompatibilityTester.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
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

    new-instance v0, Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;

    iget-object v1, p0, Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2, p2}, Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 23
    iget v0, p0, Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;->label:I

    packed-switch v0, :pswitch_data_76

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 24
    .local v0, "this":Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;
    .local p1, "$result":Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 27
    .local v1, "results":Ljava/util/List;
    sget-object v2, Lcom/pandasu/turbo/utils/CompatibilityTester;->INSTANCE:Lcom/pandasu/turbo/utils/CompatibilityTester;

    # invokes: Lcom/pandasu/turbo/utils/CompatibilityTester;->testSystemInfo()Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    invoke-static {v2}, Lcom/pandasu/turbo/utils/CompatibilityTester;->access$testSystemInfo(Lcom/pandasu/turbo/utils/CompatibilityTester;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v2, Lcom/pandasu/turbo/utils/CompatibilityTester;->INSTANCE:Lcom/pandasu/turbo/utils/CompatibilityTester;

    # invokes: Lcom/pandasu/turbo/utils/CompatibilityTester;->testVersionCompatibility()Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    invoke-static {v2}, Lcom/pandasu/turbo/utils/CompatibilityTester;->access$testVersionCompatibility(Lcom/pandasu/turbo/utils/CompatibilityTester;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v2, Lcom/pandasu/turbo/utils/CompatibilityTester;->INSTANCE:Lcom/pandasu/turbo/utils/CompatibilityTester;

    # invokes: Lcom/pandasu/turbo/utils/CompatibilityTester;->testDeviceManufacturer()Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    invoke-static {v2}, Lcom/pandasu/turbo/utils/CompatibilityTester;->access$testDeviceManufacturer(Lcom/pandasu/turbo/utils/CompatibilityTester;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v2, Lcom/pandasu/turbo/utils/CompatibilityTester;->INSTANCE:Lcom/pandasu/turbo/utils/CompatibilityTester;

    # invokes: Lcom/pandasu/turbo/utils/CompatibilityTester;->testCustomOS()Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    invoke-static {v2}, Lcom/pandasu/turbo/utils/CompatibilityTester;->access$testCustomOS(Lcom/pandasu/turbo/utils/CompatibilityTester;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v2, Lcom/pandasu/turbo/utils/CompatibilityTester;->INSTANCE:Lcom/pandasu/turbo/utils/CompatibilityTester;

    iget-object v3, v0, Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;->$context:Landroid/content/Context;

    # invokes: Lcom/pandasu/turbo/utils/CompatibilityTester;->testFeatureSupport(Landroid/content/Context;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    invoke-static {v2, v3}, Lcom/pandasu/turbo/utils/CompatibilityTester;->access$testFeatureSupport(Lcom/pandasu/turbo/utils/CompatibilityTester;Landroid/content/Context;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v2, Lcom/pandasu/turbo/utils/CompatibilityTester;->INSTANCE:Lcom/pandasu/turbo/utils/CompatibilityTester;

    iget-object v3, v0, Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;->$context:Landroid/content/Context;

    # invokes: Lcom/pandasu/turbo/utils/CompatibilityTester;->testAppListRetrieval(Landroid/content/Context;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    invoke-static {v2, v3}, Lcom/pandasu/turbo/utils/CompatibilityTester;->access$testAppListRetrieval(Lcom/pandasu/turbo/utils/CompatibilityTester;Landroid/content/Context;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v2, Lcom/pandasu/turbo/utils/CompatibilityTester;->INSTANCE:Lcom/pandasu/turbo/utils/CompatibilityTester;

    # invokes: Lcom/pandasu/turbo/utils/CompatibilityTester;->testPropertySpoof()Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    invoke-static {v2}, Lcom/pandasu/turbo/utils/CompatibilityTester;->access$testPropertySpoof(Lcom/pandasu/turbo/utils/CompatibilityTester;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v2, Lcom/pandasu/turbo/utils/CompatibilityTester;->INSTANCE:Lcom/pandasu/turbo/utils/CompatibilityTester;

    # invokes: Lcom/pandasu/turbo/utils/CompatibilityTester;->testRootAccess()Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    invoke-static {v2}, Lcom/pandasu/turbo/utils/CompatibilityTester;->access$testRootAccess(Lcom/pandasu/turbo/utils/CompatibilityTester;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v2, Lcom/pandasu/turbo/utils/CompatibilityTester;->INSTANCE:Lcom/pandasu/turbo/utils/CompatibilityTester;

    # invokes: Lcom/pandasu/turbo/utils/CompatibilityTester;->generateComprehensiveReport(Ljava/util/List;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    invoke-static {v2, v1}, Lcom/pandasu/turbo/utils/CompatibilityTester;->access$generateComprehensiveReport(Lcom/pandasu/turbo/utils/CompatibilityTester;Ljava/util/List;)Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;

    move-result-object v2

    .line 52
    .local v2, "finalResult":Lcom/pandasu/turbo/utils/CompatibilityTester$TestResult;
    iget-object v3, v0, Lcom/pandasu/turbo/utils/CompatibilityTester$runFullCompatibilityTest$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
