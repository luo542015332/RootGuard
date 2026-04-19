.class public final Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;
.super Ljava/lang/Object;
.source "ModuleStatusMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/util/ModuleStatusMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OverallStatus"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u001a\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u00c6\u0003J\u000f\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u00c6\u0003Jo\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u00c6\u0001J\u0013\u0010$\u001a\u00020\u00032\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010&\u001a\u00020\'H\u00d6\u0001J\t\u0010(\u001a\u00020\u000cH\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0010R\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016\u00a8\u0006)"
    }
    d2 = {
        "Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;",
        "",
        "hasMagisk",
        "",
        "hasZygisk",
        "hasLSPosed",
        "hasDenylist",
        "hasShamiko",
        "pandaSUZygiskInstalled",
        "pandaSULSPosedInstalled",
        "issues",
        "",
        "",
        "recommendations",
        "(ZZZZZZZLjava/util/List;Ljava/util/List;)V",
        "getHasDenylist",
        "()Z",
        "getHasLSPosed",
        "getHasMagisk",
        "getHasShamiko",
        "getHasZygisk",
        "getIssues",
        "()Ljava/util/List;",
        "getPandaSULSPosedInstalled",
        "getPandaSUZygiskInstalled",
        "getRecommendations",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
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
.field private final hasDenylist:Z

.field private final hasLSPosed:Z

.field private final hasMagisk:Z

.field private final hasShamiko:Z

.field private final hasZygisk:Z

.field private final issues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pandaSULSPosedInstalled:Z

.field private final pandaSUZygiskInstalled:Z

.field private final recommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->$stable:I

    return-void
.end method

.method public constructor <init>(ZZZZZZZLjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "hasMagisk"    # Z
    .param p2, "hasZygisk"    # Z
    .param p3, "hasLSPosed"    # Z
    .param p4, "hasDenylist"    # Z
    .param p5, "hasShamiko"    # Z
    .param p6, "pandaSUZygiskInstalled"    # Z
    .param p7, "pandaSULSPosedInstalled"    # Z
    .param p8, "issues"    # Ljava/util/List;
    .param p9, "recommendations"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "issues"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recommendations"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasMagisk:Z

    .line 43
    iput-boolean p2, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasZygisk:Z

    .line 44
    iput-boolean p3, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasLSPosed:Z

    .line 45
    iput-boolean p4, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasDenylist:Z

    .line 46
    iput-boolean p5, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasShamiko:Z

    .line 47
    iput-boolean p6, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->pandaSUZygiskInstalled:Z

    .line 48
    iput-boolean p7, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->pandaSULSPosedInstalled:Z

    .line 49
    iput-object p8, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->issues:Ljava/util/List;

    .line 50
    iput-object p9, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->recommendations:Ljava/util/List;

    .line 41
    return-void
.end method

.method public static synthetic copy$default(Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;ZZZZZZZLjava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasMagisk:Z

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasZygisk:Z

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasLSPosed:Z

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasDenylist:Z

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasShamiko:Z

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->pandaSUZygiskInstalled:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->pandaSULSPosedInstalled:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->issues:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->recommendations:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move p1, v2

    move p2, v3

    move p3, v4

    move p4, v5

    move p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->copy(ZZZZZZZLjava/util/List;Ljava/util/List;)Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasMagisk:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasZygisk:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasLSPosed:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasDenylist:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasShamiko:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->pandaSUZygiskInstalled:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->pandaSULSPosedInstalled:Z

    return v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->issues:Ljava/util/List;

    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->recommendations:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ZZZZZZZLjava/util/List;Ljava/util/List;)Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;"
        }
    .end annotation

    const-string v0, "issues"

    move-object/from16 v11, p8

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recommendations"

    move-object/from16 v12, p9

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;-><init>(ZZZZZZZLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;

    iget-boolean v3, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasMagisk:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasMagisk:Z

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasZygisk:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasZygisk:Z

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasLSPosed:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasLSPosed:Z

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasDenylist:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasDenylist:Z

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-boolean v3, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasShamiko:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasShamiko:Z

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget-boolean v3, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->pandaSUZygiskInstalled:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->pandaSUZygiskInstalled:Z

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget-boolean v3, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->pandaSULSPosedInstalled:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->pandaSULSPosedInstalled:Z

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->issues:Ljava/util/List;

    iget-object v4, v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->issues:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->recommendations:Ljava/util/List;

    iget-object v1, v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->recommendations:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getHasDenylist()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasDenylist:Z

    return v0
.end method

.method public final getHasLSPosed()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasLSPosed:Z

    return v0
.end method

.method public final getHasMagisk()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasMagisk:Z

    return v0
.end method

.method public final getHasShamiko()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasShamiko:Z

    return v0
.end method

.method public final getHasZygisk()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasZygisk:Z

    return v0
.end method

.method public final getIssues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->issues:Ljava/util/List;

    return-object v0
.end method

.method public final getPandaSULSPosedInstalled()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->pandaSULSPosedInstalled:Z

    return v0
.end method

.method public final getPandaSUZygiskInstalled()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->pandaSUZygiskInstalled:Z

    return v0
.end method

.method public final getRecommendations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->recommendations:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasMagisk:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasZygisk:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasLSPosed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasDenylist:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasShamiko:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->pandaSUZygiskInstalled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->pandaSULSPosedInstalled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->issues:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->recommendations:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasMagisk:Z

    iget-boolean v1, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasZygisk:Z

    iget-boolean v2, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasLSPosed:Z

    iget-boolean v3, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasDenylist:Z

    iget-boolean v4, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->hasShamiko:Z

    iget-boolean v5, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->pandaSUZygiskInstalled:Z

    iget-boolean v6, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->pandaSULSPosedInstalled:Z

    iget-object v7, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->issues:Ljava/util/List;

    iget-object v8, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;->recommendations:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OverallStatus(hasMagisk="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", hasZygisk="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasLSPosed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasDenylist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasShamiko="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pandaSUZygiskInstalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pandaSULSPosedInstalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", issues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recommendations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
