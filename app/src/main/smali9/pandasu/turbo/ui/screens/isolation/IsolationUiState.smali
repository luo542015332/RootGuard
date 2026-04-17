.class public final Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
.super Ljava/lang/Object;
.source "IsolationViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008/\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00d1\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0007\u0012\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0007\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u001dJ\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\u000f\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0007H\u00c6\u0003J\u000f\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0007H\u00c6\u0003J\t\u00107\u001a\u00020\u0003H\u00c6\u0003J\t\u00108\u001a\u00020\u0003H\u00c6\u0003J\t\u00109\u001a\u00020\nH\u00c6\u0003J\t\u0010:\u001a\u00020\u0018H\u00c6\u0003J\t\u0010;\u001a\u00020\u001aH\u00c6\u0003J\t\u0010<\u001a\u00020\u0003H\u00c6\u0003J\t\u0010=\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000f\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H\u00c6\u0003J\t\u0010@\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\t\u0010C\u001a\u00020\u0003H\u00c6\u0003J\t\u0010D\u001a\u00020\u000eH\u00c6\u0003J\t\u0010E\u001a\u00020\u0010H\u00c6\u0003J\u00d5\u0001\u0010F\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00072\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0016\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010G\u001a\u00020\u00032\u0008\u0010H\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010I\u001a\u00020JH\u00d6\u0001J\t\u0010K\u001a\u00020\nH\u00d6\u0001R\u0011\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0011\u0010\u0015\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010%R\u0011\u0010\u0014\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010%R\u0011\u0010\u001b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010%R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010%R\u0011\u0010\u001c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010%R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0011\u0010\u0016\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010#R\u0011\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010%R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010#R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010(R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010(\u00a8\u0006L"
    }
    d2 = {
        "Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;",
        "",
        "globalEnabled",
        "",
        "currentConfig",
        "Lcom/pandasu/turbo/data/model/IsolationConfig;",
        "isolatedApps",
        "",
        "isLoading",
        "errorMessage",
        "",
        "successMessage",
        "showSandboxRules",
        "isolationStats",
        "Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;",
        "oneClickProgress",
        "Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;",
        "userApps",
        "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
        "systemApps",
        "isAppListLoading",
        "hasRootPermission",
        "searchQuery",
        "activeTab",
        "Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;",
        "selectedOneClickPreset",
        "Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;",
        "isDenyListEnabled",
        "isPropSpoofEnabled",
        "(ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZ)V",
        "getActiveTab",
        "()Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;",
        "getCurrentConfig",
        "()Lcom/pandasu/turbo/data/model/IsolationConfig;",
        "getErrorMessage",
        "()Ljava/lang/String;",
        "getGlobalEnabled",
        "()Z",
        "getHasRootPermission",
        "getIsolatedApps",
        "()Ljava/util/List;",
        "getIsolationStats",
        "()Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;",
        "getOneClickProgress",
        "()Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;",
        "getSearchQuery",
        "getSelectedOneClickPreset",
        "()Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;",
        "getShowSandboxRules",
        "getSuccessMessage",
        "getSystemApps",
        "getUserApps",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
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
.field private final activeTab:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

.field private final currentConfig:Lcom/pandasu/turbo/data/model/IsolationConfig;

.field private final errorMessage:Ljava/lang/String;

.field private final globalEnabled:Z

.field private final hasRootPermission:Z

.field private final isAppListLoading:Z

.field private final isDenyListEnabled:Z

.field private final isLoading:Z

.field private final isPropSpoofEnabled:Z

.field private final isolatedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final isolationStats:Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;

.field private final oneClickProgress:Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

.field private final searchQuery:Ljava/lang/String;

.field private final selectedOneClickPreset:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

.field private final showSandboxRules:Z

.field private final successMessage:Ljava/lang/String;

.field private final systemApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final userApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .registers 22

    move-object/from16 v0, p0

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

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0x3ffff

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v20}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;-><init>(ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZ)V
    .registers 35
    .param p1, "globalEnabled"    # Z
    .param p2, "currentConfig"    # Lcom/pandasu/turbo/data/model/IsolationConfig;
    .param p3, "isolatedApps"    # Ljava/util/List;
    .param p4, "isLoading"    # Z
    .param p5, "errorMessage"    # Ljava/lang/String;
    .param p6, "successMessage"    # Ljava/lang/String;
    .param p7, "showSandboxRules"    # Z
    .param p8, "isolationStats"    # Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;
    .param p9, "oneClickProgress"    # Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;
    .param p10, "userApps"    # Ljava/util/List;
    .param p11, "systemApps"    # Ljava/util/List;
    .param p12, "isAppListLoading"    # Z
    .param p13, "hasRootPermission"    # Z
    .param p14, "searchQuery"    # Ljava/lang/String;
    .param p15, "activeTab"    # Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;
    .param p16, "selectedOneClickPreset"    # Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;
    .param p17, "isDenyListEnabled"    # Z
    .param p18, "isPropSpoofEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;",
            "Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;",
            "Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;",
            "ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p14

    move-object/from16 v7, p15

    move-object/from16 v8, p16

    const-string v9, "isolatedApps"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "isolationStats"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "oneClickProgress"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "userApps"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "systemApps"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "searchQuery"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "activeTab"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "selectedOneClickPreset"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    move/from16 v9, p1

    iput-boolean v9, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->globalEnabled:Z

    .line 25
    move-object/from16 v10, p2

    iput-object v10, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->currentConfig:Lcom/pandasu/turbo/data/model/IsolationConfig;

    .line 26
    iput-object v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isolatedApps:Ljava/util/List;

    .line 27
    move/from16 v11, p4

    iput-boolean v11, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isLoading:Z

    .line 28
    move-object/from16 v12, p5

    iput-object v12, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->errorMessage:Ljava/lang/String;

    .line 29
    move-object/from16 v13, p6

    iput-object v13, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->successMessage:Ljava/lang/String;

    .line 30
    move/from16 v14, p7

    iput-boolean v14, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->showSandboxRules:Z

    .line 31
    iput-object v2, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isolationStats:Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;

    .line 32
    iput-object v3, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->oneClickProgress:Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    .line 33
    iput-object v4, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->userApps:Ljava/util/List;

    .line 34
    iput-object v5, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->systemApps:Ljava/util/List;

    .line 35
    move/from16 v15, p12

    iput-boolean v15, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isAppListLoading:Z

    .line 36
    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->hasRootPermission:Z

    .line 37
    iput-object v6, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->searchQuery:Ljava/lang/String;

    .line 38
    iput-object v7, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->activeTab:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    .line 39
    iput-object v8, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->selectedOneClickPreset:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    .line 40
    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isDenyListEnabled:Z

    .line 41
    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isPropSpoofEnabled:Z

    .line 23
    return-void
.end method

.method public synthetic constructor <init>(ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 40

    .line 23
    move/from16 v0, p19

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    .line 24
    move v1, v2

    goto :goto_b

    .line 23
    :cond_9
    move/from16 v1, p1

    :goto_b
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_12

    .line 25
    move-object v3, v4

    goto :goto_14

    .line 23
    :cond_12
    move-object/from16 v3, p2

    :goto_14
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_1d

    .line 26
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_1f

    .line 23
    :cond_1d
    move-object/from16 v5, p3

    :goto_1f
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_25

    .line 27
    const/4 v6, 0x0

    goto :goto_27

    .line 23
    :cond_25
    move/from16 v6, p4

    :goto_27
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_2d

    .line 28
    move-object v8, v4

    goto :goto_2f

    .line 23
    :cond_2d
    move-object/from16 v8, p5

    :goto_2f
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_34

    .line 29
    goto :goto_36

    .line 23
    :cond_34
    move-object/from16 v4, p6

    :goto_36
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_3c

    .line 30
    const/4 v9, 0x0

    goto :goto_3e

    .line 23
    :cond_3c
    move/from16 v9, p7

    :goto_3e
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_5e

    .line 31
    new-instance v10, Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xf

    const/16 v16, 0x0

    move-object/from16 p1, v10

    move/from16 p2, v11

    move/from16 p3, v12

    move/from16 p4, v13

    move/from16 p5, v14

    move/from16 p6, v15

    move-object/from16 p7, v16

    invoke-direct/range {p1 .. p7}, Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_60

    .line 23
    :cond_5e
    move-object/from16 v10, p8

    :goto_60
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_80

    .line 32
    new-instance v11, Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xf

    const/16 v17, 0x0

    move-object/from16 p1, v11

    move/from16 p2, v12

    move/from16 p3, v13

    move/from16 p4, v14

    move-object/from16 p5, v15

    move/from16 p6, v16

    move-object/from16 p7, v17

    invoke-direct/range {p1 .. p7}, Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;-><init>(ZIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_82

    .line 23
    :cond_80
    move-object/from16 v11, p9

    :goto_82
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_8b

    .line 33
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    goto :goto_8d

    .line 23
    :cond_8b
    move-object/from16 v12, p10

    :goto_8d
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_96

    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    goto :goto_98

    .line 23
    :cond_96
    move-object/from16 v13, p11

    :goto_98
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_9e

    .line 35
    const/4 v14, 0x0

    goto :goto_a0

    .line 23
    :cond_9e
    move/from16 v14, p12

    :goto_a0
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_a5

    .line 36
    goto :goto_a7

    .line 23
    :cond_a5
    move/from16 v2, p13

    :goto_a7
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_ae

    .line 37
    const-string v15, ""

    goto :goto_b0

    .line 23
    :cond_ae
    move-object/from16 v15, p14

    :goto_b0
    and-int/lit16 v7, v0, 0x4000

    if-eqz v7, :cond_b7

    .line 38
    sget-object v7, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->ALL:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    goto :goto_b9

    .line 23
    :cond_b7
    move-object/from16 v7, p15

    :goto_b9
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_c3

    .line 39
    sget-object v16, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->BALANCED:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    goto :goto_c5

    .line 23
    :cond_c3
    move-object/from16 v16, p16

    :goto_c5
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_ce

    .line 40
    const/16 v17, 0x0

    goto :goto_d0

    .line 23
    :cond_ce
    move/from16 v17, p17

    :goto_d0
    const/high16 v18, 0x20000

    and-int v0, v0, v18

    if-eqz v0, :cond_d8

    .line 41
    const/4 v0, 0x0

    goto :goto_da

    .line 23
    :cond_d8
    move/from16 v0, p18

    :goto_da
    move-object/from16 p1, p0

    move/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v8

    move-object/from16 p7, v4

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v14

    move/from16 p14, v2

    move-object/from16 p15, v15

    move-object/from16 p16, v7

    move-object/from16 p17, v16

    move/from16 p18, v17

    move/from16 p19, v0

    invoke-direct/range {p1 .. p19}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;-><init>(ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZ)V

    .line 42
    return-void
.end method

.method public static synthetic copy$default(Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZILjava/lang/Object;)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .registers 38

    move-object/from16 v0, p0

    move/from16 v1, p19

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-boolean v2, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->globalEnabled:Z

    goto :goto_d

    :cond_b
    move/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget-object v3, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->currentConfig:Lcom/pandasu/turbo/data/model/IsolationConfig;

    goto :goto_16

    :cond_14
    move-object/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isolatedApps:Ljava/util/List;

    goto :goto_1f

    :cond_1d
    move-object/from16 v4, p3

    :goto_1f
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    iget-boolean v5, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isLoading:Z

    goto :goto_28

    :cond_26
    move/from16 v5, p4

    :goto_28
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2f

    iget-object v6, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->errorMessage:Ljava/lang/String;

    goto :goto_31

    :cond_2f
    move-object/from16 v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget-object v7, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->successMessage:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    move-object/from16 v7, p6

    :goto_3a
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_41

    iget-boolean v8, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->showSandboxRules:Z

    goto :goto_43

    :cond_41
    move/from16 v8, p7

    :goto_43
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_4a

    iget-object v9, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isolationStats:Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;

    goto :goto_4c

    :cond_4a
    move-object/from16 v9, p8

    :goto_4c
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_53

    iget-object v10, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->oneClickProgress:Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    goto :goto_55

    :cond_53
    move-object/from16 v10, p9

    :goto_55
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5c

    iget-object v11, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->userApps:Ljava/util/List;

    goto :goto_5e

    :cond_5c
    move-object/from16 v11, p10

    :goto_5e
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_65

    iget-object v12, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->systemApps:Ljava/util/List;

    goto :goto_67

    :cond_65
    move-object/from16 v12, p11

    :goto_67
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_6e

    iget-boolean v13, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isAppListLoading:Z

    goto :goto_70

    :cond_6e
    move/from16 v13, p12

    :goto_70
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_77

    iget-boolean v14, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->hasRootPermission:Z

    goto :goto_79

    :cond_77
    move/from16 v14, p13

    :goto_79
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_80

    iget-object v15, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->searchQuery:Ljava/lang/String;

    goto :goto_82

    :cond_80
    move-object/from16 v15, p14

    :goto_82
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_8b

    iget-object v15, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->activeTab:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    goto :goto_8d

    :cond_8b
    move-object/from16 v15, p15

    :goto_8d
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_99

    iget-object v15, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->selectedOneClickPreset:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    goto :goto_9b

    :cond_99
    move-object/from16 v15, p16

    :goto_9b
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_a6

    iget-boolean v15, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isDenyListEnabled:Z

    goto :goto_a8

    :cond_a6
    move/from16 v15, p17

    :goto_a8
    const/high16 v16, 0x20000

    and-int v1, v1, v16

    if-eqz v1, :cond_b1

    iget-boolean v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isPropSpoofEnabled:Z

    goto :goto_b3

    :cond_b1
    move/from16 v1, p18

    :goto_b3
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p17, v15

    move/from16 p18, v1

    invoke-virtual/range {p0 .. p18}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->copy(ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZ)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->globalEnabled:Z

    return v0
.end method

.method public final component10()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->userApps:Ljava/util/List;

    return-object v0
.end method

.method public final component11()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->systemApps:Ljava/util/List;

    return-object v0
.end method

.method public final component12()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isAppListLoading:Z

    return v0
.end method

.method public final component13()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->hasRootPermission:Z

    return v0
.end method

.method public final component14()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->activeTab:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    return-object v0
.end method

.method public final component16()Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->selectedOneClickPreset:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    return-object v0
.end method

.method public final component17()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isDenyListEnabled:Z

    return v0
.end method

.method public final component18()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isPropSpoofEnabled:Z

    return v0
.end method

.method public final component2()Lcom/pandasu/turbo/data/model/IsolationConfig;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->currentConfig:Lcom/pandasu/turbo/data/model/IsolationConfig;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isolatedApps:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isLoading:Z

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->successMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->showSandboxRules:Z

    return v0
.end method

.method public final component8()Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isolationStats:Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;

    return-object v0
.end method

.method public final component9()Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;
    .registers 2

    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->oneClickProgress:Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    return-object v0
.end method

.method public final copy(ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZ)Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;",
            "Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;",
            "Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;",
            "ZZ)",
            "Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;"
        }
    .end annotation

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    const-string v0, "isolatedApps"

    move/from16 v19, v1

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isolationStats"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oneClickProgress"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userApps"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemApps"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchQuery"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeTab"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedOneClickPreset"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v20, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-direct/range {v0 .. v18}, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;-><init>(ZLcom/pandasu/turbo/data/model/IsolationConfig;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZLcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;ZZ)V

    return-object v20
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;

    iget-boolean v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->globalEnabled:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->globalEnabled:Z

    if-eq v3, v4, :cond_14

    return v2

    :cond_14
    iget-object v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->currentConfig:Lcom/pandasu/turbo/data/model/IsolationConfig;

    iget-object v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->currentConfig:Lcom/pandasu/turbo/data/model/IsolationConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    return v2

    :cond_1f
    iget-object v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isolatedApps:Ljava/util/List;

    iget-object v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isolatedApps:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    return v2

    :cond_2a
    iget-boolean v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isLoading:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isLoading:Z

    if-eq v3, v4, :cond_31

    return v2

    :cond_31
    iget-object v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->errorMessage:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->errorMessage:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    return v2

    :cond_3c
    iget-object v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->successMessage:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->successMessage:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    return v2

    :cond_47
    iget-boolean v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->showSandboxRules:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->showSandboxRules:Z

    if-eq v3, v4, :cond_4e

    return v2

    :cond_4e
    iget-object v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isolationStats:Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;

    iget-object v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isolationStats:Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    return v2

    :cond_59
    iget-object v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->oneClickProgress:Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    iget-object v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->oneClickProgress:Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    return v2

    :cond_64
    iget-object v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->userApps:Ljava/util/List;

    iget-object v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->userApps:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    return v2

    :cond_6f
    iget-object v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->systemApps:Ljava/util/List;

    iget-object v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->systemApps:Ljava/util/List;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    return v2

    :cond_7a
    iget-boolean v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isAppListLoading:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isAppListLoading:Z

    if-eq v3, v4, :cond_81

    return v2

    :cond_81
    iget-boolean v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->hasRootPermission:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->hasRootPermission:Z

    if-eq v3, v4, :cond_88

    return v2

    :cond_88
    iget-object v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->searchQuery:Ljava/lang/String;

    iget-object v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->searchQuery:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93

    return v2

    :cond_93
    iget-object v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->activeTab:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    iget-object v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->activeTab:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    if-eq v3, v4, :cond_9a

    return v2

    :cond_9a
    iget-object v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->selectedOneClickPreset:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    iget-object v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->selectedOneClickPreset:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    if-eq v3, v4, :cond_a1

    return v2

    :cond_a1
    iget-boolean v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isDenyListEnabled:Z

    iget-boolean v4, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isDenyListEnabled:Z

    if-eq v3, v4, :cond_a8

    return v2

    :cond_a8
    iget-boolean v3, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isPropSpoofEnabled:Z

    iget-boolean v1, v1, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isPropSpoofEnabled:Z

    if-eq v3, v1, :cond_af

    return v2

    :cond_af
    return v0
.end method

.method public final getActiveTab()Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->activeTab:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    return-object v0
.end method

.method public final getCurrentConfig()Lcom/pandasu/turbo/data/model/IsolationConfig;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->currentConfig:Lcom/pandasu/turbo/data/model/IsolationConfig;

    return-object v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getGlobalEnabled()Z
    .registers 2

    .line 24
    iget-boolean v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->globalEnabled:Z

    return v0
.end method

.method public final getHasRootPermission()Z
    .registers 2

    .line 36
    iget-boolean v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->hasRootPermission:Z

    return v0
.end method

.method public final getIsolatedApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/model/IsolationConfig;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isolatedApps:Ljava/util/List;

    return-object v0
.end method

.method public final getIsolationStats()Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isolationStats:Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;

    return-object v0
.end method

.method public final getOneClickProgress()Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->oneClickProgress:Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    return-object v0
.end method

.method public final getSearchQuery()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedOneClickPreset()Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->selectedOneClickPreset:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    return-object v0
.end method

.method public final getShowSandboxRules()Z
    .registers 2

    .line 30
    iget-boolean v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->showSandboxRules:Z

    return v0
.end method

.method public final getSuccessMessage()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->successMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getSystemApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->systemApps:Ljava/util/List;

    return-object v0
.end method

.method public final getUserApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->userApps:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-boolean v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->globalEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->currentConfig:Lcom/pandasu/turbo/data/model/IsolationConfig;

    const/4 v3, 0x0

    if-nez v2, :cond_f

    move v2, v3

    goto :goto_13

    :cond_f
    invoke-virtual {v2}, Lcom/pandasu/turbo/data/model/IsolationConfig;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isolatedApps:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isLoading:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->errorMessage:Ljava/lang/String;

    if-nez v2, :cond_2e

    move v2, v3

    goto :goto_32

    :cond_2e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_32
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->successMessage:Ljava/lang/String;

    if-nez v2, :cond_3a

    goto :goto_3e

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3e
    add-int/2addr v1, v3

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->showSandboxRules:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isolationStats:Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;

    invoke-virtual {v2}, Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->oneClickProgress:Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    invoke-virtual {v2}, Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->userApps:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->systemApps:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isAppListLoading:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->hasRootPermission:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->searchQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->activeTab:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    invoke-virtual {v2}, Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->selectedOneClickPreset:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    invoke-virtual {v2}, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isDenyListEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isPropSpoofEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final isAppListLoading()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isAppListLoading:Z

    return v0
.end method

.method public final isDenyListEnabled()Z
    .registers 2

    .line 40
    iget-boolean v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isDenyListEnabled:Z

    return v0
.end method

.method public final isLoading()Z
    .registers 2

    .line 27
    iget-boolean v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isLoading:Z

    return v0
.end method

.method public final isPropSpoofEnabled()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isPropSpoofEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 21

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->globalEnabled:Z

    iget-object v2, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->currentConfig:Lcom/pandasu/turbo/data/model/IsolationConfig;

    iget-object v3, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isolatedApps:Ljava/util/List;

    iget-boolean v4, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isLoading:Z

    iget-object v5, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->errorMessage:Ljava/lang/String;

    iget-object v6, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->successMessage:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->showSandboxRules:Z

    iget-object v8, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isolationStats:Lcom/pandasu/turbo/data/local/IsolationDataStore$SandboxStats;

    iget-object v9, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->oneClickProgress:Lcom/pandasu/turbo/ui/screens/isolation/OneClickProgress;

    iget-object v10, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->userApps:Ljava/util/List;

    iget-object v11, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->systemApps:Ljava/util/List;

    iget-boolean v12, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isAppListLoading:Z

    iget-boolean v13, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->hasRootPermission:Z

    iget-object v14, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->searchQuery:Ljava/lang/String;

    iget-object v15, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->activeTab:Lcom/pandasu/turbo/ui/screens/isolation/AppFilterTab;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->selectedOneClickPreset:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    move-object/from16 v17, v15

    iget-boolean v15, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isDenyListEnabled:Z

    move/from16 v18, v15

    iget-boolean v15, v0, Lcom/pandasu/turbo/ui/screens/isolation/IsolationUiState;->isPropSpoofEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v15

    const-string v15, "IsolationUiState(globalEnabled="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isolatedApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", successMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showSandboxRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isolationStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oneClickProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", systemApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAppListLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasRootPermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchQuery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeTab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectedOneClickPreset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDenyListEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPropSpoofEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
