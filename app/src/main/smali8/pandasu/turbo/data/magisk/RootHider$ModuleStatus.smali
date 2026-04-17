.class public final Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;
.super Ljava/lang/Object;
.source "RootHider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/data/magisk/RootHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModuleStatus"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;",
        "",
        "installed",
        "",
        "name",
        "",
        "desc",
        "(ZLjava/lang/String;Ljava/lang/String;)V",
        "getDesc",
        "()Ljava/lang/String;",
        "getInstalled",
        "()Z",
        "getName",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
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
.field private final desc:Ljava/lang/String;

.field private final installed:Z

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "installed"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->installed:Z

    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->desc:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-boolean p1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->installed:Z

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->name:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->desc:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->copy(ZLjava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->installed:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ZLjava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;
    .registers 5

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;

    invoke-direct {v0, p1, p2, p3}, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;

    iget-boolean v3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->installed:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->installed:Z

    if-eq v3, v4, :cond_14

    return v2

    :cond_14
    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    return v2

    :cond_1f
    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->desc:Ljava/lang/String;

    iget-object v1, v1, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->desc:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    return v0
.end method

.method public final getDesc()Ljava/lang/String;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstalled()Z
    .registers 2

    .line 249
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->installed:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->installed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->desc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->installed:Z

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/RootHider$ModuleStatus;->desc:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ModuleStatus(installed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
