.class public Lrikka/hidden/compat/ActivityManagerApis;
.super Ljava/lang/Object;
.source "ActivityManagerApis.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadcastIntent(Landroid/content/Intent;I)V
    .registers 15
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    move v11, v0

    .line 110
    .local v11, "sticky":Z
    const/4 v2, 0x0

    new-instance v3, Lrikka/hidden/compat/adapter/IntentReceiver;

    invoke-direct {v3}, Lrikka/hidden/compat/adapter/IntentReceiver;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, p0

    move v12, p1

    invoke-static/range {v1 .. v12}, Lrikka/hidden/compat/ActivityManagerApis;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)V

    .line 112
    return-void
.end method

.method public static broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)V
    .registers 27
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "resolvedType"    # Ljava/lang/String;
    .param p2, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "map"    # Landroid/os/Bundle;
    .param p6, "requiredPermissions"    # [Ljava/lang/String;
    .param p7, "appOp"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .param p9, "serialized"    # Z
    .param p10, "sticky"    # Z
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/IActivityManager;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v3, p0

    move-object/from16 v5, p2

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 106
    return-void
.end method

.method public static checkPermission(Ljava/lang/String;II)I
    .registers 4
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    invoke-interface {v0, p0, p1, p2}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static forceStopPackage(Ljava/lang/String;I)V
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 131
    return-void
.end method

.method public static forceStopPackageNoThrow(Ljava/lang/String;I)V
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 83
    :try_start_0
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 85
    goto :goto_d

    .line 84
    :catch_c
    move-exception v0

    .line 86
    :goto_d
    return-void
.end method

.method public static getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 64
    .local v0, "am":Landroid/app/IActivityManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x0

    if-lt v1, v2, :cond_19

    .line 65
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;

    move-result-object v1

    .line 66
    .local v1, "contentProviderHolder":Landroid/app/ContentProviderHolder;
    if-eqz v1, :cond_17

    iget-object v3, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    :cond_17
    move-object v2, v3

    .local v2, "provider":Landroid/content/IContentProvider;
    goto :goto_23

    .line 67
    .end local v1    # "contentProviderHolder":Landroid/app/ContentProviderHolder;
    .end local v2    # "provider":Landroid/content/IContentProvider;
    :cond_19
    nop

    .line 68
    invoke-interface {v0, p0, p1, p2}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/ContentProviderHolder;

    move-result-object v1

    .line 69
    .restart local v1    # "contentProviderHolder":Landroid/app/ContentProviderHolder;
    if-eqz v1, :cond_22

    iget-object v3, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    :cond_22
    move-object v2, v3

    .line 74
    .end local v1    # "contentProviderHolder":Landroid/app/ContentProviderHolder;
    .restart local v2    # "provider":Landroid/content/IContentProvider;
    :goto_23
    return-object v2
.end method

.method public static getDelegatedShellPermissions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getDelegatedShellPermissions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageProcessState(Ljava/lang/String;ILjava/lang/String;)I
    .registers 6
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 117
    .local v0, "am":Landroid/app/IActivityManager;
    nop

    .line 118
    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, p1}, Lrikka/hidden/compat/PackageManagerApis;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/app/IActivityManager;->getUidProcessState(ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getTasks(I)Ljava/util/List;
    .registers 3
    .param p0, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_13

    .line 178
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 180
    :cond_13
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static registerProcessObserver(Landroid/app/IProcessObserver;)V
    .registers 2
    .param p0, "processObserver"    # Landroid/app/IProcessObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 45
    return-void
.end method

.method public static registerReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;
    .registers 20
    .param p0, "callerPackage"    # Ljava/lang/String;
    .param p1, "callingFeatureId"    # Ljava/lang/String;
    .param p2, "receiverId"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "filter"    # Landroid/content/IntentFilter;
    .param p5, "requiredPermission"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .param p7, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    move-object v0, p3

    if-eqz v0, :cond_9

    .line 191
    new-instance v1, Lrikka/hidden/compat/ActivityManagerApis$1;

    invoke-direct {v1, p3}, Lrikka/hidden/compat/ActivityManagerApis$1;-><init>(Landroid/content/BroadcastReceiver;)V

    .local v1, "intentReceiver":Landroid/content/IIntentReceiver;
    goto :goto_a

    .line 198
    .end local v1    # "intentReceiver":Landroid/content/IIntentReceiver;
    :cond_9
    const/4 v1, 0x0

    .line 201
    .restart local v1    # "intentReceiver":Landroid/content/IIntentReceiver;
    :goto_a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_2a

    .line 202
    sget-object v2, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v2}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager;

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, v1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-interface/range {v2 .. v11}, Landroid/app/IActivityManager;->registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 205
    :cond_2a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_49

    .line 206
    sget-object v2, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v2}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager;

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, v1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v2 .. v10}, Landroid/app/IActivityManager;->registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 209
    :cond_49
    nop

    .line 210
    sget-object v2, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v2}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager;

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, v1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method public static registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 2
    .param p0, "listener"    # Landroid/app/ITaskStackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 170
    return-void
.end method

.method public static registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    .registers 5
    .param p0, "observer"    # Landroid/app/IUidObserver;
    .param p1, "which"    # I
    .param p2, "cutpoint"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 53
    return-void
.end method

.method public static removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 79
    return-void
.end method

.method public static startActivity(Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 16
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/IActivityManager;

    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, Landroid/app/IApplicationThread;

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v0

    const/16 v3, 0x7d0

    if-ne v0, v3, :cond_18

    const-string v0, "com.android.shell"

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    move-object v3, v0

    const/4 v6, 0x0

    move-object v0, v6

    check-cast v0, Landroid/os/IBinder;

    const/4 v7, 0x0

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v10

    check-cast v0, Landroid/app/ProfilerInfo;

    const/4 v11, 0x0

    move-object v0, v11

    check-cast v0, Landroid/os/Bundle;

    move-object v4, p0

    move-object v5, p1

    move v12, p2

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    .line 90
    return-void
.end method

.method public static startActivityNoThrow(Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 94
    :try_start_0
    invoke-static {p0, p1, p2}, Lrikka/hidden/compat/ActivityManagerApis;->startActivity(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 96
    goto :goto_5

    .line 95
    :catchall_4
    move-exception v0

    .line 97
    :goto_5
    return-void
.end method

.method public static startDelegateShellPermissionIdentity(I[Ljava/lang/String;)V
    .registers 3
    .param p0, "uid"    # I
    .param p1, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityManager;->startDelegateShellPermissionIdentity(I[Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static stopDelegateShellPermissionIdentity()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopDelegateShellPermissionIdentity()V

    .line 152
    return-void
.end method

.method public static unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .registers 2
    .param p0, "observer"    # Landroid/app/IProcessObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 49
    return-void
.end method

.method public static unregisterReceiver(Landroid/content/IIntentReceiver;)V
    .registers 2
    .param p0, "receiver"    # Landroid/content/IIntentReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 222
    return-void
.end method

.method public static unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 2
    .param p0, "listener"    # Landroid/app/ITaskStackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 174
    return-void
.end method

.method public static unregisterUidObserver(Landroid/app/IUidObserver;)V
    .registers 2
    .param p0, "observer"    # Landroid/app/IUidObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    sget-object v0, Lrikka/hidden/compat/Services;->activityManager:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 57
    return-void
.end method
