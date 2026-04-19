.class public Lcom/topjohnwu/superuser/internal/RootServiceManager;
.super Ljava/lang/Object;
.source "RootServiceManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/topjohnwu/superuser/internal/RootServiceManager$Predicate;,
        Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;,
        Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;,
        Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;,
        Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;,
        Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;,
        Lcom/topjohnwu/superuser/internal/RootServiceManager$BindTask;
    }
.end annotation


# static fields
.field private static final API_27_DEBUG:Ljava/lang/String; = "-Xrunjdwp:transport=dt_android_adb,suspend=n,server=y -Xcompiler-option --debuggable"

.field private static final API_28_DEBUG:Ljava/lang/String; = "-XjdwpProvider:adbconnection -XjdwpOptions:suspend=n,server=y -Xcompiler-option --debuggable"

.field private static final BUNDLE_BINDER_KEY:Ljava/lang/String; = "binder"

.field private static final DAEMON_EN_ROUTE:I = 0x2

.field static final DEBUG_ENV:Ljava/lang/String; = "LIBSU_DEBUGGER"

.field private static final INTENT_BUNDLE_KEY:Ljava/lang/String; = "extra.bundle"

.field private static final INTENT_DAEMON_KEY:Ljava/lang/String; = "extra.daemon"

.field private static final JVMTI_ERROR:Ljava/lang/String; = " \n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n! Warning: JVMTI agent is enabled. Please enable the !\n! \'Always install with package manager\' option in    !\n! Android Studio. For more details and information,  !\n! check out RootService\'s Javadoc.                   !\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n"

.field static final LOGGING_ENV:Ljava/lang/String; = "LIBSU_VERBOSE_LOGGING"

.field static final MSG_STOP:I = 0x1

.field private static final RECEIVER_BROADCAST:Ljava/lang/String; = "com.topjohnwu.superuser.RECEIVER_BROADCAST"

.field private static final RECEIVER_REGISTERED:I = 0x4

.field private static final REMOTE_EN_ROUTE:I = 0x1

.field static final TAG:Ljava/lang/String; = "IPC"

.field private static mInstance:Lcom/topjohnwu/superuser/internal/RootServiceManager;


# instance fields
.field private final connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ServiceConnection;",
            "Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private flags:I

.field private mDaemon:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

.field private mRemote:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

.field private final pendingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/topjohnwu/superuser/internal/RootServiceManager$BindTask;",
            ">;"
        }
    .end annotation
.end field

.field private final services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;",
            "Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$k2AusSDYRAElOqP3HVfVK8vtNnI(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->flags:I

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->pendingTasks:Ljava/util/List;

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->services:Ljava/util/Map;

    .line 145
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->connections:Ljava/util/Map;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/topjohnwu/superuser/internal/RootServiceManager;)Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;
    .locals 1
    .param p0, "x0"    # Lcom/topjohnwu/superuser/internal/RootServiceManager;

    .line 70
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mRemote:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    return-object v0
.end method

.method static synthetic access$002(Lcom/topjohnwu/superuser/internal/RootServiceManager;Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;)Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;
    .locals 0
    .param p0, "x0"    # Lcom/topjohnwu/superuser/internal/RootServiceManager;
    .param p1, "x1"    # Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    .line 70
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mRemote:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    return-object p1
.end method

.method static synthetic access$100(Lcom/topjohnwu/superuser/internal/RootServiceManager;)Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;
    .locals 1
    .param p0, "x0"    # Lcom/topjohnwu/superuser/internal/RootServiceManager;

    .line 70
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mDaemon:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    return-object v0
.end method

.method static synthetic access$102(Lcom/topjohnwu/superuser/internal/RootServiceManager;Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;)Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;
    .locals 0
    .param p0, "x0"    # Lcom/topjohnwu/superuser/internal/RootServiceManager;
    .param p1, "x1"    # Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    .line 70
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mDaemon:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    return-object p1
.end method

.method static synthetic access$200(Lcom/topjohnwu/superuser/internal/RootServiceManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/topjohnwu/superuser/internal/RootServiceManager;

    .line 70
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->services:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/topjohnwu/superuser/internal/RootServiceManager;Lcom/topjohnwu/superuser/internal/RootServiceManager$Predicate;)V
    .locals 0
    .param p0, "x0"    # Lcom/topjohnwu/superuser/internal/RootServiceManager;
    .param p1, "x1"    # Lcom/topjohnwu/superuser/internal/RootServiceManager$Predicate;

    .line 70
    invoke-direct {p0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->dropConnections(Lcom/topjohnwu/superuser/internal/RootServiceManager$Predicate;)V

    return-void
.end method

.method static synthetic access$472(Lcom/topjohnwu/superuser/internal/RootServiceManager;I)I
    .locals 1
    .param p0, "x0"    # Lcom/topjohnwu/superuser/internal/RootServiceManager;
    .param p1, "x1"    # I

    .line 70
    iget v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->flags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->flags:I

    return v0
.end method

.method static synthetic access$500(Lcom/topjohnwu/superuser/internal/RootServiceManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/topjohnwu/superuser/internal/RootServiceManager;

    .line 70
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->pendingTasks:Ljava/util/List;

    return-object v0
.end method

.method private bindInternal(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "conn"    # Landroid/content/ServiceConnection;

    .line 248
    invoke-static {}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->enforceMainThread()V

    .line 251
    invoke-static {p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->parseIntent(Landroid/content/Intent;)Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    move-result-object v0

    .line 252
    .local v0, "key":Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->services:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;

    .line 253
    .local v1, "s":Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 254
    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->connections:Ljava/util/Map;

    new-instance v4, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;

    invoke-direct {v4, v1, p2}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, p3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget v3, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->refCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->refCount:I

    .line 256
    iget-object v3, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->binder:Landroid/os/IBinder;

    .line 257
    .local v3, "binder":Landroid/os/IBinder;
    new-instance v4, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda1;

    invoke-direct {v4, p3, v0, v3}, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda1;-><init>(Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;Landroid/os/IBinder;)V

    invoke-interface {p2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 258
    return-object v2

    .line 261
    .end local v3    # "binder":Landroid/os/IBinder;
    :cond_0
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->isDaemon()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mDaemon:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mRemote:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    .line 262
    .local v3, "p":Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;
    :goto_0
    if-nez v3, :cond_2

    .line 263
    return-object v0

    .line 266
    :cond_2
    :try_start_0
    iget-object v4, v3, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;->mgr:Lcom/topjohnwu/superuser/internal/IRootServiceManager;

    invoke-interface {v4, p1}, Lcom/topjohnwu/superuser/internal/IRootServiceManager;->bind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v4

    .line 267
    .local v4, "binder":Landroid/os/IBinder;
    if-eqz v4, :cond_3

    .line 268
    new-instance v5, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;

    invoke-direct {v5, v0, v4, v3}, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;Landroid/os/IBinder;Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;)V

    move-object v1, v5

    .line 269
    iget-object v5, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->connections:Ljava/util/Map;

    new-instance v6, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;

    invoke-direct {v6, v1, p2}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;Ljava/util/concurrent/Executor;)V

    invoke-interface {v5, p3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v5, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->services:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v5, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda2;

    invoke-direct {v5, p3, v0, v4}, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda2;-><init>(Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;Landroid/os/IBinder;)V

    invoke-interface {p2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 272
    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_4

    .line 273
    new-instance v5, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda3;

    invoke-direct {v5, p3, v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda3;-><init>(Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;)V

    invoke-interface {p2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v4    # "binder":Landroid/os/IBinder;
    :cond_4
    :goto_1
    nop

    .line 281
    return-object v2

    .line 275
    :catch_0
    move-exception v2

    .line 276
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "IPC"

    invoke-static {v4, v2}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    invoke-virtual {v3}, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;->binderDied()V

    .line 278
    return-object v0
.end method

.method private dropConnections(Lcom/topjohnwu/superuser/internal/RootServiceManager$Predicate;)V
    .locals 4
    .param p1, "predicate"    # Lcom/topjohnwu/superuser/internal/RootServiceManager$Predicate;

    .line 319
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->connections:Ljava/util/Map;

    .line 320
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 321
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 323
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;

    .line 324
    .local v2, "r":Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;
    invoke-virtual {v2}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;->getService()Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/topjohnwu/superuser/internal/RootServiceManager$Predicate;->eval(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;->disconnect(Landroid/content/ServiceConnection;)V

    .line 326
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 328
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;>;"
    .end local v2    # "r":Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;
    :cond_0
    goto :goto_0

    .line 329
    :cond_1
    return-void
.end method

.method private static enforceMainThread()V
    .locals 2

    .line 121
    invoke-static {}, Lcom/topjohnwu/superuser/ShellUtils;->onMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method can only be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getBroadcastIntent(Landroid/os/IBinder;Z)Landroid/content/Intent;
    .locals 3
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "isDaemon"    # Z

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "binder"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 113
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.topjohnwu.superuser.RECEIVER_BROADCAST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sget v2, Lcom/topjohnwu/superuser/internal/HiddenAPIs;->FLAG_RECEIVER_FROM_SHELL:I

    .line 115
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 116
    const-string v2, "extra.daemon"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 117
    const-string v2, "extra.bundle"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 113
    return-object v1
.end method

.method public static getInstance()Lcom/topjohnwu/superuser/internal/RootServiceManager;
    .locals 1

    .line 103
    sget-object v0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mInstance:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/topjohnwu/superuser/internal/RootServiceManager;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager;-><init>()V

    sput-object v0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mInstance:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    .line 106
    :cond_0
    sget-object v0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mInstance:Lcom/topjohnwu/superuser/internal/RootServiceManager;

    return-object v0
.end method

.method static synthetic lambda$bindInternal$1(Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;Landroid/os/IBinder;)V
    .locals 1
    .param p0, "conn"    # Landroid/content/ServiceConnection;
    .param p1, "key"    # Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 257
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->getName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$bindInternal$2(Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;Landroid/os/IBinder;)V
    .locals 1
    .param p0, "conn"    # Landroid/content/ServiceConnection;
    .param p1, "key"    # Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 271
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->getName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$bindInternal$3(Landroid/content/ServiceConnection;Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;)V
    .locals 1
    .param p0, "conn"    # Landroid/content/ServiceConnection;
    .param p1, "key"    # Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    .line 273
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->getName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/ServiceConnection;->onNullBinding(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic lambda$startRootProcess$0(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "stdin"    # Ljava/io/OutputStream;
    .param p4, "stdout"    # Ljava/io/InputStream;
    .param p5, "stderr"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    move-object/from16 v9, p1

    move-object/from16 v10, p3

    invoke-static/range {p0 .. p0}, Lcom/topjohnwu/superuser/internal/Utils;->hasStartupAgents(Landroid/content/Context;)Z

    move-result v0

    const-string v11, "IPC"

    if-eqz v0, :cond_0

    .line 172
    const-string v0, " \n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n! Warning: JVMTI agent is enabled. Please enable the !\n! \'Always install with package manager\' option in    !\n! Android Studio. For more details and information,  !\n! check out RootService\'s Javadoc.                   !\n!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->getDeContext()Landroid/content/Context;

    move-result-object v12

    .line 176
    .local v12, "ctx":Landroid/content/Context;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v12}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "main.jar"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v13, v0

    .line 179
    .local v13, "mainJar":Ljava/io/File;
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 180
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v2, v0

    .line 181
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v1, v2}, Lcom/topjohnwu/superuser/internal/Utils;->pump(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v2    # "out":Ljava/io/OutputStream;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 184
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_1
    const-string v0, ""

    .line 185
    .local v0, "env":Ljava/lang/String;
    const-string v1, ""

    .line 187
    .local v1, "params":Ljava/lang/String;
    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->vLog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    const-string v0, "LIBSU_VERBOSE_LOGGING=1 "

    .line 192
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-lt v2, v3, :cond_4

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "LIBSU_DEBUGGER=1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v2, v3, :cond_3

    .line 197
    const-string v1, "-Xrunjdwp:transport=dt_android_adb,suspend=n,server=y -Xcompiler-option --debuggable"

    goto :goto_0

    .line 199
    :cond_3
    const-string v1, "-XjdwpProvider:adbconnection -XjdwpOptions:suspend=n,server=y -Xcompiler-option --debuggable"

    .line 203
    :cond_4
    :goto_0
    nop

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -Xnoimage-dex2oat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 208
    .end local v1    # "params":Ljava/lang/String;
    .local v14, "params":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_5
    goto :goto_1

    :sswitch_0
    const-string/jumbo v1, "start"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :sswitch_1
    const-string v1, "daemon"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :goto_1
    const/4 v1, -0x1

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 217
    const-string v1, ""

    move-object v15, v1

    .local v1, "niceNameCmd":Ljava/lang/String;
    goto :goto_3

    .line 214
    .end local v1    # "niceNameCmd":Ljava/lang/String;
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--nice-name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":root:daemon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .restart local v1    # "niceNameCmd":Ljava/lang/String;
    move-object v15, v1

    goto :goto_3

    .line 210
    .end local v1    # "niceNameCmd":Ljava/lang/String;
    :pswitch_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 211
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const v4, 0x186a0

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 210
    const-string v3, "--nice-name=%s:root:%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .restart local v1    # "niceNameCmd":Ljava/lang/String;
    move-object v15, v1

    .line 222
    .end local v1    # "niceNameCmd":Ljava/lang/String;
    .local v15, "niceNameCmd":Ljava/lang/String;
    :goto_3
    const-string v1, "/system/bin/app_process"

    .line 223
    .local v1, "app_process":Ljava/lang/String;
    nop

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->isProcess64Bit()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "64"

    goto :goto_4

    :cond_6
    const-string v3, "32"

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 226
    .end local v1    # "app_process":Ljava/lang/String;
    .local v16, "app_process":Ljava/lang/String;
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 231
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v1, v0

    move-object v2, v13

    move-object/from16 v3, v16

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v17, v0

    move-object v0, v8

    .end local v0    # "env":Ljava/lang/String;
    .local v17, "env":Ljava/lang/String;
    move-object/from16 v8, p1

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    .line 226
    const-string v2, "(%s CLASSPATH=%s %s %s /system/bin %s com.topjohnwu.superuser.internal.RootServerMain \'%s\' %d %s >/dev/null 2>&1)&"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {v11, v0}, Lcom/topjohnwu/superuser/internal/Utils;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 237
    .local v1, "bytes":[B
    invoke-virtual {v10, v1}, Ljava/io/OutputStream;->write([B)V

    .line 238
    const/16 v2, 0xa

    invoke-virtual {v10, v2}, Ljava/io/OutputStream;->write(I)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Ljava/io/OutputStream;->flush()V

    .line 243
    return-void

    .line 179
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v14    # "params":Ljava/lang/String;
    .end local v15    # "niceNameCmd":Ljava/lang/String;
    .end local v16    # "app_process":Ljava/lang/String;
    .end local v17    # "env":Ljava/lang/String;
    .local v1, "in":Ljava/io/InputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local v12    # "ctx":Landroid/content/Context;
    .end local v13    # "mainJar":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "name":Landroid/content/ComponentName;
    .end local p3    # "stdin":Ljava/io/OutputStream;
    .end local p4    # "stdout":Ljava/io/InputStream;
    .end local p5    # "stderr":Ljava/io/InputStream;
    :goto_5
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v12    # "ctx":Landroid/content/Context;
    .restart local v13    # "mainJar":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "action":Ljava/lang/String;
    .restart local p2    # "name":Landroid/content/ComponentName;
    .restart local p3    # "stdin":Ljava/io/OutputStream;
    .restart local p4    # "stdout":Ljava/io/InputStream;
    .restart local p5    # "stderr":Ljava/io/InputStream;
    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_7

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    throw v2

    :sswitch_data_0
    .sparse-switch
        -0x4fd4e97c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onServiceStopped(Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;)V
    .locals 2
    .param p1, "key"    # Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    .line 332
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->services:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;

    .line 333
    .local v0, "s":Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;
    if-eqz v0, :cond_0

    .line 334
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda5;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;)V

    invoke-direct {p0, v1}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->dropConnections(Lcom/topjohnwu/superuser/internal/RootServiceManager$Predicate;)V

    .line 335
    :cond_0
    return-void
.end method

.method private static parseIntent(Landroid/content/Intent;)Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 128
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 129
    .local v0, "name":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    const-string v2, "com.topjohnwu.superuser.DAEMON_MODE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;-><init>(Landroid/content/ComponentName;Z)V

    return-object v1

    .line 133
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "RootServices outside of the app are not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The intent does not have a component set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private startRootProcess(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Task;
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "action"    # Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 153
    .local v6, "context":Landroid/content/Context;
    iget v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 155
    new-instance v2, Landroid/content/IntentFilter;

    const-string v0, "com.topjohnwu.superuser.RECEIVER_BROADCAST"

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "filter":Landroid/content/IntentFilter;
    nop

    .line 160
    new-instance v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;

    invoke-direct {v1, p0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceReceiver;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceManager;)V

    const-string v3, "android.permission.BROADCAST_PACKAGE_REMOVED"

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 167
    iget v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->flags:I

    .line 170
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v0, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, v6, p2, p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)V

    return-object v0
.end method


# virtual methods
.method public createBindTask(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Lcom/topjohnwu/superuser/Shell$Task;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "conn"    # Landroid/content/ServiceConnection;

    .line 285
    invoke-direct {p0, p1, p2, p3}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->bindInternal(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    move-result-object v0

    .line 286
    .local v0, "key":Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;
    if-eqz v0, :cond_2

    .line 287
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->pendingTasks:Ljava/util/List;

    new-instance v2, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/topjohnwu/superuser/internal/RootServiceManager$$ExternalSyntheticLambda4;-><init>(Lcom/topjohnwu/superuser/internal/RootServiceManager;Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->isDaemon()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 289
    .local v1, "mask":I
    :goto_0
    iget v2, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->flags:I

    and-int v3, v2, v1

    if-nez v3, :cond_2

    .line 290
    or-int/2addr v2, v1

    iput v2, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->flags:I

    .line 291
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->isDaemon()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "daemon"

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "start"

    .line 292
    .local v2, "action":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->getName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->startRootProcess(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Task;

    move-result-object v3

    return-object v3

    .line 295
    .end local v1    # "mask":I
    .end local v2    # "action":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public createStopTask(Landroid/content/Intent;)Lcom/topjohnwu/superuser/Shell$Task;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 338
    invoke-static {}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->enforceMainThread()V

    .line 340
    invoke-static {p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->parseIntent(Landroid/content/Intent;)Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    move-result-object v0

    .line 341
    .local v0, "key":Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->isDaemon()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mDaemon:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->mRemote:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    .line 342
    .local v1, "p":Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;
    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 343
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->isDaemon()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->getName()Landroid/content/ComponentName;

    move-result-object v2

    const-string/jumbo v3, "stop"

    invoke-direct {p0, v2, v3}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->startRootProcess(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Task;

    move-result-object v2

    return-object v2

    .line 347
    :cond_1
    return-object v2

    .line 351
    :cond_2
    :try_start_0
    iget-object v3, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;->mgr:Lcom/topjohnwu/superuser/internal/IRootServiceManager;

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->getName()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Lcom/topjohnwu/superuser/internal/IRootServiceManager;->stop(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    goto :goto_1

    .line 352
    :catch_0
    move-exception v3

    .line 353
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "IPC"

    invoke-static {v4, v3}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->onServiceStopped(Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;)V

    .line 357
    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 362
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 363
    new-instance v0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-direct {v0, v3, v2}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;-><init>(Landroid/content/ComponentName;Z)V

    invoke-direct {p0, v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->onServiceStopped(Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;)V

    .line 365
    :cond_1
    return v1
.end method

.method synthetic lambda$createBindTask$4$com-topjohnwu-superuser-internal-RootServiceManager(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "conn"    # Landroid/content/ServiceConnection;

    .line 287
    invoke-direct {p0, p1, p2, p3}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->bindInternal(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unbind(Landroid/content/ServiceConnection;)V
    .locals 4
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .line 299
    invoke-static {}, Lcom/topjohnwu/superuser/internal/RootServiceManager;->enforceMainThread()V

    .line 301
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->connections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;

    .line 302
    .local v0, "r":Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;
    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;->getService()Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;

    move-result-object v1

    .line 304
    .local v1, "s":Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;
    iget v2, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->refCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->refCount:I

    .line 305
    iget v2, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->refCount:I

    if-nez v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager;->services:Ljava/util/Map;

    iget-object v3, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->key:Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :try_start_0
    iget-object v2, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->host:Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;

    iget-object v2, v2, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteProcess;->mgr:Lcom/topjohnwu/superuser/internal/IRootServiceManager;

    iget-object v3, v1, Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;->key:Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;

    invoke-virtual {v3}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->getName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/topjohnwu/superuser/internal/IRootServiceManager;->unbind(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    goto :goto_0

    .line 310
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "IPC"

    invoke-static {v3, v2}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lcom/topjohnwu/superuser/internal/RootServiceManager$ConnectionRecord;->disconnect(Landroid/content/ServiceConnection;)V

    .line 316
    .end local v1    # "s":Lcom/topjohnwu/superuser/internal/RootServiceManager$RemoteServiceRecord;
    :cond_1
    return-void
.end method
