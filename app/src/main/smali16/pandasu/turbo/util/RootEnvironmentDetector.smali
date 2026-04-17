.class public final Lcom/pandasu/turbo/util/RootEnvironmentDetector;
.super Ljava/lang/Object;
.source "RootEnvironmentDetector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;,
        Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;,
        Lcom/pandasu/turbo/util/RootEnvironmentDetector$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRootEnvironmentDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RootEnvironmentDetector.kt\ncom/pandasu/turbo/util/RootEnvironmentDetector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,800:1\n1747#2,3:801\n1747#2,3:804\n1747#2,3:807\n1747#2,3:810\n288#2,2:813\n1747#2,3:815\n1747#2,3:818\n288#2,2:821\n*S KotlinDebug\n*F\n+ 1 RootEnvironmentDetector.kt\ncom/pandasu/turbo/util/RootEnvironmentDetector\n*L\n126#1:801,3\n140#1:804,3\n158#1:807,3\n173#1:810,3\n197#1:813,2\n246#1:815,3\n272#1:818,3\n456#1:821,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0002 !B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0006\u0010\u000c\u001a\u00020\u0006J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tH\u0002J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0014\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u0004H\u0086@\u00a2\u0006\u0002\u0010\u0016J\u0006\u0010\u0017\u001a\u00020\u0004J\u0008\u0010\u0018\u001a\u00020\u0004H\u0002J\u0006\u0010\u0019\u001a\u00020\u0004J\u0008\u0010\u001a\u001a\u00020\u0004H\u0002J\u0008\u0010\u001b\u001a\u00020\u0004H\u0002J\u0008\u0010\u001c\u001a\u00020\u0004H\u0002J\u0016\u0010\u001d\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0006J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\""
    }
    d2 = {
        "Lcom/pandasu/turbo/util/RootEnvironmentDetector;",
        "",
        "()V",
        "checkUpdateRelatedFailure",
        "",
        "rootMode",
        "Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;",
        "hasPermission",
        "managerPackage",
        "",
        "context",
        "Landroid/content/Context;",
        "detectRootMode",
        "execAsRoot",
        "command",
        "fixAuthorizationIssue",
        "getAuthorizationStatus",
        "Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;",
        "getRootManagerName",
        "getRootManagerPackage",
        "hasRootPermission",
        "hasRootPermissionAsync",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "hasRootPermissionFast",
        "isKernelSUAvailable",
        "isLSPosedModuleActive",
        "isMagiskAvailable",
        "isPandaSUStandalone",
        "isZygiskModeAvailable",
        "openRootManager",
        "showAuthorizationFixGuide",
        "",
        "AuthorizationStatus",
        "RootMode",
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

.field public static final INSTANCE:Lcom/pandasu/turbo/util/RootEnvironmentDetector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector;

    invoke-direct {v0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;-><init>()V

    sput-object v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->INSTANCE:Lcom/pandasu/turbo/util/RootEnvironmentDetector;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkUpdateRelatedFailure(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;ZLjava/lang/String;Landroid/content/Context;)Z
    .registers 23
    .param p1, "rootMode"    # Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .param p2, "hasPermission"    # Z
    .param p3, "managerPackage"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .line 748
    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-nez p2, :cond_98

    sget-object v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->UNKNOWN:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    move-object/from16 v3, p1

    if-eq v3, v0, :cond_98

    if-nez v1, :cond_f

    goto/16 :goto_98

    .line 752
    :cond_f
    nop

    .line 753
    :try_start_10
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 754
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 757
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-wide v5, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 758
    .local v5, "installTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1e} :catch_8b

    .line 759
    .local v7, "currentTime":J
    const v9, 0x5265c00

    .line 762
    .local v9, "oneDayMillis":I
    sub-long v10, v7, v5

    int-to-long v12, v9

    cmp-long v10, v10, v12

    const/4 v11, 0x1

    if-gez v10, :cond_2b

    move v10, v11

    goto :goto_2c

    :cond_2b
    move v10, v2

    .line 764
    .local v10, "isRecentlyInstalled":Z
    :goto_2c
    const-string v12, ")"

    const-string v13, "Root \u7ba1\u7406\u5668 "

    if-eqz v10, :cond_57

    .line 765
    :try_start_32
    sget-object v14, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " \u6700\u8fd1\u5b89\u88c5/\u66f4\u65b0 (\u5b89\u88c5\u65f6\u95f4: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 766
    return v11

    .line 770
    :cond_57
    iget-wide v14, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 771
    .local v14, "lastUpdateTime":J
    sub-long v16, v7, v14

    int-to-long v2, v9

    cmp-long v2, v16, v2

    if-gez v2, :cond_62

    move v2, v11

    goto :goto_63

    :cond_62
    const/4 v2, 0x0

    .line 773
    .local v2, "isRecentlyUpdated":Z
    :goto_63
    if-eqz v2, :cond_96

    .line 774
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " \u6700\u8fd1\u66f4\u65b0 (\u66f4\u65b0\u65f6\u95f4: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_89} :catch_8b

    .line 775
    const/4 v3, 0x1

    return v3

    .line 778
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "isRecentlyUpdated":Z
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "installTime":J
    .end local v7    # "currentTime":J
    .end local v9    # "oneDayMillis":I
    .end local v10    # "isRecentlyInstalled":Z
    .end local v14    # "lastUpdateTime":J
    :catch_8b
    move-exception v0

    .line 779
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "\u68c0\u67e5 Root \u7ba1\u7406\u5668\u66f4\u65b0\u72b6\u6001\u5931\u8d25"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 782
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_96
    const/4 v2, 0x0

    return v2

    .line 749
    :cond_98
    :goto_98
    return v2
.end method

.method private final execAsRoot(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "command"    # Ljava/lang/String;

    .line 101
    nop

    .line 102
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "-c"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 103
    .local v0, "process":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "getInputStream(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Reader;

    instance-of v1, v3, Ljava/io/BufferedReader;

    if-eqz v1, :cond_32

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_3a

    :cond_32
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v1

    :goto_3a
    check-cast v3, Ljava/io/Reader;

    invoke-static {v3}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "output":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4d} :catch_4f

    .line 105
    nop

    .end local v0    # "process":Ljava/lang/Process;
    .end local v1    # "output":Ljava/lang/String;
    goto :goto_52

    .line 106
    :catch_4f
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_52
    return-object v1
.end method

.method private final isKernelSUAvailable()Z
    .registers 23

    .line 115
    const-string v1, ", property="

    const-string v2, ", modules="

    const-string v3, ", daemon="

    .line 118
    const/4 v4, 0x5

    const/4 v5, 0x0

    :try_start_8
    new-array v0, v4, [Ljava/lang/String;

    const-string v6, "/data/adb/kernelsu.db"

    aput-object v6, v0, v5

    .line 119
    const-string v6, "/data/adb/ksu/"

    const/4 v7, 0x1

    aput-object v6, v0, v7

    .line 118
    nop

    .line 120
    const-string v6, "/data/data/me.weishu.kernelsu/databases/app.db"

    const/4 v8, 0x2

    aput-object v6, v0, v8

    .line 118
    nop

    .line 121
    const-string v6, "/data/data/com.tiann.kernelsu/databases/kernelsu.db"

    const/4 v9, 0x3

    aput-object v6, v0, v9

    .line 118
    nop

    .line 122
    const-string v6, "/data/data/cn.tianshaokuo.top.kernelsu/databases/kernelsu.db"

    const/4 v10, 0x4

    aput-object v6, v0, v10

    .line 118
    nop

    .line 117
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    .line 126
    .local v6, "kernelSuDbPaths":Ljava/util/List;
    move-object v0, v6

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 801
    .local v11, "$i$f$any":I
    instance-of v12, v0, Ljava/util/Collection;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_31} :catch_387

    const-string v13, " 2>/dev/null"

    const-string v14, "ls -la "

    if-eqz v12, :cond_42

    :try_start_37
    move-object v12, v0

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_42

    move v0, v5

    goto :goto_89

    .line 802
    :cond_42
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_46
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_88

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "element$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Ljava/lang/String;

    move-object/from16 v17, v16

    .local v17, "path":Ljava/lang/String;
    const/16 v16, 0x0

    .line 127
    .local v16, "$i$a$-any-RootEnvironmentDetector$isKernelSUAvailable$dbExists$1":I
    sget-object v4, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->INSTANCE:Lcom/pandasu/turbo/util/RootEnvironmentDetector;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v8, v17

    .end local v17    # "path":Ljava/lang/String;
    .local v8, "path":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->execAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_7b} :catch_387

    if-lez v4, :cond_7f

    move v4, v7

    goto :goto_80

    :cond_7f
    move v4, v5

    .line 802
    .end local v8    # "path":Ljava/lang/String;
    .end local v16    # "$i$a$-any-RootEnvironmentDetector$isKernelSUAvailable$dbExists$1":I
    :goto_80
    if-eqz v4, :cond_84

    move v0, v7

    goto :goto_89

    :cond_84
    const/4 v4, 0x5

    const/4 v8, 0x2

    const/4 v9, 0x3

    goto :goto_46

    .line 803
    .end local v15    # "element$iv":Ljava/lang/Object;
    :cond_88
    move v0, v5

    .line 126
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$any":I
    :goto_89
    move v4, v0

    .line 131
    .local v4, "dbExists":Z
    nop

    .line 134
    const/4 v8, 0x0

    :try_start_8c
    new-array v0, v10, [Ljava/lang/String;

    const-string v9, "pidof ksud"

    aput-object v9, v0, v5

    .line 135
    const-string v9, "pgrep ksud"

    aput-object v9, v0, v7

    .line 134
    nop

    .line 136
    const-string v9, "ps -A | grep ksud"

    const/4 v11, 0x2

    aput-object v9, v0, v11

    .line 134
    nop

    .line 137
    const-string v9, "ps -A | grep kernelsu"

    const/4 v11, 0x3

    aput-object v9, v0, v11

    .line 134
    nop

    .line 133
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v9, v0

    .line 140
    .local v9, "daemonCheckCommands":Ljava/util/List;
    move-object v0, v9

    check-cast v0, Ljava/lang/Iterable;

    move-object v11, v0

    .local v11, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 804
    .local v12, "$i$f$any":I
    instance-of v0, v11, Ljava/util/Collection;

    if-eqz v0, :cond_bc

    move-object v0, v11

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_bc

    goto/16 :goto_122

    .line 805
    :cond_bc
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_c0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    .local v16, "element$iv":Ljava/lang/Object;
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_d0} :catch_123

    move-object/from16 v17, v0

    .local v17, "command":Ljava/lang/String;
    const/16 v19, 0x0

    .line 141
    .local v19, "$i$a$-any-RootEnvironmentDetector$isKernelSUAvailable$daemonRunning$1":I
    nop

    .line 142
    :try_start_d5
    sget-object v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->INSTANCE:Lcom/pandasu/turbo/util/RootEnvironmentDetector;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_d7} :catch_10e

    move-object/from16 v10, v17

    .end local v17    # "command":Ljava/lang/String;
    .local v10, "command":Ljava/lang/String;
    :try_start_d9
    invoke-direct {v0, v10}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->execAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "output":Ljava/lang/String;
    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/CharSequence;

    invoke-static/range {v17 .. v17}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_102

    move-object v7, v0

    check-cast v7, Ljava/lang/CharSequence;

    const-string v20, "cannot"

    move-object/from16 v5, v20

    check-cast v5, Ljava/lang/CharSequence;
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_f2} :catch_108

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    const/4 v9, 0x2

    const/4 v10, 0x0

    .end local v9    # "daemonCheckCommands":Ljava/util/List;
    .end local v10    # "command":Ljava/lang/String;
    .local v20, "daemonCheckCommands":Ljava/util/List;
    .local v21, "command":Ljava/lang/String;
    :try_start_f8
    invoke-static {v7, v5, v10, v9, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fc} :catch_100

    if-nez v5, :cond_106

    const/4 v0, 0x1

    goto :goto_114

    .line 144
    .end local v0    # "output":Ljava/lang/String;
    :catch_100
    move-exception v0

    goto :goto_113

    .line 143
    .end local v20    # "daemonCheckCommands":Ljava/util/List;
    .end local v21    # "command":Ljava/lang/String;
    .restart local v0    # "output":Ljava/lang/String;
    .restart local v9    # "daemonCheckCommands":Ljava/util/List;
    .restart local v10    # "command":Ljava/lang/String;
    :cond_102
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .end local v9    # "daemonCheckCommands":Ljava/util/List;
    .end local v10    # "command":Ljava/lang/String;
    .restart local v20    # "daemonCheckCommands":Ljava/util/List;
    .restart local v21    # "command":Ljava/lang/String;
    :cond_106
    const/4 v0, 0x0

    goto :goto_114

    .line 144
    .end local v0    # "output":Ljava/lang/String;
    .end local v20    # "daemonCheckCommands":Ljava/util/List;
    .end local v21    # "command":Ljava/lang/String;
    .restart local v9    # "daemonCheckCommands":Ljava/util/List;
    .restart local v10    # "command":Ljava/lang/String;
    :catch_108
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .end local v9    # "daemonCheckCommands":Ljava/util/List;
    .end local v10    # "command":Ljava/lang/String;
    .restart local v20    # "daemonCheckCommands":Ljava/util/List;
    .restart local v21    # "command":Ljava/lang/String;
    goto :goto_113

    .end local v20    # "daemonCheckCommands":Ljava/util/List;
    .end local v21    # "command":Ljava/lang/String;
    .restart local v9    # "daemonCheckCommands":Ljava/util/List;
    .restart local v17    # "command":Ljava/lang/String;
    :catch_10e
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v17

    .line 145
    .end local v9    # "daemonCheckCommands":Ljava/util/List;
    .end local v17    # "command":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "daemonCheckCommands":Ljava/util/List;
    .restart local v21    # "command":Ljava/lang/String;
    :goto_113
    const/4 v0, 0x0

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_114
    nop

    .line 805
    .end local v19    # "$i$a$-any-RootEnvironmentDetector$isKernelSUAvailable$daemonRunning$1":I
    .end local v21    # "command":Ljava/lang/String;
    if-eqz v0, :cond_119

    const/4 v5, 0x1

    goto :goto_122

    :cond_119
    move-object/from16 v9, v20

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x4

    goto :goto_c0

    .line 806
    .end local v16    # "element$iv":Ljava/lang/Object;
    .end local v20    # "daemonCheckCommands":Ljava/util/List;
    .restart local v9    # "daemonCheckCommands":Ljava/util/List;
    :cond_11f
    move-object/from16 v20, v9

    .end local v9    # "daemonCheckCommands":Ljava/util/List;
    .restart local v20    # "daemonCheckCommands":Ljava/util/List;
    const/4 v5, 0x0

    .end local v11    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$any":I
    .end local v20    # "daemonCheckCommands":Ljava/util/List;
    :goto_122
    goto :goto_125

    .line 148
    :catch_123
    move-exception v0

    .line 149
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_125
    nop

    .line 154
    .local v5, "daemonRunning":Z
    const/4 v7, 0x4

    :try_start_127
    new-array v0, v7, [Ljava/lang/String;

    const-string v7, "/data/adb/modules/kernelsu"

    const/4 v9, 0x0

    aput-object v7, v0, v9

    .line 155
    const-string v7, "/data/adb/modules/KernelSU"

    const/4 v9, 0x1

    aput-object v7, v0, v9

    .line 154
    nop

    .line 156
    const-string v7, "/data/adb/modules/.core/KernelSU"

    const/4 v9, 0x2

    aput-object v7, v0, v9

    .line 154
    nop

    .line 157
    const-string v7, "/data/adb/ksu"

    const/4 v9, 0x3

    aput-object v7, v0, v9

    .line 154
    nop

    .line 153
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 158
    nop

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 807
    .local v7, "$i$f$any":I
    instance-of v9, v0, Ljava/util/Collection;

    if-eqz v9, :cond_157

    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_157

    const/4 v0, 0x0

    goto :goto_196

    .line 808
    :cond_157
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_15b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_195

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .local v11, "path":Ljava/lang/String;
    const/4 v12, 0x0

    .line 159
    .local v12, "$i$a$-any-RootEnvironmentDetector$isKernelSUAvailable$modulesExist$1":I
    sget-object v15, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->INSTANCE:Lcom/pandasu/turbo/util/RootEnvironmentDetector;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v15, v8}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->execAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_18a} :catch_387

    if-lez v8, :cond_18e

    const/4 v8, 0x1

    goto :goto_18f

    :cond_18e
    const/4 v8, 0x0

    .line 808
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "$i$a$-any-RootEnvironmentDetector$isKernelSUAvailable$modulesExist$1":I
    :goto_18f
    if-eqz v8, :cond_193

    const/4 v0, 0x1

    goto :goto_196

    :cond_193
    const/4 v8, 0x0

    goto :goto_15b

    .line 809
    .end local v10    # "element$iv":Ljava/lang/Object;
    :cond_195
    const/4 v0, 0x0

    .line 158
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$any":I
    :goto_196
    nop

    .line 153
    move v7, v0

    .line 163
    .local v7, "modulesExist":Z
    nop

    .line 166
    const/4 v8, 0x5

    :try_start_19a
    new-array v0, v8, [Ljava/lang/String;

    const-string v8, "which ksu"
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_19e} :catch_210

    const/4 v10, 0x0

    :try_start_19f
    aput-object v8, v0, v10

    .line 167
    const-string v8, "command -v ksu"
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1a3} :catch_20e

    const/4 v9, 0x1

    :try_start_1a4
    aput-object v8, v0, v9
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1a6} :catch_20a

    .line 166
    nop

    .line 168
    :try_start_1a7
    const-string v8, "ls -la /system/bin/ | grep ksu"

    const/4 v9, 0x2

    aput-object v8, v0, v9

    .line 166
    nop

    .line 169
    const-string v8, "ls -la /system/xbin/ | grep ksu"

    const/4 v9, 0x3

    aput-object v8, v0, v9

    .line 166
    nop

    .line 170
    const-string v8, "ls -la /data/adb/ksud"

    const/4 v9, 0x4

    aput-object v8, v0, v9

    .line 166
    nop

    .line 165
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    .line 173
    .local v8, "commandCheckCommands":Ljava/util/List;
    move-object v0, v8

    check-cast v0, Ljava/lang/Iterable;

    move-object v9, v0

    .local v9, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 810
    .local v11, "$i$f$any":I
    instance-of v0, v9, Ljava/util/Collection;

    if-eqz v0, :cond_1d4

    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d4

    move v0, v10

    const/16 v17, 0x1

    goto :goto_209

    .line 811
    :cond_1d4
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1d8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_206

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    .local v13, "element$iv":Ljava/lang/Object;
    move-object v0, v13

    check-cast v0, Ljava/lang/String;
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1e6} :catch_20e

    move-object v14, v0

    .local v14, "command":Ljava/lang/String;
    const/4 v15, 0x0

    .line 174
    .local v15, "$i$a$-any-RootEnvironmentDetector$isKernelSUAvailable$ksuCommandExists$1":I
    nop

    .line 175
    :try_start_1e9
    sget-object v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->INSTANCE:Lcom/pandasu/turbo/util/RootEnvironmentDetector;

    invoke-direct {v0, v14}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->execAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "output":Ljava/lang/String;
    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/CharSequence;

    invoke-static/range {v18 .. v18}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v18
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_1f7} :catch_1fc

    const/16 v17, 0x1

    .end local v0    # "output":Ljava/lang/String;
    xor-int/lit8 v0, v18, 0x1

    goto :goto_200

    .line 177
    :catch_1fc
    move-exception v0

    const/16 v17, 0x1

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    move v0, v10

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_200
    nop

    .line 811
    .end local v14    # "command":Ljava/lang/String;
    .end local v15    # "$i$a$-any-RootEnvironmentDetector$isKernelSUAvailable$ksuCommandExists$1":I
    if-eqz v0, :cond_1d8

    move/from16 v0, v17

    goto :goto_209

    .line 812
    .end local v13    # "element$iv":Ljava/lang/Object;
    :cond_206
    const/16 v17, 0x1

    move v0, v10

    .end local v8    # "commandCheckCommands":Ljava/util/List;
    .end local v9    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$any":I
    :goto_209
    goto :goto_215

    .line 181
    :catch_20a
    move-exception v0

    move/from16 v17, v9

    goto :goto_214

    :catch_20e
    move-exception v0

    goto :goto_212

    :catch_210
    move-exception v0

    const/4 v10, 0x0

    :goto_212
    const/16 v17, 0x1

    .line 182
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_214
    move v0, v10

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_215
    move v8, v0

    .line 186
    .local v8, "ksuCommandExists":Z
    nop

    .line 187
    :try_start_217
    const-string v0, "getprop ro.kernel.android.kernelsu"
    :try_end_219
    .catch Ljava/lang/Exception; {:try_start_217 .. :try_end_219} :catch_246

    move-object/from16 v9, p0

    :try_start_21b
    invoke-direct {v9, v0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->execAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "output":Ljava/lang/String;
    const-string v11, "1"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_241

    const-string v11, "true"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_241

    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_236} :catch_244

    if-lez v11, :cond_23b

    move/from16 v11, v17

    goto :goto_23c

    :cond_23b
    move v11, v10

    :goto_23c
    if-eqz v11, :cond_23f

    goto :goto_241

    :cond_23f
    move v0, v10

    goto :goto_24a

    :cond_241
    :goto_241
    move/from16 v0, v17

    goto :goto_24a

    .line 189
    .end local v0    # "output":Ljava/lang/String;
    :catch_244
    move-exception v0

    goto :goto_249

    :catch_246
    move-exception v0

    move-object/from16 v9, p0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    :goto_249
    move v0, v10

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_24a
    move v11, v0

    .line 194
    .local v11, "propertyCheck":Z
    if-eqz v4, :cond_2e5

    .line 195
    nop

    .line 197
    :try_start_24e
    move-object v0, v6

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 813
    .local v12, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_256
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_275

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    .local v15, "it":Ljava/lang/String;
    const/16 v18, 0x0

    .line 197
    .local v18, "$i$a$-firstOrNull-RootEnvironmentDetector$isKernelSUAvailable$hasDbAccess$dbPath$1":I
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    .line 813
    .end local v15    # "it":Ljava/lang/String;
    .end local v18    # "$i$a$-firstOrNull-RootEnvironmentDetector$isKernelSUAvailable$hasDbAccess$dbPath$1":I
    if-eqz v10, :cond_273

    move-object/from16 v16, v14

    goto :goto_277

    :cond_273
    const/4 v10, 0x0

    goto :goto_256

    .line 814
    .end local v14    # "element$iv":Ljava/lang/Object;
    :cond_275
    const/16 v16, 0x0

    .line 197
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$firstOrNull":I
    :goto_277
    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    .line 198
    .local v0, "dbPath":Ljava/lang/String;
    if-eqz v0, :cond_2e0

    .line 199
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "su -c \'sqlite3 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " .tables 2>/dev/null\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v10

    .line 200
    .local v10, "process":Ljava/lang/Process;
    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    const-string v13, "getInputStream(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v14, Ljava/io/Reader;

    instance-of v12, v14, Ljava/io/BufferedReader;

    if-eqz v12, :cond_2b7

    check-cast v14, Ljava/io/BufferedReader;

    goto :goto_2bf

    :cond_2b7
    new-instance v12, Ljava/io/BufferedReader;

    const/16 v13, 0x2000

    invoke-direct {v12, v14, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v14, v12

    :goto_2bf
    check-cast v14, Ljava/io/Reader;

    invoke-static {v14}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 201
    .local v12, "output":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/Process;->waitFor()I

    .line 202
    move-object v13, v12

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13
    :try_end_2d9
    .catch Ljava/lang/Exception; {:try_start_24e .. :try_end_2d9} :catch_2e2

    if-lez v13, :cond_2de

    move/from16 v10, v17

    goto :goto_2e1

    :cond_2de
    const/4 v10, 0x0

    .end local v10    # "process":Ljava/lang/Process;
    .end local v12    # "output":Ljava/lang/String;
    goto :goto_2e1

    .line 203
    :cond_2e0
    const/4 v10, 0x0

    .end local v0    # "dbPath":Ljava/lang/String;
    :goto_2e1
    goto :goto_2e4

    .line 204
    :catch_2e2
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2e4
    goto :goto_2e6

    .line 207
    :cond_2e5
    const/4 v10, 0x0

    .line 194
    :goto_2e6
    move v0, v10

    .line 209
    .local v0, "hasDbAccess":Z
    :try_start_2e7
    sget-object v10, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "KernelSU check: db="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ksuCommand="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", hasDbAccess="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 212
    if-nez v4, :cond_338

    if-nez v5, :cond_338

    if-nez v8, :cond_338

    if-nez v7, :cond_338

    if-eqz v11, :cond_336

    goto :goto_338

    :cond_336
    const/16 v17, 0x0

    :cond_338
    :goto_338
    move/from16 v10, v17

    .line 213
    .local v10, "isAvailable":Z
    if-eqz v10, :cond_345

    if-nez v0, :cond_345

    .line 214
    sget-object v12, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v13, "KernelSU exists but no database access. Root operations may be limited."

    invoke-virtual {v12, v13}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 218
    :cond_345
    if-eqz v10, :cond_383

    if-nez v0, :cond_383

    .line 219
    sget-object v12, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "KernelSU detected but database access failed. Evidence: db="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ", cmd="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_383
    .catch Ljava/lang/Exception; {:try_start_2e7 .. :try_end_383} :catch_385

    .line 222
    :cond_383
    move v5, v10

    .end local v0    # "hasDbAccess":Z
    .end local v4    # "dbExists":Z
    .end local v5    # "daemonRunning":Z
    .end local v6    # "kernelSuDbPaths":Ljava/util/List;
    .end local v7    # "modulesExist":Z
    .end local v8    # "ksuCommandExists":Z
    .end local v10    # "isAvailable":Z
    .end local v11    # "propertyCheck":Z
    goto :goto_395

    .line 223
    :catch_385
    move-exception v0

    goto :goto_38a

    :catch_387
    move-exception v0

    move-object/from16 v9, p0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    :goto_38a
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "Failed to check KernelSU"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    const/4 v5, 0x0

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_395
    return v5
.end method

.method private final isMagiskAvailable()Z
    .registers 20

    .line 233
    move-object/from16 v1, p0

    const-string v2, ", mount="

    const-string v3, ", property="

    const-string v4, ", binary="

    const-string v5, ", modules="

    const-string v6, ", daemon="

    .line 235
    const/4 v7, 0x0

    :try_start_d
    const-string v0, "ls -la /data/adb/magisk.db 2>/dev/null"

    invoke-direct {v1, v0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->execAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_21f

    const/4 v8, 0x1

    if-lez v0, :cond_1e

    move v0, v8

    goto :goto_1f

    :cond_1e
    move v0, v7

    :goto_1f
    move v9, v0

    .line 238
    .local v9, "dbExists":Z
    nop

    .line 241
    const/4 v10, 0x2

    const/4 v11, 0x3

    :try_start_23
    new-array v0, v11, [Ljava/lang/String;

    const-string v12, "pidof magiskd"

    aput-object v12, v0, v7

    .line 242
    const-string v12, "pgrep magiskd"

    aput-object v12, v0, v8

    .line 241
    nop

    .line 243
    const-string v12, "ps -A | grep magiskd"

    aput-object v12, v0, v10

    .line 241
    nop

    .line 240
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v12, v0

    .line 246
    .local v12, "daemonCheckCommands":Ljava/util/List;
    move-object v0, v12

    check-cast v0, Ljava/lang/Iterable;

    move-object v13, v0

    .local v13, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 815
    .local v14, "$i$f$any":I
    instance-of v0, v13, Ljava/util/Collection;

    if-eqz v0, :cond_4c

    move-object v0, v13

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    move v0, v7

    goto :goto_86

    .line 816
    :cond_4c
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_50
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    .local v16, "element$iv":Ljava/lang/Object;
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_60} :catch_87

    move-object/from16 v17, v0

    .local v17, "command":Ljava/lang/String;
    const/16 v18, 0x0

    .line 247
    .local v18, "$i$a$-any-RootEnvironmentDetector$isMagiskAvailable$daemonRunning$1":I
    nop

    .line 248
    :try_start_65
    sget-object v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->INSTANCE:Lcom/pandasu/turbo/util/RootEnvironmentDetector;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_67} :catch_7a

    move-object/from16 v11, v17

    .end local v17    # "command":Ljava/lang/String;
    .local v11, "command":Ljava/lang/String;
    :try_start_69
    invoke-direct {v0, v11}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->execAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "output":Ljava/lang/String;
    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/CharSequence;

    invoke-static/range {v17 .. v17}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v17
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_75} :catch_78

    .end local v0    # "output":Ljava/lang/String;
    xor-int/lit8 v0, v17, 0x1

    goto :goto_7e

    .line 250
    :catch_78
    move-exception v0

    goto :goto_7d

    .end local v11    # "command":Ljava/lang/String;
    .restart local v17    # "command":Ljava/lang/String;
    :catch_7a
    move-exception v0

    move-object/from16 v11, v17

    .line 251
    .end local v17    # "command":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v11    # "command":Ljava/lang/String;
    :goto_7d
    move v0, v7

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7e
    nop

    .line 816
    .end local v11    # "command":Ljava/lang/String;
    .end local v18    # "$i$a$-any-RootEnvironmentDetector$isMagiskAvailable$daemonRunning$1":I
    if-eqz v0, :cond_83

    move v0, v8

    goto :goto_86

    :cond_83
    const/4 v11, 0x3

    goto :goto_50

    .line 817
    .end local v16    # "element$iv":Ljava/lang/Object;
    :cond_85
    move v0, v7

    .end local v12    # "daemonCheckCommands":Ljava/util/List;
    .end local v13    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$any":I
    :goto_86
    goto :goto_89

    .line 254
    :catch_87
    move-exception v0

    .line 255
    .restart local v0    # "e":Ljava/lang/Exception;
    move v0, v7

    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_89
    move v11, v0

    .line 259
    .local v11, "daemonRunning":Z
    :try_start_8a
    const-string v0, "ls -la /data/adb/modules/ 2>/dev/null"

    invoke-direct {v1, v0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->execAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_96} :catch_21f

    if-lez v0, :cond_9a

    move v0, v8

    goto :goto_9b

    :cond_9a
    move v0, v7

    :goto_9b
    move v12, v0

    .line 262
    .local v12, "modulesExist":Z
    nop

    .line 265
    const/4 v0, 0x5

    :try_start_9e
    new-array v0, v0, [Ljava/lang/String;

    const-string v13, "which magisk"

    aput-object v13, v0, v7

    .line 266
    const-string v13, "command -v magisk"

    aput-object v13, v0, v8

    .line 265
    nop

    .line 267
    const-string v13, "ls -la /system/bin/ | grep magisk"

    aput-object v13, v0, v10

    .line 265
    nop

    .line 268
    const-string v10, "ls -la /system/xbin/ | grep magisk"

    const/4 v13, 0x3

    aput-object v10, v0, v13

    .line 265
    nop

    .line 269
    const-string v10, "ls -la /data/adb/magisk 2>/dev/null"

    const/4 v13, 0x4

    aput-object v10, v0, v13

    .line 265
    nop

    .line 264
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v10, v0

    .line 272
    .local v10, "binaryCheckCommands":Ljava/util/List;
    move-object v0, v10

    check-cast v0, Ljava/lang/Iterable;

    move-object v13, v0

    .restart local v13    # "$this$any$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 818
    .restart local v14    # "$i$f$any":I
    instance-of v0, v13, Ljava/util/Collection;

    if-eqz v0, :cond_d2

    move-object v0, v13

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d2

    goto :goto_10c

    .line 819
    :cond_d2
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_d6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    .restart local v16    # "element$iv":Ljava/lang/Object;
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_e6} :catch_10d

    move-object/from16 v17, v0

    .restart local v17    # "command":Ljava/lang/String;
    const/16 v18, 0x0

    .line 273
    .local v18, "$i$a$-any-RootEnvironmentDetector$isMagiskAvailable$magiskBinaryExists$1":I
    nop

    .line 274
    :try_start_eb
    sget-object v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->INSTANCE:Lcom/pandasu/turbo/util/RootEnvironmentDetector;
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ed} :catch_100

    move-object/from16 v7, v17

    .end local v17    # "command":Ljava/lang/String;
    .local v7, "command":Ljava/lang/String;
    :try_start_ef
    invoke-direct {v0, v7}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->execAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "output":Ljava/lang/String;
    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/CharSequence;

    invoke-static/range {v17 .. v17}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v17
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_fb} :catch_fe

    .end local v0    # "output":Ljava/lang/String;
    xor-int/lit8 v0, v17, 0x1

    goto :goto_104

    .line 276
    :catch_fe
    move-exception v0

    goto :goto_103

    .end local v7    # "command":Ljava/lang/String;
    .restart local v17    # "command":Ljava/lang/String;
    :catch_100
    move-exception v0

    move-object/from16 v7, v17

    .line 277
    .end local v17    # "command":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v7    # "command":Ljava/lang/String;
    :goto_103
    const/4 v0, 0x0

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_104
    nop

    .line 819
    .end local v7    # "command":Ljava/lang/String;
    .end local v18    # "$i$a$-any-RootEnvironmentDetector$isMagiskAvailable$magiskBinaryExists$1":I
    if-eqz v0, :cond_109

    move v7, v8

    goto :goto_10c

    :cond_109
    const/4 v7, 0x0

    goto :goto_d6

    .line 820
    .end local v16    # "element$iv":Ljava/lang/Object;
    :cond_10b
    const/4 v7, 0x0

    .end local v10    # "binaryCheckCommands":Ljava/util/List;
    .end local v13    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$any":I
    :goto_10c
    goto :goto_10f

    .line 280
    :catch_10d
    move-exception v0

    .line 281
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10f
    nop

    .line 285
    .local v7, "magiskBinaryExists":Z
    nop

    .line 286
    :try_start_111
    const-string v0, "getprop ro.boot.magisk"

    invoke-direct {v1, v0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->execAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "output":Ljava/lang/String;
    const-string v10, "1"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_138

    const-string v10, "true"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_138

    move-object v10, v0

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_12e} :catch_13a

    if-lez v10, :cond_132

    move v10, v8

    goto :goto_133

    :cond_132
    const/4 v10, 0x0

    :goto_133
    if-eqz v10, :cond_136

    goto :goto_138

    :cond_136
    const/4 v0, 0x0

    goto :goto_13c

    :cond_138
    :goto_138
    move v0, v8

    goto :goto_13c

    .line 288
    .end local v0    # "output":Ljava/lang/String;
    :catch_13a
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 285
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13c
    move v10, v0

    .line 293
    .local v10, "propertyCheck":Z
    nop

    .line 294
    :try_start_13e
    const-string v0, "mount | grep -i magisk"

    invoke-direct {v1, v0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->execAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "output":Ljava/lang/String;
    move-object v13, v0

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_14b} :catch_151

    if-lez v13, :cond_14f

    move v0, v8

    goto :goto_153

    :cond_14f
    const/4 v0, 0x0

    goto :goto_153

    .line 296
    .end local v0    # "output":Ljava/lang/String;
    :catch_151
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_153
    move v13, v0

    .line 301
    .local v13, "mountCheck":Z
    if-eqz v9, :cond_16d

    .line 302
    nop

    .line 303
    :try_start_157
    const-string v0, "sqlite3 /data/adb/magisk.db .tables 2>/dev/null"

    invoke-direct {v1, v0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->execAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "output":Ljava/lang/String;
    move-object v14, v0

    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_164} :catch_16a

    if-lez v14, :cond_168

    move v0, v8

    goto :goto_16c

    :cond_168
    const/4 v0, 0x0

    goto :goto_16c

    .line 305
    .end local v0    # "output":Ljava/lang/String;
    :catch_16a
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16c
    goto :goto_16e

    .line 308
    :cond_16d
    const/4 v0, 0x0

    .line 301
    :goto_16e
    nop

    .line 310
    .local v0, "hasDbAccess":Z
    :try_start_16f
    sget-object v14, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Magisk check: db="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, ", hasDbAccess="

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 313
    if-nez v9, :cond_1c8

    if-nez v11, :cond_1c8

    if-nez v7, :cond_1c8

    if-nez v12, :cond_1c8

    if-nez v10, :cond_1c8

    if-eqz v13, :cond_1c6

    goto :goto_1c8

    :cond_1c6
    const/4 v8, 0x0

    goto :goto_1c9

    :cond_1c8
    :goto_1c8
    const/4 v8, 0x1

    .line 315
    .local v8, "isAvailable":Z
    :goto_1c9
    if-eqz v8, :cond_1d4

    if-nez v0, :cond_1d4

    .line 316
    sget-object v14, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v15, "Magisk exists but no database access. Root operations may be limited."

    invoke-virtual {v14, v15}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 320
    :cond_1d4
    if-eqz v8, :cond_21b

    if-nez v0, :cond_21b

    .line 321
    sget-object v14, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    .end local v0    # "hasDbAccess":Z
    .local v16, "hasDbAccess":Z
    const-string v0, "Magisk detected but database access failed. Evidence: db="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_21a
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_21a} :catch_21f

    goto :goto_21d

    .line 320
    .end local v16    # "hasDbAccess":Z
    .restart local v0    # "hasDbAccess":Z
    :cond_21b
    move/from16 v16, v0

    .line 324
    .end local v0    # "hasDbAccess":Z
    .restart local v16    # "hasDbAccess":Z
    :goto_21d
    move v7, v8

    .end local v7    # "magiskBinaryExists":Z
    .end local v8    # "isAvailable":Z
    .end local v9    # "dbExists":Z
    .end local v10    # "propertyCheck":Z
    .end local v11    # "daemonRunning":Z
    .end local v12    # "modulesExist":Z
    .end local v13    # "mountCheck":Z
    .end local v16    # "hasDbAccess":Z
    goto :goto_22b

    .line 325
    :catch_21f
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Failed to check Magisk"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    const/4 v7, 0x0

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_22b
    return v7
.end method

.method private final isPandaSUStandalone()Z
    .registers 3

    .line 335
    nop

    .line 337
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/pandasu/pandasu.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    goto :goto_10

    .line 338
    :catch_d
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    move v0, v1

    .line 335
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    return v0
.end method

.method private final isZygiskModeAvailable()Z
    .registers 9

    .line 347
    nop

    .line 349
    nop

    .line 350
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_4
    const-string v2, "getprop ro.dalvik.vm.native.bridge"

    invoke-direct {p0, v2}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->execAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "output":Ljava/lang/String;
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "zygisk"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "Zygisk"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v1, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_2b

    if-eqz v3, :cond_27

    goto :goto_29

    :cond_27
    move v2, v1

    goto :goto_2d

    :cond_29
    :goto_29
    move v2, v0

    goto :goto_2d

    .line 352
    .end local v2    # "output":Ljava/lang/String;
    :catch_2b
    move-exception v2

    .line 353
    .local v2, "e":Ljava/lang/Exception;
    move v2, v1

    .line 349
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2d
    nop

    .line 357
    .local v2, "zygiskProperty":Z
    nop

    .line 358
    :try_start_2f
    const-string v3, "ls -la /data/adb/zygisk 2>/dev/null"

    invoke-direct {p0, v3}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->execAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_3f

    move v3, v0

    goto :goto_40

    :cond_3f
    move v3, v1

    :goto_40
    if-nez v3, :cond_58

    .line 359
    const-string v3, "ls -la /data/adb/modules/zygisk 2>/dev/null"

    invoke-direct {p0, v3}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->execAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4e} :catch_5a

    if-lez v3, :cond_52

    move v3, v0

    goto :goto_53

    :cond_52
    move v3, v1

    :goto_53
    if-eqz v3, :cond_56

    goto :goto_58

    :cond_56
    move v3, v1

    goto :goto_5c

    :cond_58
    :goto_58
    move v3, v0

    goto :goto_5c

    .line 360
    :catch_5a
    move-exception v3

    .line 361
    .local v3, "e":Ljava/lang/Exception;
    move v3, v1

    .line 357
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_5c
    nop

    .line 365
    .local v3, "zygiskModulesExist":Z
    nop

    .line 366
    :try_start_5e
    const-string v4, "ps -A | grep -i zygisk"

    invoke-direct {p0, v4}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->execAsRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "output":Ljava/lang/String;
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6b} :catch_6e

    .end local v4    # "output":Ljava/lang/String;
    xor-int/lit8 v4, v5, 0x1

    goto :goto_70

    .line 368
    :catch_6e
    move-exception v4

    .line 369
    .local v4, "e":Ljava/lang/Exception;
    move v4, v1

    .line 365
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_70
    nop

    .line 372
    .local v4, "zygiskProcessExists":Z
    :try_start_71
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Zygisk check: property="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", modules="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", process="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_9d} :catch_a7

    .line 375
    if-nez v2, :cond_a5

    if-nez v3, :cond_a5

    if-eqz v4, :cond_a4

    goto :goto_a5

    :cond_a4
    move v0, v1

    .end local v2    # "zygiskProperty":Z
    .end local v3    # "zygiskModulesExist":Z
    .end local v4    # "zygiskProcessExists":Z
    :cond_a5
    :goto_a5
    move v1, v0

    goto :goto_b3

    .line 376
    :catch_a7
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Failed to check Zygisk mode"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 378
    nop

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b3
    return v1
.end method

.method private final showAuthorizationFixGuide(Landroid/content/Context;Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootMode"    # Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .line 590
    invoke-virtual {p0, p2}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->getRootManagerName(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "managerName":Ljava/lang/String;
    sget-object v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "5. \u8fd4\u56de PandaSU\uff0c\u70b9\u51fb\u91cd\u65b0\u68c0\u6d4b"

    const-string v3, "4. \u70b9\u51fb\u5f00\u5173\uff0c\u6388\u4e88 Root \u6743\u9650"

    const-string v4, "3. \u627e\u5230 PandaSU \u5e94\u7528"

    const-string v5, "2. \u70b9\u51fb\u300c\u8d85\u7ea7\u7528\u6237\u300d\u9009\u9879"

    packed-switch v1, :pswitch_data_98

    .line 606
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_41

    .line 600
    :pswitch_1c
    nop

    .line 601
    nop

    .line 600
    nop

    .line 602
    nop

    .line 600
    nop

    .line 603
    nop

    .line 600
    nop

    .line 604
    const-string v1, "1. \u6253\u5f00 Magisk \u5e94\u7528"

    filled-new-array {v1, v5, v4, v3, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 600
    nop

    .line 599
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_41

    .line 593
    :pswitch_2f
    nop

    .line 594
    nop

    .line 593
    nop

    .line 595
    nop

    .line 593
    nop

    .line 596
    nop

    .line 593
    nop

    .line 597
    const-string v1, "1. \u6253\u5f00 KernelSU \u5e94\u7528"

    filled-new-array {v1, v5, v4, v3, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 593
    nop

    .line 592
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 591
    :goto_41
    nop

    .line 609
    .local v1, "steps":Ljava/util/List;
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_97

    .line 611
    const-string v2, "PandaSU \u6388\u6743\u4fee\u590d\u6307\u5357"

    .line 612
    .local v2, "notificationTitle":Ljava/lang/String;
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    const-string v4, "\n"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8bf7\u6309\u4ee5\u4e0b\u6b65\u9aa4\u5728 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u4e2d\u6388\u4e88\u6743\u9650\uff1a\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, "notificationText":Ljava/lang/String;
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Authorization fix guide: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pandasu/turbo/utils/Logger;->i(Ljava/lang/String;)V

    .line 619
    .end local v2    # "notificationTitle":Ljava/lang/String;
    .end local v3    # "notificationText":Ljava/lang/String;
    :cond_97
    return-void

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public final detectRootMode()Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    .registers 6

    .line 32
    nop

    .line 34
    :try_start_1
    invoke-virtual {p0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->hasRootPermission()Z

    move-result v0

    if-nez v0, :cond_11

    .line 35
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "No root permission detected"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->UNKNOWN:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    return-object v0

    .line 40
    :cond_11
    invoke-direct {p0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->isKernelSUAvailable()Z

    move-result v0

    .line 41
    .local v0, "isKernelSU":Z
    invoke-direct {p0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->isMagiskAvailable()Z

    move-result v1

    .line 43
    .local v1, "isMagisk":Z
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Root detection results: KernelSU="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Magisk="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 46
    nop

    .line 47
    if-eqz v0, :cond_4a

    if-eqz v1, :cond_4a

    .line 49
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Both KernelSU and Magisk detected, using KernelSU mode"

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 50
    sget-object v2, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->KERNELSU:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    goto :goto_a2

    .line 52
    :cond_4a
    if-eqz v0, :cond_56

    .line 53
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "KernelSU detected"

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 54
    sget-object v2, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->KERNELSU:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    goto :goto_a2

    .line 56
    :cond_56
    if-eqz v1, :cond_62

    .line 57
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Magisk detected"

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 58
    sget-object v2, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->MAGISK:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    goto :goto_a2

    .line 60
    :cond_62
    invoke-direct {p0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->isPandaSUStandalone()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 61
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "PandaSU standalone mode detected"

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 62
    sget-object v2, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->STANDALONE:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    goto :goto_a2

    .line 66
    :cond_72
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Root permission exists but no manager detected. Checking for special cases..."

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->isLSPosedModuleActive()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 70
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "LSPosed module active, using LSPosed mode"

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 71
    sget-object v2, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->STANDALONE:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    return-object v2

    .line 75
    :cond_89
    invoke-direct {p0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->isZygiskModeAvailable()Z

    move-result v2

    if-eqz v2, :cond_99

    .line 76
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Zygisk mode detected"

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 77
    sget-object v2, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->STANDALONE:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    return-object v2

    .line 81
    :cond_99
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Using standalone mode as fallback"

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 82
    sget-object v2, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->STANDALONE:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a2} :catch_a3

    .end local v0    # "isKernelSU":Z
    .end local v1    # "isMagisk":Z
    :goto_a2
    goto :goto_c3

    .line 85
    :catch_a3
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "Failed to detect root mode"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    invoke-virtual {p0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->hasRootPermission()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 89
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v2, "Exception occurred but root permission exists, using standalone mode as safe fallback"

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 90
    sget-object v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->STANDALONE:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    move-object v2, v1

    goto :goto_c2

    .line 92
    :cond_bf
    sget-object v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->UNKNOWN:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    move-object v2, v1

    :goto_c2
    nop

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c3
    return-object v2
.end method

.method public final fixAuthorizationIssue(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->detectRootMode()Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    move-result-object v0

    .line 565
    .local v0, "rootMode":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    sget-object v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_40

    .line 580
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot fix authorization for root mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 581
    const/4 v1, 0x0

    goto :goto_3f

    .line 568
    :pswitch_2e
    invoke-virtual {p0, p1, v0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->openRootManager(Landroid/content/Context;Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;)Z

    move-result v1

    .line 570
    .local v1, "success":Z
    if-eqz v1, :cond_3e

    .line 571
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Opened root manager for authorization fix"

    invoke-virtual {v2, v3}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 574
    invoke-direct {p0, p1, v0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->showAuthorizationFixGuide(Landroid/content/Context;Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;)V

    .line 577
    :cond_3e
    nop

    .line 565
    .end local v1    # "success":Z
    :goto_3f
    return v1

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method public final getAuthorizationStatus(Landroid/content/Context;)Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;
    .registers 35
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "context"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->detectRootMode()Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    move-result-object v15

    .line 647
    .local v15, "rootMode":Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;
    invoke-virtual/range {p0 .. p0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->hasRootPermissionFast()Z

    move-result v14

    .line 648
    .local v14, "hasPermission":Z
    invoke-virtual/range {p0 .. p0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->isLSPosedModuleActive()Z

    move-result v16

    .line 651
    .local v16, "lsposedActive":Z
    invoke-virtual {v1, v15}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->getRootManagerPackage(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;)Ljava/lang/String;

    move-result-object v13

    .line 652
    .local v13, "managerPackage":Ljava/lang/String;
    invoke-virtual {v1, v15}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->getRootManagerName(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;)Ljava/lang/String;

    move-result-object v12

    .line 653
    .local v12, "managerName":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v13, :cond_31

    move-object v4, v13

    .local v4, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 654
    .local v5, "$i$a$-let-RootEnvironmentDetector$getAuthorizationStatus$isManagerInstalled$1":I
    nop

    .line 655
    :try_start_23
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_2d

    .line 656
    const/4 v0, 0x1

    move v3, v0

    goto :goto_2f

    .line 657
    :catch_2d
    move-exception v0

    .line 658
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 654
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2f
    nop

    .line 653
    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-let-RootEnvironmentDetector$getAuthorizationStatus$isManagerInstalled$1":I
    goto :goto_32

    .line 660
    :cond_31
    nop

    .line 653
    :goto_32
    move v0, v3

    .line 663
    .local v0, "isManagerInstalled":Z
    invoke-direct {v1, v15, v14, v13, v2}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->checkUpdateRelatedFailure(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v29

    .line 665
    .local v29, "isUpdatedFailure":Z
    nop

    .line 667
    if-eqz v14, :cond_64

    .line 668
    new-instance v17, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    .line 669
    nop

    .line 670
    const/4 v5, 0x1

    .line 671
    const-string v6, "\u5df2\u83b7\u5f97 Root \u6743\u9650\nPandaSU \u53ef\u4ee5\u6b63\u5e38\u5de5\u4f5c"

    .line 672
    const/4 v7, 0x1

    .line 668
    const/4 v8, 0x0

    .line 673
    nop

    .line 674
    nop

    .line 675
    nop

    .line 668
    const/16 v18, 0x0

    const/16 v19, 0x110

    const/16 v20, 0x0

    move-object/from16 v3, v17

    move-object v4, v15

    move-object v9, v13

    move-object v10, v12

    move v11, v0

    move-object/from16 v30, v12

    .end local v12    # "managerName":Ljava/lang/String;
    .local v30, "managerName":Ljava/lang/String;
    move/from16 v12, v18

    move-object/from16 v31, v13

    .end local v13    # "managerPackage":Ljava/lang/String;
    .local v31, "managerPackage":Ljava/lang/String;
    move/from16 v13, v19

    move/from16 v32, v14

    .end local v14    # "hasPermission":Z
    .local v32, "hasPermission":Z
    move-object/from16 v14, v20

    invoke-direct/range {v3 .. v14}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;-><init>(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v30

    goto/16 :goto_177

    .line 679
    .end local v30    # "managerName":Ljava/lang/String;
    .end local v31    # "managerPackage":Ljava/lang/String;
    .end local v32    # "hasPermission":Z
    .restart local v12    # "managerName":Ljava/lang/String;
    .restart local v13    # "managerPackage":Ljava/lang/String;
    .restart local v14    # "hasPermission":Z
    :cond_64
    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v32, v14

    .end local v12    # "managerName":Ljava/lang/String;
    .end local v13    # "managerPackage":Ljava/lang/String;
    .end local v14    # "hasPermission":Z
    .restart local v30    # "managerName":Ljava/lang/String;
    .restart local v31    # "managerPackage":Ljava/lang/String;
    .restart local v32    # "hasPermission":Z
    if-eqz v16, :cond_90

    .line 680
    new-instance v3, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    .line 681
    sget-object v18, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->STANDALONE:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    .line 682
    const/16 v19, 0x1

    .line 683
    const-string v20, "LSPosed \u6a21\u5757\u5df2\u6fc0\u6d3b\nPandaSU \u53ef\u4ee5\u6b63\u5e38\u5de5\u4f5c"

    .line 684
    const/16 v21, 0x0

    .line 685
    const/16 v22, 0x1

    .line 686
    nop

    .line 687
    nop

    .line 688
    nop

    .line 680
    const/16 v26, 0x0

    const/16 v27, 0x100

    const/16 v28, 0x0

    move-object/from16 v17, v3

    move-object/from16 v23, v31

    move-object/from16 v24, v30

    move/from16 v25, v0

    invoke-direct/range {v17 .. v28}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;-><init>(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v30

    goto/16 :goto_177

    .line 691
    :cond_90
    sget-object v3, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->UNKNOWN:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    if-ne v15, v3, :cond_b2

    .line 692
    new-instance v17, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    .line 693
    nop

    .line 694
    const/4 v5, 0x0

    .line 695
    const-string v6, "\u672a\u68c0\u6d4b\u5230 Root \u73af\u5883\n\u8bf7\u5b89\u88c5 KernelSU/Magisk \u6216\u6fc0\u6d3b LSPosed \u6a21\u5757"

    .line 696
    const/4 v7, 0x0

    .line 692
    const/4 v8, 0x0

    .line 697
    nop

    .line 698
    nop

    .line 699
    nop

    .line 692
    const/4 v12, 0x0

    const/16 v13, 0x110

    const/4 v14, 0x0

    move-object/from16 v3, v17

    move-object v4, v15

    move-object/from16 v9, v31

    move-object/from16 v10, v30

    move v11, v0

    invoke-direct/range {v3 .. v14}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;-><init>(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v30

    goto/16 :goto_177

    .line 704
    :cond_b2
    const-string v3, "\u68c0\u6d4b\u5230 "

    if-nez v0, :cond_f0

    .line 705
    new-instance v17, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    .line 706
    nop

    .line 707
    const/4 v5, 0x0

    .line 708
    nop

    .line 709
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v14, v30

    .end local v30    # "managerName":Ljava/lang/String;
    .local v14, "managerName":Ljava/lang/String;
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0c\u4f46\u7ba1\u7406\u5668\u5e94\u7528\u672a\u5b89\u88c5\n\u8bf7\u91cd\u65b0\u5b89\u88c5 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 710
    const/4 v7, 0x0

    .line 705
    const/4 v8, 0x0

    .line 711
    nop

    .line 712
    nop

    .line 713
    const/4 v11, 0x0

    .line 705
    const/4 v12, 0x0

    const/16 v13, 0x110

    const/16 v18, 0x0

    move-object/from16 v3, v17

    move-object v4, v15

    move-object/from16 v9, v31

    move-object v10, v14

    move-object v1, v14

    .end local v14    # "managerName":Ljava/lang/String;
    .local v1, "managerName":Ljava/lang/String;
    move-object/from16 v14, v18

    invoke-direct/range {v3 .. v14}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;-><init>(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_177

    .line 717
    .end local v1    # "managerName":Ljava/lang/String;
    .restart local v30    # "managerName":Ljava/lang/String;
    :cond_f0
    move-object/from16 v1, v30

    .end local v30    # "managerName":Ljava/lang/String;
    .restart local v1    # "managerName":Ljava/lang/String;
    if-eqz v29, :cond_10e

    .line 719
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n\u26a0\ufe0f  \u68c0\u6d4b\u5230 Root \u7ba1\u7406\u5668\u66f4\u65b0\u540e\u7684\u6388\u6743\u5931\u8d25\n\u8bf7\u5728 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u4e2d\u91cd\u65b0\u6388\u4e88 PandaSU Root \u6743\u9650"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_133

    .line 720
    :cond_10e
    sget-object v4, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->KERNELSU:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    if-eq v15, v4, :cond_11a

    sget-object v4, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->MAGISK:Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    if-ne v15, v4, :cond_117

    goto :goto_11a

    .line 723
    :cond_117
    const-string v4, ""

    goto :goto_133

    .line 721
    :cond_11a
    :goto_11a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n\ud83d\udca1 \u63d0\u793a\uff1a\u5982\u679c "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u521a\u66f4\u65b0\u8fc7\uff0c\u8bf7\u91cd\u65b0\u6388\u4e88 PandaSU Root \u6743\u9650"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 717
    :goto_133
    move-object v14, v4

    .line 726
    .local v14, "specialMessage":Ljava/lang/String;
    new-instance v17, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;

    .line 727
    nop

    .line 728
    const/4 v5, 0x0

    .line 729
    nop

    .line 730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0c\u4f46 PandaSU \u672a\u83b7\u5f97\u6388\u6743\n\u8bf7\u5728 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u7ba1\u7406\u5668\u4e2d\u6388\u4e88 PandaSU Root \u6743\u9650"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 731
    const/4 v7, 0x1

    .line 726
    const/4 v8, 0x0

    .line 732
    nop

    .line 733
    nop

    .line 734
    const/4 v11, 0x1

    .line 735
    nop

    .line 726
    const/16 v13, 0x10

    const/16 v18, 0x0

    move-object/from16 v3, v17

    move-object v4, v15

    move-object/from16 v9, v31

    move-object v10, v1

    move/from16 v12, v29

    move-object/from16 v19, v14

    .end local v14    # "specialMessage":Ljava/lang/String;
    .local v19, "specialMessage":Ljava/lang/String;
    move-object/from16 v14, v18

    invoke-direct/range {v3 .. v14}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$AuthorizationStatus;-><init>(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 665
    .end local v19    # "specialMessage":Ljava/lang/String;
    :goto_177
    return-object v17
.end method

.method public final getRootManagerName(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;)Ljava/lang/String;
    .registers 4
    .param p1, "rootMode"    # Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    const-string v0, "rootMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    sget-object v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 478
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_16
    const-string v0, "\u672a\u77e5"

    goto :goto_21

    .line 477
    :pswitch_19
    const-string v0, "PandaSU\uff08\u72ec\u7acb\u6a21\u5f0f\uff09"

    goto :goto_21

    .line 476
    :pswitch_1c
    const-string v0, "Magisk"

    goto :goto_21

    .line 475
    :pswitch_1f
    const-string v0, "KernelSU"

    .line 474
    :goto_21
    return-object v0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method

.method public final getRootManagerPackage(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;)Ljava/lang/String;
    .registers 13
    .param p1, "rootMode"    # Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    const-string v0, "rootMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    sget-object v0, Lcom/pandasu/turbo/util/RootEnvironmentDetector$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_6a

    .line 466
    goto :goto_68

    .line 465
    :pswitch_12
    const-string v1, "com.topjohnwu.magisk"

    goto :goto_68

    .line 454
    :pswitch_15
    nop

    .line 455
    const-string v0, "io.github.a13e300.ksuwebui"

    const-string v2, "me.weishu.kernelsu"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 454
    nop

    .line 453
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 456
    nop

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 821
    .local v2, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .local v5, "pkg":Ljava/lang/String;
    const/4 v6, 0x0

    .line 457
    .local v6, "$i$a$-firstOrNull-RootEnvironmentDetector$getRootManagerPackage$1":I
    nop

    .line 459
    const/4 v7, 0x0

    :try_start_3b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pm path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    move-result v8
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_5a} :catch_5e

    if-nez v8, :cond_60

    const/4 v7, 0x1

    goto :goto_60

    .line 460
    :catch_5e
    move-exception v8

    .line 461
    .local v8, "e":Ljava/lang/Exception;
    nop

    .line 457
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_60
    :goto_60
    nop

    .line 821
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "$i$a$-firstOrNull-RootEnvironmentDetector$getRootManagerPackage$1":I
    if-eqz v7, :cond_2b

    move-object v1, v4

    goto :goto_66

    .line 822
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_65
    nop

    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$firstOrNull":I
    :goto_66
    check-cast v1, Ljava/lang/String;

    .line 450
    :goto_68
    return-object v1

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method

.method public final hasRootPermission()Z
    .registers 9

    .line 423
    nop

    .line 424
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su -c id"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 425
    .local v1, "process":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "getInputStream(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v4, Ljava/io/Reader;

    instance-of v2, v4, Ljava/io/BufferedReader;

    if-eqz v2, :cond_25

    check-cast v4, Ljava/io/BufferedReader;

    goto :goto_2d

    :cond_25
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v2, v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v4, v2

    :goto_2d
    check-cast v4, Ljava/io/Reader;

    invoke-static {v4}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "output":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 428
    .local v3, "exitCode":I
    if-nez v3, :cond_4a

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "uid=0"

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v0, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    const/4 v4, 0x1

    goto :goto_4b

    :cond_4a
    move v4, v0

    .line 429
    .local v4, "hasPermission":Z
    :goto_4b
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Root permission check: hasPermission="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_63} :catch_65

    .line 430
    move v0, v4

    .end local v1    # "process":Ljava/lang/Process;
    .end local v2    # "output":Ljava/lang/String;
    .end local v3    # "exitCode":I
    .end local v4    # "hasPermission":Z
    goto :goto_71

    .line 431
    :catch_65
    move-exception v1

    .line 432
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Failed to check root permission"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 433
    nop

    .line 423
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_71
    return v0
.end method

.method public final hasRootPermissionAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
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

    .line 441
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/util/RootEnvironmentDetector$hasRootPermissionAsync$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$hasRootPermissionAsync$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hasRootPermissionFast()Z
    .registers 9

    .line 388
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2c

    .line 389
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/xbin/su"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 390
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/adb/ksu/bin/su"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_2c

    :cond_2a
    move v0, v1

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v0, v2

    .line 388
    :goto_2d
    nop

    .line 392
    .local v0, "suExists":Z
    if-nez v0, :cond_35

    .line 394
    invoke-virtual {p0}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->isLSPosedModuleActive()Z

    move-result v1

    return v1

    .line 398
    :cond_35
    nop

    .line 399
    :try_start_36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "su -c id"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 401
    .local v3, "process":Ljava/lang/Process;
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v5, v6, v4}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    .line 402
    .local v4, "finished":Z
    if-nez v4, :cond_55

    .line 403
    invoke-virtual {v3}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    .line 404
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "Root permission check timeout"

    invoke-virtual {v1, v5}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 406
    return v2

    .line 408
    :cond_55
    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v5

    .line 409
    .local v5, "exitCode":I
    if-nez v5, :cond_5c

    move v1, v2

    .line 410
    .local v1, "hasPermission":Z
    :cond_5c
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Root permission check: hasPermission="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_74} :catch_76

    .line 411
    nop

    .end local v1    # "hasPermission":Z
    .end local v3    # "process":Ljava/lang/Process;
    .end local v4    # "finished":Z
    .end local v5    # "exitCode":I
    goto :goto_82

    .line 412
    :catch_76
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Failed to check root permission"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    move v1, v0

    .line 398
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_82
    return v1
.end method

.method public final isLSPosedModuleActive()Z
    .registers 9

    .line 625
    nop

    .line 627
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "getprop persist.lspd.core.active"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 628
    .local v1, "process":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "getInputStream(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v4, Ljava/io/Reader;

    instance-of v2, v4, Ljava/io/BufferedReader;

    if-eqz v2, :cond_25

    check-cast v4, Ljava/io/BufferedReader;

    goto :goto_2d

    :cond_25
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v2, v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v4, v2

    :goto_2d
    check-cast v4, Ljava/io/Reader;

    invoke-static {v4}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, "output":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 631
    .local v3, "exitCode":I
    const-string v4, "true"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    if-nez v3, :cond_4c

    goto :goto_4e

    :cond_4c
    move v4, v0

    goto :goto_4f

    :cond_4e
    :goto_4e
    const/4 v4, 0x1

    .line 632
    .local v4, "isActive":Z
    :goto_4f
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LSPosed module active check: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (output="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_77} :catch_79

    .line 633
    move v0, v4

    .end local v1    # "process":Ljava/lang/Process;
    .end local v2    # "output":Ljava/lang/String;
    .end local v3    # "exitCode":I
    .end local v4    # "isActive":Z
    goto :goto_85

    .line 634
    :catch_79
    move-exception v1

    .line 635
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "Failed to check LSPosed module"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 636
    nop

    .line 625
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_85
    return v0
.end method

.method public final openRootManager(Landroid/content/Context;Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;)Z
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootMode"    # Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0, p2}, Lcom/pandasu/turbo/util/RootEnvironmentDetector;->getRootManagerPackage(Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    .line 489
    .local v0, "packageName":Ljava/lang/String;
    :cond_12
    nop

    .line 491
    nop

    .line 492
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    :try_start_19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_b3

    .line 508
    :try_start_20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 509
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_99

    .line 511
    sget-object v2, Lcom/pandasu/turbo/util/RootEnvironmentDetector$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/pandasu/turbo/util/RootEnvironmentDetector$RootMode;->ordinal()I

    move-result v5

    aget v2, v2, v5
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_32} :catch_116

    packed-switch v2, :pswitch_data_124

    goto :goto_79

    .line 527
    :pswitch_36
    nop

    .line 528
    :try_start_37
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 529
    .local v2, "magiskIntent":Landroid/content/Intent;
    const-string v5, "com.topjohnwu.magisk.ui.superuser.SuperUserFragment"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 531
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 532
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v7, "Opened Magisk SuperUserFragment directly"

    invoke-virtual {v5, v7}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4e} :catch_4f

    .line 533
    return v3

    .line 534
    .end local v2    # "magiskIntent":Landroid/content/Intent;
    :catch_4f
    move-exception v2

    .line 535
    .local v2, "e":Ljava/lang/Exception;
    :try_start_50
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v7, "Cannot open Magisk SuperUserFragment directly, fallback to main activity"

    invoke-virtual {v5, v7}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_57} :catch_116

    goto :goto_79

    .line 514
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_58
    nop

    .line 515
    :try_start_59
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 516
    .local v2, "kernelSuIntent":Landroid/content/Intent;
    const-string v5, "me.weishu.kernelsu.ui.superuser.SuperUserActivity"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 518
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 519
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v7, "Opened KernelSU SuperUserActivity directly"

    invoke-virtual {v5, v7}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_70} :catch_71

    .line 520
    return v3

    .line 521
    .end local v2    # "kernelSuIntent":Landroid/content/Intent;
    :catch_71
    move-exception v2

    .line 522
    .local v2, "e":Ljava/lang/Exception;
    :try_start_72
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v7, "Cannot open KernelSU SuperUserActivity directly, fallback to main activity"

    invoke-virtual {v5, v7}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 544
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_79
    invoke-virtual {v6, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 545
    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 546
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opened root manager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 547
    move v1, v3

    goto :goto_b2

    .line 549
    :cond_99
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Root manager not found: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5, v2, v5}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 550
    nop

    .end local v6    # "intent":Landroid/content/Intent;
    :goto_b2
    goto :goto_122

    .line 493
    :catch_b3
    move-exception v6

    .line 494
    .local v6, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Root manager not installed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5, v2, v5}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_cc} :catch_116

    .line 496
    nop

    .line 497
    :try_start_cd
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "market://details?id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 498
    .local v2, "marketIntent":Landroid/content/Intent;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 499
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 500
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Redirected to market for: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_109} :catch_10a

    .line 501
    return v3

    .line 502
    .end local v2    # "marketIntent":Landroid/content/Intent;
    :catch_10a
    move-exception v2

    .line 503
    .local v2, "e2":Ljava/lang/Exception;
    :try_start_10b
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "Failed to open market"

    move-object v5, v2

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_115} :catch_116

    .line 504
    return v1

    .line 552
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_116
    move-exception v2

    .line 553
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v4, "Failed to open root manager"

    move-object v5, v2

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 554
    nop

    .line 489
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_122
    return v1

    nop

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_58
        :pswitch_36
    .end packed-switch
.end method
