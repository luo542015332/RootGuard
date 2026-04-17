.class Lcom/topjohnwu/superuser/internal/RootServerMain;
.super Landroid/content/ContextWrapper;
.source "RootServerMain.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/topjohnwu/superuser/internal/RootServerMain$ResourcesWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/ContextWrapper;",
        "Ljava/util/concurrent/Callable<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final CMDLINE_START_DAEMON:Ljava/lang/String; = "daemon"

.field static final CMDLINE_START_SERVICE:Ljava/lang/String; = "start"

.field static final CMDLINE_STOP_SERVICE:Ljava/lang/String; = "stop"

.field private static final attachBaseContext:Ljava/lang/reflect/Method;

.field private static final getService:Ljava/lang/reflect/Method;


# instance fields
.field private final isDaemon:Z

.field private final uid:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 62
    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 63
    .local v0, "sm":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/topjohnwu/superuser/internal/RootServerMain;->getService:Ljava/lang/reflect/Method;

    .line 64
    const-class v1, Landroid/content/ContextWrapper;

    const-string v3, "attachBaseContext"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/topjohnwu/superuser/internal/RootServerMain;->attachBaseContext:Ljava/lang/reflect/Method;

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2b

    .line 69
    .end local v0    # "sm":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 70
    return-void

    .line 66
    :catch_2b
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 18
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    move-object/from16 v1, p0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 126
    const/4 v3, 0x0

    aget-object v0, p1, v3

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 127
    .local v4, "name":Landroid/content/ComponentName;
    const/4 v5, 0x1

    aget-object v0, p1, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/topjohnwu/superuser/internal/RootServerMain;->uid:I

    .line 128
    const/4 v6, 0x2

    aget-object v7, p1, v6

    .line 129
    .local v7, "action":Ljava/lang/String;
    const/4 v8, 0x0

    .line 131
    .local v8, "stop":Z
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_176

    :cond_21
    goto :goto_42

    :sswitch_22
    const-string/jumbo v9, "start"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    move v9, v6

    goto :goto_43

    :sswitch_2d
    const-string/jumbo v9, "stop"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    move v9, v3

    goto :goto_43

    :sswitch_38
    const-string v9, "daemon"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    move v9, v5

    goto :goto_43

    :goto_42
    const/4 v9, -0x1

    :goto_43
    packed-switch v9, :pswitch_data_184

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown action"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :pswitch_4e
    iput-boolean v3, v1, Lcom/topjohnwu/superuser/internal/RootServerMain;->isDaemon:Z

    .line 140
    goto :goto_55

    .line 133
    :pswitch_51
    const/4 v8, 0x1

    .line 136
    :pswitch_52
    iput-boolean v5, v1, Lcom/topjohnwu/superuser/internal/RootServerMain;->isDaemon:Z

    .line 137
    nop

    .line 145
    :goto_55
    iget-boolean v9, v1, Lcom/topjohnwu/superuser/internal/RootServerMain;->isDaemon:Z

    if-eqz v9, :cond_96

    .line 147
    :try_start_59
    sget-object v9, Lcom/topjohnwu/superuser/internal/RootServerMain;->getService:Ljava/lang/reflect/Method;

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/topjohnwu/superuser/internal/RootServerMain;->getServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-virtual {v9, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 148
    .local v9, "binder":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroid/os/IBinder;

    invoke-static {v10}, Lcom/topjohnwu/superuser/internal/IRootServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/topjohnwu/superuser/internal/IRootServiceManager;

    move-result-object v10
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_72} :catch_90
    .catchall {:try_start_59 .. :try_end_72} :catchall_89

    .line 149
    .local v10, "m":Lcom/topjohnwu/superuser/internal/IRootServiceManager;
    if-nez v10, :cond_7a

    .line 161
    if-eqz v8, :cond_96

    .line 162
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_96

    .line 152
    :cond_7a
    if-eqz v8, :cond_80

    .line 153
    :try_start_7c
    invoke-interface {v10, v4, v0}, Lcom/topjohnwu/superuser/internal/IRootServiceManager;->stop(Landroid/content/ComponentName;I)V

    goto :goto_86

    .line 155
    :cond_80
    invoke-interface {v10, v0}, Lcom/topjohnwu/superuser/internal/IRootServiceManager;->broadcast(I)V

    .line 157
    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_86} :catch_90
    .catchall {:try_start_7c .. :try_end_86} :catchall_89

    .line 161
    .end local v9    # "binder":Ljava/lang/Object;
    .end local v10    # "m":Lcom/topjohnwu/superuser/internal/IRootServiceManager;
    :goto_86
    if-eqz v8, :cond_96

    .line 162
    goto :goto_93

    .line 161
    :catchall_89
    move-exception v0

    if-eqz v8, :cond_8f

    .line 162
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 163
    :cond_8f
    throw v0

    .line 159
    :catch_90
    move-exception v0

    .line 161
    if-eqz v8, :cond_96

    .line 162
    :goto_93
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 169
    :cond_96
    :goto_96
    :try_start_96
    const-string v0, "com.lge.systemservice.core.integrity.IntegrityManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 171
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 172
    .local v0, "systemRes":Landroid/content/res/Resources;
    new-instance v9, Lcom/topjohnwu/superuser/internal/RootServerMain$ResourcesWrapper;

    invoke-direct {v9, v0}, Lcom/topjohnwu/superuser/internal/RootServerMain$ResourcesWrapper;-><init>(Landroid/content/res/Resources;)V

    .line 173
    .local v9, "wrapper":Landroid/content/res/Resources;
    const-class v10, Landroid/content/res/Resources;

    const-string v11, "mSystem"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 174
    .local v10, "systemResField":Ljava/lang/reflect/Field;
    invoke-virtual {v10, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 175
    invoke-virtual {v10, v2, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_96 .. :try_end_b2} :catch_b3

    .end local v0    # "systemRes":Landroid/content/res/Resources;
    .end local v9    # "wrapper":Landroid/content/res/Resources;
    .end local v10    # "systemResField":Ljava/lang/reflect/Field;
    goto :goto_b4

    .line 176
    :catch_b3
    move-exception v0

    :goto_b4
    nop

    .line 178
    invoke-static {}, Lcom/topjohnwu/superuser/internal/RootServerMain;->getSystemContext()Landroid/content/Context;

    move-result-object v9

    .line 180
    .local v9, "systemContext":Landroid/content/Context;
    iget v0, v1, Lcom/topjohnwu/superuser/internal/RootServerMain;->uid:I

    const v10, 0x186a0

    div-int v10, v0, v10

    .line 181
    .local v10, "userId":I
    const/4 v11, 0x3

    .line 185
    .local v11, "flags":I
    :try_start_c1
    const-class v0, Landroid/os/UserHandle;

    const-string v12, "of"

    new-array v13, v5, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v3

    .line 186
    invoke-virtual {v0, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-virtual {v0, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;
    :try_end_dd
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c1 .. :try_end_dd} :catch_e0
    .catchall {:try_start_c1 .. :try_end_dd} :catchall_de

    .line 190
    .local v0, "userHandle":Landroid/os/UserHandle;
    goto :goto_fc

    .line 195
    .end local v0    # "userHandle":Landroid/os/UserHandle;
    :catchall_de
    move-exception v0

    goto :goto_12d

    .line 187
    :catch_e0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :try_start_e1
    const-class v2, Landroid/os/UserHandle;

    new-array v12, v5, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v3

    .line 189
    invoke-virtual {v2, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-virtual {v2, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    move-object v0, v2

    .line 191
    .local v0, "userHandle":Landroid/os/UserHandle;
    :goto_fc
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v12, "createPackageContextAsUser"

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v3

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v14, v5

    const-class v15, Landroid/os/UserHandle;

    aput-object v15, v14, v6

    .line 192
    invoke-virtual {v2, v12, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v12, v13, [Ljava/lang/Object;

    .line 194
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    aput-object v0, v12, v6

    invoke-virtual {v2, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;
    :try_end_12b
    .catchall {:try_start_e1 .. :try_end_12b} :catchall_de

    move-object v0, v2

    .line 198
    .local v0, "context":Landroid/content/Context;
    goto :goto_14e

    .line 196
    .local v0, "e":Ljava/lang/Throwable;
    :goto_12d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create package context as user: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "IPC"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    move-object v0, v2

    .line 199
    .local v0, "context":Landroid/content/Context;
    :goto_14e
    invoke-virtual {v1, v0}, Lcom/topjohnwu/superuser/internal/RootServerMain;->attachBaseContext(Landroid/content/Context;)V

    .line 202
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 204
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 205
    .local v6, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v12, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    .line 206
    .local v12, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v12, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 207
    sget-object v5, Lcom/topjohnwu/superuser/internal/RootServerMain;->attachBaseContext:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v12, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v3, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void

    :sswitch_data_176
    .sparse-switch
        -0x4fd4e97c -> :sswitch_38
        0x360802 -> :sswitch_2d
        0x68ac462 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_51
        :pswitch_52
        :pswitch_4e
    .end packed-switch
.end method

.method static getServiceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "pkg"    # Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "libsu-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSystemContext()Landroid/content/Context;
    .registers 6

    .line 75
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 76
    .local v0, "atClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v1, "systemMain"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 77
    .local v1, "systemMain":Ljava/lang/reflect/Method;
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 78
    .local v3, "activityThread":Ljava/lang/Object;
    const-string v4, "getSystemContext"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 79
    .local v4, "getSystemContext":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    return-object v2

    .line 80
    .end local v0    # "atClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "systemMain":Ljava/lang/reflect/Method;
    .end local v3    # "activityThread":Ljava/lang/Object;
    .end local v4    # "getSystemContext":Ljava/lang/reflect/Method;
    :catch_28
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5
    .param p0, "args"    # [Ljava/lang/String;

    .line 92
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 93
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 94
    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ge v0, v1, :cond_12

    .line 95
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 97
    :cond_12
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 100
    :try_start_15
    new-instance v0, Lcom/topjohnwu/superuser/internal/RootServerMain;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/internal/RootServerMain;-><init>([Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1b

    .line 104
    goto :goto_26

    .line 101
    :catch_1b
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IPC"

    const-string v3, "Error in IPCMain"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_26
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 108
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 109
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/RootServerMain;->call()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public call()[Ljava/lang/Object;
    .registers 4

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 117
    .local v0, "objs":[Ljava/lang/Object;
    iget v1, p0, Lcom/topjohnwu/superuser/internal/RootServerMain;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 118
    iget-boolean v1, p0, Lcom/topjohnwu/superuser/internal/RootServerMain;->isDaemon:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 119
    return-object v0
.end method
