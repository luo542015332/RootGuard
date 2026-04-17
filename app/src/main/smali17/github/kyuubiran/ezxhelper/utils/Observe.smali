.class public final Lcom/github/kyuubiran/ezxhelper/utils/Observe;
.super Ljava/lang/Object;
.source "Observe.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\u0013B%\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0016\u0008\u0002\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007R\u0010\u0010\u0008\u001a\u00028\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR$\u0010\u000e\u001a\u00028\u00002\u0006\u0010\r\u001a\u00028\u00008F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/github/kyuubiran/ezxhelper/utils/Observe;",
        "T",
        "",
        "init",
        "onValueChanged",
        "Lkotlin/Function1;",
        "",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "_value",
        "Ljava/lang/Object;",
        "Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;",
        "getOnValueChanged",
        "()Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;",
        "newValue",
        "value",
        "getValue",
        "()Ljava/lang/Object;",
        "setValue",
        "(Ljava/lang/Object;)V",
        "ValueChangedEvent",
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
.field private _value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final onValueChanged:Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .param p1, "init"    # Ljava/lang/Object;
    .param p2, "onValueChanged"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe;->_value:Ljava/lang/Object;

    .line 20
    new-instance v0, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;

    invoke-direct {v0}, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;-><init>()V

    iput-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe;->onValueChanged:Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;

    .line 22
    nop

    .line 23
    if-eqz p2, :cond_12

    invoke-virtual {v0, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->plusAssign(Lkotlin/jvm/functions/Function1;)V

    .line 24
    :cond_12
    nop

    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    .line 6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/github/kyuubiran/ezxhelper/utils/Observe;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 102
    return-void
.end method


# virtual methods
.method public final getOnValueChanged()Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent<",
            "TT;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe;->onValueChanged:Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .registers 4
    .param p1, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 11
    monitor-enter p0

    const/4 v0, 0x0

    .line 12
    .local v0, "$i$a$-synchronized-Observe$value$1":I
    :try_start_2
    iget-object v1, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe;->_value:Ljava/lang/Object;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 13
    iput-object p1, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe;->_value:Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe;->onValueChanged:Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;

    invoke-virtual {v1}, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->getUnsafeInvoke()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 15
    iget-object v1, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe;->onValueChanged:Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;

    invoke-virtual {v1, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->unsafeInvoke(Ljava/lang/Object;)V

    goto :goto_1f

    .line 17
    :cond_1a
    iget-object v1, p0, Lcom/github/kyuubiran/ezxhelper/utils/Observe;->onValueChanged:Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;

    invoke-virtual {v1, p1}, Lcom/github/kyuubiran/ezxhelper/utils/Observe$ValueChangedEvent;->invoke(Ljava/lang/Object;)V

    .line 18
    :goto_1f
    nop

    .end local v0    # "$i$a$-synchronized-Observe$value$1":I
    :cond_20
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_24

    .line 11
    monitor-exit p0

    .line 18
    return-void

    .line 11
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method
