.class public final Lcom/pandasu/turbo/utils/OneClickIsolationHelper;
.super Ljava/lang/Object;
.source "OneClickIsolationHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;,
        Lcom/pandasu/turbo/utils/OneClickIsolationHelper$Companion;,
        Lcom/pandasu/turbo/utils/OneClickIsolationHelper$ScanResult;,
        Lcom/pandasu/turbo/utils/OneClickIsolationHelper$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOneClickIsolationHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OneClickIsolationHelper.kt\ncom/pandasu/turbo/utils/OneClickIsolationHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,648:1\n1747#2,3:649\n1747#2,3:652\n1747#2,3:655\n1747#2,3:658\n1747#2,3:661\n1747#2,3:664\n1747#2,3:667\n1747#2,3:670\n*S KotlinDebug\n*F\n+ 1 OneClickIsolationHelper.kt\ncom/pandasu/turbo/utils/OneClickIsolationHelper\n*L\n387#1:649,3\n390#1:652,3\n393#1:655,3\n396#1:658,3\n399#1:661,3\n402#1:664,3\n405#1:667,3\n408#1:670,3\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \'2\u00020\u0001:\u0003&\'(B\u0011\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u000e\u0010\n\u001a\u00020\u000bH\u0082@\u00a2\u0006\u0002\u0010\u000cJ\u001e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000e2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001e\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000e2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J$\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u00142\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\u0016J\u001e\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000e2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J&\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000e2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u001eH\u0002J\u0014\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u0014\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u001c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u000e2\u0006\u0010#\u001a\u00020$H\u0082@\u00a2\u0006\u0002\u0010%R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/pandasu/turbo/utils/OneClickIsolationHelper;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "categorizeApp",
        "Lcom/pandasu/turbo/data/model/AppCategory;",
        "packageName",
        "",
        "appName",
        "checkRootPermission",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "generateCommandBlacklist",
        "",
        "category",
        "level",
        "Lcom/pandasu/turbo/data/model/SandboxLevel;",
        "generateCommandWhitelist",
        "generateCustomProps",
        "",
        "preset",
        "Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;",
        "generateIsolationConfig",
        "Lcom/pandasu/turbo/data/model/IsolationConfig;",
        "appInfo",
        "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
        "generatePathBlacklist",
        "generatePathWhitelist",
        "isSystemApp",
        "Landroid/content/pm/ApplicationInfo;",
        "scanAllApps",
        "scanInstalledApps",
        "scanRootApps",
        "tryLimitedMethods",
        "pm",
        "Landroid/content/pm/PackageManager;",
        "(Landroid/content/pm/PackageManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "AppInfo",
        "Companion",
        "ScanResult",
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

.field public static final Companion:Lcom/pandasu/turbo/utils/OneClickIsolationHelper$Companion;

.field private static final educationKeywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final financeKeywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final gameKeywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final shoppingKeywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final socialKeywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final systemKeywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final systemToolKeywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final utilityKeywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final videoKeywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    new-instance v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->Companion:Lcom/pandasu/turbo/utils/OneClickIsolationHelper$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->$stable:I

    .line 575
    nop

    .line 576
    const-string v1, "bank"

    const-string v2, "alipay"

    const-string v3, "wechat"

    const-string v4, "pay"

    const-string v5, "finance"

    const-string v6, "wallet"

    const-string v7, "money"

    const-string v8, "credit"

    const-string v9, "debit"

    .line 577
    const-string v10, "\u94f6\u884c"

    .line 576
    nop

    .line 577
    const-string v11, "\u652f\u4ed8\u5b9d"

    .line 576
    nop

    .line 577
    const-string v12, "\u652f\u4ed8"

    .line 576
    nop

    .line 577
    const-string v13, "\u91d1\u878d"

    .line 576
    nop

    .line 577
    const-string v14, "\u8bc1\u5238"

    .line 576
    nop

    .line 577
    const-string v15, "\u94b1\u5305"

    .line 576
    nop

    .line 577
    const-string v16, "\u7406\u8d22"

    .line 576
    nop

    .line 577
    const-string v17, "\u8d26\u5355"

    .line 576
    nop

    .line 577
    const-string v18, "\u8f6c\u8d26"

    .line 576
    nop

    .line 577
    const-string v19, "\u4f59\u989d"

    .line 576
    nop

    .line 578
    const-string v20, "fund"

    .line 576
    nop

    .line 578
    const-string v21, "stock"

    .line 576
    nop

    .line 578
    const-string v22, "trading"

    .line 576
    nop

    .line 578
    const-string v23, "exchange"

    .line 576
    nop

    .line 578
    const-string v24, "investment"

    .line 576
    nop

    .line 578
    const-string v25, "\u50a8\u84c4"

    .line 576
    nop

    .line 578
    const-string v26, "loan"

    .line 576
    nop

    .line 579
    const-string v27, "\u57fa\u91d1"

    .line 576
    nop

    .line 579
    const-string v28, "\u80a1\u7968"

    .line 576
    nop

    .line 579
    const-string v29, "\u4ea4\u6613"

    .line 576
    nop

    .line 579
    const-string v30, "\u8bc1\u5238"

    .line 576
    nop

    .line 579
    const-string v31, "\u7406\u8d22"

    .line 576
    nop

    .line 579
    const-string v32, "\u6295\u8d44"

    .line 576
    nop

    .line 579
    const-string v33, "\u8d37\u6b3e"

    .line 576
    nop

    .line 579
    const-string v34, "\u4fdd\u9669"

    filled-new-array/range {v1 .. v34}, [Ljava/lang/String;

    move-result-object v0

    .line 576
    nop

    .line 575
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->financeKeywords:Ljava/util/List;

    .line 583
    nop

    .line 584
    const-string v1, "chat"

    const-string v2, "message"

    const-string v3, "social"

    const-string v4, "messenger"

    const-string v5, "communicate"

    const-string v6, "talk"

    const-string v7, "video"

    const-string v8, "call"

    .line 585
    const-string v9, "\u804a\u5929"

    .line 584
    nop

    .line 585
    const-string v10, "\u793e\u4ea4"

    .line 584
    nop

    .line 585
    const-string v11, "\u6d88\u606f"

    .line 584
    nop

    .line 585
    const-string v12, "\u901a\u8baf"

    .line 584
    nop

    .line 585
    const-string v13, "\u901a\u8bdd"

    .line 584
    nop

    .line 585
    const-string v14, "\u89c6\u9891"

    .line 584
    nop

    .line 585
    const-string v15, "\u8bed\u97f3"

    .line 584
    nop

    .line 586
    const-string v16, "qq"

    .line 584
    nop

    .line 586
    const-string v17, "weixin"

    .line 584
    nop

    .line 586
    const-string v18, "telegram"

    .line 584
    nop

    .line 586
    const-string v19, "whatsapp"

    .line 584
    nop

    .line 586
    const-string v20, "discord"

    .line 584
    nop

    .line 586
    const-string v21, "facebook"

    .line 584
    nop

    .line 586
    const-string v22, "instagram"

    .line 584
    nop

    .line 586
    const-string v23, "tiktok"

    .line 584
    nop

    .line 587
    const-string v24, "\u6296\u97f3"

    .line 584
    nop

    .line 587
    const-string v25, "\u5feb\u624b"

    .line 584
    nop

    .line 587
    const-string v26, "\u5fae\u535a"

    .line 584
    nop

    .line 587
    const-string v27, "\u5c0f\u7ea2\u4e66"

    .line 584
    nop

    .line 587
    const-string v28, "b\u7ad9"

    .line 584
    nop

    .line 587
    const-string v29, "bilibili"

    .line 584
    nop

    .line 587
    const-string v30, "\u8c46\u74e3"

    .line 584
    nop

    .line 587
    const-string v31, "\u77e5\u4e4e"

    filled-new-array/range {v1 .. v31}, [Ljava/lang/String;

    move-result-object v0

    .line 584
    nop

    .line 583
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->socialKeywords:Ljava/util/List;

    .line 591
    nop

    .line 592
    const-string v1, "game"

    const-string v2, "play"

    const-string v3, "arcade"

    const-string v4, "racing"

    const-string v5, "puzzle"

    const-string v6, "rpg"

    const-string v7, "fps"

    const-string v8, "moba"

    const-string v9, "battle"

    .line 593
    const-string v10, "\u6e38\u620f"

    .line 592
    nop

    .line 593
    const-string v11, "\u5a31\u4e50"

    .line 592
    nop

    .line 593
    const-string v12, "\u7ade\u6280"

    .line 592
    nop

    .line 593
    const-string v13, "\u4f11\u95f2"

    .line 592
    nop

    .line 593
    const-string v14, "\u5bf9\u6218"

    .line 592
    nop

    .line 593
    const-string v15, "\u89d2\u8272\u626e\u6f14"

    .line 592
    nop

    .line 593
    const-string v16, "\u5c04\u51fb"

    .line 592
    nop

    .line 594
    const-string v17, "minecraft"

    .line 592
    nop

    .line 594
    const-string v18, "pubg"

    .line 592
    nop

    .line 594
    const-string v19, "honor of kings"

    .line 592
    nop

    .line 594
    const-string v20, "\u738b\u8005\u8363\u8000"

    .line 592
    nop

    .line 594
    const-string v21, "\u539f\u795e"

    .line 592
    nop

    .line 594
    const-string v22, "\u82f1\u96c4\u8054\u76df"

    .line 592
    nop

    .line 594
    const-string v23, "\u7a7f\u8d8a\u706b\u7ebf"

    .line 592
    nop

    .line 595
    const-string v24, "\u548c\u5e73\u7cbe\u82f1"

    .line 592
    nop

    .line 595
    const-string v25, "\u9634\u9633\u5e08"

    .line 592
    nop

    .line 595
    const-string v26, "\u5d29\u574f"

    .line 592
    nop

    .line 595
    const-string v27, "\u7b2c\u4e94\u4eba\u683c"

    .line 592
    nop

    .line 595
    const-string v28, "\u660e\u65e5\u65b9\u821f"

    .line 592
    nop

    .line 595
    const-string v29, "\u5251\u7f513"

    filled-new-array/range {v1 .. v29}, [Ljava/lang/String;

    move-result-object v0

    .line 592
    nop

    .line 591
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->gameKeywords:Ljava/util/List;

    .line 599
    nop

    .line 600
    const-string v1, "system"

    const-string v2, "tool"

    const-string v3, "manager"

    const-string v4, "explorer"

    const-string v5, "file"

    const-string v6, "admin"

    const-string v7, "setup"

    const-string v8, "config"

    .line 601
    const-string v9, "\u7cfb\u7edf"

    .line 600
    nop

    .line 601
    const-string v10, "\u5de5\u5177"

    .line 600
    nop

    .line 601
    const-string v11, "\u7ba1\u7406"

    .line 600
    nop

    .line 601
    const-string v12, "\u6587\u4ef6"

    .line 600
    nop

    .line 601
    const-string v13, "\u8d44\u6e90\u7ba1\u7406\u5668"

    .line 600
    nop

    .line 601
    const-string v14, "\u8bbe\u7f6e"

    .line 600
    nop

    .line 601
    const-string v15, "\u914d\u7f6e"

    .line 600
    nop

    .line 602
    const-string v16, "task"

    .line 600
    nop

    .line 602
    const-string v17, "process"

    .line 600
    nop

    .line 602
    const-string v18, "cleaner"

    .line 600
    nop

    .line 602
    const-string v19, "optimizer"

    .line 600
    nop

    .line 602
    const-string v20, "booster"

    .line 600
    nop

    .line 602
    const-string v21, "security"

    .line 600
    nop

    .line 603
    const-string v22, "\u4efb\u52a1"

    .line 600
    nop

    .line 603
    const-string v23, "\u8fdb\u7a0b"

    .line 600
    nop

    .line 603
    const-string v24, "\u6e05\u7406"

    .line 600
    nop

    .line 603
    const-string v25, "\u4f18\u5316"

    .line 600
    nop

    .line 603
    const-string v26, "\u52a0\u901f"

    .line 600
    nop

    .line 603
    const-string v27, "\u5b89\u5168"

    .line 600
    nop

    .line 603
    const-string v28, "\u6740\u6bd2"

    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

    move-result-object v0

    .line 600
    nop

    .line 599
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->systemKeywords:Ljava/util/List;

    .line 607
    nop

    .line 608
    const-string v1, "calculator"

    const-string v2, "calendar"

    const-string v3, "clock"

    const-string v4, "weather"

    const-string v5, "converter"

    const-string v6, "compass"

    .line 609
    const-string v7, "\u8ba1\u7b97\u5668"

    .line 608
    nop

    .line 609
    const-string v8, "\u65e5\u5386"

    .line 608
    nop

    .line 609
    const-string v9, "\u65f6\u949f"

    .line 608
    nop

    .line 609
    const-string v10, "\u5929\u6c14"

    .line 608
    nop

    .line 609
    const-string v11, "\u8f6c\u6362\u5668"

    .line 608
    nop

    .line 609
    const-string v12, "\u6307\u5357\u9488"

    .line 608
    nop

    .line 610
    const-string v13, "note"

    .line 608
    nop

    .line 610
    const-string v14, "memo"

    .line 608
    nop

    .line 610
    const-string v15, "camera"

    .line 608
    nop

    .line 610
    const-string v16, "photo"

    .line 608
    nop

    .line 610
    const-string v17, "scanner"

    .line 608
    nop

    .line 610
    const-string v18, "editor"

    .line 608
    nop

    .line 611
    const-string v19, "\u7b14\u8bb0"

    .line 608
    nop

    .line 611
    const-string v20, "\u5907\u5fd8"

    .line 608
    nop

    .line 611
    const-string v21, "\u76f8\u673a"

    .line 608
    nop

    .line 611
    const-string v22, "\u7167\u7247"

    .line 608
    nop

    .line 611
    const-string v23, "\u626b\u63cf"

    .line 608
    nop

    .line 611
    const-string v24, "\u7f16\u8f91\u5668"

    .line 608
    nop

    .line 611
    const-string v25, "\u6587\u6863"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v1

    .line 608
    nop

    .line 607
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->utilityKeywords:Ljava/util/List;

    .line 615
    nop

    .line 616
    const-string v2, "shop"

    const-string v3, "store"

    const-string v4, "buy"

    const-string v5, "cart"

    const-string v6, "mall"

    const-string v7, "market"

    const-string v8, "order"

    const-string v9, "delivery"

    .line 617
    const-string v10, "\u5546\u5e97"

    .line 616
    nop

    .line 617
    const-string v11, "\u8d2d\u7269"

    .line 616
    nop

    .line 617
    const-string v12, "\u4e70"

    .line 616
    nop

    .line 617
    const-string v13, "\u8d2d\u7269\u8f66"

    .line 616
    nop

    .line 617
    const-string v14, "\u5546\u57ce"

    .line 616
    nop

    .line 617
    const-string v15, "\u8ba2\u5355"

    .line 616
    nop

    .line 617
    const-string v16, "\u914d\u9001"

    .line 616
    nop

    .line 618
    const-string v17, "\u6dd8\u5b9d"

    .line 616
    nop

    .line 618
    const-string v18, "\u5929\u732b"

    .line 616
    nop

    .line 618
    const-string v19, "\u4eac\u4e1c"

    .line 616
    nop

    .line 618
    const-string v20, "\u62fc\u591a\u591a"

    .line 616
    nop

    .line 618
    const-string v21, "\u552f\u54c1\u4f1a"

    .line 616
    nop

    .line 618
    const-string v22, "\u82cf\u5b81"

    .line 616
    nop

    .line 618
    const-string v23, "\u56fd\u7f8e"

    filled-new-array/range {v2 .. v23}, [Ljava/lang/String;

    move-result-object v1

    .line 616
    nop

    .line 615
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->shoppingKeywords:Ljava/util/List;

    .line 622
    nop

    .line 623
    const-string v2, "video"

    const-string v3, "player"

    const-string v4, "music"

    const-string v5, "audio"

    const-string v6, "stream"

    const-string v7, "tv"

    const-string v8, "radio"

    const-string v9, "media"

    .line 624
    const-string v10, "\u89c6\u9891"

    .line 623
    nop

    .line 624
    const-string v11, "\u64ad\u653e\u5668"

    .line 623
    nop

    .line 624
    const-string v12, "\u97f3\u4e50"

    .line 623
    nop

    .line 624
    const-string v13, "\u97f3\u9891"

    .line 623
    nop

    .line 624
    const-string v14, "\u76f4\u64ad"

    .line 623
    nop

    .line 624
    const-string v15, "\u7535\u89c6"

    .line 623
    nop

    .line 624
    const-string v16, "\u7535\u53f0"

    .line 623
    nop

    .line 624
    const-string v17, "\u5a92\u4f53"

    .line 623
    nop

    .line 625
    const-string v18, "\u7231\u5947\u827a"

    .line 623
    nop

    .line 625
    const-string v19, "\u4f18\u9177"

    .line 623
    nop

    .line 625
    const-string v20, "\u817e\u8baf\u89c6\u9891"

    .line 623
    nop

    .line 625
    const-string v21, "\u8292\u679ctv"

    .line 623
    nop

    .line 625
    const-string v22, "bilibili"

    .line 623
    nop

    .line 625
    const-string v23, "\u7f51\u6613\u4e91\u97f3\u4e50"

    .line 623
    nop

    .line 625
    const-string v24, "qq\u97f3\u4e50"

    filled-new-array/range {v2 .. v24}, [Ljava/lang/String;

    move-result-object v1

    .line 623
    nop

    .line 622
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->videoKeywords:Ljava/util/List;

    .line 629
    nop

    .line 630
    const-string v2, "book"

    const-string v3, "read"

    const-string v4, "learn"

    const-string v5, "education"

    const-string v6, "study"

    const-string v7, "course"

    const-string v8, "tutorial"

    const-string v9, "dictionary"

    .line 631
    const-string v10, "\u4e66"

    .line 630
    nop

    .line 631
    const-string v11, "\u9605\u8bfb"

    .line 630
    nop

    .line 631
    const-string v12, "\u5b66\u4e60"

    .line 630
    nop

    .line 631
    const-string v13, "\u6559\u80b2"

    .line 630
    nop

    .line 631
    const-string v14, "\u8bfe\u7a0b"

    .line 630
    nop

    .line 631
    const-string v15, "\u6559\u7a0b"

    .line 630
    nop

    .line 631
    const-string v16, "\u5b57\u5178"

    .line 630
    nop

    .line 632
    const-string v17, "\u5fae\u4fe1\u8bfb\u4e66"

    .line 630
    nop

    .line 632
    const-string v18, "\u638c\u9605"

    .line 630
    nop

    .line 632
    const-string v19, "\u5f97\u5230"

    .line 630
    nop

    .line 632
    const-string v20, "\u77e5\u4e4e"

    .line 630
    nop

    .line 632
    const-string v21, "\u4f5c\u4e1a\u5e2e"

    .line 630
    nop

    .line 632
    const-string v22, "\u5b66\u4e60\u901a"

    filled-new-array/range {v2 .. v22}, [Ljava/lang/String;

    move-result-object v1

    .line 630
    nop

    .line 629
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->educationKeywords:Ljava/util/List;

    .line 635
    check-cast v0, Ljava/util/Collection;

    const-string v1, "magisk"

    const-string v2, "superuser"

    const-string v3, "root"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->systemToolKeywords:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->context:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public static final synthetic access$categorizeApp(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/AppCategory;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/utils/OneClickIsolationHelper;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->categorizeApp(Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/AppCategory;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$checkRootPermission(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/utils/OneClickIsolationHelper;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->checkRootPermission(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getContext$p(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    .line 18
    iget-object v0, p0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$isSystemApp(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/utils/OneClickIsolationHelper;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 18
    invoke-direct {p0, p1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$tryLimitedMethods(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Landroid/content/pm/PackageManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/pandasu/turbo/utils/OneClickIsolationHelper;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->tryLimitedMethods(Landroid/content/pm/PackageManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final categorizeApp(Ljava/lang/String;Ljava/lang/String;)Lcom/pandasu/turbo/data/model/AppCategory;
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    .local v0, "combined":Ljava/lang/String;
    nop

    .line 387
    sget-object v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->financeKeywords:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 649
    .local v2, "$i$f$any":I
    instance-of v3, v1, Ljava/util/Collection;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v7

    goto :goto_0

    .line 650
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .local v9, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 387
    .local v10, "$i$a$-any-OneClickIsolationHelper$categorizeApp$1":I
    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    move-object v12, v9

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v7, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    .line 650
    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-any-OneClickIsolationHelper$categorizeApp$1":I
    if-eqz v9, :cond_1

    move v1, v4

    goto :goto_0

    .line 651
    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_2
    move v1, v7

    .line 387
    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    :goto_0
    if-eqz v1, :cond_3

    sget-object v1, Lcom/pandasu/turbo/data/model/AppCategory;->FINANCE:Lcom/pandasu/turbo/data/model/AppCategory;

    goto/16 :goto_8

    .line 390
    :cond_3
    sget-object v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->gameKeywords:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .restart local v1    # "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 652
    .restart local v2    # "$i$f$any":I
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v7

    goto :goto_1

    .line 653
    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .restart local v9    # "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 390
    .local v10, "$i$a$-any-OneClickIsolationHelper$categorizeApp$2":I
    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    move-object v12, v9

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v7, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    .line 653
    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-any-OneClickIsolationHelper$categorizeApp$2":I
    if-eqz v9, :cond_5

    move v1, v4

    goto :goto_1

    .line 654
    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_6
    move v1, v7

    .line 390
    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    :goto_1
    if-eqz v1, :cond_7

    sget-object v1, Lcom/pandasu/turbo/data/model/AppCategory;->GAME:Lcom/pandasu/turbo/data/model/AppCategory;

    goto/16 :goto_8

    .line 393
    :cond_7
    sget-object v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->socialKeywords:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .restart local v1    # "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 655
    .restart local v2    # "$i$f$any":I
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_8

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    move v1, v7

    goto :goto_2

    .line 656
    :cond_8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .restart local v9    # "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 393
    .local v10, "$i$a$-any-OneClickIsolationHelper$categorizeApp$3":I
    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    move-object v12, v9

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v7, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    .line 656
    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-any-OneClickIsolationHelper$categorizeApp$3":I
    if-eqz v9, :cond_9

    move v1, v4

    goto :goto_2

    .line 657
    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_a
    move v1, v7

    .line 393
    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    :goto_2
    if-eqz v1, :cond_b

    sget-object v1, Lcom/pandasu/turbo/data/model/AppCategory;->SOCIAL:Lcom/pandasu/turbo/data/model/AppCategory;

    goto/16 :goto_8

    .line 396
    :cond_b
    sget-object v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->videoKeywords:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .restart local v1    # "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 658
    .restart local v2    # "$i$f$any":I
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_c

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    move v1, v7

    goto :goto_3

    .line 659
    :cond_c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .restart local v9    # "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 396
    .local v10, "$i$a$-any-OneClickIsolationHelper$categorizeApp$4":I
    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    move-object v12, v9

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v7, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    .line 659
    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-any-OneClickIsolationHelper$categorizeApp$4":I
    if-eqz v9, :cond_d

    move v1, v4

    goto :goto_3

    .line 660
    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_e
    move v1, v7

    .line 396
    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    :goto_3
    if-eqz v1, :cond_f

    sget-object v1, Lcom/pandasu/turbo/data/model/AppCategory;->UTILITY:Lcom/pandasu/turbo/data/model/AppCategory;

    goto/16 :goto_8

    .line 399
    :cond_f
    sget-object v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->shoppingKeywords:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .restart local v1    # "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 661
    .restart local v2    # "$i$f$any":I
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_10

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    move v1, v7

    goto :goto_4

    .line 662
    :cond_10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .restart local v9    # "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 399
    .local v10, "$i$a$-any-OneClickIsolationHelper$categorizeApp$5":I
    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    move-object v12, v9

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v7, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    .line 662
    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-any-OneClickIsolationHelper$categorizeApp$5":I
    if-eqz v9, :cond_11

    move v1, v4

    goto :goto_4

    .line 663
    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_12
    move v1, v7

    .line 399
    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    :goto_4
    if-eqz v1, :cond_13

    sget-object v1, Lcom/pandasu/turbo/data/model/AppCategory;->UTILITY:Lcom/pandasu/turbo/data/model/AppCategory;

    goto/16 :goto_8

    .line 402
    :cond_13
    sget-object v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->educationKeywords:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .restart local v1    # "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 664
    .restart local v2    # "$i$f$any":I
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_14

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    move v1, v7

    goto :goto_5

    .line 665
    :cond_14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .restart local v9    # "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 402
    .local v10, "$i$a$-any-OneClickIsolationHelper$categorizeApp$6":I
    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    move-object v12, v9

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v7, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    .line 665
    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-any-OneClickIsolationHelper$categorizeApp$6":I
    if-eqz v9, :cond_15

    move v1, v4

    goto :goto_5

    .line 666
    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_16
    move v1, v7

    .line 402
    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    :goto_5
    if-eqz v1, :cond_17

    sget-object v1, Lcom/pandasu/turbo/data/model/AppCategory;->UTILITY:Lcom/pandasu/turbo/data/model/AppCategory;

    goto/16 :goto_8

    .line 405
    :cond_17
    sget-object v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->systemToolKeywords:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .restart local v1    # "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 667
    .restart local v2    # "$i$f$any":I
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_18

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    move v1, v7

    goto :goto_6

    .line 668
    :cond_18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .restart local v9    # "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 405
    .local v10, "$i$a$-any-OneClickIsolationHelper$categorizeApp$7":I
    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    move-object v12, v9

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v7, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    .line 668
    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-any-OneClickIsolationHelper$categorizeApp$7":I
    if-eqz v9, :cond_19

    move v1, v4

    goto :goto_6

    .line 669
    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_1a
    move v1, v7

    .line 405
    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    :goto_6
    if-eqz v1, :cond_1b

    sget-object v1, Lcom/pandasu/turbo/data/model/AppCategory;->SYSTEM_TOOL:Lcom/pandasu/turbo/data/model/AppCategory;

    goto :goto_8

    .line 408
    :cond_1b
    sget-object v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->utilityKeywords:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .restart local v1    # "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 670
    .restart local v2    # "$i$f$any":I
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_1c

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c

    move v4, v7

    goto :goto_7

    .line 671
    :cond_1c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .restart local v9    # "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 408
    .local v10, "$i$a$-any-OneClickIsolationHelper$categorizeApp$8":I
    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    move-object v12, v9

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v7, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    .line 671
    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-any-OneClickIsolationHelper$categorizeApp$8":I
    if-eqz v9, :cond_1d

    goto :goto_7

    .line 672
    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_1e
    move v4, v7

    .line 408
    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    :goto_7
    if-eqz v4, :cond_1f

    sget-object v1, Lcom/pandasu/turbo/data/model/AppCategory;->UTILITY:Lcom/pandasu/turbo/data/model/AppCategory;

    goto :goto_8

    .line 411
    :cond_1f
    sget-object v1, Lcom/pandasu/turbo/data/model/AppCategory;->SOCIAL:Lcom/pandasu/turbo/data/model/AppCategory;

    .line 385
    :goto_8
    return-object v1
.end method

.method private final checkRootPermission(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 35
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$checkRootPermission$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$checkRootPermission$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    return-object v0
.end method

.method private final generateCommandBlacklist(Lcom/pandasu/turbo/data/model/AppCategory;Lcom/pandasu/turbo/data/model/SandboxLevel;)Ljava/util/List;
    .locals 4
    .param p1, "category"    # Lcom/pandasu/turbo/data/model/AppCategory;
    .param p2, "level"    # Lcom/pandasu/turbo/data/model/SandboxLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/model/AppCategory;",
            "Lcom/pandasu/turbo/data/model/SandboxLevel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 494
    sget-object v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p2}, Lcom/pandasu/turbo/data/model/SandboxLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "su -c \'format\'"

    packed-switch v0, :pswitch_data_0

    .line 511
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 507
    :pswitch_1
    nop

    .line 508
    nop

    .line 507
    nop

    .line 509
    const-string v0, "su -c \'mkfs\'"

    const-string v2, "su -c \'rm -rf /\'"

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 507
    nop

    .line 506
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 502
    :pswitch_2
    nop

    .line 503
    nop

    .line 502
    nop

    .line 504
    const-string v0, "su -c \'rm -rf /data\'"

    const-string v2, "su -c \'rm -rf /system\'"

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 502
    nop

    .line 501
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 496
    :pswitch_3
    nop

    .line 497
    nop

    .line 496
    nop

    .line 498
    nop

    .line 496
    nop

    .line 499
    const-string v0, "su -c \'chown root\'"

    const-string v1, "su -c \'rm -rf\'"

    const-string v2, "su -c \'mount -o remount\'"

    const-string v3, "su -c \'chmod 777\'"

    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 496
    nop

    .line 495
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 494
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final generateCommandWhitelist(Lcom/pandasu/turbo/data/model/AppCategory;Lcom/pandasu/turbo/data/model/SandboxLevel;)Ljava/util/List;
    .locals 2
    .param p1, "category"    # Lcom/pandasu/turbo/data/model/AppCategory;
    .param p2, "level"    # Lcom/pandasu/turbo/data/model/SandboxLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/model/AppCategory;",
            "Lcom/pandasu/turbo/data/model/SandboxLevel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 477
    sget-object v0, Lcom/pandasu/turbo/data/model/SandboxLevel;->STRICT:Lcom/pandasu/turbo/data/model/SandboxLevel;

    if-ne p2, v0, :cond_1

    .line 478
    sget-object v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/pandasu/turbo/data/model/AppCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 479
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 480
    nop

    .line 481
    const-string v0, "su -c \'dumpsys package\'"

    const-string v1, "su -c \'pm list packages\'"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 480
    nop

    .line 479
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 483
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 486
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 477
    :goto_0
    return-object v0
.end method

.method private final generateCustomProps(Lcom/pandasu/turbo/data/model/AppCategory;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;)Ljava/util/Map;
    .locals 10
    .param p1, "category"    # Lcom/pandasu/turbo/data/model/AppCategory;
    .param p2, "preset"    # Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/model/AppCategory;",
            "Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 563
    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "ro.build.tags"

    const-string v2, "release-keys"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ro.build.selinux"

    const-string v3, "enforcing"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "ro.debuggable"

    const-string v4, "0"

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v0, v6

    const-string v5, "ro.secure"

    const-string v7, "1"

    invoke-static {v5, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v0, v9

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 564
    .local v0, "fullProps":Ljava/util/Map;
    new-array v8, v6, [Lkotlin/Pair;

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v8, v2

    invoke-static {v5, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v8, v3

    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 565
    .local v1, "basicProps":Ljava/util/Map;
    new-array v4, v6, [Lcom/pandasu/turbo/data/model/AppCategory;

    sget-object v5, Lcom/pandasu/turbo/data/model/AppCategory;->FINANCE:Lcom/pandasu/turbo/data/model/AppCategory;

    aput-object v5, v4, v2

    sget-object v2, Lcom/pandasu/turbo/data/model/AppCategory;->GAME:Lcom/pandasu/turbo/data/model/AppCategory;

    aput-object v2, v4, v3

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 566
    .local v2, "isSensitive":Z
    sget-object v3, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 569
    new-instance v3, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v3}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v3

    .line 567
    :pswitch_0
    if-eqz v2, :cond_0

    goto :goto_0

    .line 568
    :pswitch_1
    nop

    .line 566
    :cond_0
    move-object v3, v1

    goto :goto_1

    .line 569
    :pswitch_2
    sget-object v3, Lcom/pandasu/turbo/data/model/AppCategory;->FINANCE:Lcom/pandasu/turbo/data/model/AppCategory;

    if-ne p1, v3, :cond_1

    .line 566
    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 569
    :cond_1
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 566
    :goto_1
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final generatePathBlacklist(Lcom/pandasu/turbo/data/model/AppCategory;Lcom/pandasu/turbo/data/model/SandboxLevel;)Ljava/util/List;
    .locals 7
    .param p1, "category"    # Lcom/pandasu/turbo/data/model/AppCategory;
    .param p2, "level"    # Lcom/pandasu/turbo/data/model/SandboxLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/model/AppCategory;",
            "Lcom/pandasu/turbo/data/model/SandboxLevel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 538
    sget-object v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p2}, Lcom/pandasu/turbo/data/model/SandboxLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 555
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 553
    :pswitch_1
    nop

    .line 552
    const-string v0, "/data/adb"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 548
    :pswitch_2
    nop

    .line 549
    nop

    .line 548
    nop

    .line 550
    const-string v0, "/data/adb/magisk"

    const-string v1, "/system/bin"

    const-string v2, "/system/xbin"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 548
    nop

    .line 547
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 540
    :pswitch_3
    const-string v1, "/system/bin"

    .line 541
    const-string v2, "/system/xbin"

    .line 540
    nop

    .line 542
    const-string v3, "/system/app"

    .line 540
    nop

    .line 543
    const-string v4, "/system/priv-app"

    .line 540
    nop

    .line 544
    const-string v5, "/data/adb"

    .line 540
    nop

    .line 545
    const-string v6, "/data/adb/magisk"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 540
    nop

    .line 539
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 538
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final generatePathWhitelist(Lcom/pandasu/turbo/data/model/AppCategory;Lcom/pandasu/turbo/data/model/SandboxLevel;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "category"    # Lcom/pandasu/turbo/data/model/AppCategory;
    .param p2, "level"    # Lcom/pandasu/turbo/data/model/SandboxLevel;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandasu/turbo/data/model/AppCategory;",
            "Lcom/pandasu/turbo/data/model/SandboxLevel;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 523
    sget-object v0, Lcom/pandasu/turbo/data/model/SandboxLevel;->STRICT:Lcom/pandasu/turbo/data/model/SandboxLevel;

    if-ne p2, v0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    nop

    .line 525
    nop

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/sdcard"

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 525
    nop

    .line 524
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 530
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 523
    :goto_0
    return-object v0
.end method

.method private final isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 8
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 224
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 225
    .local v0, "sourceDir":Ljava/lang/String;
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 228
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "com.miui."

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    if-nez v2, :cond_2

    .line 229
    const-string v2, "com.xiaomi."

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 230
    const-string v2, "com.android."

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 231
    const-string v2, "android."

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 232
    const-string v2, "com.google.android."

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 233
    const-string v2, "com.qualcomm."

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 234
    const-string v2, "com.mediatek."

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 235
    const-string v2, "com.sprd."

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v6

    .line 228
    :goto_1
    nop

    .line 238
    .local v2, "isSystemAppByPackageName":Z
    if-eqz v2, :cond_3

    .line 239
    return v6

    .line 244
    :cond_3
    const-string v7, "/data/app/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 245
    return v3

    .line 249
    :cond_4
    const-string v7, "/system/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 250
    const-string v7, "/vendor/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 251
    const-string v7, "/product/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 252
    const-string v7, "/apex/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 253
    const-string v7, "/oem/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 254
    const-string v7, "/system_ext/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 255
    const-string v7, "/system_root/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 256
    const-string v7, "/data/app-private/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 257
    const-string v7, "/data/app-asec/"

    invoke-static {v0, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v3, v6

    .line 249
    :cond_6
    nop

    .line 259
    .local v3, "isSystemPath":Z
    return v3
.end method

.method private final tryLimitedMethods(Landroid/content/pm/PackageManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 52
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$tryLimitedMethods$2;-><init>(Landroid/content/pm/PackageManager;Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    return-object v0
.end method


# virtual methods
.method public final generateIsolationConfig(Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;)Lcom/pandasu/turbo/data/model/IsolationConfig;
    .locals 38
    .param p1, "appInfo"    # Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;
    .param p2, "preset"    # Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "appInfo"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "preset"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    const/4 v2, 0x2

    new-array v4, v2, [Lcom/pandasu/turbo/data/model/AppCategory;

    sget-object v5, Lcom/pandasu/turbo/data/model/AppCategory;->FINANCE:Lcom/pandasu/turbo/data/model/AppCategory;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/pandasu/turbo/data/model/AppCategory;->GAME:Lcom/pandasu/turbo/data/model/AppCategory;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getCategory()Lcom/pandasu/turbo/data/model/AppCategory;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 423
    .local v4, "isSensitive":Z
    invoke-virtual/range {p1 .. p1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getCategory()Lcom/pandasu/turbo/data/model/AppCategory;

    move-result-object v5

    sget-object v8, Lcom/pandasu/turbo/data/model/AppCategory;->FINANCE:Lcom/pandasu/turbo/data/model/AppCategory;

    if-ne v5, v8, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 424
    .local v5, "isFinance":Z
    :goto_0
    const/4 v8, 0x1

    .local v8, "all":Z
    move v9, v4

    .local v9, "sensitive":Z
    move v10, v5

    .local v10, "finance":Z
    const/4 v11, 0x0

    .line 431
    .local v11, "off":Z
    sget-object v12, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p2 .. p2}, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->ordinal()I

    move-result v13

    aget v12, v12, v13

    const/4 v13, 0x4

    const/4 v14, 0x3

    packed-switch v12, :pswitch_data_0

    .line 434
    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2

    :pswitch_0
    new-array v12, v13, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v14

    goto :goto_1

    .line 433
    :pswitch_1
    new-array v12, v13, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v14

    goto :goto_1

    .line 432
    :pswitch_2
    new-array v12, v13, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v2

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v14

    .line 431
    :goto_1
    aget-object v13, v12, v6

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .local v13, "hideMagisk":Z
    aget-object v15, v12, v7

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    .local v34, "hideSu":Z
    aget-object v15, v12, v2

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v35

    .local v35, "hideBusybox":Z
    aget-object v12, v12, v14

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 437
    .local v12, "hideXposed":Z
    sget-object v15, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p2 .. p2}, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_1

    .line 440
    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2

    :pswitch_3
    new-array v14, v14, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v2

    goto :goto_2

    .line 439
    :pswitch_4
    new-array v14, v14, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v2

    goto :goto_2

    .line 438
    :pswitch_5
    new-array v14, v14, [Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v2

    .line 437
    :goto_2
    aget-object v15, v14, v6

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    .local v36, "hideMagiskApp":Z
    aget-object v15, v14, v7

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    .local v37, "isolateStorage":Z
    aget-object v2, v14, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 443
    .local v2, "disableRoot":Z
    sget-object v14, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p2 .. p2}, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_2

    .line 446
    new-instance v6, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v6}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v6

    :pswitch_6
    sget-object v14, Lcom/pandasu/turbo/data/model/SandboxLevel;->STRICT:Lcom/pandasu/turbo/data/model/SandboxLevel;

    goto :goto_3

    .line 445
    :pswitch_7
    if-eqz v4, :cond_1

    sget-object v14, Lcom/pandasu/turbo/data/model/SandboxLevel;->MODERATE:Lcom/pandasu/turbo/data/model/SandboxLevel;

    goto :goto_3

    :cond_1
    sget-object v14, Lcom/pandasu/turbo/data/model/SandboxLevel;->PERMISSIVE:Lcom/pandasu/turbo/data/model/SandboxLevel;

    goto :goto_3

    .line 444
    :pswitch_8
    if-eqz v5, :cond_2

    sget-object v14, Lcom/pandasu/turbo/data/model/SandboxLevel;->STRICT:Lcom/pandasu/turbo/data/model/SandboxLevel;

    goto :goto_3

    :cond_2
    sget-object v14, Lcom/pandasu/turbo/data/model/SandboxLevel;->PERMISSIVE:Lcom/pandasu/turbo/data/model/SandboxLevel;

    .line 443
    :goto_3
    nop

    .line 450
    .local v14, "sandboxLevel":Lcom/pandasu/turbo/data/model/SandboxLevel;
    invoke-virtual/range {p1 .. p1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v23

    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getCategory()Lcom/pandasu/turbo/data/model/AppCategory;

    move-result-object v15

    invoke-direct {v0, v15, v1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->generateCustomProps(Lcom/pandasu/turbo/data/model/AppCategory;Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;)Ljava/util/Map;

    move-result-object v26

    .line 456
    sget-object v15, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p2 .. p2}, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_3

    .line 459
    new-instance v6, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v6}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v6

    :pswitch_9
    move/from16 v30, v7

    goto :goto_4

    .line 458
    :pswitch_a
    move/from16 v30, v7

    goto :goto_4

    .line 457
    :pswitch_b
    move/from16 v30, v6

    .line 456
    :goto_4
    nop

    .line 461
    sget-object v15, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->AGGRESSIVE:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    if-ne v1, v15, :cond_3

    move/from16 v28, v7

    goto :goto_5

    :cond_3
    move/from16 v28, v6

    .line 462
    :goto_5
    sget-object v15, Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;->AGGRESSIVE:Lcom/pandasu/turbo/data/model/OneClickIsolationPreset;

    if-ne v1, v15, :cond_4

    move/from16 v29, v7

    goto :goto_6

    :cond_4
    move/from16 v29, v6

    .line 463
    :goto_6
    new-instance v15, Lcom/pandasu/turbo/data/model/SandboxRule;

    move-object/from16 v27, v15

    .line 464
    invoke-virtual/range {p1 .. p1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 465
    invoke-virtual/range {p1 .. p1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getCategory()Lcom/pandasu/turbo/data/model/AppCategory;

    move-result-object v6

    invoke-direct {v0, v6, v14}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->generateCommandWhitelist(Lcom/pandasu/turbo/data/model/AppCategory;Lcom/pandasu/turbo/data/model/SandboxLevel;)Ljava/util/List;

    move-result-object v18

    .line 466
    invoke-virtual/range {p1 .. p1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getCategory()Lcom/pandasu/turbo/data/model/AppCategory;

    move-result-object v6

    invoke-direct {v0, v6, v14}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->generateCommandBlacklist(Lcom/pandasu/turbo/data/model/AppCategory;Lcom/pandasu/turbo/data/model/SandboxLevel;)Ljava/util/List;

    move-result-object v19

    .line 467
    invoke-virtual/range {p1 .. p1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getCategory()Lcom/pandasu/turbo/data/model/AppCategory;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v14, v7}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->generatePathWhitelist(Lcom/pandasu/turbo/data/model/AppCategory;Lcom/pandasu/turbo/data/model/SandboxLevel;Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 468
    invoke-virtual/range {p1 .. p1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;->getCategory()Lcom/pandasu/turbo/data/model/AppCategory;

    move-result-object v6

    invoke-direct {v0, v6, v14}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;->generatePathBlacklist(Lcom/pandasu/turbo/data/model/AppCategory;Lcom/pandasu/turbo/data/model/SandboxLevel;)Ljava/util/List;

    move-result-object v21

    .line 463
    move-object/from16 v17, v14

    invoke-direct/range {v15 .. v21}, Lcom/pandasu/turbo/data/model/SandboxRule;-><init>(Ljava/lang/String;Lcom/pandasu/turbo/data/model/SandboxLevel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 449
    new-instance v6, Lcom/pandasu/turbo/data/model/IsolationConfig;

    move-object v15, v6

    .line 450
    const/16 v18, 0x1

    .line 451
    nop

    .line 452
    nop

    .line 453
    nop

    .line 454
    nop

    .line 463
    nop

    .line 461
    nop

    .line 462
    nop

    .line 456
    nop

    .line 449
    const/16 v31, 0x0

    const v32, 0x8000

    const/16 v33, 0x0

    move-object/from16 v16, v22

    move-object/from16 v17, v23

    move/from16 v19, v13

    move/from16 v20, v34

    move/from16 v21, v35

    move/from16 v22, v12

    move/from16 v23, v36

    move/from16 v24, v37

    move/from16 v25, v2

    invoke-direct/range {v15 .. v33}, Lcom/pandasu/turbo/data/model/IsolationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/pandasu/turbo/data/model/SandboxRule;ZZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public final scanAllApps(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 266
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanAllApps$2;-><init>(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 357
    return-object v0
.end method

.method public final scanInstalledApps(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 94
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanInstalledApps$2;-><init>(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 218
    return-object v0
.end method

.method public final scanRootApps(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/utils/OneClickIsolationHelper$AppInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 362
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper$scanRootApps$2;-><init>(Lcom/pandasu/turbo/utils/OneClickIsolationHelper;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 377
    return-object v0
.end method
