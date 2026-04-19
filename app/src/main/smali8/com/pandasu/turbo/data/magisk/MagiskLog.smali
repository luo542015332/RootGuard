.class public final Lcom/pandasu/turbo/data/magisk/MagiskLog;
.super Ljava/lang/Object;
.source "MagiskProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/magisk/MagiskLog;",
        "",
        "id",
        "",
        "message",
        "level",
        "Lcom/pandasu/turbo/data/magisk/LogLevel;",
        "timestamp",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/LogLevel;Ljava/lang/String;)V",
        "getId",
        "()Ljava/lang/String;",
        "getLevel",
        "()Lcom/pandasu/turbo/data/magisk/LogLevel;",
        "getMessage",
        "getTimestamp",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
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
.field private final id:Ljava/lang/String;

.field private final level:Lcom/pandasu/turbo/data/magisk/LogLevel;

.field private final message:Ljava/lang/String;

.field private final timestamp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/LogLevel;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "level"    # Lcom/pandasu/turbo/data/magisk/LogLevel;
    .param p4, "timestamp"    # Ljava/lang/String;

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamp"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1318
    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->id:Ljava/lang/String;

    .line 1319
    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->message:Ljava/lang/String;

    .line 1320
    iput-object p3, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->level:Lcom/pandasu/turbo/data/magisk/LogLevel;

    .line 1321
    iput-object p4, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->timestamp:Ljava/lang/String;

    .line 1317
    return-void
.end method

.method public static synthetic copy$default(Lcom/pandasu/turbo/data/magisk/MagiskLog;Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/LogLevel;Ljava/lang/String;ILjava/lang/Object;)Lcom/pandasu/turbo/data/magisk/MagiskLog;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->message:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->level:Lcom/pandasu/turbo/data/magisk/LogLevel;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->timestamp:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/pandasu/turbo/data/magisk/MagiskLog;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/LogLevel;Ljava/lang/String;)Lcom/pandasu/turbo/data/magisk/MagiskLog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/pandasu/turbo/data/magisk/LogLevel;
    .locals 1

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->level:Lcom/pandasu/turbo/data/magisk/LogLevel;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/LogLevel;Ljava/lang/String;)Lcom/pandasu/turbo/data/magisk/MagiskLog;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamp"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/pandasu/turbo/data/magisk/MagiskLog;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/pandasu/turbo/data/magisk/MagiskLog;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/LogLevel;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/pandasu/turbo/data/magisk/MagiskLog;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/pandasu/turbo/data/magisk/MagiskLog;

    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->id:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/MagiskLog;->id:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->message:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/MagiskLog;->message:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->level:Lcom/pandasu/turbo/data/magisk/LogLevel;

    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/MagiskLog;->level:Lcom/pandasu/turbo/data/magisk/LogLevel;

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->timestamp:Ljava/lang/String;

    iget-object v1, v1, Lcom/pandasu/turbo/data/magisk/MagiskLog;->timestamp:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1318
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLevel()Lcom/pandasu/turbo/data/magisk/LogLevel;
    .locals 1

    .line 1320
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->level:Lcom/pandasu/turbo/data/magisk/LogLevel;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 1319
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()Ljava/lang/String;
    .locals 1

    .line 1321
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->level:Lcom/pandasu/turbo/data/magisk/LogLevel;

    invoke-virtual {v2}, Lcom/pandasu/turbo/data/magisk/LogLevel;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->timestamp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->level:Lcom/pandasu/turbo/data/magisk/LogLevel;

    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/MagiskLog;->timestamp:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MagiskLog(id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", message="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
