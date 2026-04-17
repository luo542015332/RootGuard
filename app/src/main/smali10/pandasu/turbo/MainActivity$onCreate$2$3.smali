.class final Lcom/pandasu/turbo/MainActivity$onCreate$2$3;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/MainActivity$onCreate$2;->invoke(Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $authorizationStatus$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/pandasu/turbo/MainActivity;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/MainActivity;Landroidx/compose/runtime/MutableState;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/MainActivity;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/MainActivity$onCreate$2$3;->this$0:Lcom/pandasu/turbo/MainActivity;

    iput-object p2, p0, Lcom/pandasu/turbo/MainActivity$onCreate$2$3;->$authorizationStatus$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 123
    invoke-virtual {p0}, Lcom/pandasu/turbo/MainActivity$onCreate$2$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 8

    .line 126
    iget-object v0, p0, Lcom/pandasu/turbo/MainActivity$onCreate$2$3;->this$0:Lcom/pandasu/turbo/MainActivity;

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/pandasu/turbo/MainActivity$onCreate$2$3$1;

    iget-object v4, p0, Lcom/pandasu/turbo/MainActivity$onCreate$2$3;->this$0:Lcom/pandasu/turbo/MainActivity;

    iget-object v5, p0, Lcom/pandasu/turbo/MainActivity$onCreate$2$3;->$authorizationStatus$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6}, Lcom/pandasu/turbo/MainActivity$onCreate$2$3$1;-><init>(Lcom/pandasu/turbo/MainActivity;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 130
    return-void
.end method
