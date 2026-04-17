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
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 11
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
    .registers 25

    .line 788
    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 793
    move v8, v2

    goto :goto_b

    .line 788
    :cond_9
    move/from16 v8, p5

    :goto_b
    and-int/lit8 v1, v0, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    .line 794
    move-object v9, v3

    goto :goto_14

    .line 788
    :cond_12
    move-object/from16 v9, p6

    :goto_14
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1a

    .line 795
    move-object v10, v3

    goto :goto_1c

    .line 788
    :cond_1a
    move-object/from16 v10, p7

    :goto_1c
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_22

    .line 796
    move v11, v2

    goto :goto_24

    .line 788
    :cond_22
    move/from16 v11, p8

    :goto_24
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2a

    .line 797
    move v12, v2

    goto :goto_2c

    .line 788
    :cond_2a
    move/from16 v12, p9

    :goto_2c
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
    .registers 22

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->rootMode:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-boolean v3, v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->hasPermission:Z

    goto :goto_13

    :cond_12
    move v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->message:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-boolean v5, v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->canOpenManager:Z

    goto :goto_23

    :cond_22
    move v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-boolean v6, v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isLSPosedMode:Z

    goto :goto_2b

    :cond_2a
    move v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget-object v7, v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerPackage:Ljava/lang/String;

    goto :goto_34

    :cond_32
    move-object/from16 v7, p6

    :goto_34
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3b

    iget-object v8, v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerName:Ljava/lang/String;

    goto :goto_3d

    :cond_3b
    move-object/from16 v8, p7

    :goto_3d
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_44

    iget-boolean v9, v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isManagerInstalled:Z

    goto :goto_46

    :cond_44
    move/from16 v9, p8

    :goto_46
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4d

    iget-boolean v1, v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isUpdateFailure:Z

    goto :goto_4f

    :cond_4d
    move/from16 v1, p9

    :goto_4f
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
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->rootMode:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    return-object v0
.end method

.method public final component2()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->hasPermission:Z

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->canOpenManager:Z

    return v0
.end method

.method public final component5()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isLSPosedMode:Z

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerName:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isManagerInstalled:Z

    return v0
.end method

.method public final component9()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isUpdateFailure:Z

    return v0
.end method

.method public final copy(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZ)Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;
    .registers 23

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
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    iget-object v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->rootMode:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    iget-object v4, v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->rootMode:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    if-eq v3, v4, :cond_14

    return v2

    :cond_14
    iget-boolean v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->hasPermission:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->hasPermission:Z

    if-eq v3, v4, :cond_1b

    return v2

    :cond_1b
    iget-object v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->message:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->message:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    return v2

    :cond_26
    iget-boolean v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->canOpenManager:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->canOpenManager:Z

    if-eq v3, v4, :cond_2d

    return v2

    :cond_2d
    iget-boolean v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isLSPosedMode:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isLSPosedMode:Z

    if-eq v3, v4, :cond_34

    return v2

    :cond_34
    iget-object v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerPackage:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerPackage:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    return v2

    :cond_3f
    iget-object v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerName:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    return v2

    :cond_4a
    iget-boolean v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isManagerInstalled:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isManagerInstalled:Z

    if-eq v3, v4, :cond_51

    return v2

    :cond_51
    iget-boolean v3, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isUpdateFailure:Z

    iget-boolean v1, v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isUpdateFailure:Z

    if-eq v3, v1, :cond_58

    return v2

    :cond_58
    return v0
.end method

.method public final getCanOpenManager()Z
    .registers 2

    .line 792
    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->canOpenManager:Z

    return v0
.end method

.method public final getHasPermission()Z
    .registers 2

    .line 790
    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->hasPermission:Z

    return v0
.end method

.method public final getManagerName()Ljava/lang/String;
    .registers 2

    .line 795
    iget-object v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerName:Ljava/lang/String;

    return-object v0
.end method

.method public final getManagerPackage()Ljava/lang/String;
    .registers 2

    .line 794
    iget-object v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .line 791
    iget-object v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getRootMode()Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .registers 2

    .line 789
    iget-object v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->rootMode:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

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

    if-nez v2, :cond_33

    move v2, v3

    goto :goto_37

    :cond_33
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_37
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->managerName:Ljava/lang/String;

    if-nez v2, :cond_3f

    goto :goto_43

    :cond_3f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_43
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
    .registers 2

    .line 793
    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isLSPosedMode:Z

    return v0
.end method

.method public final isManagerInstalled()Z
    .registers 2

    .line 796
    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isManagerInstalled:Z

    return v0
.end method

.method public final isUpdateFailure()Z
    .registers 2

    .line 797
    iget-boolean v0, p0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;->isUpdateFailure:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

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
