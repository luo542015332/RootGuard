.class public final Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;
.super Ljava/lang/Object;
.source "PackageDumpParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u00081\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bo\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0010J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\u0007H\u00c6\u0003J\t\u0010.\u001a\u00020\u0003H\u00c6\u0003J\t\u0010/\u001a\u00020\u0003H\u00c6\u0003J\t\u00100\u001a\u00020\u0007H\u00c6\u0003J\t\u00101\u001a\u00020\u0003H\u00c6\u0003J\u000f\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00030\nH\u00c6\u0003J\t\u00103\u001a\u00020\u000cH\u00c6\u0003J\t\u00104\u001a\u00020\u000cH\u00c6\u0003J\t\u00105\u001a\u00020\u0003H\u00c6\u0003Js\u00106\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0007H\u00c6\u0001J\u0013\u00107\u001a\u00020\u000c2\u0008\u00108\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00109\u001a\u00020\u0007H\u00d6\u0001J\u0006\u0010:\u001a\u00020\u000cJ\u0006\u0010;\u001a\u00020\u000cJ\t\u0010<\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012\"\u0004\u0008\u0016\u0010\u0014R \u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0012\"\u0004\u0008\u001c\u0010\u0014R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0012\"\u0004\u0008!\u0010\u0014R\u001a\u0010\r\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001d\"\u0004\u0008#\u0010\u001fR\u001a\u0010\u000f\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010%\"\u0004\u0008)\u0010\'R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0012\"\u0004\u0008+\u0010\u0014\u00a8\u0006="
    }
    d2 = {
        "Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;",
        "",
        "packageName",
        "",
        "appId",
        "codePath",
        "versionCode",
        "",
        "versionName",
        "flags",
        "",
        "isMiuiPreinstall",
        "",
        "scannedAsStoppedSystemApp",
        "installerPackageName",
        "uid",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ZZLjava/lang/String;I)V",
        "getAppId",
        "()Ljava/lang/String;",
        "setAppId",
        "(Ljava/lang/String;)V",
        "getCodePath",
        "setCodePath",
        "getFlags",
        "()Ljava/util/List;",
        "setFlags",
        "(Ljava/util/List;)V",
        "getInstallerPackageName",
        "setInstallerPackageName",
        "()Z",
        "setMiuiPreinstall",
        "(Z)V",
        "getPackageName",
        "setPackageName",
        "getScannedAsStoppedSystemApp",
        "setScannedAsStoppedSystemApp",
        "getUid",
        "()I",
        "setUid",
        "(I)V",
        "getVersionCode",
        "setVersionCode",
        "getVersionName",
        "setVersionName",
        "component1",
        "component10",
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
        "isSystemApp",
        "isUserApp",
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
.field private appId:Ljava/lang/String;

.field private codePath:Ljava/lang/String;

.field private flags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private installerPackageName:Ljava/lang/String;

.field private isMiuiPreinstall:Z

.field private packageName:Ljava/lang/String;

.field private scannedAsStoppedSystemApp:Z

.field private uid:I

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .registers 14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3ff

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ZZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ZZLjava/lang/String;I)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;
    .param p4, "versionCode"    # I
    .param p5, "versionName"    # Ljava/lang/String;
    .param p6, "flags"    # Ljava/util/List;
    .param p7, "isMiuiPreinstall"    # Z
    .param p8, "scannedAsStoppedSystemApp"    # Z
    .param p9, "installerPackageName"    # Ljava/lang/String;
    .param p10, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installerPackageName"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->packageName:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->appId:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->codePath:Ljava/lang/String;

    .line 123
    iput p4, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->versionCode:I

    .line 124
    iput-object p5, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->versionName:Ljava/lang/String;

    .line 125
    iput-object p6, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->flags:Ljava/util/List;

    .line 126
    iput-boolean p7, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->isMiuiPreinstall:Z

    .line 127
    iput-boolean p8, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->scannedAsStoppedSystemApp:Z

    .line 128
    iput-object p9, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->installerPackageName:Ljava/lang/String;

    .line 129
    iput p10, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->uid:I

    .line 119
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ZZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 25

    .line 119
    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_a

    .line 120
    move-object v1, v2

    goto :goto_b

    .line 119
    :cond_a
    move-object v1, p1

    :goto_b
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_11

    .line 121
    move-object v3, v2

    goto :goto_12

    .line 119
    :cond_11
    move-object v3, p2

    :goto_12
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_18

    .line 122
    move-object v4, v2

    goto :goto_19

    .line 119
    :cond_18
    move-object v4, p3

    :goto_19
    and-int/lit8 v5, v0, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_20

    .line 123
    move v5, v6

    goto :goto_22

    .line 119
    :cond_20
    move/from16 v5, p4

    :goto_22
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_28

    .line 124
    move-object v7, v2

    goto :goto_2a

    .line 119
    :cond_28
    move-object/from16 v7, p5

    :goto_2a
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_33

    .line 125
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    goto :goto_35

    .line 119
    :cond_33
    move-object/from16 v8, p6

    :goto_35
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_3b

    .line 126
    move v9, v6

    goto :goto_3d

    .line 119
    :cond_3b
    move/from16 v9, p7

    :goto_3d
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_43

    .line 127
    move v10, v6

    goto :goto_45

    .line 119
    :cond_43
    move/from16 v10, p8

    :goto_45
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_4a

    .line 128
    goto :goto_4c

    .line 119
    :cond_4a
    move-object/from16 v2, p9

    :goto_4c
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_51

    .line 129
    goto :goto_53

    .line 119
    :cond_51
    move/from16 v6, p10

    :goto_53
    move-object p1, p0

    move-object p2, v1

    move-object p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v2

    move/from16 p11, v6

    invoke-direct/range {p1 .. p11}, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ZZLjava/lang/String;I)V

    .line 145
    return-void
.end method

.method public static synthetic copy$default(Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ZZLjava/lang/String;IILjava/lang/Object;)Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;
    .registers 24

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->packageName:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->appId:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->codePath:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget v5, v0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->versionCode:I

    goto :goto_23

    :cond_22
    move v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->versionName:Ljava/lang/String;

    goto :goto_2c

    :cond_2a
    move-object/from16 v6, p5

    :goto_2c
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_33

    iget-object v7, v0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->flags:Ljava/util/List;

    goto :goto_35

    :cond_33
    move-object/from16 v7, p6

    :goto_35
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3c

    iget-boolean v8, v0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->isMiuiPreinstall:Z

    goto :goto_3e

    :cond_3c
    move/from16 v8, p7

    :goto_3e
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_45

    iget-boolean v9, v0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->scannedAsStoppedSystemApp:Z

    goto :goto_47

    :cond_45
    move/from16 v9, p8

    :goto_47
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_4e

    iget-object v10, v0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->installerPackageName:Ljava/lang/String;

    goto :goto_50

    :cond_4e
    move-object/from16 v10, p9

    :goto_50
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_57

    iget v1, v0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->uid:I

    goto :goto_59

    :cond_57
    move/from16 v1, p10

    :goto_59
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ZZLjava/lang/String;I)Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()I
    .registers 2

    iget v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->uid:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->codePath:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .registers 2

    iget v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->versionCode:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->flags:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->isMiuiPreinstall:Z

    return v0
.end method

.method public final component8()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->scannedAsStoppedSystemApp:Z

    return v0
.end method

.method public final component9()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ZZLjava/lang/String;I)Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "I)",
            "Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;"
        }
    .end annotation

    const-string v0, "packageName"

    move-object/from16 v12, p1

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    move-object/from16 v13, p2

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codePath"

    move-object/from16 v14, p3

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionName"

    move-object/from16 v15, p5

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    move-object/from16 v11, p6

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installerPackageName"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ZZLjava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;

    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    return v2

    :cond_18
    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->appId:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->appId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v2

    :cond_23
    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->codePath:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->codePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    return v2

    :cond_2e
    iget v3, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->versionCode:I

    iget v4, v1, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->versionCode:I

    if-eq v3, v4, :cond_35

    return v2

    :cond_35
    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->versionName:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    return v2

    :cond_40
    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->flags:Ljava/util/List;

    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->flags:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    return v2

    :cond_4b
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->isMiuiPreinstall:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->isMiuiPreinstall:Z

    if-eq v3, v4, :cond_52

    return v2

    :cond_52
    iget-boolean v3, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->scannedAsStoppedSystemApp:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->scannedAsStoppedSystemApp:Z

    if-eq v3, v4, :cond_59

    return v2

    :cond_59
    iget-object v3, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->installerPackageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->installerPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    return v2

    :cond_64
    iget v3, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->uid:I

    iget v1, v1, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->uid:I

    if-eq v3, v1, :cond_6b

    return v2

    :cond_6b
    return v0
.end method

.method public final getAppId()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCodePath()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->codePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getFlags()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->flags:Ljava/util/List;

    return-object v0
.end method

.method public final getInstallerPackageName()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getScannedAsStoppedSystemApp()Z
    .registers 2

    .line 127
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->scannedAsStoppedSystemApp:Z

    return v0
.end method

.method public final getUid()I
    .registers 2

    .line 129
    iget v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->uid:I

    return v0
.end method

.method public final getVersionCode()I
    .registers 2

    .line 123
    iget v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->versionCode:I

    return v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->appId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->codePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->flags:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->isMiuiPreinstall:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->scannedAsStoppedSystemApp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final isMiuiPreinstall()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->isMiuiPreinstall:Z

    return v0
.end method

.method public final isSystemApp()Z
    .registers 2

    .line 143
    invoke-virtual {p0}, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->isUserApp()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->isMiuiPreinstall:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public final isUserApp()Z
    .registers 6

    .line 136
    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->codePath:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "/data/app/"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setAppId(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->appId:Ljava/lang/String;

    return-void
.end method

.method public final setCodePath(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->codePath:Ljava/lang/String;

    return-void
.end method

.method public final setFlags(Ljava/util/List;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->flags:Ljava/util/List;

    return-void
.end method

.method public final setInstallerPackageName(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->installerPackageName:Ljava/lang/String;

    return-void
.end method

.method public final setMiuiPreinstall(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 126
    iput-boolean p1, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->isMiuiPreinstall:Z

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final setScannedAsStoppedSystemApp(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 127
    iput-boolean p1, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->scannedAsStoppedSystemApp:Z

    return-void
.end method

.method public final setUid(I)V
    .registers 2
    .param p1, "<set-?>"    # I

    .line 129
    iput p1, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->uid:I

    return-void
.end method

.method public final setVersionCode(I)V
    .registers 2
    .param p1, "<set-?>"    # I

    .line 123
    iput p1, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->versionCode:I

    return-void
.end method

.method public final setVersionName(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    iget-object v0, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->codePath:Ljava/lang/String;

    iget v3, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->versionCode:I

    iget-object v4, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->versionName:Ljava/lang/String;

    iget-object v5, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->flags:Ljava/util/List;

    iget-boolean v6, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->isMiuiPreinstall:Z

    iget-boolean v7, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->scannedAsStoppedSystemApp:Z

    iget-object v8, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->installerPackageName:Ljava/lang/String;

    iget v9, p0, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->uid:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DumpsysPackageInfo(packageName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", appId="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", codePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMiuiPreinstall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scannedAsStoppedSystemApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", installerPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
