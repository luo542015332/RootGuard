.class public final Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;
.super Landroidx/compose/runtime/snapshots/StateRecord;
.source "DerivedState.kt"

# interfaces
.implements Landroidx/compose/runtime/DerivedState$Record;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/DerivedSnapshotState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResultRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/runtime/snapshots/StateRecord;",
        "Landroidx/compose/runtime/DerivedState$Record<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDerivedState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DerivedState.kt\nandroidx/compose/runtime/DerivedSnapshotState$ResultRecord\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 DerivedState.kt\nandroidx/compose/runtime/SnapshotStateKt__DerivedStateKt\n+ 5 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 6 IdentityArrayMap.kt\nandroidx/compose/runtime/collection/IdentityArrayMap\n+ 7 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,385:1\n1722#2:386\n1722#2:388\n1722#2:390\n70#3:387\n70#3:389\n70#3:391\n357#4,2:392\n359#4,2:405\n362#4,2:412\n460#5,11:394\n153#6,5:407\n26#7:414\n*S KotlinDebug\n*F\n+ 1 DerivedState.kt\nandroidx/compose/runtime/DerivedSnapshotState$ResultRecord\n*L\n100#1:386\n107#1:388\n118#1:390\n100#1:387\n107#1:389\n118#1:391\n120#1:392,2\n120#1:405,2\n120#1:412,2\n120#1:394,11\n121#1:407,5\n150#1:414\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0012\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 /*\u0004\u0008\u0001\u0010\u00012\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001/B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0002H\u0016J\u0008\u0010\'\u001a\u00020\u0002H\u0016J\u001a\u0010(\u001a\u00020)2\n\u0010*\u001a\u0006\u0012\u0002\u0008\u00030+2\u0006\u0010,\u001a\u00020-J\u001a\u0010.\u001a\u00020\u00082\n\u0010*\u001a\u0006\u0012\u0002\u0008\u00030+2\u0006\u0010,\u001a\u00020-R(\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00028\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000f\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u001b\"\u0004\u0008 \u0010\u001dR\u001a\u0010!\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001b\"\u0004\u0008#\u0010\u001d\u00a8\u00060"
    }
    d2 = {
        "Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;",
        "T",
        "Landroidx/compose/runtime/snapshots/StateRecord;",
        "Landroidx/compose/runtime/DerivedState$Record;",
        "()V",
        "_dependencies",
        "Landroidx/compose/runtime/collection/IdentityArrayMap;",
        "Landroidx/compose/runtime/snapshots/StateObject;",
        "",
        "get_dependencies",
        "()Landroidx/compose/runtime/collection/IdentityArrayMap;",
        "set_dependencies",
        "(Landroidx/compose/runtime/collection/IdentityArrayMap;)V",
        "currentValue",
        "getCurrentValue",
        "()Ljava/lang/Object;",
        "dependencies",
        "",
        "",
        "getDependencies",
        "()[Ljava/lang/Object;",
        "result",
        "getResult",
        "setResult",
        "(Ljava/lang/Object;)V",
        "resultHash",
        "getResultHash",
        "()I",
        "setResultHash",
        "(I)V",
        "validSnapshotId",
        "getValidSnapshotId",
        "setValidSnapshotId",
        "validSnapshotWriteCount",
        "getValidSnapshotWriteCount",
        "setValidSnapshotWriteCount",
        "assign",
        "",
        "value",
        "create",
        "isValid",
        "",
        "derivedState",
        "Landroidx/compose/runtime/DerivedState;",
        "snapshot",
        "Landroidx/compose/runtime/snapshots/Snapshot;",
        "readableHash",
        "Companion",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;

.field private static final Unset:Ljava/lang/Object;


# instance fields
.field private _dependencies:Landroidx/compose/runtime/collection/IdentityArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private result:Ljava/lang/Object;

.field private resultHash:I

.field private validSnapshotId:I

.field private validSnapshotWriteCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->Companion:Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->$stable:I

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->Unset:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/StateRecord;-><init>()V

    .line 86
    sget-object v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->Unset:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public static final synthetic access$getUnset$cp()Ljava/lang/Object;
    .registers 1

    .line 77
    sget-object v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->Unset:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public assign(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .registers 4
    .param p1, "value"    # Landroidx/compose/runtime/snapshots/StateRecord;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 92
    .local v0, "other":Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;
    iget-object v1, v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->_dependencies:Landroidx/compose/runtime/collection/IdentityArrayMap;

    iput-object v1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->_dependencies:Landroidx/compose/runtime/collection/IdentityArrayMap;

    .line 93
    iget-object v1, v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    .line 94
    iget v1, v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->resultHash:I

    iput v1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->resultHash:I

    .line 95
    return-void
.end method

.method public create()Landroidx/compose/runtime/snapshots/StateRecord;
    .registers 2

    .line 97
    new-instance v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    invoke-direct {v0}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;-><init>()V

    check-cast v0, Landroidx/compose/runtime/snapshots/StateRecord;

    return-object v0
.end method

.method public getCurrentValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getDependencies()[Ljava/lang/Object;
    .registers 3

    .line 150
    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->_dependencies:Landroidx/compose/runtime/collection/IdentityArrayMap;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getKeys()[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_a
    const/4 v0, 0x0

    .line 414
    .local v0, "$i$f$emptyArray":I
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    move-object v0, v1

    .line 150
    .end local v0    # "$i$f$emptyArray":I
    :cond_f
    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .registers 2

    .line 86
    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final getResultHash()I
    .registers 2

    .line 87
    iget v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->resultHash:I

    return v0
.end method

.method public final getValidSnapshotId()I
    .registers 2

    .line 82
    iget v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->validSnapshotId:I

    return v0
.end method

.method public final getValidSnapshotWriteCount()I
    .registers 2

    .line 83
    iget v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->validSnapshotWriteCount:I

    return v0
.end method

.method public final get_dependencies()Landroidx/compose/runtime/collection/IdentityArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->_dependencies:Landroidx/compose/runtime/collection/IdentityArrayMap;

    return-object v0
.end method

.method public final isValid(Landroidx/compose/runtime/DerivedState;Landroidx/compose/runtime/snapshots/Snapshot;)Z
    .registers 11
    .param p1, "derivedState"    # Landroidx/compose/runtime/DerivedState;
    .param p2, "snapshot"    # Landroidx/compose/runtime/snapshots/Snapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ")Z"
        }
    .end annotation

    const-string/jumbo v0, "derivedState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "snapshot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    .line 386
    .local v0, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v1

    .local v1, "lock$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 387
    .local v2, "$i$f$synchronized":I
    monitor-enter v1

    const/4 v3, 0x0

    .line 101
    .local v3, "$i$a$-sync-DerivedSnapshotState$ResultRecord$isValid$snapshotChanged$1":I
    :try_start_14
    iget v4, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->validSnapshotId:I

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_29

    iget v4, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->validSnapshotWriteCount:I

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getWriteCount$runtime_release()I

    move-result v5
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_62

    if-eq v4, v5, :cond_27

    goto :goto_29

    :cond_27
    move v3, v6

    goto :goto_2a

    :cond_29
    :goto_29
    move v3, v7

    .line 387
    .end local v3    # "$i$a$-sync-DerivedSnapshotState$ResultRecord$isValid$snapshotChanged$1":I
    :goto_2a
    monitor-exit v1

    .line 386
    .end local v1    # "lock$iv$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    nop

    .line 100
    .end local v0    # "$i$f$sync":I
    move v0, v3

    .line 103
    .local v0, "snapshotChanged":Z
    iget-object v1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    sget-object v2, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->Unset:Ljava/lang/Object;

    if-eq v1, v2, :cond_3f

    .line 104
    if-eqz v0, :cond_3d

    iget v1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->resultHash:I

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->readableHash(Landroidx/compose/runtime/DerivedState;Landroidx/compose/runtime/snapshots/Snapshot;)I

    move-result v2

    if-ne v1, v2, :cond_3f

    :cond_3d
    move v6, v7

    goto :goto_40

    :cond_3f
    nop

    .line 103
    :goto_40
    move v1, v6

    .line 106
    .local v1, "isValid":Z
    if-eqz v1, :cond_61

    if-eqz v0, :cond_61

    .line 107
    const/4 v2, 0x0

    .line 388
    .local v2, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v3

    .local v3, "lock$iv$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 389
    .local v4, "$i$f$synchronized":I
    monitor-enter v3

    const/4 v5, 0x0

    .line 108
    .local v5, "$i$a$-sync-DerivedSnapshotState$ResultRecord$isValid$1":I
    :try_start_4d
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v6

    iput v6, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->validSnapshotId:I

    .line 109
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getWriteCount$runtime_release()I

    move-result v6

    iput v6, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->validSnapshotWriteCount:I

    .line 110
    nop

    .end local v5    # "$i$a$-sync-DerivedSnapshotState$ResultRecord$isValid$1":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5c
    .catchall {:try_start_4d .. :try_end_5c} :catchall_5e

    .line 389
    monitor-exit v3

    .line 388
    .end local v3    # "lock$iv$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    goto :goto_61

    .line 389
    .restart local v3    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$synchronized":I
    :catchall_5e
    move-exception v5

    monitor-exit v3

    throw v5

    .line 113
    .end local v2    # "$i$f$sync":I
    .end local v3    # "lock$iv$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    :cond_61
    :goto_61
    return v1

    .line 387
    .local v0, "$i$f$sync":I
    .local v1, "lock$iv$iv":Ljava/lang/Object;
    .local v2, "$i$f$synchronized":I
    :catchall_62
    move-exception v3

    monitor-exit v1

    throw v3
.end method

.method public final readableHash(Landroidx/compose/runtime/DerivedState;Landroidx/compose/runtime/snapshots/Snapshot;)I
    .registers 21
    .param p1, "derivedState"    # Landroidx/compose/runtime/DerivedState;
    .param p2, "snapshot"    # Landroidx/compose/runtime/snapshots/Snapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ")I"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v0, "derivedState"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "snapshot"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    .local v0, "hash":I
    const/4 v3, 0x7

    .line 118
    .end local v0    # "hash":I
    .local v3, "hash":I
    const/4 v4, 0x0

    .line 390
    .local v4, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v5

    .local v5, "lock$iv$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 391
    .local v6, "$i$f$synchronized":I
    monitor-enter v5

    const/4 v0, 0x0

    .line 118
    .local v0, "$i$a$-sync-DerivedSnapshotState$ResultRecord$readableHash$dependencies$1":I
    move-object/from16 v7, p0

    :try_start_1c
    iget-object v8, v7, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->_dependencies:Landroidx/compose/runtime/collection/IdentityArrayMap;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_db

    .line 391
    .end local v0    # "$i$a$-sync-DerivedSnapshotState$ResultRecord$readableHash$dependencies$1":I
    monitor-exit v5

    .line 390
    .end local v5    # "lock$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$synchronized":I
    nop

    .line 118
    .end local v4    # "$i$f$sync":I
    move-object v4, v8

    .line 119
    .local v4, "dependencies":Landroidx/compose/runtime/collection/IdentityArrayMap;
    if-eqz v4, :cond_da

    .line 120
    const/4 v5, 0x0

    .line 392
    .local v5, "$i$f$notifyObservers":I
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v6

    .line 393
    .local v6, "observers$iv":Landroidx/compose/runtime/collection/MutableVector;
    move-object v0, v6

    .local v0, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v8, 0x0

    .line 394
    .local v8, "$i$f$forEach":I
    nop

    .line 395
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v9

    .line 396
    .local v9, "size$iv$iv":I
    const/4 v10, 0x1

    if-lez v9, :cond_43

    .line 397
    const/4 v11, 0x0

    .line 398
    .local v11, "i$iv$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v12

    .line 400
    .local v12, "content$iv$iv":[Ljava/lang/Object;
    :cond_37
    aget-object v13, v12, v11

    check-cast v13, Landroidx/compose/runtime/DerivedStateObserver;

    .local v13, "it$iv":Landroidx/compose/runtime/DerivedStateObserver;
    const/4 v14, 0x0

    .line 393
    .local v14, "$i$a$-forEach-SnapshotStateKt__DerivedStateKt$notifyObservers$1$iv":I
    invoke-interface {v13, v1}, Landroidx/compose/runtime/DerivedStateObserver;->start(Landroidx/compose/runtime/DerivedState;)V

    .line 400
    .end local v13    # "it$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .end local v14    # "$i$a$-forEach-SnapshotStateKt__DerivedStateKt$notifyObservers$1$iv":I
    nop

    .line 401
    add-int/2addr v11, v10

    .line 402
    if-lt v11, v9, :cond_37

    .line 404
    .end local v11    # "i$iv$iv":I
    .end local v12    # "content$iv$iv":[Ljava/lang/Object;
    :cond_43
    nop

    .line 405
    .end local v0    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v8    # "$i$f$forEach":I
    .end local v9    # "size$iv$iv":I
    nop

    .line 406
    const/4 v0, 0x0

    .line 121
    .local v0, "$i$a$-notifyObservers-DerivedSnapshotState$ResultRecord$readableHash$1":I
    move-object v8, v4

    .local v8, "this_$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    const/4 v9, 0x0

    .line 407
    .local v9, "$i$f$forEach":I
    const/4 v11, 0x0

    .local v11, "index$iv":I
    :try_start_49
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getSize()I

    move-result v12

    :goto_4d
    if-ge v11, v12, :cond_98

    .line 409
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getKeys()[Ljava/lang/Object;

    move-result-object v13

    aget-object v13, v13, v11

    const-string/jumbo v14, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.IdentityArrayMap"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getValues()[Ljava/lang/Object;

    move-result-object v14

    aget-object v14, v14, v11

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    check-cast v13, Landroidx/compose/runtime/snapshots/StateObject;

    .local v13, "stateObject":Landroidx/compose/runtime/snapshots/StateObject;
    .local v14, "readLevel":I
    const/4 v15, 0x0

    .line 122
    .local v15, "$i$a$-forEach-DerivedSnapshotState$ResultRecord$readableHash$1$1":I
    if-eq v14, v10, :cond_6d

    .line 123
    goto :goto_93

    .line 127
    :cond_6d
    instance-of v10, v13, Landroidx/compose/runtime/DerivedSnapshotState;

    if-eqz v10, :cond_79

    .line 132
    move-object v10, v13

    check-cast v10, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/DerivedSnapshotState;->current(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v10

    goto :goto_81

    .line 134
    :cond_79
    invoke-interface {v13}, Landroidx/compose/runtime/snapshots/StateObject;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v10

    invoke-static {v10, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v10

    .line 127
    :goto_81
    nop

    .line 137
    .local v10, "record":Landroidx/compose/runtime/snapshots/StateRecord;
    mul-int/lit8 v16, v3, 0x1f

    invoke-static {v10}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v17

    add-int v3, v16, v17

    .line 138
    mul-int/lit8 v16, v3, 0x1f

    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime_release()I

    move-result v17

    add-int v3, v16, v17

    .line 139
    nop

    .line 409
    .end local v10    # "record":Landroidx/compose/runtime/snapshots/StateRecord;
    .end local v13    # "stateObject":Landroidx/compose/runtime/snapshots/StateObject;
    .end local v14    # "readLevel":I
    .end local v15    # "$i$a$-forEach-DerivedSnapshotState$ResultRecord$readableHash$1$1":I
    :goto_93
    nop

    .line 407
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x1

    goto :goto_4d

    .line 411
    .end local v11    # "index$iv":I
    :cond_98
    nop

    .line 140
    .end local v8    # "this_$iv":Landroidx/compose/runtime/collection/IdentityArrayMap;
    .end local v9    # "$i$f$forEach":I
    nop

    .end local v0    # "$i$a$-notifyObservers-DerivedSnapshotState$ResultRecord$readableHash$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9c
    .catchall {:try_start_49 .. :try_end_9c} :catchall_bb

    .line 406
    nop

    .line 412
    move-object v0, v6

    .local v0, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v8, 0x0

    .line 394
    .local v8, "$i$f$forEach":I
    nop

    .line 395
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v9

    .line 396
    .local v9, "size$iv$iv":I
    if-lez v9, :cond_b8

    .line 397
    const/4 v10, 0x0

    .line 398
    .local v10, "i$iv$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v11

    .line 400
    .local v11, "content$iv$iv":[Ljava/lang/Object;
    :cond_ab
    aget-object v12, v11, v10

    check-cast v12, Landroidx/compose/runtime/DerivedStateObserver;

    .local v12, "it$iv":Landroidx/compose/runtime/DerivedStateObserver;
    const/4 v13, 0x0

    .line 412
    .local v13, "$i$a$-forEach-SnapshotStateKt__DerivedStateKt$notifyObservers$2$iv":I
    invoke-interface {v12, v1}, Landroidx/compose/runtime/DerivedStateObserver;->done(Landroidx/compose/runtime/DerivedState;)V

    .line 400
    .end local v12    # "it$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .end local v13    # "$i$a$-forEach-SnapshotStateKt__DerivedStateKt$notifyObservers$2$iv":I
    nop

    .line 401
    const/4 v12, 0x1

    add-int/2addr v10, v12

    .line 402
    if-lt v10, v9, :cond_ab

    .line 404
    .end local v10    # "i$iv$iv":I
    .end local v11    # "content$iv$iv":[Ljava/lang/Object;
    :cond_b8
    nop

    .line 413
    .end local v0    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v8    # "$i$f$forEach":I
    .end local v9    # "size$iv$iv":I
    nop

    .line 405
    goto :goto_da

    .line 412
    :catchall_bb
    move-exception v0

    move-object v8, v6

    .local v8, "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v9, 0x0

    .line 394
    .local v9, "$i$f$forEach":I
    nop

    .line 395
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v10

    .line 396
    .local v10, "size$iv$iv":I
    if-lez v10, :cond_d8

    .line 397
    const/4 v11, 0x0

    .line 398
    .local v11, "i$iv$iv":I
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v12

    .line 400
    .local v12, "content$iv$iv":[Ljava/lang/Object;
    :goto_ca
    aget-object v13, v12, v11

    check-cast v13, Landroidx/compose/runtime/DerivedStateObserver;

    .local v13, "it$iv":Landroidx/compose/runtime/DerivedStateObserver;
    const/4 v14, 0x0

    .line 412
    .local v14, "$i$a$-forEach-SnapshotStateKt__DerivedStateKt$notifyObservers$2$iv":I
    invoke-interface {v13, v1}, Landroidx/compose/runtime/DerivedStateObserver;->done(Landroidx/compose/runtime/DerivedState;)V

    .line 400
    .end local v13    # "it$iv":Landroidx/compose/runtime/DerivedStateObserver;
    .end local v14    # "$i$a$-forEach-SnapshotStateKt__DerivedStateKt$notifyObservers$2$iv":I
    nop

    .line 401
    const/4 v13, 0x1

    add-int/2addr v11, v13

    .line 402
    if-ge v11, v10, :cond_d8

    goto :goto_ca

    .line 404
    .end local v11    # "i$iv$iv":I
    .end local v12    # "content$iv$iv":[Ljava/lang/Object;
    :cond_d8
    nop

    .end local v8    # "this_$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v9    # "$i$f$forEach":I
    .end local v10    # "size$iv$iv":I
    throw v0

    .line 142
    .end local v5    # "$i$f$notifyObservers":I
    .end local v6    # "observers$iv":Landroidx/compose/runtime/collection/MutableVector;
    :cond_da
    :goto_da
    return v3

    .line 391
    .local v4, "$i$f$sync":I
    .local v5, "lock$iv$iv":Ljava/lang/Object;
    .local v6, "$i$f$synchronized":I
    :catchall_db
    move-exception v0

    move-object v8, v0

    monitor-exit v5

    throw v8
.end method

.method public final setResult(Ljava/lang/Object;)V
    .registers 2
    .param p1, "<set-?>"    # Ljava/lang/Object;

    .line 86
    iput-object p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    return-void
.end method

.method public final setResultHash(I)V
    .registers 2
    .param p1, "<set-?>"    # I

    .line 87
    iput p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->resultHash:I

    return-void
.end method

.method public final setValidSnapshotId(I)V
    .registers 2
    .param p1, "<set-?>"    # I

    .line 82
    iput p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->validSnapshotId:I

    return-void
.end method

.method public final setValidSnapshotWriteCount(I)V
    .registers 2
    .param p1, "<set-?>"    # I

    .line 83
    iput p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->validSnapshotWriteCount:I

    return-void
.end method

.method public final set_dependencies(Landroidx/compose/runtime/collection/IdentityArrayMap;)V
    .registers 2
    .param p1, "<set-?>"    # Landroidx/compose/runtime/collection/IdentityArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/IdentityArrayMap<",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->_dependencies:Landroidx/compose/runtime/collection/IdentityArrayMap;

    return-void
.end method
