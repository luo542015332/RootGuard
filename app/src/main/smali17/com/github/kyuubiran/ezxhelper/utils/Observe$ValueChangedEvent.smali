.class public final Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;
.super Ljava/lang/Object;
.source "Observe.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/kyuubiran/ezxhelper/utils/Observe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValueChangedEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObserve.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Observe.kt\ncom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Utils.kt\ncom/github/kyuubiran/ezxhelper/utils/UtilsKt\n*L\n1#1,102:1\n1851#2,2:103\n766#2:106\n857#2,2:107\n1851#2,2:109\n89#3:105\n90#3:111\n*S KotlinDebug\n*F\n+ 1 Observe.kt\ncom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent\n*L\n86#1:103,2\n90#1:106\n90#1:107,2\n90#1:109,2\n90#1:105\n90#1:111\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\t\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001a\u0010\u0017\u001a\u00020\u00072\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u0006J%\u0010\u0019\u001a\u00020\u00072\u0018\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u00060\u001b\u00a2\u0006\u0002\u0010\u001cJ \u0010\u0019\u001a\u00020\u00072\u0018\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u00060\u001dJ\u0006\u0010\u001e\u001a\u00020\u0007J\u0016\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00028\u0001H\u0086\u0002\u00a2\u0006\u0002\u0010!J\u001d\u0010\"\u001a\u00020\u00072\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u0006H\u0086\u0002J(\u0010\"\u001a\u00020\u00072\u0018\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u00060\u001bH\u0086\u0002\u00a2\u0006\u0002\u0010\u001cJ#\u0010\"\u001a\u00020\u00072\u0018\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u00060\u001dH\u0086\u0002J\u001d\u0010#\u001a\u00020\u00072\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u0006H\u0086\u0002J(\u0010#\u001a\u00020\u00072\u0018\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u00060\u001bH\u0086\u0002\u00a2\u0006\u0002\u0010\u001cJ#\u0010#\u001a\u00020\u00072\u0018\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u00060\u001dH\u0086\u0002J\u001a\u0010$\u001a\u00020\u00072\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u0006J%\u0010%\u001a\u00020\u00072\u0018\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u00060\u001b\u00a2\u0006\u0002\u0010\u001cJ \u0010%\u001a\u00020\u00072\u0018\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u00060\u001dJ\u0013\u0010\u0011\u001a\u00020\u00072\u0006\u0010 \u001a\u00028\u0001\u00a2\u0006\u0002\u0010!R \u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00070\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R7\u0010\u0008\u001a\u001f\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006&"
    }
    d2 = {
        "Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;",
        "T",
        "",
        "()V",
        "_listeners",
        "",
        "Lkotlin/Function1;",
        "",
        "onThrow",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "thr",
        "getOnThrow",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnThrow",
        "(Lkotlin/jvm/functions/Function1;)V",
        "unsafeInvoke",
        "",
        "getUnsafeInvoke",
        "()Z",
        "setUnsafeInvoke",
        "(Z)V",
        "add",
        "listener",
        "addAll",
        "listeners",
        "",
        "([Lkotlin/jvm/functions/Function1;)V",
        "",
        "clear",
        "invoke",
        "value",
        "(Ljava/lang/Object;)V",
        "minusAssign",
        "plusAssign",
        "remove",
        "removeAll",
        "EzXHelper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private onThrow:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private unsafeInvoke:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->_listeners:Ljava/util/Set;

    .line 26
    return-void
.end method


# virtual methods
.method public final add(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->_listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public final addAll(Ljava/util/Collection;)V
    .locals 1
    .param p1, "listeners"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "listeners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->_listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 43
    return-void
.end method

.method public final addAll([Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "listeners"    # [Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listeners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->_listeners:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->_listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 59
    return-void
.end method

.method public final getOnThrow()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->onThrow:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getUnsafeInvoke()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->unsafeInvoke:Z

    return v0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 17
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 90
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->_listeners:Ljava/util/Set;

    .local v2, "$this$retainIf$iv":Ljava/util/Set;
    const/4 v3, 0x0

    .line 105
    .local v3, "$i$f$retainIf":I
    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$filter$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 106
    .local v5, "$i$f$filter":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .local v0, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object v6, v4

    .local v6, "$this$filterTo$iv$iv$iv":Ljava/lang/Iterable;
    move-object v7, v0

    .end local v0    # "destination$iv$iv$iv":Ljava/util/Collection;
    .local v7, "destination$iv$iv$iv":Ljava/util/Collection;
    const/4 v8, 0x0

    .line 107
    .local v8, "$i$f$filterTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "elem$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 105
    .local v12, "$i$a$-filter-UtilsKt$retainIf$3$iv":I
    move-object v13, v11

    check-cast v13, Lkotlin/jvm/functions/Function1;

    .local v13, "it":Lkotlin/jvm/functions/Function1;
    const/4 v14, 0x0

    .line 91
    .local v14, "$i$a$-retainIf-Observe$ValueChangedEvent$invoke$1":I
    nop

    .line 92
    move-object/from16 v15, p1

    :try_start_0
    invoke-interface {v13, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    const/4 v0, 0x1

    move/from16 v16, v3

    goto :goto_1

    .line 94
    :catchall_0
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 95
    .local v0, "e":Ljava/lang/Throwable;
    move/from16 v16, v3

    .end local v3    # "$i$f$retainIf":I
    .local v16, "$i$f$retainIf":I
    iget-object v3, v1, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->onThrow:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_0

    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_0
    sget-object v3, Lcom/github/kyuubiran/ezxhelper/utils/Log;->INSTANCE:Lcom/github/kyuubiran/ezxhelper/utils/Log;

    const-string v1, "Event invoke failed"

    invoke-virtual {v3, v1, v0}, Lcom/github/kyuubiran/ezxhelper/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    const/4 v1, 0x0

    move v0, v1

    .line 91
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    nop

    .end local v11    # "elem$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-filter-UtilsKt$retainIf$3$iv":I
    .end local v13    # "it":Lkotlin/jvm/functions/Function1;
    .end local v14    # "$i$a$-retainIf-Observe$ValueChangedEvent$invoke$1":I
    if-eqz v0, :cond_1

    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v1, p0

    move/from16 v3, v16

    goto :goto_0

    .line 108
    .end local v10    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$retainIf":I
    .restart local v3    # "$i$f$retainIf":I
    :cond_2
    move-object/from16 v15, p1

    move/from16 v16, v3

    .end local v3    # "$i$f$retainIf":I
    .end local v6    # "$this$filterTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v8    # "$i$f$filterTo":I
    .restart local v16    # "$i$f$retainIf":I
    move-object v0, v7

    check-cast v0, Ljava/util/List;

    .line 106
    nop

    .end local v4    # "$this$filter$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filter":I
    check-cast v0, Ljava/lang/Iterable;

    .line 105
    nop

    .local v0, "$this$forEach$iv$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 109
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 105
    .local v6, "$i$a$-forEach-UtilsKt$retainIf$4$iv":I
    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 110
    .end local v4    # "element$iv$iv":Ljava/lang/Object;
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-forEach-UtilsKt$retainIf$4$iv":I
    :cond_3
    nop

    .line 111
    .end local v0    # "$this$forEach$iv$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    nop

    .line 100
    .end local v2    # "$this$retainIf$iv":Ljava/util/Set;
    .end local v16    # "$i$f$retainIf":I
    return-void
.end method

.method public final minusAssign(Ljava/util/Collection;)V
    .locals 1
    .param p1, "listeners"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "listeners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->removeAll(Ljava/util/Collection;)V

    .line 75
    return-void
.end method

.method public final minusAssign(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->remove(Lkotlin/jvm/functions/Function1;)V

    .line 67
    return-void
.end method

.method public final minusAssign([Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "listeners"    # [Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listeners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->removeAll([Lkotlin/jvm/functions/Function1;)V

    .line 83
    return-void
.end method

.method public final plusAssign(Ljava/util/Collection;)V
    .locals 1
    .param p1, "listeners"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "listeners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->addAll(Ljava/util/Collection;)V

    .line 71
    return-void
.end method

.method public final plusAssign(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->add(Lkotlin/jvm/functions/Function1;)V

    .line 63
    return-void
.end method

.method public final plusAssign([Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "listeners"    # [Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listeners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->addAll([Lkotlin/jvm/functions/Function1;)V

    .line 79
    return-void
.end method

.method public final remove(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->_listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public final removeAll(Ljava/util/Collection;)V
    .locals 2
    .param p1, "listeners"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "listeners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->_listeners:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 47
    return-void
.end method

.method public final removeAll([Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "listeners"    # [Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listeners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->_listeners:Ljava/util/Set;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 55
    return-void
.end method

.method public final setOnThrow(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->onThrow:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setUnsafeInvoke(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 29
    iput-boolean p1, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->unsafeInvoke:Z

    return-void
.end method

.method public final unsafeInvoke(Ljava/lang/Object;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->_listeners:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 103
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "it":Lkotlin/jvm/functions/Function1;
    const/4 v5, 0x0

    .line 86
    .local v5, "$i$a$-forEach-Observe$ValueChangedEvent$unsafeInvoke$1":I
    invoke-interface {v4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lkotlin/jvm/functions/Function1;
    .end local v5    # "$i$a$-forEach-Observe$ValueChangedEvent$unsafeInvoke$1":I
    :cond_0
    nop

    .line 87
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
