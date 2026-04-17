.class public final Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;
.super Ljava/lang/Object;
.source "RootHider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DetectionResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\tH\u00c6\u0003J1\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00072\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\tH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;",
        "",
        "item",
        "Lcom/pandasu/turbo/data/model/DetectionItem;",
        "label",
        "",
        "detected",
        "",
        "severity",
        "",
        "(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V",
        "getDetected",
        "()Z",
        "getItem",
        "()Lcom/pandasu/turbo/data/model/DetectionItem;",
        "getLabel",
        "()Ljava/lang/String;",
        "getSeverity",
        "()I",
        "component1",
        "component2",
        "component3",
        "component4",
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
.field private final detected:Z

.field private final item:Lcom/pandasu/turbo/data/model/DetectionItem;

.field private final label:Ljava/lang/String;

.field private final severity:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V
    .registers 6
    .param p1, "item"    # Lcom/pandasu/turbo/data/model/DetectionItem;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "detected"    # Z
    .param p4, "severity"    # I

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->item:Lcom/pandasu/turbo/data/model/DetectionItem;

    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->label:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->detected:Z

    iput p4, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->severity:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZIILjava/lang/Object;)Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->item:Lcom/pandasu/turbo/data/model/DetectionItem;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->label:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-boolean p3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->detected:Z

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->severity:I

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->copy(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/pandasu/turbo/data/model/DetectionItem;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->item:Lcom/pandasu/turbo/data/model/DetectionItem;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->detected:Z

    return v0
.end method

.method public final component4()I
    .registers 2

    iget v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->severity:I

    return v0
.end method

.method public final copy(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;
    .registers 6

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;-><init>(Lcom/pandasu/turbo/data/model/DetectionItem;Ljava/lang/String;ZI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;

    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->item:Lcom/pandasu/turbo/data/model/DetectionItem;

    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->item:Lcom/pandasu/turbo/data/model/DetectionItem;

    if-eq v3, v4, :cond_14

    return v2

    :cond_14
    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->label:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->label:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    return v2

    :cond_1f
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->detected:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->detected:Z

    if-eq v3, v4, :cond_26

    return v2

    :cond_26
    iget v3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->severity:I

    iget v1, v1, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->severity:I

    if-eq v3, v1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getDetected()Z
    .registers 2

    .line 298
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->detected:Z

    return v0
.end method

.method public final getItem()Lcom/pandasu/turbo/data/model/DetectionItem;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->item:Lcom/pandasu/turbo/data/model/DetectionItem;

    return-object v0
.end method

.method public final getLabel()Ljava/lang/String;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeverity()I
    .registers 2

    .line 298
    iget v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->severity:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->item:Lcom/pandasu/turbo/data/model/DetectionItem;

    invoke-virtual {v0}, Lcom/pandasu/turbo/data/model/DetectionItem;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->detected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->severity:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->item:Lcom/pandasu/turbo/data/model/DetectionItem;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->label:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->detected:Z

    iget v3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$DetectionResult;->severity:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DetectionResult(item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", label="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", severity="

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
