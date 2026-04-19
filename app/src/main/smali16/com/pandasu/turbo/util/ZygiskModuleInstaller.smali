.class public final Lcom/pandasu/turbo/util/ZygiskModuleInstaller;
.super Ljava/lang/Object;
.source "ZygiskModuleInstaller.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZygiskModuleInstaller.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZygiskModuleInstaller.kt\ncom/pandasu/turbo/util/ZygiskModuleInstaller\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n288#2,2:139\n*S KotlinDebug\n*F\n+ 1 ZygiskModuleInstaller.kt\ncom/pandasu/turbo/util/ZygiskModuleInstaller\n*L\n31#1:139,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J4\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\rH\u0002J\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004J\"\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\rJ\u0006\u0010\u0010\u001a\u00020\u0007J\u001a\u0010\u0011\u001a\u00020\u00072\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/pandasu/turbo/util/ZygiskModuleInstaller;",
        "",
        "()V",
        "MODULE_DIR",
        "",
        "TAG",
        "copyAssetFile",
        "",
        "context",
        "Landroid/content/Context;",
        "assetPath",
        "destPath",
        "rootExecutor",
        "Lkotlin/Function1;",
        "getModuleVersion",
        "installModule",
        "isModuleInstalled",
        "uninstallModule",
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
.field public static final $stable:I = 0x0

.field public static final INSTANCE:Lcom/pandasu/turbo/util/ZygiskModuleInstaller;

.field private static final MODULE_DIR:Ljava/lang/String; = "/data/adb/modules/zygisk_pandasu"

.field private static final TAG:Ljava/lang/String; = "PandaSU-ZygiskInstaller"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pandasu/turbo/util/ZygiskModuleInstaller;

    invoke-direct {v0}, Lcom/pandasu/turbo/util/ZygiskModuleInstaller;-><init>()V

    sput-object v0, Lcom/pandasu/turbo/util/ZygiskModuleInstaller;->INSTANCE:Lcom/pandasu/turbo/util/ZygiskModuleInstaller;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetPath"    # Ljava/lang/String;
    .param p3, "destPath"    # Ljava/lang/String;
    .param p4, "rootExecutor"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 115
    nop

    .line 117
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temp_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v3, v2

    check-cast v3, Ljava/io/InputStream;

    .local v3, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 119
    .local v4, "$i$a$-use-ZygiskModuleInstaller$copyAssetFile$1":I
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v5, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v6, v5

    check-cast v6, Ljava/io/FileOutputStream;

    .local v6, "output":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 120
    .local v7, "$i$a$-use-ZygiskModuleInstaller$copyAssetFile$1$1":I
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v6

    check-cast v8, Ljava/io/OutputStream;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v3, v8, v0, v9, v10}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    .end local v6    # "output":Ljava/io/FileOutputStream;
    .end local v7    # "$i$a$-use-ZygiskModuleInstaller$copyAssetFile$1$1":I
    :try_start_3
    invoke-static {v5, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 118
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "$i$a$-use-ZygiskModuleInstaller$copyAssetFile$1":I
    :try_start_4
    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 125
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "copyCmd":Ljava/lang/String;
    invoke-interface {p4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 129
    .local v3, "result":Z
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 131
    move v0, v3

    .end local v1    # "tempFile":Ljava/io/File;
    .end local v2    # "copyCmd":Ljava/lang/String;
    .end local v3    # "result":Z
    goto :goto_0

    .line 119
    .restart local v1    # "tempFile":Ljava/io/File;
    .local v3, "input":Ljava/io/InputStream;
    .restart local v4    # "$i$a$-use-ZygiskModuleInstaller$copyAssetFile$1":I
    :catchall_0
    move-exception v6

    .end local v1    # "tempFile":Ljava/io/File;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "$i$a$-use-ZygiskModuleInstaller$copyAssetFile$1":I
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "assetPath":Ljava/lang/String;
    .end local p3    # "destPath":Ljava/lang/String;
    .end local p4    # "rootExecutor":Lkotlin/jvm/functions/Function1;
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .restart local v1    # "tempFile":Ljava/io/File;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "$i$a$-use-ZygiskModuleInstaller$copyAssetFile$1":I
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "assetPath":Ljava/lang/String;
    .restart local p3    # "destPath":Ljava/lang/String;
    .restart local p4    # "rootExecutor":Lkotlin/jvm/functions/Function1;
    :catchall_1
    move-exception v7

    :try_start_6
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v1    # "tempFile":Ljava/io/File;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "assetPath":Ljava/lang/String;
    .end local p3    # "destPath":Ljava/lang/String;
    .end local p4    # "rootExecutor":Lkotlin/jvm/functions/Function1;
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 118
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "$i$a$-use-ZygiskModuleInstaller$copyAssetFile$1":I
    .restart local v1    # "tempFile":Ljava/io/File;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "assetPath":Ljava/lang/String;
    .restart local p3    # "destPath":Ljava/lang/String;
    .restart local p4    # "rootExecutor":Lkotlin/jvm/functions/Function1;
    :catchall_2
    move-exception v3

    .end local v1    # "tempFile":Ljava/io/File;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "assetPath":Ljava/lang/String;
    .end local p3    # "destPath":Ljava/lang/String;
    .end local p4    # "rootExecutor":Lkotlin/jvm/functions/Function1;
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .restart local v1    # "tempFile":Ljava/io/File;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "assetPath":Ljava/lang/String;
    .restart local p3    # "destPath":Ljava/lang/String;
    .restart local p4    # "rootExecutor":Lkotlin/jvm/functions/Function1;
    :catchall_3
    move-exception v4

    :try_start_8
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "assetPath":Ljava/lang/String;
    .end local p3    # "destPath":Ljava/lang/String;
    .end local p4    # "rootExecutor":Lkotlin/jvm/functions/Function1;
    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 132
    .end local v1    # "tempFile":Ljava/io/File;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "assetPath":Ljava/lang/String;
    .restart local p3    # "destPath":Ljava/lang/String;
    .restart local p4    # "rootExecutor":Lkotlin/jvm/functions/Function1;
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u590d\u5236\u6587\u4ef6\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PandaSU-ZygiskInstaller"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    nop

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method


# virtual methods
.method public final getModuleVersion()Ljava/lang/String;
    .locals 11

    .line 27
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/adb/modules/zygisk_pandasu/module.prop"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "propFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 30
    :cond_0
    nop

    .line 31
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v2, v1, v2}, Lkotlin/io/FilesKt;->readLines$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 139
    .local v3, "$i$f$firstOrNull":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x2

    const-string v7, "version="

    if-eqz v5, :cond_2

    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    .local v8, "it":Ljava/lang/String;
    const/4 v9, 0x0

    .line 31
    .local v9, "$i$a$-firstOrNull-ZygiskModuleInstaller$getModuleVersion$1":I
    const/4 v10, 0x0

    invoke-static {v8, v7, v10, v6, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v10

    .line 139
    .end local v8    # "it":Ljava/lang/String;
    .end local v9    # "$i$a$-firstOrNull-ZygiskModuleInstaller$getModuleVersion$1":I
    if-eqz v10, :cond_1

    goto :goto_0

    .line 140
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_2
    move-object v5, v2

    .line 31
    .end local v1    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-static {v5, v7, v2, v6, v2}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v1

    goto :goto_1

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/Exception;
    nop

    .line 30
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-object v2
.end method

.method public final installModule(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootExecutor"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const-string v0, "\u5f00\u59cb\u5b89\u88c5 Zygisk \u6a21\u5757..."

    const-string v1, "PandaSU-ZygiskInstaller"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0}, Lcom/pandasu/turbo/util/ZygiskModuleInstaller;->isModuleInstalled()Z

    move-result v0

    .line 46
    .local v0, "isUpdate":Z
    if-eqz v0, :cond_0

    .line 47
    const-string v2, "\u68c0\u6d4b\u5230\u5df2\u5b89\u88c5\u6a21\u5757\uff0c\u51c6\u5907\u66f4\u65b0..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    const-string v2, "mkdir -p /data/adb/modules/zygisk_pandasu/zygisk"

    .line 52
    .local v2, "createDirCmd":Ljava/lang/String;
    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 53
    const-string v3, "\u521b\u5efa\u6a21\u5757\u76ee\u5f55\u5931\u8d25"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return v4

    .line 58
    :cond_1
    const-string v3, "zygisk_module/module.prop"

    const-string v5, "/data/adb/modules/zygisk_pandasu/module.prop"

    invoke-direct {p0, p1, v3, v5, p2}, Lcom/pandasu/turbo/util/ZygiskModuleInstaller;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 59
    const-string v3, "\u590d\u5236 module.prop \u5931\u8d25"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v4

    .line 64
    :cond_2
    const-string v3, "zygisk_module/customize.sh"

    const-string v5, "/data/adb/modules/zygisk_pandasu/customize.sh"

    invoke-direct {p0, p1, v3, v5, p2}, Lcom/pandasu/turbo/util/ZygiskModuleInstaller;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 65
    const-string v3, "\u590d\u5236 customize.sh \u5931\u8d25"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v4

    .line 70
    :cond_3
    const-string v3, "x86_64"

    const-string v4, "x86"

    const-string v5, "arm64-v8a"

    const-string v6, "armeabi-v7a"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 71
    .local v3, "abis":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 72
    .local v5, "abi":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "zygisk_module/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/libpanda_zygisk.so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "assetPath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/adb/modules/zygisk_pandasu/zygisk/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".so"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "destPath":Ljava/lang/String;
    invoke-direct {p0, p1, v6, v7, p2}, Lcom/pandasu/turbo/util/ZygiskModuleInstaller;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 76
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u590d\u5236 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " so \u6587\u4ef6\u5931\u8d25\uff0c\u53ef\u80fd\u4e0d\u5b58\u5728"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    .end local v5    # "abi":Ljava/lang/String;
    .end local v6    # "assetPath":Ljava/lang/String;
    .end local v7    # "destPath":Ljava/lang/String;
    :cond_5
    const-string v4, "chmod 755 /data/adb/modules/zygisk_pandasu && chmod 755 /data/adb/modules/zygisk_pandasu/zygisk"

    .line 82
    .local v4, "chmodCmd":Ljava/lang/String;
    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v5, "Zygisk \u6a21\u5757\u5b89\u88c5\u5b8c\u6210\uff01"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v1, 0x1

    return v1
.end method

.method public final isModuleInstalled()Z
    .locals 2

    .line 20
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/adb/modules/zygisk_pandasu"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final uninstallModule(Lkotlin/jvm/functions/Function1;)Z
    .locals 4
    .param p1, "rootExecutor"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "rootExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    const-string v0, "\u5f00\u59cb\u5378\u8f7d Zygisk \u6a21\u5757..."

    const-string v1, "PandaSU-ZygiskInstaller"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v0, "rm -rf /data/adb/modules/zygisk_pandasu"

    .line 95
    .local v0, "deleteCmd":Ljava/lang/String;
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 97
    .local v2, "result":Z
    if-eqz v2, :cond_0

    .line 98
    const-string v3, "Zygisk \u6a21\u5757\u5df2\u5378\u8f7d"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_0
    const-string v3, "\u5378\u8f7d Zygisk \u6a21\u5757\u5931\u8d25"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    return v2
.end method
