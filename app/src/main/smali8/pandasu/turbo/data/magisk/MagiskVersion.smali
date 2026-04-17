.class public final Lcom/pandasu/turbo/data/magisk/MagiskVersion;
.super Ljava/lang/Object;
.source "MagiskProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/magisk/MagiskVersion;",
        "",
        "versionName",
        "",
        "versionCode",
        "",
        "isInstalled",
        "",
        "(Ljava/lang/String;IZ)V",
        "()Z",
        "getVersionCode",
        "()I",
        "getVersionName",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
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
.field private final isInstalled:Z

.field private final versionCode:I

.field private final versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "versionName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "isInstalled"    # Z

    const-string v0, "versionName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1288
    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->versionName:Ljava/lang/String;

    .line 1289
    iput p2, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->versionCode:I

    .line 1290
    iput-boolean p3, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->isInstalled:Z

    .line 1287
    return-void
.end method

.method public static synthetic copy$default(Lcom/pandasu/turbo/data/magisk/MagiskVersion;Ljava/lang/String;IZILjava/lang/Object;)Lcom/pandasu/turbo/data/magisk/MagiskVersion;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->versionName:Ljava/lang/String;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->versionCode:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-boolean p3, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->isInstalled:Z

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->copy(Ljava/lang/String;IZ)Lcom/pandasu/turbo/data/magisk/MagiskVersion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->versionCode:I

    return v0
.end method

.method public final component3()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->isInstalled:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;IZ)Lcom/pandasu/turbo/data/magisk/MagiskVersion;
    .registers 5

    const-string v0, "versionName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;

    invoke-direct {v0, p1, p2, p3}, Lcom/pandasu/turbo/data/magisk/MagiskVersion;-><init>(Ljava/lang/String;IZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/pandasu/turbo/data/magisk/MagiskVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/pandasu/turbo/data/magisk/MagiskVersion;

    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->versionName:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->versionName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    return v2

    :cond_18
    iget v3, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->versionCode:I

    iget v4, v1, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->versionCode:I

    if-eq v3, v4, :cond_1f

    return v2

    :cond_1f
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->isInstalled:Z

    iget-boolean v1, v1, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->isInstalled:Z

    if-eq v3, v1, :cond_26

    return v2

    :cond_26
    return v0
.end method

.method public final getVersionCode()I
    .registers 2

    .line 1289
    iget v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->versionCode:I

    return v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .registers 2

    .line 1288
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->versionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->isInstalled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final isInstalled()Z
    .registers 2

    .line 1290
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->isInstalled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->versionName:Ljava/lang/String;

    iget v1, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->versionCode:I

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/magisk/MagiskVersion;->isInstalled:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MagiskVersion(versionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", versionCode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInstalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
