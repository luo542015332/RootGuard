.class public final Lcom/pandasu/turbo/data/repository/MagiskRepository;
.super Ljava/lang/Object;
.source "MagiskRepository.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u0006H\u0086@\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\u0008\u001a\u00020\u0006H\u0086@\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/repository/MagiskRepository;",
        "",
        "magiskProvider",
        "Lcom/pandasu/turbo/data/magisk/MagiskProvider;",
        "(Lcom/pandasu/turbo/data/magisk/MagiskProvider;)V",
        "getKernelVersion",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getMagiskVersion",
        "isMagiskInstalled",
        "",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final magiskProvider:Lcom/pandasu/turbo/data/magisk/MagiskProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/data/repository/MagiskRepository;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/pandasu/turbo/data/magisk/MagiskProvider;)V
    .registers 3
    .param p1, "magiskProvider"    # Lcom/pandasu/turbo/data/magisk/MagiskProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "magiskProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/pandasu/turbo/data/repository/MagiskRepository;->magiskProvider:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    .line 10
    return-void
.end method


# virtual methods
.method public final getKernelVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 35
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/data/repository/MagiskRepository$getKernelVersion$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/pandasu/turbo/data/repository/MagiskRepository$getKernelVersion$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    return-object v0
.end method

.method public final getMagiskVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/pandasu/turbo/data/repository/MagiskRepository$getMagiskVersion$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lcom/pandasu/turbo/data/repository/MagiskRepository$getMagiskVersion$1;

    iget v1, v0, Lcom/pandasu/turbo/data/repository/MagiskRepository$getMagiskVersion$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Lcom/pandasu/turbo/data/repository/MagiskRepository$getMagiskVersion$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/pandasu/turbo/data/repository/MagiskRepository$getMagiskVersion$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lcom/pandasu/turbo/data/repository/MagiskRepository$getMagiskVersion$1;

    invoke-direct {v0, p0, p1}, Lcom/pandasu/turbo/data/repository/MagiskRepository$getMagiskVersion$1;-><init>(Lcom/pandasu/turbo/data/repository/MagiskRepository;Lkotlin/coroutines/Continuation;)V

    :goto_19
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lcom/pandasu/turbo/data/repository/MagiskRepository$getMagiskVersion$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 16
    iget v2, p1, Lcom/pandasu/turbo/data/repository/MagiskRepository$getMagiskVersion$1;->label:I

    packed-switch v2, :pswitch_data_74

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_2d
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    goto :goto_42

    :pswitch_32
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 17
    .local v2, "this":Lcom/pandasu/turbo/data/repository/MagiskRepository;
    iget-object v3, v2, Lcom/pandasu/turbo/data/repository/MagiskRepository;->magiskProvider:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    const/4 v4, 0x1

    iput v4, p1, Lcom/pandasu/turbo/data/repository/MagiskRepository$getMagiskVersion$1;->label:I

    invoke-virtual {v3, p1}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->getMagiskVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "this":Lcom/pandasu/turbo/data/repository/MagiskRepository;
    if-ne v2, v1, :cond_42

    .line 16
    return-object v1

    :cond_42
    :goto_42
    move-object v1, v2

    check-cast v1, Lcom/pandasu/turbo/data/magisk/MagiskVersion;

    .line 18
    .local v1, "version":Lcom/pandasu/turbo/data/magisk/MagiskVersion;
    invoke-virtual {v1}, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->isInstalled()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 19
    invoke-virtual {v1}, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->getVersionCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_73

    .line 21
    .end local v1    # "version":Lcom/pandasu/turbo/data/magisk/MagiskVersion;
    :cond_71
    const-string v2, "\u672a\u5b89\u88c5"

    .line 18
    :goto_73
    return-object v2

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2d
    .end packed-switch
.end method

.method public final isMagiskInstalled()Z
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/pandasu/turbo/data/repository/MagiskRepository;->magiskProvider:Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    invoke-virtual {v0}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;->isMagiskInstalled()Z

    move-result v0

    return v0
.end method
