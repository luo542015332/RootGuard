.class public final Lcom/pandasu/turbo/util/ModuleStatusMonitor;
.super Ljava/lang/Object;
.source "ModuleStatusMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/util/ModuleStatusMonitor$Companion;,
        Lcom/pandasu/turbo/util/ModuleStatusMonitor$ModuleStatus;,
        Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleStatusMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleStatusMonitor.kt\ncom/pandasu/turbo/util/ModuleStatusMonitor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,325:1\n1747#2,3:326\n1747#2,3:329\n*S KotlinDebug\n*F\n+ 1 ModuleStatusMonitor.kt\ncom/pandasu/turbo/util/ModuleStatusMonitor\n*L\n142#1:326,3\n170#1:329,3\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00162\u00020\u0001:\u0003\u0016\u0017\u0018B\u0011\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0086@\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u0006H\u0002J\u0008\u0010\u000c\u001a\u00020\u0006H\u0002J\u000e\u0010\r\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000f\u001a\u00020\u0006H\u0002J\u0008\u0010\u0010\u001a\u00020\u0006H\u0002J\u0008\u0010\u0011\u001a\u00020\u0006H\u0002J\u0008\u0010\u0012\u001a\u00020\u0006H\u0002J\u000e\u0010\u0013\u001a\u00020\tH\u0086@\u00a2\u0006\u0002\u0010\nJ\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0008H\u0086@\u00a2\u0006\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/pandasu/turbo/util/ModuleStatusMonitor;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "checkDenylist",
        "",
        "checkForModuleCorruption",
        "",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "checkLSPosed",
        "checkMagisk",
        "checkOverallStatus",
        "Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;",
        "checkPandaSULSPosed",
        "checkPandaSUZygisk",
        "checkShamiko",
        "checkZygisk",
        "generateStatusReport",
        "getDetailedModuleStatus",
        "Lcom/pandasu/turbo/util/ModuleStatusMonitor$ModuleStatus;",
        "Companion",
        "ModuleStatus",
        "OverallStatus",
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

.field public static final Companion:Lcom/pandasu/turbo/util/ModuleStatusMonitor$Companion;

.field private static final LSPD_NATIVE:Ljava/lang/String; = "/data/adb/modules/lspd/native_hook.lso"

.field private static final LSPOSED_CORE:Ljava/lang/String; = "/data/adb/modules/lspd"

.field private static final LSPOSED_MANAGER:Ljava/lang/String; = "org.lsposed.manager"

.field private static final MAGISK_MODULES_PATH:Ljava/lang/String; = "/data/adb/modules"

.field private static final ZYGKSU_PATH:Ljava/lang/String; = "/data/adb/zygisksu"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/util/ModuleStatusMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor;->Companion:Lcom/pandasu/turbo/util/ModuleStatusMonitor$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/pandasu/turbo/util/ModuleStatusMonitor;->context:Landroid/content/Context;

    .line 17
    return-void
.end method

.method public static final synthetic access$checkDenylist(Lcom/pandasu/turbo/util/ModuleStatusMonitor;)Z
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/util/ModuleStatusMonitor;

    .line 16
    invoke-direct {p0}, Lcom/pandasu/turbo/util/ModuleStatusMonitor;->checkDenylist()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$checkLSPosed(Lcom/pandasu/turbo/util/ModuleStatusMonitor;)Z
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/util/ModuleStatusMonitor;

    .line 16
    invoke-direct {p0}, Lcom/pandasu/turbo/util/ModuleStatusMonitor;->checkLSPosed()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$checkMagisk(Lcom/pandasu/turbo/util/ModuleStatusMonitor;)Z
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/util/ModuleStatusMonitor;

    .line 16
    invoke-direct {p0}, Lcom/pandasu/turbo/util/ModuleStatusMonitor;->checkMagisk()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$checkPandaSULSPosed(Lcom/pandasu/turbo/util/ModuleStatusMonitor;)Z
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/util/ModuleStatusMonitor;

    .line 16
    invoke-direct {p0}, Lcom/pandasu/turbo/util/ModuleStatusMonitor;->checkPandaSULSPosed()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$checkPandaSUZygisk(Lcom/pandasu/turbo/util/ModuleStatusMonitor;)Z
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/util/ModuleStatusMonitor;

    .line 16
    invoke-direct {p0}, Lcom/pandasu/turbo/util/ModuleStatusMonitor;->checkPandaSUZygisk()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$checkShamiko(Lcom/pandasu/turbo/util/ModuleStatusMonitor;)Z
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/util/ModuleStatusMonitor;

    .line 16
    invoke-direct {p0}, Lcom/pandasu/turbo/util/ModuleStatusMonitor;->checkShamiko()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$checkZygisk(Lcom/pandasu/turbo/util/ModuleStatusMonitor;)Z
    .registers 2
    .param p0, "$this"    # Lcom/pandasu/turbo/util/ModuleStatusMonitor;

    .line 16
    invoke-direct {p0}, Lcom/pandasu/turbo/util/ModuleStatusMonitor;->checkZygisk()Z

    move-result v0

    return v0
.end method

.method private final checkDenylist()Z
    .registers 14

    .line 167
    nop

    .line 169
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_3
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "magisk --denylist status 2>/dev/null"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v2

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v2

    const-string v3, "exec(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .local v2, "result":Lcom/topjohnwu/superuser/Shell$Result;
    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v3

    const-string v4, "getOut(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 329
    .local v4, "$i$f$any":I
    instance-of v5, v3, Ljava/util/Collection;

    if-eqz v5, :cond_31

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_31

    move v0, v1

    goto :goto_6a

    .line 330
    :cond_31
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_69

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .local v7, "it":Ljava/lang/String;
    const/4 v8, 0x0

    .line 170
    .local v8, "$i$a$-any-ModuleStatusMonitor$checkDenylist$1":I
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    const-string v10, "enabled"

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v9, v10, v1, v12, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_65

    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    const-string v10, "ENABLED"

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v9, v10, v1, v12, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_60} :catch_6c

    if-eqz v9, :cond_63

    goto :goto_65

    :cond_63
    move v7, v1

    goto :goto_66

    :cond_65
    :goto_65
    move v7, v0

    .line 330
    .end local v7    # "it":Ljava/lang/String;
    .end local v8    # "$i$a$-any-ModuleStatusMonitor$checkDenylist$1":I
    :goto_66
    if-eqz v7, :cond_35

    goto :goto_6a

    .line 331
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_69
    move v0, v1

    .end local v2    # "result":Lcom/topjohnwu/superuser/Shell$Result;
    .end local v3    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$any":I
    :goto_6a
    move v1, v0

    goto :goto_6e

    .line 171
    :catch_6c
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6e
    return v1
.end method

.method private final checkLSPosed()Z
    .registers 6

    .line 152
    nop

    .line 154
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_3
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "ls /data/adb/modules/lspd 2>/dev/null"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v2

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v2

    .line 156
    .local v2, "lspdExists":Z
    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "pm path org.lsposed.manager 2>/dev/null"

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v3

    invoke-virtual {v3}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v3
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_2f

    .line 157
    .local v3, "managerExists":Z
    if-nez v2, :cond_2d

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    .end local v2    # "lspdExists":Z
    .end local v3    # "managerExists":Z
    :cond_2d
    :goto_2d
    move v1, v0

    goto :goto_31

    .line 158
    :catch_2f
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_31
    return v1
.end method

.method private final checkMagisk()Z
    .registers 6

    .line 126
    nop

    .line 127
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_3
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "ls /data/adb/magisk 2>/dev/null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v0

    const-string v2, "exec(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .local v0, "result":Lcom/topjohnwu/superuser/Shell$Result;
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_1b

    .end local v0    # "result":Lcom/topjohnwu/superuser/Shell$Result;
    goto :goto_27

    .line 129
    :catch_1b
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    const-string v3, "ModuleStatusMonitor: \u68c0\u67e5 Magisk \u5931\u8d25"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/pandasu/turbo/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    nop

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_27
    return v1
.end method

.method private final checkPandaSULSPosed()Z
    .registers 5

    .line 203
    nop

    .line 206
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_3
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "ls /data/adb/modules/lspd 2>/dev/null"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v2

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 207
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "cat /data/misc/lspd/modules_config.json 2>/dev/null | grep -i pandasu"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v2

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_2f

    if-eqz v2, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    move v1, v0

    goto :goto_31

    .line 208
    :catch_2f
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_31
    return v1
.end method

.method private final checkPandaSUZygisk()Z
    .registers 5

    .line 191
    nop

    .line 192
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_3
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "ls /data/adb/modules/PandaSU 2>/dev/null"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v2

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 193
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "ls /data/adb/modules/panda_zygisk 2>/dev/null"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v2

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_31

    if-eqz v2, :cond_2c

    goto :goto_2e

    :cond_2c
    move v0, v1

    goto :goto_2f

    :cond_2e
    :goto_2e
    nop

    :goto_2f
    move v1, v0

    goto :goto_33

    .line 194
    :catch_31
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_33
    return v1
.end method

.method private final checkShamiko()Z
    .registers 4

    .line 180
    nop

    .line 181
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_3
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "ls /data/adb/modules/shamiko 2>/dev/null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_16

    goto :goto_18

    .line 182
    :catch_16
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18
    return v1
.end method

.method private final checkZygisk()Z
    .registers 14

    .line 139
    nop

    .line 141
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_3
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "ls /data/adb/zygisksu 2>/dev/null"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v2

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v2

    const-string v3, "exec(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .local v2, "result":Lcom/topjohnwu/superuser/Shell$Result;
    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_71

    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "getprop persist.magisk.zygisk"

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v3

    invoke-virtual {v3}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v3

    const-string v4, "getOut(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 326
    .local v4, "$i$f$any":I
    instance-of v5, v3, Ljava/util/Collection;

    if-eqz v5, :cond_45

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_45

    move v3, v1

    goto :goto_6c

    .line 327
    :cond_45
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_49
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .local v7, "it":Ljava/lang/String;
    const/4 v8, 0x0

    .line 142
    .local v8, "$i$a$-any-ModuleStatusMonitor$checkZygisk$1":I
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    const-string v10, "1"

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v9, v10, v1, v11, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_67} :catch_74

    .line 327
    .end local v7    # "it":Ljava/lang/String;
    .end local v8    # "$i$a$-any-ModuleStatusMonitor$checkZygisk$1":I
    if-eqz v9, :cond_49

    move v3, v0

    goto :goto_6c

    .line 328
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_6b
    move v3, v1

    .end local v3    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$any":I
    :goto_6c
    if-eqz v3, :cond_6f

    goto :goto_71

    :cond_6f
    move v0, v1

    goto :goto_72

    :cond_71
    :goto_71
    nop

    .end local v2    # "result":Lcom/topjohnwu/superuser/Shell$Result;
    :goto_72
    move v1, v0

    goto :goto_76

    .line 143
    :catch_74
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_76
    return v1
.end method


# virtual methods
.method public final checkForModuleCorruption(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 251
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkForModuleCorruption$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkForModuleCorruption$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 275
    return-object v0
.end method

.method public final checkOverallStatus(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/pandasu/turbo/util/ModuleStatusMonitor$OverallStatus;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pandasu/turbo/util/ModuleStatusMonitor$checkOverallStatus$2;-><init>(Lcom/pandasu/turbo/util/ModuleStatusMonitor;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    return-object v0
.end method

.method public final generateStatusReport(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$generateStatusReport$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$generateStatusReport$1;

    iget v1, v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$generateStatusReport$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$generateStatusReport$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$generateStatusReport$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lcom/pandasu/turbo/util/ModuleStatusMonitor$generateStatusReport$1;

    invoke-direct {v0, p0, p1}, Lcom/pandasu/turbo/util/ModuleStatusMonitor$generateStatusReport$1;-><init>(Lcom/pandasu/turbo/util/ModuleStatusMonitor;Lkotlin/coroutines/Continuation;)V

    :goto_19
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$generateStatusReport$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 280
    iget v2, p1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$generateStatusReport$1;->label:I

    packed-switch v2, :pswitch_data_54

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_2d
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    goto :goto_4e

    :pswitch_32
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .local v2, "this":Lcom/pandasu/turbo/util/ModuleStatusMonitor;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/pandasu/turbo/util/ModuleStatusMonitor$generateStatusReport$2;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/pandasu/turbo/util/ModuleStatusMonitor$generateStatusReport$2;-><init>(Lcom/pandasu/turbo/util/ModuleStatusMonitor;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x1

    iput v5, p1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$generateStatusReport$1;->label:I

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "this":Lcom/pandasu/turbo/util/ModuleStatusMonitor;
    if-ne v2, v1, :cond_4e

    return-object v1

    :cond_4e
    :goto_4e
    const-string v1, "withContext(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    return-object v2

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2d
    .end packed-switch
.end method

.method public final getDetailedModuleStatus(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/pandasu/turbo/util/ModuleStatusMonitor$ModuleStatus;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 216
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/pandasu/turbo/util/ModuleStatusMonitor$getDetailedModuleStatus$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/pandasu/turbo/util/ModuleStatusMonitor$getDetailedModuleStatus$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 246
    return-object v0
.end method
