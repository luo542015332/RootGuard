.class final Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RootHider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        ""
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
    c = "com.pandasu.turbo.data.magisk.RootHider$applyIsolation$2$r4$1"
    f = "RootHider.kt"
    i = {}
    l = {
        0x2be
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $config:Lcom/pandasu/turbo/data/model/IsolationConfig;

.field final synthetic $packageName:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/pandasu/turbo/data/magisk/RootHider;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/data/model/IsolationConfig;Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            "Lcom/pandasu/turbo/data/magisk/RootHider;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;->$config:Lcom/pandasu/turbo/data/model/IsolationConfig;

    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iput-object p3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;->$packageName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;->$config:Lcom/pandasu/turbo/data/model/IsolationConfig;

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;->$packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;-><init>(Lcom/pandasu/turbo/data/model/IsolationConfig;Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 701
    iget v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;->label:I

    packed-switch v1, :pswitch_data_44

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_11
    move-object v0, p0

    .local v0, "this":Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, p1

    goto :goto_37

    .end local v0    # "this":Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 702
    .local v1, "this":Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;->$config:Lcom/pandasu/turbo/data/model/IsolationConfig;

    invoke-virtual {v2}, Lcom/pandasu/turbo/data/model/IsolationConfig;->getHideBusybox()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3e

    iget-object v2, v1, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;->this$0:Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;->$packageName:Ljava/lang/String;

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v3, v1, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$r4$1;->label:I

    # invokes: Lcom/pandasu/turbo/data/magisk/RootHider;->hideBusyboxForPackage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {v2, v4, v5}, Lcom/pandasu/turbo/data/magisk/RootHider;->access$hideBusyboxForPackage(Lcom/pandasu/turbo/data/magisk/RootHider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_35

    .line 701
    return-object v0

    .line 702
    :cond_35
    move-object v0, p1

    move-object p1, v2

    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_37
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object p1, v0

    .end local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_3e
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_18
        :pswitch_11
    .end packed-switch
.end method
