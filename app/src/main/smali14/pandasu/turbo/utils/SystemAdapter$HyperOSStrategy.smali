.class public final Lcom/pandasu/turbo/utils/SystemAdapter$HyperOSStrategy;
.super Ljava/lang/Object;
.source "SystemAdapter.kt"

# interfaces
.implements Lcom/pandasu/turbo/utils/SystemAdapter$AppListStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/utils/SystemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HyperOSStrategy"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSystemAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemAdapter.kt\ncom/pandasu/turbo/utils/SystemAdapter$HyperOSStrategy\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,435:1\n1549#2:436\n1620#2,3:437\n1549#2:440\n1620#2,3:441\n*S KotlinDebug\n*F\n+ 1 SystemAdapter.kt\ncom/pandasu/turbo/utils/SystemAdapter$HyperOSStrategy\n*L\n212#1:436\n212#1:437,3\n216#1:440\n216#1:441,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0005H\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/pandasu/turbo/utils/SystemAdapter$HyperOSStrategy;",
        "Lcom/pandasu/turbo/utils/SystemAdapter$AppListStrategy;",
        "()V",
        "getInstalledApps",
        "",
        "",
        "context",
        "Landroid/content/Context;",
        "getStrategyName",
        "isSystemApp",
        "",
        "packageName",
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


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstalledApps(Landroid/content/Context;)Ljava/util/List;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "\u4f7f\u7528 HyperOS \u7b56\u7565\u83b7\u53d6\u5e94\u7528\u5217\u8868"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->d(Ljava/lang/String;)V

    .line 208
    nop

    .line 210
    const/4 v0, 0x1

    :try_start_e
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pm list packages -a"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v0

    const-string v1, "exec(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .local v0, "result":Lcom/topjohnwu/superuser/Shell$Result;
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v1

    const/16 v2, 0xa

    if-eqz v1, :cond_6a

    .line 212
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v1

    const-string v3, "getOut(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 436
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    move-object v2, v4

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 437
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_48
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_65

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 438
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .local v8, "it":Ljava/lang/String;
    const/4 v9, 0x0

    .line 212
    .local v9, "$i$a$-map-SystemAdapter$HyperOSStrategy$getInstalledApps$1":I
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v10, "package:"

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v8, v10}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 438
    .end local v8    # "it":Ljava/lang/String;
    .end local v9    # "$i$a$-map-SystemAdapter$HyperOSStrategy$getInstalledApps$1":I
    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 439
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_65
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 436
    nop

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    goto :goto_a7

    .line 215
    :cond_6a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    const-string v3, "getInstalledPackages(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 216
    nop

    .restart local v1    # "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 440
    .restart local v3    # "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    move-object v2, v4

    .restart local v2    # "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .restart local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 441
    .restart local v5    # "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 442
    .restart local v7    # "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroid/content/pm/PackageInfo;

    .local v8, "it":Landroid/content/pm/PackageInfo;
    const/4 v9, 0x0

    .line 216
    .local v9, "$i$a$-map-SystemAdapter$HyperOSStrategy$getInstalledApps$2":I
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 442
    .end local v8    # "it":Landroid/content/pm/PackageInfo;
    .end local v9    # "$i$a$-map-SystemAdapter$HyperOSStrategy$getInstalledApps$2":I
    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 443
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_a3
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_a6} :catch_a8

    .line 440
    nop

    .end local v0    # "result":Lcom/topjohnwu/superuser/Shell$Result;
    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    :goto_a7
    goto :goto_c9

    .line 218
    :catch_a8
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HyperOS \u5e94\u7528\u5217\u8868\u83b7\u53d6\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c9
    return-object v2
.end method

.method public getStrategyName()Ljava/lang/String;
    .registers 2

    .line 240
    const-string v0, "HyperOS Strategy"

    return-object v0
.end method

.method public isSystemApp(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    nop

    .line 227
    const/4 v0, 0x0

    :try_start_c
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v2, "getApplicationInfo(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 229
    .local v2, "sourceDir":Ljava/lang/String;
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "/system/"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v0, v5, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 230
    const-string v3, "/vendor/"

    invoke-static {v2, v3, v0, v5, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 231
    const-string v3, "/product/"

    invoke-static {v2, v3, v0, v5, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 232
    const-string v3, "/apex/"

    invoke-static {v2, v3, v0, v5, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 233
    const-string v3, "com.miui."

    invoke-static {p1, v3, v0, v5, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 234
    const-string v3, "com.xiaomi."

    invoke-static {p1, v3, v0, v5, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_4e} :catch_52

    if-eqz v3, :cond_54

    :cond_50
    const/4 v0, 0x1

    goto :goto_54

    .line 235
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "sourceDir":Ljava/lang/String;
    :catch_52
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    nop

    .line 226
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_54
    :goto_54
    return v0
.end method
