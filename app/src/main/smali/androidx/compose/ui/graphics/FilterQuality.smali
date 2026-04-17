.class public final Landroidx/compose/ui/graphics/FilterQuality;
.super Ljava/lang/Object;
.source "FilterQuality.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/FilterQuality$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0087@\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0014\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u0005J\u000f\u0010\u000f\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u0088\u0001\u0002\u00f8\u0001\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/FilterQuality;",
        "",
        "value",
        "",
        "constructor-impl",
        "(I)I",
        "getValue",
        "()I",
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
        "ui-graphics_release"
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
.field public static final Companion:Landroidx/compose/ui/graphics/FilterQuality$Companion;

.field private static final High:I

.field private static final Low:I

.field private static final Medium:I

.field private static final None:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/compose/ui/graphics/FilterQuality$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/FilterQuality$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/FilterQuality;->Companion:Landroidx/compose/ui/graphics/FilterQuality$Companion;

    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/ui/graphics/FilterQuality;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/FilterQuality;->None:I

    .line 40
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/ui/graphics/FilterQuality;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/FilterQuality;->Low:I

    .line 48
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/ui/graphics/FilterQuality;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/FilterQuality;->Medium:I

    .line 54
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/compose/ui/graphics/FilterQuality;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/FilterQuality;->High:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/graphics/FilterQuality;->value:I

    return-void
.end method

.method public static final synthetic access$getHigh$cp()I
    .registers 1

    .line 25
    sget v0, Landroidx/compose/ui/graphics/FilterQuality;->High:I

    return v0
.end method

.method public static final synthetic access$getLow$cp()I
    .registers 1

    .line 25
    sget v0, Landroidx/compose/ui/graphics/FilterQuality;->Low:I

    return v0
.end method

.method public static final synthetic access$getMedium$cp()I
    .registers 1

    .line 25
    sget v0, Landroidx/compose/ui/graphics/FilterQuality;->Medium:I

    return v0
.end method

.method public static final synthetic access$getNone$cp()I
    .registers 1

    .line 25
    sget v0, Landroidx/compose/ui/graphics/FilterQuality;->None:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/ui/graphics/FilterQuality;
    .registers 2

    new-instance v0, Landroidx/compose/ui/graphics/FilterQuality;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/FilterQuality;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .registers 1

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroidx/compose/ui/graphics/FilterQuality;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/FilterQuality;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/FilterQuality;->unbox-impl()I

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

    .line 57
    nop

    .line 58
    sget v0, Landroidx/compose/ui/graphics/FilterQuality;->None:I

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/FilterQuality;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "None"

    goto :goto_33

    .line 59
    :cond_d
    sget v0, Landroidx/compose/ui/graphics/FilterQuality;->Low:I

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/FilterQuality;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "Low"

    goto :goto_33

    .line 60
    :cond_19
    sget v0, Landroidx/compose/ui/graphics/FilterQuality;->Medium:I

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/FilterQuality;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo v0, "Medium"

    goto :goto_33

    .line 61
    :cond_25
    sget v0, Landroidx/compose/ui/graphics/FilterQuality;->High:I

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/FilterQuality;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "High"

    goto :goto_33

    .line 62
    :cond_30
    const-string/jumbo v0, "Unknown"

    .line 63
    :goto_33
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Landroidx/compose/ui/graphics/FilterQuality;->value:I

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/FilterQuality;->equals-impl(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getValue()I
    .registers 2

    .line 27
    iget v0, p0, Landroidx/compose/ui/graphics/FilterQuality;->value:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Landroidx/compose/ui/graphics/FilterQuality;->value:I

    invoke-static {v0}, Landroidx/compose/ui/graphics/FilterQuality;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 57
    iget v0, p0, Landroidx/compose/ui/graphics/FilterQuality;->value:I

    invoke-static {v0}, Landroidx/compose/ui/graphics/FilterQuality;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .registers 2

    iget v0, p0, Landroidx/compose/ui/graphics/FilterQuality;->value:I

    return v0
.end method
