.class public final Landroidx/datastore/core/SingleProcessDataStore;
.super Ljava/lang/Object;
.source "SingleProcessDataStore.kt"

# interfaces
.implements Landroidx/datastore/core/DataStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/core/SingleProcessDataStore$Message;,
        Landroidx/datastore/core/SingleProcessDataStore$UncloseableOutputStream;,
        Landroidx/datastore/core/SingleProcessDataStore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/core/DataStore<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSingleProcessDataStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SingleProcessDataStore.kt\nandroidx/datastore/core/SingleProcessDataStore\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,497:1\n1849#2,2:498\n109#3,11:500\n*S KotlinDebug\n*F\n+ 1 SingleProcessDataStore.kt\nandroidx/datastore/core/SingleProcessDataStore\n*L\n348#1:498,2\n350#1:500,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000 F*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0003FGHB\u007f\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012?\u0008\u0002\u0010\u0008\u001a9\u00125\u00123\u0008\u0001\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u000b\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00110\n0\t\u0012\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J\u001f\u0010+\u001a\u00020\u00102\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00028\u00000-H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010.J\u001f\u0010/\u001a\u00020\u00102\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00028\u000001H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00102J\u0011\u00103\u001a\u00020\u0010H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00104J\u0011\u00105\u001a\u00020\u0010H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00104J\u0011\u00106\u001a\u00020\u0010H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00104J\u0011\u00107\u001a\u00028\u0000H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00104J\u0011\u00108\u001a\u00028\u0000H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00104JL\u00109\u001a\u00028\u000021\u0010:\u001a-\u0008\u0001\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(;\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00110\n2\u0006\u0010<\u001a\u00020=H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010>JD\u0010?\u001a\u00028\u000021\u0010:\u001a-\u0008\u0001\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(;\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00110\nH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010@J\u001b\u0010A\u001a\u00020\u00102\u0006\u0010B\u001a\u00028\u0000H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008C\u0010DJ\u000c\u0010E\u001a\u00020\u0010*\u00020\u0005H\u0002R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082D\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u001b0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001dX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR \u0010 \u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\"0!X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008#\u0010$R\u001b\u0010%\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008&\u0010\'RJ\u0010*\u001a;\u00125\u00123\u0008\u0001\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u000b\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00110\n\u0018\u00010\tX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006I"
    }
    d2 = {
        "Landroidx/datastore/core/SingleProcessDataStore;",
        "T",
        "Landroidx/datastore/core/DataStore;",
        "produceFile",
        "Lkotlin/Function0;",
        "Ljava/io/File;",
        "serializer",
        "Landroidx/datastore/core/Serializer;",
        "initTasksList",
        "",
        "Lkotlin/Function2;",
        "Landroidx/datastore/core/InitializerApi;",
        "Lkotlin/ParameterName;",
        "name",
        "api",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "corruptionHandler",
        "Landroidx/datastore/core/CorruptionHandler;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Lkotlin/jvm/functions/Function0;Landroidx/datastore/core/Serializer;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lkotlinx/coroutines/CoroutineScope;)V",
        "SCRATCH_SUFFIX",
        "",
        "actor",
        "Landroidx/datastore/core/SimpleActor;",
        "Landroidx/datastore/core/SingleProcessDataStore$Message;",
        "data",
        "Lkotlinx/coroutines/flow/Flow;",
        "getData",
        "()Lkotlinx/coroutines/flow/Flow;",
        "downstreamFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Landroidx/datastore/core/State;",
        "getDownstreamFlow$annotations",
        "()V",
        "file",
        "getFile",
        "()Ljava/io/File;",
        "file$delegate",
        "Lkotlin/Lazy;",
        "initTasks",
        "handleRead",
        "read",
        "Landroidx/datastore/core/SingleProcessDataStore$Message$Read;",
        "(Landroidx/datastore/core/SingleProcessDataStore$Message$Read;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleUpdate",
        "update",
        "Landroidx/datastore/core/SingleProcessDataStore$Message$Update;",
        "(Landroidx/datastore/core/SingleProcessDataStore$Message$Update;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readAndInit",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readAndInitOrPropagateAndThrowFailure",
        "readAndInitOrPropagateFailure",
        "readData",
        "readDataOrHandleCorruption",
        "transformAndWrite",
        "transform",
        "t",
        "callerContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateData",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeData",
        "newData",
        "writeData$datastore_core",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createParentDirectories",
        "Companion",
        "Message",
        "UncloseableOutputStream",
        "datastore-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/datastore/core/SingleProcessDataStore$Companion;

.field private static final activeFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final activeFilesLock:Ljava/lang/Object;


# instance fields
.field private final SCRATCH_SUFFIX:Ljava/lang/String;

.field private final actor:Landroidx/datastore/core/SimpleActor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/SimpleActor<",
            "Landroidx/datastore/core/SingleProcessDataStore$Message<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final corruptionHandler:Landroidx/datastore/core/CorruptionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/CorruptionHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final data:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final downstreamFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Landroidx/datastore/core/State<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final file$delegate:Lkotlin/Lazy;

.field private initTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/datastore/core/InitializerApi<",
            "TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final produceFile:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final serializer:Landroidx/datastore/core/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/Serializer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 163
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/datastore/core/SingleProcessDataStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/datastore/core/SingleProcessDataStore;->Companion:Landroidx/datastore/core/SingleProcessDataStore$Companion;

    .line 492
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    sput-object v0, Landroidx/datastore/core/SingleProcessDataStore;->activeFiles:Ljava/util/Set;

    .line 494
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/datastore/core/SingleProcessDataStore;->activeFilesLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/datastore/core/Serializer;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lkotlinx/coroutines/CoroutineScope;)V
    .registers 11
    .param p1, "produceFile"    # Lkotlin/jvm/functions/Function0;
    .param p2, "serializer"    # Landroidx/datastore/core/Serializer;
    .param p3, "initTasksList"    # Ljava/util/List;
    .param p4, "corruptionHandler"    # Landroidx/datastore/core/CorruptionHandler;
    .param p5, "scope"    # Lkotlinx/coroutines/CoroutineScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/io/File;",
            ">;",
            "Landroidx/datastore/core/Serializer<",
            "TT;>;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/datastore/core/InitializerApi<",
            "TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;>;",
            "Landroidx/datastore/core/CorruptionHandler<",
            "TT;>;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    const-string v0, "produceFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initTasksList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "corruptionHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->produceFile:Lkotlin/jvm/functions/Function0;

    .line 78
    iput-object p2, p0, Landroidx/datastore/core/SingleProcessDataStore;->serializer:Landroidx/datastore/core/Serializer;

    .line 87
    iput-object p4, p0, Landroidx/datastore/core/SingleProcessDataStore;->corruptionHandler:Landroidx/datastore/core/CorruptionHandler;

    .line 88
    iput-object p5, p0, Landroidx/datastore/core/SingleProcessDataStore;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 91
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$data$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/datastore/core/SingleProcessDataStore$data$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore;->data:Lkotlinx/coroutines/flow/Flow;

    .line 161
    const-string v0, ".tmp"

    iput-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore;->SCRATCH_SUFFIX:Ljava/lang/String;

    .line 163
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$file$2;

    invoke-direct {v0, p0}, Landroidx/datastore/core/SingleProcessDataStore$file$2;-><init>(Landroidx/datastore/core/SingleProcessDataStore;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore;->file$delegate:Lkotlin/Lazy;

    .line 182
    sget-object v0, Landroidx/datastore/core/UnInitialized;->INSTANCE:Landroidx/datastore/core/UnInitialized;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore;->downstreamFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 185
    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore;->initTasks:Ljava/util/List;

    .line 211
    new-instance v0, Landroidx/datastore/core/SimpleActor;

    .line 212
    nop

    .line 213
    new-instance v2, Landroidx/datastore/core/SingleProcessDataStore$actor$1;

    invoke-direct {v2, p0}, Landroidx/datastore/core/SingleProcessDataStore$actor$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 224
    sget-object v3, Landroidx/datastore/core/SingleProcessDataStore$actor$2;->INSTANCE:Landroidx/datastore/core/SingleProcessDataStore$actor$2;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 236
    new-instance v4, Landroidx/datastore/core/SingleProcessDataStore$actor$3;

    invoke-direct {v4, p0, v1}, Landroidx/datastore/core/SingleProcessDataStore$actor$3;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 211
    invoke-direct {v0, p5, v2, v3, v4}, Landroidx/datastore/core/SimpleActor;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore;->actor:Landroidx/datastore/core/SimpleActor;

    .line 76
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/datastore/core/Serializer;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    .line 76
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_a

    .line 86
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    move-object v3, p3

    goto :goto_b

    .line 76
    :cond_a
    move-object v3, p3

    :goto_b
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_19

    .line 87
    new-instance p3, Landroidx/datastore/core/handlers/NoOpCorruptionHandler;

    invoke-direct {p3}, Landroidx/datastore/core/handlers/NoOpCorruptionHandler;-><init>()V

    move-object p4, p3

    check-cast p4, Landroidx/datastore/core/CorruptionHandler;

    move-object v4, p4

    goto :goto_1a

    .line 76
    :cond_19
    move-object v4, p4

    :goto_1a
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_36

    .line 88
    sget-object p3, Lkotlinx/coroutines/Dispatchers;->INSTANCE:Lkotlinx/coroutines/Dispatchers;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    const/4 p4, 0x1

    const/4 p5, 0x0

    invoke-static {p5, p4, p5}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p4

    check-cast p4, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p3, p4}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p5

    move-object v5, p5

    goto :goto_37

    .line 76
    :cond_36
    move-object v5, p5

    :goto_37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/core/SingleProcessDataStore;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/datastore/core/Serializer;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lkotlinx/coroutines/CoroutineScope;)V

    .line 496
    return-void
.end method

.method public static final synthetic access$getActiveFiles$cp()Ljava/util/Set;
    .registers 1

    .line 76
    sget-object v0, Landroidx/datastore/core/SingleProcessDataStore;->activeFiles:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getActiveFilesLock$cp()Ljava/lang/Object;
    .registers 1

    .line 76
    sget-object v0, Landroidx/datastore/core/SingleProcessDataStore;->activeFilesLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getActor$p(Landroidx/datastore/core/SingleProcessDataStore;)Landroidx/datastore/core/SimpleActor;
    .registers 2
    .param p0, "$this"    # Landroidx/datastore/core/SingleProcessDataStore;

    .line 76
    iget-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore;->actor:Landroidx/datastore/core/SimpleActor;

    return-object v0
.end method

.method public static final synthetic access$getDownstreamFlow$p(Landroidx/datastore/core/SingleProcessDataStore;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .registers 2
    .param p0, "$this"    # Landroidx/datastore/core/SingleProcessDataStore;

    .line 76
    iget-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore;->downstreamFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$getFile(Landroidx/datastore/core/SingleProcessDataStore;)Ljava/io/File;
    .registers 2
    .param p0, "$this"    # Landroidx/datastore/core/SingleProcessDataStore;

    .line 76
    invoke-direct {p0}, Landroidx/datastore/core/SingleProcessDataStore;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getProduceFile$p(Landroidx/datastore/core/SingleProcessDataStore;)Lkotlin/jvm/functions/Function0;
    .registers 2
    .param p0, "$this"    # Landroidx/datastore/core/SingleProcessDataStore;

    .line 76
    iget-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore;->produceFile:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final synthetic access$handleRead(Landroidx/datastore/core/SingleProcessDataStore;Landroidx/datastore/core/SingleProcessDataStore$Message$Read;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .param p0, "$this"    # Landroidx/datastore/core/SingleProcessDataStore;
    .param p1, "read"    # Landroidx/datastore/core/SingleProcessDataStore$Message$Read;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 76
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/SingleProcessDataStore;->handleRead(Landroidx/datastore/core/SingleProcessDataStore$Message$Read;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$handleUpdate(Landroidx/datastore/core/SingleProcessDataStore;Landroidx/datastore/core/SingleProcessDataStore$Message$Update;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .param p0, "$this"    # Landroidx/datastore/core/SingleProcessDataStore;
    .param p1, "update"    # Landroidx/datastore/core/SingleProcessDataStore$Message$Update;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 76
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/SingleProcessDataStore;->handleUpdate(Landroidx/datastore/core/SingleProcessDataStore$Message$Update;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readAndInit(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p0, "$this"    # Landroidx/datastore/core/SingleProcessDataStore;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 76
    invoke-direct {p0, p1}, Landroidx/datastore/core/SingleProcessDataStore;->readAndInit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readAndInitOrPropagateAndThrowFailure(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p0, "$this"    # Landroidx/datastore/core/SingleProcessDataStore;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 76
    invoke-direct {p0, p1}, Landroidx/datastore/core/SingleProcessDataStore;->readAndInitOrPropagateAndThrowFailure(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readAndInitOrPropagateFailure(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p0, "$this"    # Landroidx/datastore/core/SingleProcessDataStore;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 76
    invoke-direct {p0, p1}, Landroidx/datastore/core/SingleProcessDataStore;->readAndInitOrPropagateFailure(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readData(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p0, "$this"    # Landroidx/datastore/core/SingleProcessDataStore;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 76
    invoke-direct {p0, p1}, Landroidx/datastore/core/SingleProcessDataStore;->readData(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readDataOrHandleCorruption(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p0, "$this"    # Landroidx/datastore/core/SingleProcessDataStore;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 76
    invoke-direct {p0, p1}, Landroidx/datastore/core/SingleProcessDataStore;->readDataOrHandleCorruption(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$transformAndWrite(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .param p0, "$this"    # Landroidx/datastore/core/SingleProcessDataStore;
    .param p1, "transform"    # Lkotlin/jvm/functions/Function2;
    .param p2, "callerContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/core/SingleProcessDataStore;->transformAndWrite(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final createParentDirectories(Ljava/io/File;)V
    .registers 7
    .param p1, "$this$createParentDirectories"    # Ljava/io/File;

    .line 449
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 451
    .local v0, "parent":Ljava/io/File;
    if-nez v0, :cond_b

    goto :goto_18

    :cond_b
    move-object v1, v0

    .local v1, "it":Ljava/io/File;
    const/4 v2, 0x0

    .line 452
    .local v2, "$i$a$-let-SingleProcessDataStore$createParentDirectories$1":I
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 453
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 456
    nop

    .line 451
    .end local v1    # "it":Ljava/io/File;
    .end local v2    # "$i$a$-let-SingleProcessDataStore$createParentDirectories$1":I
    nop

    .line 457
    :goto_18
    return-void

    .line 454
    .restart local v1    # "it":Ljava/io/File;
    .restart local v2    # "$i$a$-let-SingleProcessDataStore$createParentDirectories$1":I
    :cond_19
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to create parent directories of "

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static synthetic getDownstreamFlow$annotations()V
    .registers 0

    return-void
.end method

.method private final getFile()Ljava/io/File;
    .registers 2

    .line 163
    iget-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore;->file$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method private final handleRead(Landroidx/datastore/core/SingleProcessDataStore$Message$Read;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1, "read"    # Landroidx/datastore/core/SingleProcessDataStore$Message$Read;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/SingleProcessDataStore$Message$Read<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore;->downstreamFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/core/State;

    .line 249
    .local v0, "currentState":Landroidx/datastore/core/State;
    instance-of v1, v0, Landroidx/datastore/core/Data;

    if-eqz v1, :cond_d

    goto :goto_3f

    .line 252
    :cond_d
    instance-of v1, v0, Landroidx/datastore/core/ReadException;

    if-eqz v1, :cond_25

    .line 253
    invoke-virtual {p1}, Landroidx/datastore/core/SingleProcessDataStore$Message$Read;->getLastState()Landroidx/datastore/core/State;

    move-result-object v1

    if-ne v0, v1, :cond_3f

    .line 254
    invoke-direct {p0, p2}, Landroidx/datastore/core/SingleProcessDataStore;->readAndInitOrPropagateFailure(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_22

    return-object v1

    :cond_22
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 265
    :goto_24
    return-object v1

    .line 260
    :cond_25
    sget-object v1, Landroidx/datastore/core/UnInitialized;->INSTANCE:Landroidx/datastore/core/UnInitialized;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 261
    invoke-direct {p0, p2}, Landroidx/datastore/core/SingleProcessDataStore;->readAndInitOrPropagateFailure(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_38

    return-object v1

    :cond_38
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_24

    .line 263
    :cond_3b
    instance-of v1, v0, Landroidx/datastore/core/Final;

    if-nez v1, :cond_42

    .line 265
    .end local v0    # "currentState":Landroidx/datastore/core/State;
    :cond_3f
    :goto_3f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 263
    .restart local v0    # "currentState":Landroidx/datastore/core/State;
    :cond_42
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t read in final state."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private final handleUpdate(Landroidx/datastore/core/SingleProcessDataStore$Message$Update;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/SingleProcessDataStore$Message$Update<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;

    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;

    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;)V

    :goto_19
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 267
    iget v2, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_10a

    .line 298
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 267
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_2f
    move p1, v4

    .local p1, "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    const/4 p1, 0x0

    iget-object v1, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CompletableDeferred;

    :try_start_35
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3b

    move-object v7, v0

    goto/16 :goto_d7

    .line 271
    .end local p1    # "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    :catchall_3b
    move-exception p1

    goto/16 :goto_fa

    .line 267
    :pswitch_3e
    move-object v2, v3

    .local v2, "$this$handleUpdate_u24lambda_u2d0":Landroidx/datastore/core/SingleProcessDataStore;
    .local p1, "update":Landroidx/datastore/core/SingleProcessDataStore$Message$Update;
    move v3, v4

    .local v3, "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    const/4 v3, 0x0

    iget-object v4, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v5, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->L$1:Ljava/lang/Object;

    move-object v2, v5

    check-cast v2, Landroidx/datastore/core/SingleProcessDataStore;

    iget-object v5, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->L$0:Ljava/lang/Object;

    move-object p1, v5

    check-cast p1, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;

    :try_start_4f
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_61

    goto/16 :goto_bb

    .end local v2    # "$this$handleUpdate_u24lambda_u2d0":Landroidx/datastore/core/SingleProcessDataStore;
    .end local v3    # "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    .end local p1    # "update":Landroidx/datastore/core/SingleProcessDataStore$Message$Update;
    :pswitch_54
    move-object v1, v3

    .local v1, "$this$handleUpdate_u24lambda_u2d0":Landroidx/datastore/core/SingleProcessDataStore;
    move-object v2, v3

    .local v2, "currentState":Landroidx/datastore/core/State;
    .restart local p1    # "update":Landroidx/datastore/core/SingleProcessDataStore$Message$Update;
    move v3, v4

    .restart local v3    # "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    const/4 v3, 0x0

    iget-object v4, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CompletableDeferred;

    :try_start_5c
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_61

    move-object v7, v0

    goto :goto_97

    .line 271
    .end local v1    # "$this$handleUpdate_u24lambda_u2d0":Landroidx/datastore/core/SingleProcessDataStore;
    .end local v2    # "currentState":Landroidx/datastore/core/State;
    .end local v3    # "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    .end local p1    # "update":Landroidx/datastore/core/SingleProcessDataStore$Message$Update;
    :catchall_61
    move-exception p1

    move-object v1, v4

    goto/16 :goto_fa

    .line 267
    :pswitch_65
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 270
    .local v2, "this":Landroidx/datastore/core/SingleProcessDataStore;
    .restart local p1    # "update":Landroidx/datastore/core/SingleProcessDataStore$Message$Update;
    invoke-virtual {p1}, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->getAck()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v3

    .line 271
    :try_start_6d
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v4, v2

    check-cast v4, Landroidx/datastore/core/SingleProcessDataStore;

    .local v4, "$this$handleUpdate_u24lambda_u2d0":Landroidx/datastore/core/SingleProcessDataStore;
    const/4 v5, 0x0

    .line 273
    .local v5, "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    iget-object v6, v4, Landroidx/datastore/core/SingleProcessDataStore;->downstreamFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/datastore/core/State;

    .line 274
    .local v6, "currentState":Landroidx/datastore/core/State;
    instance-of v7, v6, Landroidx/datastore/core/Data;

    const/4 v8, 0x1

    if-eqz v7, :cond_99

    .line 276
    invoke-virtual {p1}, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->getTransform()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-virtual {p1}, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->getCallerContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v9

    iput-object v3, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->L$0:Ljava/lang/Object;

    iput v8, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->label:I

    invoke-direct {v4, v7, v9, p2}, Landroidx/datastore/core/SingleProcessDataStore;->transformAndWrite(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    .end local v2    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    if-ne v7, v1, :cond_93

    .line 267
    return-object v1

    .line 276
    :cond_93
    move-object v1, v4

    move-object v2, v6

    move-object v4, v3

    move v3, v5

    .end local v4    # "$this$handleUpdate_u24lambda_u2d0":Landroidx/datastore/core/SingleProcessDataStore;
    .end local v5    # "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    .end local v6    # "currentState":Landroidx/datastore/core/State;
    .restart local v1    # "$this$handleUpdate_u24lambda_u2d0":Landroidx/datastore/core/SingleProcessDataStore;
    .local v2, "currentState":Landroidx/datastore/core/State;
    .restart local v3    # "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    :goto_97
    move-object v1, v4

    goto :goto_d8

    .line 278
    .end local v1    # "$this$handleUpdate_u24lambda_u2d0":Landroidx/datastore/core/SingleProcessDataStore;
    .end local v2    # "currentState":Landroidx/datastore/core/State;
    .end local v3    # "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    .restart local v4    # "$this$handleUpdate_u24lambda_u2d0":Landroidx/datastore/core/SingleProcessDataStore;
    .restart local v5    # "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    .restart local v6    # "currentState":Landroidx/datastore/core/State;
    :cond_99
    instance-of v2, v6, Landroidx/datastore/core/ReadException;

    if-eqz v2, :cond_9e

    goto :goto_a0

    :cond_9e
    instance-of v8, v6, Landroidx/datastore/core/UnInitialized;

    :goto_a0
    if-eqz v8, :cond_e6

    .line 279
    invoke-virtual {p1}, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->getLastState()Landroidx/datastore/core/State;

    move-result-object v2

    if-ne v6, v2, :cond_de

    .line 281
    iput-object p1, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->L$0:Ljava/lang/Object;

    iput-object v4, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->L$1:Ljava/lang/Object;

    iput-object v3, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->label:I

    invoke-direct {v4, p2}, Landroidx/datastore/core/SingleProcessDataStore;->readAndInitOrPropagateAndThrowFailure(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_b5
    .catchall {:try_start_6d .. :try_end_b5} :catchall_f8

    .end local v6    # "currentState":Landroidx/datastore/core/State;
    if-ne v2, v1, :cond_b8

    .line 267
    return-object v1

    .line 281
    :cond_b8
    move-object v2, v4

    move-object v4, v3

    move v3, v5

    .line 284
    .end local v4    # "$this$handleUpdate_u24lambda_u2d0":Landroidx/datastore/core/SingleProcessDataStore;
    .end local v5    # "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    .local v2, "$this$handleUpdate_u24lambda_u2d0":Landroidx/datastore/core/SingleProcessDataStore;
    .restart local v3    # "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    :goto_bb
    :try_start_bb
    invoke-virtual {p1}, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->getTransform()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->getCallerContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    iput-object v4, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->L$1:Ljava/lang/Object;

    iput-object v7, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, p2, Landroidx/datastore/core/SingleProcessDataStore$handleUpdate$1;->label:I

    invoke-direct {v2, v5, v6, p2}, Landroidx/datastore/core/SingleProcessDataStore;->transformAndWrite(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_d1
    .catchall {:try_start_bb .. :try_end_d1} :catchall_61

    .end local v2    # "$this$handleUpdate_u24lambda_u2d0":Landroidx/datastore/core/SingleProcessDataStore;
    .end local p1    # "update":Landroidx/datastore/core/SingleProcessDataStore$Message$Update;
    if-ne v5, v1, :cond_d4

    .line 267
    return-object v1

    .line 284
    :cond_d4
    move p1, v3

    move-object v1, v4

    move-object v7, v5

    .end local v3    # "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    .local p1, "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    :goto_d7
    move v3, p1

    .line 273
    .end local p1    # "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    .restart local v3    # "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    :goto_d8
    nop

    .line 271
    .end local v3    # "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    :try_start_d9
    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_dd
    .catchall {:try_start_d9 .. :try_end_dd} :catchall_3b

    goto :goto_104

    .line 290
    .restart local v5    # "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    :cond_de
    :try_start_de
    move-object p1, v6

    check-cast p1, Landroidx/datastore/core/ReadException;

    invoke-virtual {p1}, Landroidx/datastore/core/ReadException;->getReadException()Ljava/lang/Throwable;

    move-result-object p1

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    throw p1

    .line 294
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :cond_e6
    instance-of p1, v6, Landroidx/datastore/core/Final;

    if-eqz p1, :cond_f2

    move-object p1, v6

    check-cast p1, Landroidx/datastore/core/Final;

    invoke-virtual {p1}, Landroidx/datastore/core/Final;->getFinalException()Ljava/lang/Throwable;

    move-result-object p1

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :goto_f1
    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :cond_f2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V
    :try_end_f7
    .catchall {:try_start_de .. :try_end_f7} :catchall_f8

    goto :goto_f1

    .line 271
    .end local v5    # "$i$a$-runCatching-SingleProcessDataStore$handleUpdate$2":I
    :catchall_f8
    move-exception p1

    move-object v1, v3

    :goto_fa
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 270
    :goto_104
    invoke-static {v1, p1}, Lkotlinx/coroutines/CompletableDeferredKt;->completeWith(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Object;)Z

    .line 298
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_65
        :pswitch_54
        :pswitch_3e
        :pswitch_2f
    .end packed-switch
.end method

.method private final readAndInit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;

    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;

    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;)V

    :goto_19
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 317
    iget v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_14c

    .line 355
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 317
    :pswitch_2f
    iget-object v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v6, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_118

    :pswitch_44
    iget-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$4:Ljava/lang/Object;

    check-cast v6, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;

    iget-object v7, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v8, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/sync/Mutex;

    iget-object v10, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$0:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/core/SingleProcessDataStore;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_f6

    :pswitch_61
    iget-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/sync/Mutex;

    iget-object v8, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$0:Ljava/lang/Object;

    check-cast v8, Landroidx/datastore/core/SingleProcessDataStore;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_b2

    :pswitch_75
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 319
    iget-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->downstreamFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Landroidx/datastore/core/UnInitialized;->INSTANCE:Landroidx/datastore/core/UnInitialized;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_93

    iget-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore;->downstreamFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroidx/datastore/core/ReadException;

    if-eqz p1, :cond_91

    goto :goto_93

    :cond_91
    move p1, v3

    goto :goto_94

    :cond_93
    :goto_93
    move p1, v4

    :goto_94
    if-eqz p1, :cond_13e

    .line 321
    invoke-static {v3, v4, v5}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v7

    .line 322
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->label:I

    invoke-direct {p0, v0}, Landroidx/datastore/core/SingleProcessDataStore;->readDataOrHandleCorruption(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b0

    .line 317
    return-object v1

    .line 322
    :cond_b0
    move-object v8, p0

    move-object v6, v2

    .line 317
    :goto_b2
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 324
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 327
    new-instance v2, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;

    invoke-direct {v2, v7, p1, v6, v8}, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;-><init>(Lkotlinx/coroutines/sync/Mutex;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/datastore/core/SingleProcessDataStore;)V

    .line 348
    iget-object v9, v8, Landroidx/datastore/core/SingleProcessDataStore;->initTasks:Ljava/util/List;

    if-nez v9, :cond_c8

    move-object v2, v1

    move-object v1, v7

    move-object v7, p1

    move-object p1, v0

    move-object v0, v8

    goto :goto_fc

    :cond_c8
    check-cast v9, Ljava/lang/Iterable;

    .line 498
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v8

    move-object v8, v6

    move-object v6, v2

    move-object v2, v9

    move-object v9, v7

    move-object v7, p1

    :goto_d4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_f7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 348
    iput-object v10, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$3:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$5:Ljava/lang/Object;

    const/4 v11, 0x2

    iput v11, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->label:I

    invoke-interface {p1, v6, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_f6

    .line 317
    return-object v1

    .line 348
    :cond_f6
    :goto_f6
    goto :goto_d4

    .line 499
    :cond_f7
    move-object p1, v0

    move-object v2, v1

    move-object v6, v8

    move-object v1, v9

    move-object v0, v10

    .line 349
    :goto_fc
    iput-object v5, v0, Landroidx/datastore/core/SingleProcessDataStore;->initTasks:Ljava/util/List;

    .line 350
    nop

    .line 500
    nop

    .line 501
    nop

    .line 505
    iput-object v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$0:Ljava/lang/Object;

    iput-object v6, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$1:Ljava/lang/Object;

    iput-object v7, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$2:Ljava/lang/Object;

    iput-object v1, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$3:Ljava/lang/Object;

    iput-object v5, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$4:Ljava/lang/Object;

    iput-object v5, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->L$5:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$1;->label:I

    invoke-interface {v1, v5, p1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_117

    .line 317
    return-object v2

    .line 505
    :cond_117
    move-object v2, v7

    .line 506
    :goto_118
    nop

    .line 507
    nop

    .line 351
    :try_start_11a
    iput-boolean v4, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 352
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_11e
    .catchall {:try_start_11a .. :try_end_11e} :catchall_139

    .line 509
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 507
    nop

    .line 354
    iget-object p1, v0, Landroidx/datastore/core/SingleProcessDataStore;->downstreamFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v0, Landroidx/datastore/core/Data;

    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v2, :cond_130

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_130
    invoke-direct {v0, v1, v3}, Landroidx/datastore/core/Data;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 355
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 510
    :catchall_139
    move-exception p1

    .line 509
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    .line 319
    :cond_13e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :pswitch_data_14c
    .packed-switch 0x0
        :pswitch_75
        :pswitch_61
        :pswitch_44
        :pswitch_2f
    .end packed-switch
.end method

.method private final readAndInitOrPropagateAndThrowFailure(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;

    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;

    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;)V

    :goto_19
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 300
    iget v2, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->label:I

    packed-switch v2, :pswitch_data_5e

    .line 307
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 300
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_2d
    move-object v1, p0

    .local v1, "this":Landroidx/datastore/core/SingleProcessDataStore;
    iget-object v2, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->L$0:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Landroidx/datastore/core/SingleProcessDataStore;

    :try_start_33
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_4b

    .line 303
    :catchall_37
    move-exception v2

    goto :goto_53

    .line 300
    .end local v1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    :pswitch_39
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 301
    .local v2, "this":Landroidx/datastore/core/SingleProcessDataStore;
    nop

    .line 302
    :try_start_3e
    iput-object v2, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;->label:I

    invoke-direct {v2, p1}, Landroidx/datastore/core/SingleProcessDataStore;->readAndInit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_4f

    if-ne v3, v1, :cond_4a

    .line 300
    return-object v1

    .line 302
    :cond_4a
    move-object v1, v2

    .end local v2    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .restart local v1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    :goto_4b
    nop

    .line 307
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 303
    .end local v1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .restart local v2    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    :catchall_4f
    move-exception v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 304
    .restart local v1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .local v2, "throwable":Ljava/lang/Throwable;
    :goto_53
    iget-object v3, v1, Landroidx/datastore/core/SingleProcessDataStore;->downstreamFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v4, Landroidx/datastore/core/ReadException;

    invoke-direct {v4, v2}, Landroidx/datastore/core/ReadException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 305
    throw v2

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_39
        :pswitch_2d
    .end packed-switch
.end method

.method private final readAndInitOrPropagateFailure(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;

    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;

    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;)V

    :goto_19
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 309
    iget v2, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->label:I

    packed-switch v2, :pswitch_data_5e

    .line 315
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 309
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_2d
    move-object v1, p0

    .local v1, "this":Landroidx/datastore/core/SingleProcessDataStore;
    iget-object v2, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->L$0:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Landroidx/datastore/core/SingleProcessDataStore;

    :try_start_33
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_4b

    .line 312
    :catchall_37
    move-exception v2

    goto :goto_50

    .line 309
    .end local v1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    :pswitch_39
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 310
    .local v2, "this":Landroidx/datastore/core/SingleProcessDataStore;
    nop

    .line 311
    :try_start_3e
    iput-object v2, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInitOrPropagateFailure$1;->label:I

    invoke-direct {v2, p1}, Landroidx/datastore/core/SingleProcessDataStore;->readAndInit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_4c

    if-ne v3, v1, :cond_4a

    .line 309
    return-object v1

    .line 311
    :cond_4a
    move-object v1, v2

    .end local v2    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .restart local v1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    :goto_4b
    goto :goto_5a

    .line 312
    .end local v1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .restart local v2    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    :catchall_4c
    move-exception v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 313
    .restart local v1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .local v2, "throwable":Ljava/lang/Throwable;
    :goto_50
    iget-object v3, v1, Landroidx/datastore/core/SingleProcessDataStore;->downstreamFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v4, Landroidx/datastore/core/ReadException;

    invoke-direct {v4, v2}, Landroidx/datastore/core/ReadException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 315
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :goto_5a
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_39
        :pswitch_2d
    .end packed-switch
.end method

.method private final readData(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readData$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;

    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$readData$1;

    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/SingleProcessDataStore$readData$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;)V

    :goto_19
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 378
    iget v2, p1, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->label:I

    packed-switch v2, :pswitch_data_9a

    .line 387
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 378
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_2d
    move-object v1, p0

    .local v1, "this":Landroidx/datastore/core/SingleProcessDataStore;
    const/4 v2, 0x0

    .local v2, "$i$a$-use-SingleProcessDataStore$readData$2":I
    const/4 v2, 0x0

    iget-object v3, p1, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, p1, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/io/Closeable;

    iget-object v5, p1, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->L$0:Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, Landroidx/datastore/core/SingleProcessDataStore;

    :try_start_3d
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_42

    move-object v7, v0

    goto :goto_73

    .line 381
    .end local v2    # "$i$a$-use-SingleProcessDataStore$readData$2":I
    :catchall_42
    move-exception v2

    goto :goto_7d

    .line 378
    .end local v1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    :pswitch_44
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 379
    .local v2, "this":Landroidx/datastore/core/SingleProcessDataStore;
    nop

    .line 380
    :try_start_49
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v2}, Landroidx/datastore/core/SingleProcessDataStore;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v3

    check-cast v4, Ljava/io/Closeable;

    const/4 v3, 0x0

    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_59} :catch_83

    :try_start_59
    move-object v5, v4

    check-cast v5, Ljava/io/FileInputStream;

    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 381
    .local v6, "$i$a$-use-SingleProcessDataStore$readData$2":I
    iget-object v7, v2, Landroidx/datastore/core/SingleProcessDataStore;->serializer:Landroidx/datastore/core/Serializer;

    move-object v8, v5

    check-cast v8, Ljava/io/InputStream;

    iput-object v2, p1, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->L$0:Ljava/lang/Object;

    iput-object v4, p1, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->L$1:Ljava/lang/Object;

    iput-object v3, p1, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->L$2:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, p1, Landroidx/datastore/core/SingleProcessDataStore$readData$1;->label:I

    invoke-interface {v7, v8, p1}, Landroidx/datastore/core/Serializer;->readFrom(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_6f
    .catchall {:try_start_59 .. :try_end_6f} :catchall_79

    .end local v5    # "stream":Ljava/io/FileInputStream;
    if-ne v7, v1, :cond_72

    .line 378
    return-object v1

    .line 381
    :cond_72
    move-object v1, v2

    .end local v2    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .end local v6    # "$i$a$-use-SingleProcessDataStore$readData$2":I
    .restart local v1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    :goto_73
    :try_start_73
    invoke-static {v4, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_76
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_76} :catch_77

    return-object v7

    .line 383
    :catch_77
    move-exception v2

    goto :goto_87

    .line 381
    .end local v1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .restart local v2    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    :catchall_79
    move-exception v1

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :goto_7d
    :try_start_7d
    throw v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_7e
    move-exception v3

    :try_start_7f
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    throw v3
    :try_end_83
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_83} :catch_77

    .line 383
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v2    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :catch_83
    move-exception v1

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    .line 384
    .restart local v1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .local v2, "ex":Ljava/io/FileNotFoundException;
    :goto_87
    invoke-direct {v1}, Landroidx/datastore/core/SingleProcessDataStore;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_98

    .line 387
    iget-object v3, v1, Landroidx/datastore/core/SingleProcessDataStore;->serializer:Landroidx/datastore/core/Serializer;

    invoke-interface {v3}, Landroidx/datastore/core/Serializer;->getDefaultValue()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 385
    :cond_98
    throw v2

    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_44
        :pswitch_2d
    .end packed-switch
.end method

.method private final readDataOrHandleCorruption(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;

    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;

    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;)V

    :goto_19
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 357
    iget v2, p1, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_9e

    .line 374
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 357
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_2e
    move-object v1, v3

    .local v1, "ex":Landroidx/datastore/core/CorruptionException;
    move-object v2, v3

    .local v2, "newData":Ljava/lang/Object;
    iget-object v2, p1, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->L$1:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroidx/datastore/core/CorruptionException;

    :try_start_37
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_8f

    .line 366
    :catch_3b
    move-exception v3

    goto :goto_94

    .line 357
    .end local v1    # "ex":Landroidx/datastore/core/CorruptionException;
    .end local v2    # "newData":Ljava/lang/Object;
    :pswitch_3d
    move-object v2, v3

    .local v2, "ex":Landroidx/datastore/core/CorruptionException;
    iget-object v3, p1, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->L$1:Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, Landroidx/datastore/core/CorruptionException;

    iget-object v3, p1, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroidx/datastore/core/SingleProcessDataStore;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v0

    goto :goto_7d

    .end local v2    # "ex":Landroidx/datastore/core/CorruptionException;
    :pswitch_4c
    move-object v2, p0

    .local v2, "this":Landroidx/datastore/core/SingleProcessDataStore;
    iget-object v3, p1, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, Landroidx/datastore/core/SingleProcessDataStore;

    :try_start_52
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_55
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_52 .. :try_end_55} :catch_69

    move-object v3, v0

    goto :goto_68

    .end local v2    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    :pswitch_57
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 358
    .restart local v2    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    nop

    .line 359
    :try_start_5c
    iput-object v2, p1, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p1, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->label:I

    invoke-direct {v2, p1}, Landroidx/datastore/core/SingleProcessDataStore;->readData(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_65
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_5c .. :try_end_65} :catch_69

    if-ne v3, v1, :cond_68

    .line 357
    return-object v1

    .line 360
    :cond_68
    :goto_68
    return-object v3

    :catch_69
    move-exception v3

    .line 362
    .local v3, "ex":Landroidx/datastore/core/CorruptionException;
    iget-object v4, v2, Landroidx/datastore/core/SingleProcessDataStore;->corruptionHandler:Landroidx/datastore/core/CorruptionHandler;

    iput-object v2, p1, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    iput-object v3, p1, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, p1, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->label:I

    invoke-interface {v4, v3, p1}, Landroidx/datastore/core/CorruptionHandler;->handleCorruption(Landroidx/datastore/core/CorruptionException;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v2    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    if-ne v4, v1, :cond_7a

    .line 357
    return-object v1

    .line 362
    :cond_7a
    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 357
    .end local v3    # "ex":Landroidx/datastore/core/CorruptionException;
    .local v2, "ex":Landroidx/datastore/core/CorruptionException;
    :goto_7d
    nop

    .line 364
    .local v4, "newData":Ljava/lang/Object;
    nop

    .line 365
    :try_start_7f
    iput-object v2, p1, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->L$0:Ljava/lang/Object;

    iput-object v4, p1, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, p1, Landroidx/datastore/core/SingleProcessDataStore$readDataOrHandleCorruption$1;->label:I

    invoke-virtual {v3, v4, p1}, Landroidx/datastore/core/SingleProcessDataStore;->writeData$datastore_core(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_8a} :catch_91

    if-ne v3, v1, :cond_8d

    .line 357
    return-object v1

    .line 365
    :cond_8d
    move-object v1, v2

    move-object v2, v4

    .end local v4    # "newData":Ljava/lang/Object;
    .restart local v1    # "ex":Landroidx/datastore/core/CorruptionException;
    .local v2, "newData":Ljava/lang/Object;
    :goto_8f
    nop

    .line 374
    return-object v2

    .line 366
    .end local v1    # "ex":Landroidx/datastore/core/CorruptionException;
    .local v2, "ex":Landroidx/datastore/core/CorruptionException;
    .restart local v4    # "newData":Ljava/lang/Object;
    :catch_91
    move-exception v3

    move-object v1, v2

    move-object v2, v4

    .line 369
    .end local v4    # "newData":Ljava/lang/Object;
    .restart local v1    # "ex":Landroidx/datastore/core/CorruptionException;
    .local v2, "newData":Ljava/lang/Object;
    .local v3, "writeEx":Ljava/io/IOException;
    :goto_94
    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 370
    throw v1

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_57
        :pswitch_4c
        :pswitch_3d
        :pswitch_2e
    .end packed-switch
.end method

.method private final transformAndWrite(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;

    if-eqz v0, :cond_14

    move-object v0, p3

    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;

    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p3, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;

    invoke-direct {v0, p0, p3}, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;)V

    :goto_19
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 392
    iget v2, p3, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_aa

    .line 407
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 392
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_2e
    iget-object p1, p3, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->L$1:Ljava/lang/Object;

    iget-object p2, p3, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->L$0:Ljava/lang/Object;

    check-cast p2, Landroidx/datastore/core/SingleProcessDataStore;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_95

    :pswitch_38
    move-object p1, p0

    .local p1, "this":Landroidx/datastore/core/SingleProcessDataStore;
    const/4 p2, 0x0

    move-object v2, p2

    .local v2, "curDataAndHash":Landroidx/datastore/core/Data;
    .local p2, "curData":Ljava/lang/Object;
    iget-object p2, p3, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->L$2:Ljava/lang/Object;

    iget-object v4, p3, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->L$1:Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, Landroidx/datastore/core/Data;

    iget-object v4, p3, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Landroidx/datastore/core/SingleProcessDataStore;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v2

    move-object v2, p1

    move-object p1, v0

    goto :goto_79

    .end local v2    # "curDataAndHash":Landroidx/datastore/core/Data;
    .end local p1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .end local p2    # "curData":Ljava/lang/Object;
    :pswitch_4e
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 398
    .local v2, "this":Landroidx/datastore/core/SingleProcessDataStore;
    .local p1, "transform":Lkotlin/jvm/functions/Function2;
    .local p2, "callerContext":Lkotlin/coroutines/CoroutineContext;
    iget-object v4, v2, Landroidx/datastore/core/SingleProcessDataStore;->downstreamFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/core/Data;

    .line 399
    .local v4, "curDataAndHash":Landroidx/datastore/core/Data;
    invoke-virtual {v4}, Landroidx/datastore/core/Data;->checkHashCode()V

    .line 401
    invoke-virtual {v4}, Landroidx/datastore/core/Data;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 402
    .local v5, "curData":Ljava/lang/Object;
    new-instance v6, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;

    invoke-direct {v6, p1, v5, v3}, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-object v2, p3, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->L$0:Ljava/lang/Object;

    iput-object v4, p3, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->L$1:Ljava/lang/Object;

    iput-object v5, p3, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, p3, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->label:I

    invoke-static {p2, v6, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "transform":Lkotlin/jvm/functions/Function2;
    .end local p2    # "callerContext":Lkotlin/coroutines/CoroutineContext;
    if-ne p1, v1, :cond_78

    .line 392
    return-object v1

    .line 402
    :cond_78
    move-object p2, v5

    .line 392
    .end local v5    # "curData":Ljava/lang/Object;
    .local p2, "curData":Ljava/lang/Object;
    :goto_79
    nop

    .line 405
    .local p1, "newData":Ljava/lang/Object;
    invoke-virtual {v4}, Landroidx/datastore/core/Data;->checkHashCode()V

    .line 407
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 408
    goto :goto_a8

    .line 410
    :cond_84
    iput-object v2, p3, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->L$0:Ljava/lang/Object;

    iput-object p1, p3, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->L$1:Ljava/lang/Object;

    iput-object v3, p3, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->L$2:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p3, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$1;->label:I

    invoke-virtual {v2, p1, p3}, Landroidx/datastore/core/SingleProcessDataStore;->writeData$datastore_core(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    .end local v2    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .end local v4    # "curDataAndHash":Landroidx/datastore/core/Data;
    .end local p1    # "newData":Ljava/lang/Object;
    .end local p2    # "curData":Ljava/lang/Object;
    if-ne p2, v1, :cond_94

    .line 392
    return-object v1

    .line 410
    :cond_94
    move-object p2, v2

    .line 411
    :goto_95
    iget-object p2, p2, Landroidx/datastore/core/SingleProcessDataStore;->downstreamFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Landroidx/datastore/core/Data;

    if-eqz p1, :cond_a0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a1

    :cond_a0
    const/4 v2, 0x0

    :goto_a1
    invoke-direct {v1, p1, v2}, Landroidx/datastore/core/Data;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 412
    move-object p2, p1

    .line 407
    :goto_a8
    return-object p2

    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_38
        :pswitch_2e
    .end packed-switch
.end method


# virtual methods
.method public getData()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore;->data:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .param p1, "transform"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    .line 151
    .local v0, "ack":Lkotlinx/coroutines/CompletableDeferred;
    iget-object v1, p0, Landroidx/datastore/core/SingleProcessDataStore;->downstreamFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/core/State;

    .line 154
    .local v1, "currentDownStreamFlowState":Landroidx/datastore/core/State;
    new-instance v2, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;

    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    invoke-direct {v2, p1, v0, v1, v3}, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CompletableDeferred;Landroidx/datastore/core/State;Lkotlin/coroutines/CoroutineContext;)V

    .line 153
    nop

    .line 156
    .local v2, "updateMsg":Landroidx/datastore/core/SingleProcessDataStore$Message$Update;
    iget-object v3, p0, Landroidx/datastore/core/SingleProcessDataStore;->actor:Landroidx/datastore/core/SimpleActor;

    invoke-virtual {v3, v2}, Landroidx/datastore/core/SimpleActor;->offer(Ljava/lang/Object;)V

    .line 158
    invoke-interface {v0, p2}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public final writeData$datastore_core(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;

    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;

    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;-><init>(Landroidx/datastore/core/SingleProcessDataStore;Lkotlin/coroutines/Continuation;)V

    :goto_19
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 420
    iget v2, p2, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->label:I

    packed-switch v2, :pswitch_data_f0

    .line 446
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 420
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_2d
    move-object p1, p0

    .local p1, "this":Landroidx/datastore/core/SingleProcessDataStore;
    const/4 v1, 0x0

    .local v1, "$i$a$-use-SingleProcessDataStore$writeData$2":I
    const/4 v2, 0x0

    move-object v3, v2

    .local v2, "stream":Ljava/io/FileOutputStream;
    .local v3, "scratchFile":Ljava/io/File;
    const/4 v1, 0x0

    iget-object v4, p2, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->L$4:Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, Ljava/io/FileOutputStream;

    iget-object v4, p2, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, p2, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/io/Closeable;

    iget-object v6, p2, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->L$1:Ljava/lang/Object;

    move-object v3, v6

    check-cast v3, Ljava/io/File;

    iget-object v6, p2, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->L$0:Ljava/lang/Object;

    move-object p1, v6

    check-cast p1, Landroidx/datastore/core/SingleProcessDataStore;

    :try_start_49
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_9f

    .line 425
    .end local v1    # "$i$a$-use-SingleProcessDataStore$writeData$2":I
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :catchall_4d
    move-exception v1

    goto/16 :goto_da

    .line 420
    .end local v3    # "scratchFile":Ljava/io/File;
    .end local p1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    :pswitch_50
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 421
    .local v2, "this":Landroidx/datastore/core/SingleProcessDataStore;
    .local p1, "newData":Ljava/lang/Object;
    invoke-direct {v2}, Landroidx/datastore/core/SingleProcessDataStore;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/datastore/core/SingleProcessDataStore;->createParentDirectories(Ljava/io/File;)V

    .line 423
    new-instance v3, Ljava/io/File;

    invoke-direct {v2}, Landroidx/datastore/core/SingleProcessDataStore;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroidx/datastore/core/SingleProcessDataStore;->SCRATCH_SUFFIX:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .restart local v3    # "scratchFile":Ljava/io/File;
    nop

    .line 425
    :try_start_6f
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v5, v4

    check-cast v5, Ljava/io/Closeable;

    const/4 v4, 0x0

    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_7b} :catch_e3

    :try_start_7b
    move-object v6, v5

    check-cast v6, Ljava/io/FileOutputStream;

    .local v6, "stream":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 426
    .local v7, "$i$a$-use-SingleProcessDataStore$writeData$2":I
    iget-object v8, v2, Landroidx/datastore/core/SingleProcessDataStore;->serializer:Landroidx/datastore/core/Serializer;

    new-instance v9, Landroidx/datastore/core/SingleProcessDataStore$UncloseableOutputStream;

    invoke-direct {v9, v6}, Landroidx/datastore/core/SingleProcessDataStore$UncloseableOutputStream;-><init>(Ljava/io/FileOutputStream;)V

    check-cast v9, Ljava/io/OutputStream;

    iput-object v2, p2, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->L$0:Ljava/lang/Object;

    iput-object v3, p2, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->L$1:Ljava/lang/Object;

    iput-object v5, p2, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->L$2:Ljava/lang/Object;

    iput-object v4, p2, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->L$3:Ljava/lang/Object;

    iput-object v6, p2, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->L$4:Ljava/lang/Object;

    const/4 v10, 0x1

    iput v10, p2, Landroidx/datastore/core/SingleProcessDataStore$writeData$1;->label:I

    invoke-interface {v8, p1, v9, p2}, Landroidx/datastore/core/Serializer;->writeTo(Ljava/lang/Object;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_99
    .catchall {:try_start_7b .. :try_end_99} :catchall_d8

    .end local p1    # "newData":Ljava/lang/Object;
    if-ne v8, v1, :cond_9c

    .line 420
    return-object v1

    .line 426
    :cond_9c
    move-object p1, v2

    move-object v2, v6

    move v1, v7

    .line 427
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .end local v7    # "$i$a$-use-SingleProcessDataStore$writeData$2":I
    .restart local v1    # "$i$a$-use-SingleProcessDataStore$writeData$2":I
    .local v2, "stream":Ljava/io/FileOutputStream;
    .local p1, "this":Landroidx/datastore/core/SingleProcessDataStore;
    :goto_9f
    :try_start_9f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V

    .line 430
    nop

    .end local v1    # "$i$a$-use-SingleProcessDataStore$writeData$2":I
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a9
    .catchall {:try_start_9f .. :try_end_a9} :catchall_4d

    .line 425
    :try_start_a9
    invoke-static {v5, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 432
    invoke-direct {p1}, Landroidx/datastore/core/SingleProcessDataStore;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b4} :catch_e0

    if-eqz v1, :cond_b9

    .line 446
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 433
    :cond_b9
    :try_start_b9
    new-instance v1, Ljava/io/IOException;

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to rename "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v3    # "scratchFile":Ljava/io/File;
    .end local p1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    throw v1
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_d8} :catch_e0

    .line 425
    .restart local v0    # "$result":Ljava/lang/Object;
    .local v2, "this":Landroidx/datastore/core/SingleProcessDataStore;
    .restart local v3    # "scratchFile":Ljava/io/File;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_d8
    move-exception v1

    move-object p1, v2

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .end local v3    # "scratchFile":Ljava/io/File;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :goto_da
    :try_start_da
    throw v1
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_db

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v3    # "scratchFile":Ljava/io/File;
    .restart local p1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_db
    move-exception v2

    :try_start_dc
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v3    # "scratchFile":Ljava/io/File;
    .end local p1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    throw v2
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_e0} :catch_e0

    .line 440
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v3    # "scratchFile":Ljava/io/File;
    .restart local p1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :catch_e0
    move-exception v1

    move-object v2, p1

    goto :goto_e4

    .end local p1    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    .restart local v2    # "this":Landroidx/datastore/core/SingleProcessDataStore;
    :catch_e3
    move-exception v1

    :goto_e4
    move-object p1, v1

    .line 441
    .local p1, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 442
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 444
    :cond_ee
    throw p1

    nop

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_50
        :pswitch_2d
    .end packed-switch
.end method
