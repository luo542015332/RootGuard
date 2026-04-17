.class public final Landroidx/compose/runtime/collection/IdentityArraySet;
.super Ljava/lang/Object;
.source "IdentityArraySet.kt"

# interfaces
.implements Ljava/util/Set;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIdentityArraySet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IdentityArraySet.kt\nandroidx/compose/runtime/collection/IdentityArraySet\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,389:1\n1726#2,3:390\n*S KotlinDebug\n*F\n+ 1 IdentityArraySet.kt\nandroidx/compose/runtime/collection/IdentityArraySet\n*L\n366#1:390,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010(\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0012J\u0014\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0016J\u0010\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0006H\u0002J\u0006\u0010\u0019\u001a\u00020\u0014J\u0016\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0012J\u0016\u0010\u001c\u001a\u00020\u00102\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0016H\u0016J+\u0010\u001e\u001a\u00020\u00142\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00140 H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0006\u0008\u0001\u0012\u0002\u0010\u0001J\u0012\u0010!\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u0002J\"\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u0006\u0010$\u001a\u00020\u0006H\u0002J\u0016\u0010%\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0006H\u0086\u0002\u00a2\u0006\u0002\u0010&J\u0008\u0010\'\u001a\u00020\u0010H\u0016J\u0006\u0010(\u001a\u00020\u0010J\u000f\u0010)\u001a\u0008\u0012\u0004\u0012\u00028\u00000*H\u0096\u0002J\u0013\u0010+\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0012J \u0010,\u001a\u00020\u00142\u0012\u0010-\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00100 H\u0086\u0008\u00f8\u0001\u0000J\u0008\u0010.\u001a\u00020/H\u0016R\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR0\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\n2\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\n@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\r\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u00060"
    }
    d2 = {
        "Landroidx/compose/runtime/collection/IdentityArraySet;",
        "T",
        "",
        "",
        "()V",
        "<set-?>",
        "",
        "size",
        "getSize",
        "()I",
        "",
        "values",
        "getValues",
        "()[Ljava/lang/Object;",
        "[Ljava/lang/Object;",
        "add",
        "",
        "value",
        "(Ljava/lang/Object;)Z",
        "addAll",
        "",
        "collection",
        "",
        "checkIndexBounds",
        "index",
        "clear",
        "contains",
        "element",
        "containsAll",
        "elements",
        "fastForEach",
        "block",
        "Lkotlin/Function1;",
        "find",
        "findExactIndex",
        "midIndex",
        "valueHash",
        "get",
        "(I)Ljava/lang/Object;",
        "isEmpty",
        "isNotEmpty",
        "iterator",
        "",
        "remove",
        "removeValueIf",
        "predicate",
        "toString",
        "",
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


# instance fields
.field private size:I

.field private values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public static final synthetic access$setSize$p(Landroidx/compose/runtime/collection/IdentityArraySet;I)V
    .registers 2
    .param p0, "$this"    # Landroidx/compose/runtime/collection/IdentityArraySet;
    .param p1, "<set-?>"    # I

    .line 27
    iput p1, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->size:I

    return-void
.end method

.method private final checkIndexBounds(I)V
    .registers 5
    .param p1, "index"    # I

    .line 358
    const/4 v0, 0x0

    if-ltz p1, :cond_a

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v1

    if-ge p1, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    if-eqz v0, :cond_d

    .line 361
    return-void

    .line 359
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final find(Ljava/lang/Object;)I
    .registers 10
    .param p1, "value"    # Ljava/lang/Object;

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "low":I
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 296
    .local v1, "high":I
    invoke-static {p1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 297
    .local v2, "valueIdentity":I
    iget-object v3, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    .line 299
    .local v3, "values":[Ljava/lang/Object;
    :goto_d
    if-gt v0, v1, :cond_2c

    .line 300
    add-int v4, v0, v1

    ushr-int/lit8 v4, v4, 0x1

    .line 301
    .local v4, "mid":I
    aget-object v5, v3, v4

    .line 302
    .local v5, "midVal":Ljava/lang/Object;
    invoke-static {v5}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    .line 303
    .local v6, "midIdentity":I
    nop

    .line 304
    if-ge v6, v2, :cond_1f

    add-int/lit8 v0, v4, 0x1

    goto :goto_d

    .line 305
    :cond_1f
    if-le v6, v2, :cond_24

    add-int/lit8 v1, v4, -0x1

    goto :goto_d

    .line 306
    :cond_24
    if-ne v5, p1, :cond_27

    return v4

    .line 307
    :cond_27
    invoke-direct {p0, v4, p1, v2}, Landroidx/compose/runtime/collection/IdentityArraySet;->findExactIndex(ILjava/lang/Object;I)I

    move-result v7

    return v7

    .line 310
    .end local v4    # "mid":I
    .end local v5    # "midVal":Ljava/lang/Object;
    .end local v6    # "midIdentity":I
    :cond_2c
    add-int/lit8 v4, v0, 0x1

    neg-int v4, v4

    return v4
.end method

.method private final findExactIndex(ILjava/lang/Object;I)I
    .registers 9
    .param p1, "midIndex"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "valueHash"    # I

    .line 325
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    .line 326
    .local v0, "values":[Ljava/lang/Object;
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v1

    .line 329
    .local v1, "size":I
    add-int/lit8 v2, p1, -0x1

    .local v2, "i":I
    :goto_8
    const/4 v3, -0x1

    if-ge v3, v2, :cond_1a

    .line 330
    aget-object v3, v0, v2

    .line 331
    .local v3, "v":Ljava/lang/Object;
    if-ne v3, p2, :cond_10

    .line 332
    return v2

    .line 334
    :cond_10
    invoke-static {v3}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, p3, :cond_17

    .line 335
    goto :goto_1a

    .line 329
    .end local v3    # "v":Ljava/lang/Object;
    :cond_17
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 339
    .end local v2    # "i":I
    :cond_1a
    :goto_1a
    add-int/lit8 v2, p1, 0x1

    .restart local v2    # "i":I
    :goto_1c
    if-ge v2, v1, :cond_30

    .line 340
    aget-object v3, v0, v2

    .line 341
    .restart local v3    # "v":Ljava/lang/Object;
    if-ne v3, p2, :cond_23

    .line 342
    return v2

    .line 344
    :cond_23
    invoke-static {v3}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, p3, :cond_2d

    .line 346
    add-int/lit8 v4, v2, 0x1

    neg-int v4, v4

    return v4

    .line 339
    .end local v3    # "v":Ljava/lang/Object;
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 351
    .end local v2    # "i":I
    :cond_30
    add-int/lit8 v2, v1, 0x1

    neg-int v2, v2

    return v2
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 55
    .local v0, "index":I
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v1

    .line 56
    .local v1, "size":I
    iget-object v9, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    .line 58
    .local v9, "values":[Ljava/lang/Object;
    if-lez v1, :cond_17

    .line 59
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArraySet;->find(Ljava/lang/Object;)I

    move-result v0

    .line 61
    if-ltz v0, :cond_18

    .line 62
    const/4 v2, 0x0

    return v2

    .line 65
    :cond_17
    const/4 v0, -0x1

    .line 68
    :cond_18
    add-int/lit8 v2, v0, 0x1

    neg-int v10, v2

    .line 70
    .local v10, "insertIndex":I
    array-length v2, v9

    if-ne v1, v2, :cond_3c

    .line 71
    array-length v2, v9

    mul-int/lit8 v2, v2, 0x2

    new-array v11, v2, [Ljava/lang/Object;

    .line 72
    .local v11, "newSorted":[Ljava/lang/Object;
    nop

    .line 73
    nop

    .line 74
    add-int/lit8 v2, v10, 0x1

    .line 75
    nop

    .line 76
    nop

    .line 72
    invoke-static {v9, v11, v2, v10, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 78
    nop

    .line 79
    nop

    .line 78
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 80
    nop

    .line 78
    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, v11

    move v6, v10

    invoke-static/range {v2 .. v8}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 82
    iput-object v11, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    .end local v11    # "newSorted":[Ljava/lang/Object;
    goto :goto_45

    .line 84
    :cond_3c
    nop

    .line 85
    nop

    .line 86
    add-int/lit8 v2, v10, 0x1

    .line 87
    nop

    .line 88
    nop

    .line 84
    invoke-static {v9, v9, v2, v10, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 91
    :goto_45
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    aput-object p1, v2, v10

    .line 92
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->size:I

    .line 93
    return v3
.end method

.method public final addAll(Ljava/util/Collection;)V
    .registers 23
    .param p1, "collection"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "collection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    return-void

    .line 119
    :cond_11
    instance-of v2, v1, Landroidx/compose/runtime/collection/IdentityArraySet;

    if-nez v2, :cond_27

    .line 121
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 122
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/collection/IdentityArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 126
    .end local v3    # "value":Ljava/lang/Object;
    :cond_27
    iget-object v2, v0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    .line 127
    .local v2, "thisValues":[Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Landroidx/compose/runtime/collection/IdentityArraySet;

    iget-object v3, v3, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    .line 128
    .local v3, "otherValues":[Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v4

    .line 129
    .local v4, "thisSize":I
    move-object v5, v1

    check-cast v5, Landroidx/compose/runtime/collection/IdentityArraySet;

    invoke-virtual {v5}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v5

    .line 130
    .local v5, "otherSize":I
    add-int v6, v4, v5

    .line 132
    .local v6, "combinedSize":I
    iget-object v7, v0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    array-length v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v7, v6, :cond_44

    move v7, v9

    goto :goto_45

    :cond_44
    move v7, v8

    .line 133
    .local v7, "needsResize":Z
    :goto_45
    if-eqz v4, :cond_5a

    .line 134
    add-int/lit8 v10, v4, -0x1

    aget-object v10, v2, v10

    invoke-static {v10}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    aget-object v11, v3, v8

    invoke-static {v11}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    if-ge v10, v11, :cond_58

    goto :goto_5a

    :cond_58
    move v9, v8

    goto :goto_5b

    :cond_5a
    :goto_5a
    nop

    .line 133
    :goto_5b
    nop

    .line 136
    .local v9, "elementsInOrder":Z
    if-nez v7, :cond_70

    if-eqz v9, :cond_70

    .line 138
    nop

    .line 139
    nop

    .line 140
    nop

    .line 141
    nop

    .line 142
    nop

    .line 138
    invoke-static {v3, v2, v4, v8, v5}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v8

    add-int/2addr v8, v5

    iput v8, v0, Landroidx/compose/runtime/collection/IdentityArraySet;->size:I

    goto :goto_a0

    .line 147
    :cond_70
    if-eqz v7, :cond_7c

    .line 148
    if-le v4, v5, :cond_77

    mul-int/lit8 v10, v4, 0x2

    goto :goto_79

    :cond_77
    mul-int/lit8 v10, v5, 0x2

    :goto_79
    new-array v10, v10, [Ljava/lang/Object;

    goto :goto_7d

    .line 150
    :cond_7c
    move-object v10, v2

    .line 147
    :goto_7d
    nop

    .line 152
    .local v10, "newArray":[Ljava/lang/Object;
    add-int/lit8 v11, v4, -0x1

    .line 153
    .local v11, "thisIndex":I
    add-int/lit8 v12, v5, -0x1

    .line 154
    .local v12, "otherIndex":I
    add-int/lit8 v13, v6, -0x1

    .line 155
    .local v13, "nextInsertIndex":I
    :goto_84
    if-gez v11, :cond_a1

    if-ltz v12, :cond_89

    goto :goto_a1

    .line 212
    :cond_89
    if-ltz v13, :cond_94

    .line 214
    nop

    .line 215
    nop

    .line 216
    nop

    .line 217
    add-int/lit8 v14, v13, 0x1

    .line 218
    nop

    .line 214
    invoke-static {v10, v10, v8, v14, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 222
    :cond_94
    add-int/lit8 v8, v13, 0x1

    sub-int v8, v6, v8

    .line 223
    .local v8, "newSize":I
    const/4 v14, 0x0

    invoke-static {v10, v14, v8, v6}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 225
    iput-object v10, v0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    .line 226
    iput v8, v0, Landroidx/compose/runtime/collection/IdentityArraySet;->size:I

    .line 229
    .end local v2    # "thisValues":[Ljava/lang/Object;
    .end local v3    # "otherValues":[Ljava/lang/Object;
    .end local v4    # "thisSize":I
    .end local v5    # "otherSize":I
    .end local v6    # "combinedSize":I
    .end local v7    # "needsResize":Z
    .end local v8    # "newSize":I
    .end local v9    # "elementsInOrder":Z
    .end local v10    # "newArray":[Ljava/lang/Object;
    .end local v11    # "thisIndex":I
    .end local v12    # "otherIndex":I
    .end local v13    # "nextInsertIndex":I
    :cond_a0
    :goto_a0
    return-void

    .line 156
    .restart local v2    # "thisValues":[Ljava/lang/Object;
    .restart local v3    # "otherValues":[Ljava/lang/Object;
    .restart local v4    # "thisSize":I
    .restart local v5    # "otherSize":I
    .restart local v6    # "combinedSize":I
    .restart local v7    # "needsResize":Z
    .restart local v9    # "elementsInOrder":Z
    .restart local v10    # "newArray":[Ljava/lang/Object;
    .restart local v11    # "thisIndex":I
    .restart local v12    # "otherIndex":I
    .restart local v13    # "nextInsertIndex":I
    :cond_a1
    :goto_a1
    nop

    .line 157
    if-gez v11, :cond_ac

    add-int/lit8 v14, v12, -0x1

    .end local v12    # "otherIndex":I
    .local v14, "otherIndex":I
    aget-object v12, v3, v12

    move-object/from16 v19, v2

    goto/16 :goto_122

    .line 158
    .end local v14    # "otherIndex":I
    .restart local v12    # "otherIndex":I
    :cond_ac
    if-gez v12, :cond_bc

    add-int/lit8 v14, v11, -0x1

    .end local v11    # "thisIndex":I
    .local v14, "thisIndex":I
    aget-object v11, v2, v11

    move-object/from16 v19, v2

    move/from16 v20, v12

    move-object v12, v11

    move v11, v14

    move/from16 v14, v20

    goto/16 :goto_122

    .line 160
    .end local v14    # "thisIndex":I
    .restart local v11    # "thisIndex":I
    :cond_bc
    aget-object v14, v2, v11

    .line 161
    .local v14, "thisValue":Ljava/lang/Object;
    aget-object v15, v3, v12

    .line 163
    .local v15, "otherValue":Ljava/lang/Object;
    invoke-static {v14}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    .line 164
    .local v8, "thisHash":I
    invoke-static {v15}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 165
    .local v0, "otherHash":I
    nop

    .line 166
    if-le v8, v0, :cond_d5

    .line 167
    add-int/lit8 v11, v11, -0x1

    .line 168
    move-object/from16 v19, v2

    move-object/from16 v20, v14

    move v14, v12

    move-object/from16 v12, v20

    goto :goto_122

    .line 170
    :cond_d5
    if-ge v8, v0, :cond_de

    .line 171
    add-int/lit8 v12, v12, -0x1

    .line 172
    move-object/from16 v19, v2

    move v14, v12

    move-object v12, v15

    goto :goto_122

    .line 174
    :cond_de
    if-ne v14, v15, :cond_ec

    .line 176
    add-int/lit8 v11, v11, -0x1

    .line 177
    add-int/lit8 v12, v12, -0x1

    .line 178
    move-object/from16 v19, v2

    move-object/from16 v20, v14

    move v14, v12

    move-object/from16 v12, v20

    goto :goto_122

    .line 182
    :cond_ec
    add-int/lit8 v16, v11, -0x1

    .line 183
    .local v16, "i":I
    const/16 v17, 0x0

    .line 184
    .local v17, "foundDuplicate":Z
    :goto_f0
    if-ltz v16, :cond_10f

    .line 185
    add-int/lit8 v18, v16, -0x1

    .end local v16    # "i":I
    .local v18, "i":I
    aget-object v1, v2, v16

    .line 186
    .local v1, "value":Ljava/lang/Object;
    move-object/from16 v19, v2

    .end local v2    # "thisValues":[Ljava/lang/Object;
    .local v19, "thisValues":[Ljava/lang/Object;
    invoke-static {v1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v0, :cond_10c

    .line 187
    if-ne v15, v1, :cond_105

    .line 188
    const/16 v17, 0x1

    .line 189
    move/from16 v16, v18

    goto :goto_111

    .line 187
    :cond_105
    move-object/from16 v1, p1

    move/from16 v16, v18

    move-object/from16 v2, v19

    goto :goto_f0

    .line 186
    :cond_10c
    move/from16 v16, v18

    goto :goto_111

    .line 184
    .end local v1    # "value":Ljava/lang/Object;
    .end local v18    # "i":I
    .end local v19    # "thisValues":[Ljava/lang/Object;
    .restart local v2    # "thisValues":[Ljava/lang/Object;
    .restart local v16    # "i":I
    :cond_10f
    move-object/from16 v19, v2

    .line 193
    .end local v2    # "thisValues":[Ljava/lang/Object;
    .restart local v19    # "thisValues":[Ljava/lang/Object;
    :goto_111
    if-eqz v17, :cond_11e

    .line 196
    add-int/lit8 v12, v12, -0x1

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    const/4 v8, 0x0

    goto/16 :goto_84

    .line 200
    :cond_11e
    add-int/lit8 v12, v12, -0x1

    .line 201
    move v14, v12

    move-object v12, v15

    .line 156
    .end local v0    # "otherHash":I
    .end local v8    # "thisHash":I
    .end local v12    # "otherIndex":I
    .end local v15    # "otherValue":Ljava/lang/Object;
    .end local v16    # "i":I
    .end local v17    # "foundDuplicate":Z
    .local v14, "otherIndex":I
    :goto_122
    move-object v0, v12

    .line 209
    .local v0, "nextValue":Ljava/lang/Object;
    add-int/lit8 v1, v13, -0x1

    .end local v13    # "nextInsertIndex":I
    .local v1, "nextInsertIndex":I
    aput-object v0, v10, v13

    move-object/from16 v0, p0

    move v13, v1

    move v12, v14

    move-object/from16 v2, v19

    const/4 v8, 0x0

    move-object/from16 v1, p1

    .end local v0    # "nextValue":Ljava/lang/Object;
    goto/16 :goto_84
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final clear()V
    .registers 7

    .line 100
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->size:I

    .line 102
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "element"    # Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 38
    :cond_4
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArraySet;->find(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 9
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 390
    .local v1, "$i$f$all":I
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_15

    goto :goto_2e

    .line 391
    :cond_15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "it":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 366
    .local v6, "$i$a$-all-IdentityArraySet$containsAll$1":I
    invoke-virtual {p0, v5}, Landroidx/compose/runtime/collection/IdentityArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 391
    .end local v5    # "it":Ljava/lang/Object;
    .end local v6    # "$i$a$-all-IdentityArraySet$containsAll$1":I
    if-nez v5, :cond_19

    const/4 v3, 0x0

    goto :goto_2e

    .line 392
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_2d
    nop

    .line 366
    .end local v0    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$all":I
    :goto_2e
    return v3
.end method

.method public final fastForEach(Lkotlin/jvm/functions/Function1;)V
    .registers 8
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 108
    .local v0, "$i$f$fastForEach":I
    nop

    .line 109
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v1

    .line 110
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v3

    :goto_11
    if-ge v2, v3, :cond_21

    .line 112
    aget-object v4, v1, v2

    const-string/jumbo v5, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 114
    .end local v2    # "i":I
    :cond_21
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArraySet;->checkIndexBounds(I)V

    .line 47
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    const-string/jumbo v1, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 29
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->size:I

    return v0
.end method

.method public final getValues()[Ljava/lang/Object;
    .registers 2

    .line 32
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 234
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isNotEmpty()Z
    .registers 2

    .line 239
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 372
    new-instance v0, Landroidx/compose/runtime/collection/IdentityArraySet$iterator$1;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/collection/IdentityArraySet$iterator$1;-><init>(Landroidx/compose/runtime/collection/IdentityArraySet;)V

    check-cast v0, Ljava/util/Iterator;

    .line 376
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 245
    :cond_4
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArraySet;->find(Ljava/lang/Object;)I

    move-result v1

    .line 246
    .local v1, "index":I
    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->values:[Ljava/lang/Object;

    .line 247
    .local v2, "values":[Ljava/lang/Object;
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v3

    .line 249
    .local v3, "size":I
    if-ltz v1, :cond_2c

    .line 250
    add-int/lit8 v0, v3, -0x1

    if-ge v1, v0, :cond_1d

    .line 251
    nop

    .line 252
    nop

    .line 253
    nop

    .line 254
    add-int/lit8 v0, v1, 0x1

    .line 255
    nop

    .line 251
    invoke-static {v2, v2, v1, v0, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 258
    :cond_1d
    add-int/lit8 v0, v3, -0x1

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 259
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/collection/IdentityArraySet;->size:I

    .line 260
    const/4 v0, 0x1

    return v0

    .line 262
    :cond_2c
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeValueIf(Lkotlin/jvm/functions/Function1;)V
    .registers 9
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 269
    .local v0, "$i$f$removeValueIf":I
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v1

    .line 270
    .local v1, "values":[Ljava/lang/Object;
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v2

    .line 272
    .local v2, "size":I
    const/4 v3, 0x0

    .line 273
    .local v3, "destinationIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    if-ge v4, v2, :cond_30

    .line 275
    aget-object v5, v1, v4

    const-string/jumbo v6, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    .local v5, "item":Ljava/lang/Object;
    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2d

    .line 277
    if-eq v3, v4, :cond_2b

    .line 278
    aput-object v5, v1, v3

    .line 280
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    .line 273
    .end local v5    # "item":Ljava/lang/Object;
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 283
    .end local v4    # "i":I
    :cond_30
    move v4, v3

    .restart local v4    # "i":I
    :goto_31
    if-ge v4, v2, :cond_39

    .line 284
    const/4 v5, 0x0

    aput-object v5, v1, v4

    .line 283
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 286
    .end local v4    # "i":I
    :cond_39
    invoke-static {p0, v3}, Landroidx/compose/runtime/collection/IdentityArraySet;->access$setSize$p(Landroidx/compose/runtime/collection/IdentityArraySet;I)V

    .line 287
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge size()I
    .registers 2

    .line 27
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArraySet;->getSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string/jumbo v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 379
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    const/4 v1, 0x0

    const-string/jumbo v2, "["

    check-cast v2, Ljava/lang/CharSequence;

    const-string/jumbo v3, "]"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroidx/compose/runtime/collection/IdentityArraySet$toString$1;->INSTANCE:Landroidx/compose/runtime/collection/IdentityArraySet$toString$1;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/16 v7, 0x19

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
