.class public final Lcom/pandasu/turbo/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0006\u0010\u0011\u001a\u00020\rJ\u000e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006J\u001a\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0017J\u000e\u0010\u0018\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u0019\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/pandasu/turbo/utils/Logger;",
        "",
        "()V",
        "MAX_LOGS",
        "",
        "TAG",
        "",
        "dateFormat",
        "Ljava/text/SimpleDateFormat;",
        "localLogs",
        "",
        "Lcom/pandasu/turbo/data/magisk/MagiskLog;",
        "addLog",
        "",
        "message",
        "level",
        "Lcom/pandasu/turbo/data/magisk/LogLevel;",
        "clearLocalLogs",
        "d",
        "e",
        "throwable",
        "",
        "getLocalLogs",
        "",
        "i",
        "w",
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

.field public static final INSTANCE:Lcom/pandasu/turbo/utils/Logger;

.field private static final MAX_LOGS:I

.field private static final TAG:Ljava/lang/String; = "PandaSU"

.field private static final dateFormat:Ljava/text/SimpleDateFormat;

.field private static final localLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/MagiskLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/pandasu/turbo/utils/Logger;

    invoke-direct {v0}, Lcom/pandasu/turbo/utils/Logger;-><init>()V

    sput-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    .line 10
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/pandasu/turbo/utils/Logger;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/pandasu/turbo/utils/Logger;->localLogs:Ljava/util/List;

    .line 14
    const/16 v0, 0x1f4

    sput v0, Lcom/pandasu/turbo/utils/Logger;->MAX_LOGS:I

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/utils/Logger;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final addLog(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/LogLevel;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/pandasu/turbo/data/magisk/LogLevel;

    .line 42
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->localLogs:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 43
    .local v1, "$i$a$-synchronized-Logger$addLog$1":I
    :try_start_0
    new-instance v2, Lcom/pandasu/turbo/data/magisk/MagiskLog;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 45
    nop

    .line 46
    nop

    .line 47
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "format(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {v2, v3, p1, p2, v4}, Lcom/pandasu/turbo/data/magisk/MagiskLog;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/LogLevel;Ljava/lang/String;)V

    .line 49
    .local v2, "log":Lcom/pandasu/turbo/data/magisk/MagiskLog;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sget v4, Lcom/pandasu/turbo/utils/Logger;->MAX_LOGS:I

    if-le v3, v4, :cond_0

    .line 53
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 55
    :cond_0
    nop

    .end local v1    # "$i$a$-synchronized-Logger$addLog$1":I
    .end local v2    # "log":Lcom/pandasu/turbo/data/magisk/MagiskLog;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    .line 56
    return-void

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    .line 31
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final clearLocalLogs()V
    .locals 2

    .line 65
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->localLogs:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 66
    .local v1, "$i$a$-synchronized-Logger$clearLocalLogs$1":I
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    nop

    .end local v1    # "$i$a$-synchronized-Logger$clearLocalLogs$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v0

    .line 68
    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const-string v0, "PandaSU"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    sget-object v0, Lcom/pandasu/turbo/data/magisk/LogLevel;->DEBUG:Lcom/pandasu/turbo/data/magisk/LogLevel;

    invoke-direct {p0, p1, v0}, Lcom/pandasu/turbo/utils/Logger;->addLog(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/LogLevel;)V

    .line 19
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-string v0, "PandaSU"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    if-eqz p2, :cond_0

    .line 34
    invoke-static {p2}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_0
    move-object v0, p1

    .line 33
    :goto_0
    nop

    .line 38
    .local v0, "fullMessage":Ljava/lang/String;
    sget-object v1, Lcom/pandasu/turbo/data/magisk/LogLevel;->ERROR:Lcom/pandasu/turbo/data/magisk/LogLevel;

    invoke-direct {p0, v0, v1}, Lcom/pandasu/turbo/utils/Logger;->addLog(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/LogLevel;)V

    .line 39
    return-void
.end method

.method public final getLocalLogs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/data/magisk/MagiskLog;",
            ">;"
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->localLogs:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 60
    .local v1, "$i$a$-synchronized-Logger$getLocalLogs$1":I
    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "$i$a$-synchronized-Logger$getLocalLogs$1":I
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const-string v0, "PandaSU"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-object v0, Lcom/pandasu/turbo/data/magisk/LogLevel;->INFO:Lcom/pandasu/turbo/data/magisk/LogLevel;

    invoke-direct {p0, p1, v0}, Lcom/pandasu/turbo/utils/Logger;->addLog(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/LogLevel;)V

    .line 24
    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const-string v0, "PandaSU"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget-object v0, Lcom/pandasu/turbo/data/magisk/LogLevel;->WARNING:Lcom/pandasu/turbo/data/magisk/LogLevel;

    invoke-direct {p0, p1, v0}, Lcom/pandasu/turbo/utils/Logger;->addLog(Ljava/lang/String;Lcom/pandasu/turbo/data/magisk/LogLevel;)V

    .line 29
    return-void
.end method
