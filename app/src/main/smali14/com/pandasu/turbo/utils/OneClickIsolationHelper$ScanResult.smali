.class public final Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;
.super Ljava/lang/Object;
.source "OneClickIsolationHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/utils/OneClickIsolationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScanResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u0015\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00030\u0006H\u00c6\u0003J3\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0014\u0008\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00030\u0006H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;",
        "",
        "totalApps",
        "",
        "rootApps",
        "categorizedApps",
        "",
        "Lcom/pandasu/turbo/data/model/AppCategory;",
        "(IILjava/util/Map;)V",
        "getCategorizedApps",
        "()Ljava/util/Map;",
        "getRootApps",
        "()I",
        "getTotalApps",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final categorizedApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/pandasu/turbo/data/model/AppCategory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final rootApps:I

.field private final totalApps:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->$stable:I

    return-void
.end method

.method public constructor <init>(IILjava/util/Map;)V
    .locals 1
    .param p1, "totalApps"    # I
    .param p2, "rootApps"    # I
    .param p3, "categorizedApps"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Lcom/pandasu/turbo/data/model/AppCategory;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "categorizedApps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->totalApps:I

    .line 28
    iput p2, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->rootApps:I

    .line 29
    iput-object p3, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->categorizedApps:Ljava/util/Map;

    .line 26
    return-void
.end method

.method public static synthetic copy$default(Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;IILjava/util/Map;ILjava/lang/Object;)Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->totalApps:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->rootApps:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->categorizedApps:Ljava/util/Map;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->copy(IILjava/util/Map;)Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->totalApps:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->rootApps:I

    return v0
.end method

.method public final component3()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/pandasu/turbo/data/model/AppCategory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->categorizedApps:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(IILjava/util/Map;)Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Lcom/pandasu/turbo/data/model/AppCategory;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;"
        }
    .end annotation

    const-string v0, "categorizedApps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;-><init>(IILjava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;

    iget v3, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->totalApps:I

    iget v4, v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->totalApps:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->rootApps:I

    iget v4, v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->rootApps:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->categorizedApps:Ljava/util/Map;

    iget-object v1, v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->categorizedApps:Ljava/util/Map;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCategorizedApps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/pandasu/turbo/data/model/AppCategory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->categorizedApps:Ljava/util/Map;

    return-object v0
.end method

.method public final getRootApps()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->rootApps:I

    return v0
.end method

.method public final getTotalApps()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->totalApps:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->totalApps:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->rootApps:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->categorizedApps:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->totalApps:I

    iget v1, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->rootApps:I

    iget-object v2, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;->categorizedApps:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScanResult(totalApps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", rootApps="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categorizedApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
