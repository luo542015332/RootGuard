.class public final Landroidx/compose/ui/focus/FocusDirection;
.super Ljava/lang/Object;
.source "FocusDirection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusDirection$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0087@\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0014\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\u0005J\u000f\u0010\r\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u00f8\u0001\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/ui/focus/FocusDirection;",
        "",
        "value",
        "",
        "constructor-impl",
        "(I)I",
        "equals",
        "",
        "other",
        "equals-impl",
        "(ILjava/lang/Object;)Z",
        "hashCode",
        "hashCode-impl",
        "toString",
        "",
        "toString-impl",
        "(I)Ljava/lang/String;",
        "Companion",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

.field private static final Down:I

.field private static final Enter:I

.field private static final Exit:I

.field private static final In:I

.field private static final Left:I

.field private static final Next:I

.field private static final Out:I

.field private static final Previous:I

.field private static final Right:I

.field private static final Up:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/compose/ui/focus/FocusDirection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/focus/FocusDirection;->Next:I

    .line 61
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/focus/FocusDirection;->Previous:I

    .line 69
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/focus/FocusDirection;->Left:I

    .line 77
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/focus/FocusDirection;->Right:I

    .line 85
    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/focus/FocusDirection;->Up:I

    .line 93
    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/focus/FocusDirection;->Down:I

    .line 102
    const/4 v0, 0x7

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/focus/FocusDirection;->Enter:I

    .line 111
    const/16 v1, 0x8

    invoke-static {v1}, Landroidx/compose/ui/focus/FocusDirection;->constructor-impl(I)I

    move-result v1

    sput v1, Landroidx/compose/ui/focus/FocusDirection;->Exit:I

    .line 125
    sput v0, Landroidx/compose/ui/focus/FocusDirection;->In:I

    .line 139
    sput v1, Landroidx/compose/ui/focus/FocusDirection;->Out:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/focus/FocusDirection;->value:I

    return-void
.end method

.method public static final synthetic access$getDown$cp()I
    .registers 1

    .line 27
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Down:I

    return v0
.end method

.method public static final synthetic access$getEnter$cp()I
    .registers 1

    .line 27
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Enter:I

    return v0
.end method

.method public static final synthetic access$getExit$cp()I
    .registers 1

    .line 27
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Exit:I

    return v0
.end method

.method public static final synthetic access$getIn$cp()I
    .registers 1

    .line 27
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->In:I

    return v0
.end method

.method public static final synthetic access$getLeft$cp()I
    .registers 1

    .line 27
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Left:I

    return v0
.end method

.method public static final synthetic access$getNext$cp()I
    .registers 1

    .line 27
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Next:I

    return v0
.end method

.method public static final synthetic access$getOut$cp()I
    .registers 1

    .line 27
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Out:I

    return v0
.end method

.method public static final synthetic access$getPrevious$cp()I
    .registers 1

    .line 27
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Previous:I

    return v0
.end method

.method public static final synthetic access$getRight$cp()I
    .registers 1

    .line 27
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Right:I

    return v0
.end method

.method public static final synthetic access$getUp$cp()I
    .registers 1

    .line 27
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Up:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/ui/focus/FocusDirection;
    .registers 2

    new-instance v0, Landroidx/compose/ui/focus/FocusDirection;

    invoke-direct {v0, p0}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .registers 1

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroidx/compose/ui/focus/FocusDirection;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/focus/FocusDirection;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection;->unbox-impl()I

    move-result v0

    if-eq p0, v0, :cond_10

    return v1

    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public static final equals-impl0(II)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static hashCode-impl(I)I
    .registers 2

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .registers 2
    .param p0, "arg0"    # I

    .line 31
    nop

    .line 32
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Next:I

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "Next"

    goto :goto_61

    .line 33
    :cond_d
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Previous:I

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "Previous"

    goto :goto_61

    .line 34
    :cond_19
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Left:I

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "Left"

    goto :goto_61

    .line 35
    :cond_24
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Right:I

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo v0, "Right"

    goto :goto_61

    .line 36
    :cond_30
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Up:I

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string/jumbo v0, "Up"

    goto :goto_61

    .line 37
    :cond_3c
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Down:I

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v0, "Down"

    goto :goto_61

    .line 38
    :cond_47
    nop

    .line 39
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Enter:I

    .line 38
    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 39
    const-string v0, "Enter"

    goto :goto_61

    .line 40
    :cond_53
    nop

    .line 41
    sget v0, Landroidx/compose/ui/focus/FocusDirection;->Exit:I

    .line 40
    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 41
    const-string v0, "Exit"

    goto :goto_61

    .line 42
    :cond_5f
    const-string v0, "Invalid FocusDirection"

    .line 31
    :goto_61
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Landroidx/compose/ui/focus/FocusDirection;->value:I

    invoke-static {v0, p1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Landroidx/compose/ui/focus/FocusDirection;->value:I

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 30
    iget v0, p0, Landroidx/compose/ui/focus/FocusDirection;->value:I

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusDirection;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .registers 2

    iget v0, p0, Landroidx/compose/ui/focus/FocusDirection;->value:I

    return v0
.end method
