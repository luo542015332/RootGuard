.class public final Lcom/pandasu/turbo/PandaSUApp;
.super Lcom/pandasu/turbo/Hilt_PandaSUApp;
.source "PandaSUApp.kt"


# annotations
.annotation runtime Ldagger/hilt/android/HiltAndroidApp;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/pandasu/turbo/PandaSUApp;",
        "Landroid/app/Application;",
        "()V",
        "checkAndInstallZygiskModule",
        "",
        "onCreate",
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
.method public static synthetic $r8$lambda$qYKQM24Zwx4Nz8bVC7zAzHjScj4(Lcom/pandasu/turbo/PandaSUApp;)V
    .registers 1

    invoke-static {p0}, Lcom/pandasu/turbo/PandaSUApp;->checkAndInstallZygiskModule$lambda$0(Lcom/pandasu/turbo/PandaSUApp;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/pandasu/turbo/Hilt_PandaSUApp;-><init>()V

    return-void
.end method

.method private final checkAndInstallZygiskModule()V
    .registers 3

    .line 35
    new-instance v0, Ljava/lang/Thread;

    .line 67
    new-instance v1, Lcom/pandasu/turbo/PandaSUApp$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/pandasu/turbo/PandaSUApp$$ExternalSyntheticLambda0;-><init>(Lcom/pandasu/turbo/PandaSUApp;)V

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 68
    return-void
.end method

.method private static final checkAndInstallZygiskModule$lambda$0(Lcom/pandasu/turbo/PandaSUApp;)V
    .registers 9
    .param p0, "this$0"    # Lcom/pandasu/turbo/PandaSUApp;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    nop

    .line 38
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_9
    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "ls /data/adb/modules"

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {v0}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v0

    const-string v3, "exec(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .local v0, "result":Lcom/topjohnwu/superuser/Shell$Result;
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v3

    .line 41
    .local v3, "isMagiskAvailable":Z
    if-nez v3, :cond_2b

    .line 42
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "\u26a0\ufe0f Magisk \u672a\u68c0\u6d4b\u5230\uff0c\u65e0\u6cd5\u5b89\u88c5 Zygisk \u6a21\u5757"

    invoke-virtual {v4, v5}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 43
    return-void

    .line 47
    :cond_2b
    sget-object v4, Lcom/pandasu/turbo/util/ZygiskModuleInstaller;->INSTANCE:Lcom/pandasu/turbo/util/ZygiskModuleInstaller;

    invoke-virtual {v4}, Lcom/pandasu/turbo/util/ZygiskModuleInstaller;->isModuleInstalled()Z

    move-result v4

    if-nez v4, :cond_59

    .line 48
    sget-object v4, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v5, "\ud83d\udce6 \u6b63\u5728\u5b89\u88c5 Zygisk \u6a21\u5757..."

    invoke-virtual {v4, v5}, Lcom/pandasu/turbo/utils/Logger;->i(Ljava/lang/String;)V

    .line 50
    sget-object v4, Lcom/pandasu/turbo/PandaSUApp$checkAndInstallZygiskModule$1$rootExecutor$1;->INSTANCE:Lcom/pandasu/turbo/PandaSUApp$checkAndInstallZygiskModule$1$rootExecutor$1;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 53
    .local v4, "rootExecutor":Lkotlin/jvm/functions/Function1;
    sget-object v5, Lcom/pandasu/turbo/util/ZygiskModuleInstaller;->INSTANCE:Lcom/pandasu/turbo/util/ZygiskModuleInstaller;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v5, v6, v4}, Lcom/pandasu/turbo/util/ZygiskModuleInstaller;->installModule(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Z

    move-result v5

    .line 55
    .local v5, "success":Z
    if-eqz v5, :cond_51

    .line 56
    sget-object v6, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v7, "\u2705 Zygisk \u6a21\u5757\u5b89\u88c5\u6210\u529f\uff01\u8bf7\u91cd\u542f\u624b\u673a\u4ee5\u6fc0\u6d3b\u6a21\u5757"

    invoke-virtual {v6, v7}, Lcom/pandasu/turbo/utils/Logger;->i(Ljava/lang/String;)V

    goto :goto_9b

    .line 58
    :cond_51
    sget-object v6, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v7, "\u274c Zygisk \u6a21\u5757\u5b89\u88c5\u5931\u8d25"

    invoke-static {v6, v7, v2, v1, v2}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .end local v4    # "rootExecutor":Lkotlin/jvm/functions/Function1;
    .end local v5    # "success":Z
    goto :goto_9b

    .line 61
    :cond_59
    sget-object v4, Lcom/pandasu/turbo/util/ZygiskModuleInstaller;->INSTANCE:Lcom/pandasu/turbo/util/ZygiskModuleInstaller;

    invoke-virtual {v4}, Lcom/pandasu/turbo/util/ZygiskModuleInstaller;->getModuleVersion()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "version":Ljava/lang/String;
    sget-object v5, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u2705 Zygisk \u6a21\u5757\u5df2\u5b89\u88c5 (v"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pandasu/turbo/utils/Logger;->i(Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_7d} :catch_7e

    .end local v0    # "result":Lcom/topjohnwu/superuser/Shell$Result;
    .end local v3    # "isMagiskAvailable":Z
    .end local v4    # "version":Ljava/lang/String;
    goto :goto_9b

    .line 64
    :catch_7e
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u274c \u68c0\u67e5 Zygisk \u6a21\u5757\u65f6\u51fa\u9519: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, v1, v2}, Lcom/pandasu/turbo/utils/Logger;->e$default(Lcom/pandasu/turbo/utils/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9b
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 4

    .line 12
    invoke-super {p0}, Lcom/pandasu/turbo/Hilt_PandaSUApp;->onCreate()V

    .line 16
    sget-boolean v0, Lcom/pandasu/turbo/BuildConfig;->DEBUG:Z

    sput-boolean v0, Lcom/topjohnwu/superuser/Shell;->enableVerboseLogging:Z

    .line 17
    invoke-static {}, Lcom/topjohnwu/superuser/Shell$Builder;->create()Lcom/topjohnwu/superuser/Shell$Builder;

    move-result-object v0

    .line 18
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/topjohnwu/superuser/Shell$Builder;->setFlags(I)Lcom/topjohnwu/superuser/Shell$Builder;

    move-result-object v0

    .line 19
    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/topjohnwu/superuser/Shell$Builder;->setTimeout(J)Lcom/topjohnwu/superuser/Shell$Builder;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/topjohnwu/superuser/Shell;->setDefaultBuilder(Lcom/topjohnwu/superuser/Shell$Builder;)V

    .line 22
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "\ud83d\udc3c PandaSU (RootGuard) \u5e94\u7528\u542f\u52a8"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->i(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "\u65e5\u5fd7\u7cfb\u7edf\u521d\u59cb\u5316\u5b8c\u6210"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->i(Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "libsu Shell \u521d\u59cb\u5316\u5b8c\u6210"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->i(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v1, "\u5e94\u7528\u7248\u672c: v1.1.39"

    invoke-virtual {v0, v1}, Lcom/pandasu/turbo/utils/Logger;->i(Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/pandasu/turbo/PandaSUApp;->checkAndInstallZygiskModule()V

    .line 29
    return-void
.end method
