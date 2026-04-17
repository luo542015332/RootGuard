.class final Lcom/pandasu/turbo/data/repository/MagiskRepository$getMagiskVersion$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "MagiskRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/data/repository/MagiskRepository;->getMagiskVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.pandasu.turbo.data.repository.MagiskRepository"
    f = "MagiskRepository.kt"
    i = {}
    l = {
        0x11
    }
    m = "getMagiskVersion"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/pandasu/turbo/data/repository/MagiskRepository;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/data/repository/MagiskRepository;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/repository/MagiskRepository;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/data/repository/MagiskRepository$getMagiskVersion$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pandasu/turbo/data/repository/MagiskRepository$getMagiskVersion$1;->this$0:Lcom/pandasu/turbo/data/repository/MagiskRepository;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lcom/pandasu/turbo/data/repository/MagiskRepository$getMagiskVersion$1;->result:Ljava/lang/Object;

    iget v0, p0, Lcom/pandasu/turbo/data/repository/MagiskRepository$getMagiskVersion$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/pandasu/turbo/data/repository/MagiskRepository$getMagiskVersion$1;->label:I

    iget-object v0, p0, Lcom/pandasu/turbo/data/repository/MagiskRepository$getMagiskVersion$1;->this$0:Lcom/pandasu/turbo/data/repository/MagiskRepository;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/data/repository/MagiskRepository;->getMagiskVersion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
