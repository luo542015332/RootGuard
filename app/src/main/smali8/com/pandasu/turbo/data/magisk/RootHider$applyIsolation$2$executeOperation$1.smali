.class final Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$executeOperation$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "RootHider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2;->invokeSuspend$executeOperation(Lkotlinx/coroutines/CoroutineScope;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.pandasu.turbo.data.magisk.RootHider$applyIsolation$2"
    f = "RootHider.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x29e
    }
    m = "invokeSuspend$executeOperation"
    n = {
        "$this$withContext",
        "operationResults",
        "executedOperations",
        "operationName"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$executeOperation$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$executeOperation$1;->result:Ljava/lang/Object;

    iget v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$executeOperation$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2$executeOperation$1;->label:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static/range {v1 .. v6}, Lcom/pandasu/turbo/data/magisk/RootHider$applyIsolation$2;->access$invokeSuspend$executeOperation(Lkotlinx/coroutines/CoroutineScope;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
