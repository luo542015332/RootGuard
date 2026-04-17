.class public final Lcom/pandasu/turbo/data/magisk/PackageDumpParser;
.super Ljava/lang/Object;
.source "PackageDumpParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/magisk/PackageDumpParser;",
        "",
        "()V",
        "parseDumpsysOutput",
        "",
        "Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;",
        "dumpsysOutput",
        "",
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

.field public static final INSTANCE:Lcom/pandasu/turbo/data/magisk/PackageDumpParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/pandasu/turbo/data/magisk/PackageDumpParser;

    invoke-direct {v0}, Lcom/pandasu/turbo/data/magisk/PackageDumpParser;-><init>()V

    sput-object v0, Lcom/pandasu/turbo/data/magisk/PackageDumpParser;->INSTANCE:Lcom/pandasu/turbo/data/magisk/PackageDumpParser;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseDumpsysOutput(Ljava/lang/String;)Ljava/util/List;
    .registers 28
    .param p1, "dumpsysOutput"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "dumpsysOutput"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 17
    .local v1, "packages":Ljava/util/List;
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    .line 19
    .local v2, "lines":Ljava/util/List;
    const/4 v3, 0x0

    .line 20
    .local v3, "currentPackage":Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;
    const/4 v4, 0x0

    .line 22
    .local v4, "inPackageSection":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_201

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 25
    .local v6, "line":Ljava/lang/String;
    new-instance v9, Lkotlin/text/Regex;

    const-string v10, "Package \\[([^\\]]+)\\] \\((\\w+)\\):"

    invoke-direct {v9, v10}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v10, v6

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v9, v10, v8, v11, v12}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v9

    .line 26
    .local v9, "packageMatch":Lkotlin/text/MatchResult;
    if-eqz v9, :cond_86

    .line 28
    if-eqz v3, :cond_53

    move-object v10, v3

    .local v10, "it":Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;
    const/4 v12, 0x0

    .line 29
    .local v12, "$i$a$-let-PackageDumpParser$parseDumpsysOutput$1":I
    invoke-virtual {v10}, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_4c

    move v8, v7

    :cond_4c
    if-eqz v8, :cond_51

    .line 30
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_51
    nop

    .line 28
    .end local v10    # "it":Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;
    .end local v12    # "$i$a$-let-PackageDumpParser$parseDumpsysOutput$1":I
    nop

    .line 35
    :cond_53
    new-instance v8, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;

    .line 36
    invoke-interface {v9}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Ljava/lang/String;

    .line 37
    invoke-interface {v9}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Ljava/lang/String;

    .line 35
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3fc

    const/16 v25, 0x0

    move-object v13, v8

    invoke-direct/range {v13 .. v25}, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ZZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v8

    .line 39
    const/4 v4, 0x1

    .line 40
    goto :goto_1b

    .line 44
    :cond_86
    if-eqz v4, :cond_1b9

    if-eqz v3, :cond_1b9

    .line 46
    new-instance v10, Lkotlin/text/Regex;

    const-string v13, "codePath=([^\\s]+)"

    invoke-direct {v10, v13}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v13, v6

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v10, v13, v8, v11, v12}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v10

    .line 47
    .local v10, "codePathMatch":Lkotlin/text/MatchResult;
    if-eqz v10, :cond_a7

    .line 48
    invoke-interface {v10}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v3, v13}, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->setCodePath(Ljava/lang/String;)V

    .line 52
    :cond_a7
    new-instance v13, Lkotlin/text/Regex;

    const-string v14, "versionCode=(\\d+)"

    invoke-direct {v13, v14}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v14, v6

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v13, v14, v8, v11, v12}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v13

    .line 53
    .local v13, "versionCodeMatch":Lkotlin/text/MatchResult;
    if-eqz v13, :cond_d0

    .line 54
    invoke-interface {v13}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_cc

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_cd

    :cond_cc
    move v14, v8

    :goto_cd
    invoke-virtual {v3, v14}, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->setVersionCode(I)V

    .line 58
    :cond_d0
    new-instance v14, Lkotlin/text/Regex;

    const-string v15, "versionName=([^\\s]+)"

    invoke-direct {v14, v15}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v15, v6

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v14, v15, v8, v11, v12}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v14

    .line 59
    .local v14, "versionNameMatch":Lkotlin/text/MatchResult;
    if-eqz v14, :cond_ed

    .line 60
    invoke-interface {v14}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v3, v15}, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->setVersionName(Ljava/lang/String;)V

    .line 64
    :cond_ed
    new-instance v15, Lkotlin/text/Regex;

    const-string v7, "flags=\\[ ([^\\]]+) \\]"

    invoke-direct {v15, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v15, v7, v8, v11, v12}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v7

    .line 65
    .local v7, "flagsMatch":Lkotlin/text/MatchResult;
    if-eqz v7, :cond_11f

    .line 66
    invoke-interface {v7}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v15

    const/4 v8, 0x1

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v18, v15

    check-cast v18, Ljava/lang/CharSequence;

    const-string v8, " "

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x6

    const/16 v23, 0x0

    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->setFlags(Ljava/util/List;)V

    .line 70
    :cond_11f
    new-instance v8, Lkotlin/text/Regex;

    const-string v15, "isMiuiPreinstall=(\\w+)"

    invoke-direct {v8, v15}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v15, v6

    check-cast v15, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {v8, v15, v0, v11, v12}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v8

    .line 71
    .local v8, "miuiMatch":Lkotlin/text/MatchResult;
    const-string v0, "true"

    if-eqz v8, :cond_142

    .line 72
    invoke-interface {v8}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v15

    const/4 v11, 0x1

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v3, v11}, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->setMiuiPreinstall(Z)V

    .line 76
    :cond_142
    new-instance v11, Lkotlin/text/Regex;

    const-string v15, "scannedAsStoppedSystemApp=(\\w+)"

    invoke-direct {v11, v15}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v15, v6

    check-cast v15, Ljava/lang/CharSequence;

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    const/4 v2, 0x2

    const/4 v5, 0x0

    .end local v2    # "lines":Ljava/util/List;
    .local v19, "lines":Ljava/util/List;
    invoke-static {v11, v15, v5, v2, v12}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v11

    .line 77
    .local v11, "stoppedSystemMatch":Lkotlin/text/MatchResult;
    if-eqz v11, :cond_168

    .line 78
    invoke-interface {v11}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->setScannedAsStoppedSystemApp(Z)V

    .line 82
    :cond_168
    new-instance v0, Lkotlin/text/Regex;

    const-string v2, "installerPackageName=([^\\s]+)"

    invoke-direct {v0, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v5, 0x2

    const/4 v15, 0x0

    invoke-static {v0, v2, v15, v5, v12}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    .line 83
    .local v0, "installerMatch":Lkotlin/text/MatchResult;
    if-eqz v0, :cond_188

    .line 84
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->setInstallerPackageName(Ljava/lang/String;)V

    .line 88
    :cond_188
    new-instance v2, Lkotlin/text/Regex;

    const-string v5, "appId=(\\d+)"

    invoke-direct {v2, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    check-cast v5, Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/4 v0, 0x2

    const/4 v15, 0x0

    .end local v0    # "installerMatch":Lkotlin/text/MatchResult;
    .local v17, "installerMatch":Lkotlin/text/MatchResult;
    invoke-static {v2, v5, v15, v0, v12}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    .line 89
    .local v0, "appIdMatch":Lkotlin/text/MatchResult;
    if-eqz v0, :cond_1b7

    .line 90
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1b2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1b3

    :cond_1b2
    move v2, v15

    :goto_1b3
    invoke-virtual {v3, v2}, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->setUid(I)V

    goto :goto_1bf

    .line 89
    :cond_1b7
    const/4 v5, 0x1

    goto :goto_1bf

    .line 44
    .end local v0    # "appIdMatch":Lkotlin/text/MatchResult;
    .end local v7    # "flagsMatch":Lkotlin/text/MatchResult;
    .end local v8    # "miuiMatch":Lkotlin/text/MatchResult;
    .end local v10    # "codePathMatch":Lkotlin/text/MatchResult;
    .end local v11    # "stoppedSystemMatch":Lkotlin/text/MatchResult;
    .end local v13    # "versionCodeMatch":Lkotlin/text/MatchResult;
    .end local v14    # "versionNameMatch":Lkotlin/text/MatchResult;
    .end local v17    # "installerMatch":Lkotlin/text/MatchResult;
    .end local v19    # "lines":Ljava/util/List;
    .restart local v2    # "lines":Ljava/util/List;
    :cond_1b9
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move v5, v7

    move v15, v8

    .line 95
    .end local v2    # "lines":Ljava/util/List;
    .restart local v19    # "lines":Ljava/util/List;
    :goto_1bf
    if-eqz v4, :cond_1f9

    move-object v0, v6

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1d6

    move v8, v5

    goto :goto_1d7

    :cond_1d6
    move v8, v15

    :goto_1d7
    if-eqz v8, :cond_1f9

    if-eqz v3, :cond_1f9

    .line 97
    invoke-virtual {v3}, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1e9

    move v7, v5

    goto :goto_1ea

    :cond_1e9
    move v7, v15

    :goto_1ea
    if-eqz v7, :cond_1ef

    .line 98
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1ef
    const/4 v3, 0x0

    .line 101
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v2, v19

    move-object/from16 v5, v20

    .end local v6    # "line":Ljava/lang/String;
    .end local v9    # "packageMatch":Lkotlin/text/MatchResult;
    goto/16 :goto_1b

    .line 22
    :cond_1f9
    move-object/from16 v0, p1

    move-object/from16 v2, v19

    move-object/from16 v5, v20

    goto/16 :goto_1b

    .line 106
    .end local v19    # "lines":Ljava/util/List;
    .restart local v2    # "lines":Ljava/util/List;
    :cond_201
    move-object/from16 v19, v2

    move v5, v7

    move v15, v8

    .end local v2    # "lines":Ljava/util/List;
    .restart local v19    # "lines":Ljava/util/List;
    if-eqz v3, :cond_21f

    move-object v0, v3

    .local v0, "it":Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;
    const/4 v2, 0x0

    .line 107
    .local v2, "$i$a$-let-PackageDumpParser$parseDumpsysOutput$2":I
    invoke-virtual {v0}, Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_217

    move v7, v5

    goto :goto_218

    :cond_217
    move v7, v15

    :goto_218
    if-eqz v7, :cond_21d

    .line 108
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_21d
    nop

    .line 106
    .end local v0    # "it":Lcom/pandasu/turbo/data/magisk/DumpsysPackageInfo;
    .end local v2    # "$i$a$-let-PackageDumpParser$parseDumpsysOutput$2":I
    nop

    .line 112
    :cond_21f
    return-object v1
.end method
