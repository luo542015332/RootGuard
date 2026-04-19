.class public final Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;
.super Ljava/lang/Object;
.source "RootEnvironmentDetector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/util/RootEnvironmentDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthorizationStatus"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u001d\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003Jg\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\"\u001a\u00020\u00052\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010$\u001a\u00020%H\u00d6\u0001J\t\u0010&\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0010R\u0011\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0010R\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0010R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;",
        "",
        "rootMode",
        "Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;",
        "hasPermission",
        "",
        "message",
        "",
        "canOpenManager",
        "isLSPosedMode",
        "managerPackage",
        "managerName",
        "isManagerInstalled",
        "isUpdateFailure",
        "(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZ)V",
        "getCanOpenManager",
        "()Z",
        "getHasPermission",
        "getManagerName",
        "()Ljava/lang/String;",
        "getManagerPackage",
        "getMessage",
        "getRootMode",
        "()Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;",
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
.field private final canOpenManager:Z

.field private final hasPermission:Z

.field private final isLSPosedMode:Z

.field private final isManagerInstalled:Z

.field private final isUpdateFailure:Z

.field private final managerName:Ljava/lang/String;

.field private final managerPackage:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final rootMode:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "rootMode"    # Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .param p2, "hasPermission"    # Z
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "canOpenManager"    # Z
    .param p5, "isLSPosedMode"    # Z
    .param p6, "managerPackage"    # Ljava/lang/String;
    .param p7, "managerName"    # Ljava/lang/String;
    .param p8, "isManagerInstalled"    # Z
    .param p9, "isUpdateFailure"    # Z

    const-string v0, "rootMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    iput-object p1, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->rootMode:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .line 790
    iput-boolean p2, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->hasPermission:Z

    .line 791
    iput-object p3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->message:Ljava/lang/String;

    .line 792
    iput-boolean p4, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->canOpenManager:Z

    .line 793
    iput-boolean p5, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isLSPosedMode:Z

    .line 794
    iput-object p6, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerPackage:Ljava/lang/String;

    .line 795
    iput-object p7, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerName:Ljava/lang/String;

    .line 796
    iput-boolean p8, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isManagerInstalled:Z

    .line 797
    iput-boolean p9, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isUpdateFailure:Z

    .line 788
    return-void
.end method

.method public synthetic constructor <init>(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    .line 788
    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 793
    move v8, v2

    goto :goto_0

    .line 788
    :cond_0
    move/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 794
    move-object v9, v3

    goto :goto_1

    .line 788
    :cond_1
    move-object/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    .line 795
    move-object v10, v3

    goto :goto_2

    .line 788
    :cond_2
    move-object/from16 v10, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    .line 796
    move v11, v2

    goto :goto_3

    .line 788
    :cond_3
    move/from16 v11, p8

    :goto_3
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_4

    .line 797
    move v12, v2

    goto :goto_4

    .line 788
    :cond_4
    move/from16 v12, p9

    :goto_4
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v3 .. v12}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;-><init>(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 798
    return-void
.end method

.method public static synthetic copy$default(Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->rootMode:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->hasPermission:Z

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->message:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->canOpenManager:Z

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isLSPosedMode:Z

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerPackage:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerName:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isManagerInstalled:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isUpdateFailure:Z

    goto :goto_8

    :cond_8
    move/from16 v1, p9

    :goto_8
    move-object p1, v2

    move p2, v3

    move-object p3, v4

    move p4, v5

    move p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->copy(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZ)Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .locals 1

    iget-object v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->rootMode:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->hasPermission:Z

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->canOpenManager:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isLSPosedMode:Z

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerName:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isManagerInstalled:Z

    return v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isUpdateFailure:Z

    return v0
.end method

.method public final copy(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZ)Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;
    .locals 13

    const-string v0, "rootMode"

    move-object v11, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    move-object/from16 v12, p3

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;-><init>(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    iget-object v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->rootMode:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    iget-object v4, v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->rootMode:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->hasPermission:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->hasPermission:Z

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->message:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->message:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->canOpenManager:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->canOpenManager:Z

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-boolean v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isLSPosedMode:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isLSPosedMode:Z

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerPackage:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerPackage:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerName:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-boolean v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isManagerInstalled:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isManagerInstalled:Z

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    iget-boolean v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isUpdateFailure:Z

    iget-boolean v1, v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isUpdateFailure:Z

    if-eq v3, v1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getCanOpenManager()Z
    .locals 1

    .line 792
    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->canOpenManager:Z

    return v0
.end method

.method public final getHasPermission()Z
    .locals 1

    .line 790
    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->hasPermission:Z

    return v0
.end method

.method public final getManagerName()Ljava/lang/String;
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerName:Ljava/lang/String;

    return-object v0
.end method

.method public final getManagerPackage()Ljava/lang/String;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getRootMode()Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->rootMode:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->rootMode:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    invoke-virtual {v0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->hasPermission:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->canOpenManager:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isLSPosedMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerPackage:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerName:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isManagerInstalled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isUpdateFailure:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final isLSPosedMode()Z
    .locals 1

    .line 793
    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isLSPosedMode:Z

    return v0
.end method

.method public final isManagerInstalled()Z
    .locals 1

    .line 796
    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isManagerInstalled:Z

    return v0
.end method

.method public final isUpdateFailure()Z
    .locals 1

    .line 797
    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isUpdateFailure:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->rootMode:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    iget-boolean v1, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->hasPermission:Z

    iget-object v2, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->message:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->canOpenManager:Z

    iget-boolean v4, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isLSPosedMode:Z

    iget-object v5, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerPackage:Ljava/lang/String;

    iget-object v6, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerName:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isManagerInstalled:Z

    iget-boolean v8, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isUpdateFailure:Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AuthorizationStatus(rootMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", hasPermission="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canOpenManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLSPosedMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", managerPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", managerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isManagerInstalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isUpdateFailure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
