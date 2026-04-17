.class public final Lcom/pandasu/turbo/data/magisk/AppPolicy;
.super Ljava/lang/Object;
.source "MagiskProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J1\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/magisk/AppPolicy;",
        "",
        "packageName",
        "",
        "policy",
        "",
        "logging",
        "notification",
        "(Ljava/lang/String;III)V",
        "getLogging",
        "()I",
        "getNotification",
        "getPackageName",
        "()Ljava/lang/String;",
        "getPolicy",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final logging:I

.field private final notification:I

.field private final packageName:Ljava/lang/String;

.field private final policy:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policy"    # I
    .param p3, "logging"    # I
    .param p4, "notification"    # I

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1304
    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->packageName:Ljava/lang/String;

    .line 1305
    iput p2, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->policy:I

    .line 1306
    iput p3, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->logging:I

    .line 1307
    iput p4, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->notification:I

    .line 1303
    return-void
.end method

.method public static synthetic copy$default(Lcom/pandasu/turbo/data/magisk/AppPolicy;Ljava/lang/String;IIIILjava/lang/Object;)Lcom/pandasu/turbo/data/magisk/AppPolicy;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->packageName:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->policy:I

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->logging:I

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->notification:I

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/pandasu/turbo/data/magisk/AppPolicy;->copy(Ljava/lang/String;III)Lcom/pandasu/turbo/data/magisk/AppPolicy;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->policy:I

    return v0
.end method

.method public final component3()I
    .registers 2

    iget v0, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->logging:I

    return v0
.end method

.method public final component4()I
    .registers 2

    iget v0, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->notification:I

    return v0
.end method

.method public final copy(Ljava/lang/String;III)Lcom/pandasu/turbo/data/magisk/AppPolicy;
    .registers 6

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/pandasu/turbo/data/magisk/AppPolicy;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/pandasu/turbo/data/magisk/AppPolicy;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/pandasu/turbo/data/magisk/AppPolicy;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/pandasu/turbo/data/magisk/AppPolicy;

    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/AppPolicy;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    return v2

    :cond_18
    iget v3, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->policy:I

    iget v4, v1, Lcom/pandasu/turbo/data/magisk/AppPolicy;->policy:I

    if-eq v3, v4, :cond_1f

    return v2

    :cond_1f
    iget v3, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->logging:I

    iget v4, v1, Lcom/pandasu/turbo/data/magisk/AppPolicy;->logging:I

    if-eq v3, v4, :cond_26

    return v2

    :cond_26
    iget v3, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->notification:I

    iget v1, v1, Lcom/pandasu/turbo/data/magisk/AppPolicy;->notification:I

    if-eq v3, v1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getLogging()I
    .registers 2

    .line 1306
    iget v0, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->logging:I

    return v0
.end method

.method public final getNotification()I
    .registers 2

    .line 1307
    iget v0, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->notification:I

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 2

    .line 1304
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPolicy()I
    .registers 2

    .line 1305
    iget v0, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->policy:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->policy:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->logging:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->notification:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->packageName:Ljava/lang/String;

    iget v1, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->policy:I

    iget v2, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->logging:I

    iget v3, p0, Lcom/pandasu/turbo/data/magisk/AppPolicy;->notification:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppPolicy(packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", policy="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
