.class public Lrikka/hidden/compat/AppOpsApis;
.super Ljava/lang/Object;
.source "AppOpsApis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;,
        Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequestFilter;,
        Lrikka/hidden/compat/AppOpsApis$OpHistoryFlags;,
        Lrikka/hidden/compat/AppOpsApis$OpFlags;
    }
.end annotation


# static fields
.field public static final FILTER_BY_ATTRIBUTION_TAG:I = 0x4

.field public static final FILTER_BY_OP_NAMES:I = 0x8

.field public static final FILTER_BY_PACKAGE_NAME:I = 0x2

.field public static final FILTER_BY_UID:I = 0x1

.field public static final HISTORY_FLAGS_ALL:I = 0x3

.field public static final HISTORY_FLAG_AGGREGATE:I = 0x1

.field public static final HISTORY_FLAG_DISCRETE:I = 0x2

.field public static final HISTORY_FLAG_GET_ATTRIBUTION_CHAINS:I = 0x4

.field public static final OP_FLAGS_ALL:I = 0x1f

.field public static final OP_FLAGS_ALL_TRUSTED:I = 0xd

.field public static final OP_FLAG_SELF:I = 0x1

.field public static final OP_FLAG_TRUSTED_PROXIED:I = 0x8

.field public static final OP_FLAG_TRUSTED_PROXY:I = 0x2

.field public static final OP_FLAG_UNTRUSTED_PROXIED:I = 0x10

.field public static final OP_FLAG_UNTRUSTED_PROXY:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHistoricalOps(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 19
    .param p0, "request"    # Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/AppOpsManager$HistoricalOps;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "executor cannot be null"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 474
    const-string v2, "callback cannot be null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 476
    new-instance v15, Landroid/os/RemoteCallback;

    new-instance v2, Lrikka/hidden/compat/AppOpsApis$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lrikka/hidden/compat/AppOpsApis$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v15, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 489
    .local v15, "remoteCallback":Landroid/os/RemoteCallback;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_4f

    .line 490
    sget-object v2, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v2}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/internal/app/IAppOpsService;

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mUid:I
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$100(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I

    move-result v4

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mPackageName:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$200(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mAttributionTag:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$300(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v6

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mOpNames:Ljava/util/List;
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$400(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/util/List;

    move-result-object v7

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mHistoryFlags:I
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$500(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I

    move-result v8

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mFilter:I
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$600(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I

    move-result v9

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mBeginTimeMillis:J
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$700(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)J

    move-result-wide v10

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mEndTimeMillis:J
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$800(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)J

    move-result-wide v12

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mFlags:I
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$900(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I

    move-result v14

    invoke-interface/range {v3 .. v15}, Lcom/android/internal/app/IAppOpsService;->getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V

    goto :goto_a8

    .line 491
    :cond_4f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_83

    .line 492
    sget-object v2, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v2}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/internal/app/IAppOpsService;

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mUid:I
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$100(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I

    move-result v4

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mPackageName:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$200(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mAttributionTag:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$300(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v6

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mOpNames:Ljava/util/List;
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$400(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/util/List;

    move-result-object v7

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mFilter:I
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$600(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I

    move-result v8

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mBeginTimeMillis:J
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$700(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)J

    move-result-wide v9

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mEndTimeMillis:J
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$800(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)J

    move-result-wide v11

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mFlags:I
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$900(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I

    move-result v13

    move-object v14, v15

    invoke-interface/range {v3 .. v14}, Lcom/android/internal/app/IAppOpsService;->getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJILandroid/os/RemoteCallback;)V

    goto :goto_a8

    .line 494
    :cond_83
    sget-object v2, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v2}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/internal/app/IAppOpsService;

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mUid:I
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$100(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I

    move-result v4

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mPackageName:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$200(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mOpNames:Ljava/util/List;
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$400(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/util/List;

    move-result-object v6

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mBeginTimeMillis:J
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$700(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)J

    move-result-wide v7

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mEndTimeMillis:J
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$800(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)J

    move-result-wide v9

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mFlags:I
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$900(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I

    move-result v11

    move-object v12, v15

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/app/IAppOpsService;->getHistoricalOps(ILjava/lang/String;Ljava/util/List;JJILandroid/os/RemoteCallback;)V

    .line 496
    :goto_a8
    return-void
.end method

.method public static getHistoricalOpsFromDiskRaw(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 19
    .param p0, "request"    # Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/AppOpsManager$HistoricalOps;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "executor cannot be null"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 504
    const-string v2, "callback cannot be null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 506
    new-instance v15, Landroid/os/RemoteCallback;

    new-instance v2, Lrikka/hidden/compat/AppOpsApis$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, v1}, Lrikka/hidden/compat/AppOpsApis$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v15, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 519
    .local v15, "remoteCallback":Landroid/os/RemoteCallback;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_4f

    .line 520
    sget-object v2, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v2}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/internal/app/IAppOpsService;

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mUid:I
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$100(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I

    move-result v4

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mPackageName:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$200(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mAttributionTag:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$300(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v6

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mOpNames:Ljava/util/List;
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$400(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/util/List;

    move-result-object v7

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mHistoryFlags:I
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$500(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I

    move-result v8

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mFilter:I
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$600(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I

    move-result v9

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mBeginTimeMillis:J
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$700(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)J

    move-result-wide v10

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mEndTimeMillis:J
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$800(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)J

    move-result-wide v12

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mFlags:I
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$900(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I

    move-result v14

    invoke-interface/range {v3 .. v15}, Lcom/android/internal/app/IAppOpsService;->getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V

    goto :goto_a8

    .line 521
    :cond_4f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_83

    .line 522
    sget-object v2, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v2}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/internal/app/IAppOpsService;

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mUid:I
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$100(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I

    move-result v4

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mPackageName:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$200(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mAttributionTag:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$300(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v6

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mOpNames:Ljava/util/List;
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$400(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/util/List;

    move-result-object v7

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mFilter:I
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$600(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I

    move-result v8

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mBeginTimeMillis:J
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$700(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)J

    move-result-wide v9

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mEndTimeMillis:J
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$800(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)J

    move-result-wide v11

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mFlags:I
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$900(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I

    move-result v13

    move-object v14, v15

    invoke-interface/range {v3 .. v14}, Lcom/android/internal/app/IAppOpsService;->getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJILandroid/os/RemoteCallback;)V

    goto :goto_a8

    .line 524
    :cond_83
    sget-object v2, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v2}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/internal/app/IAppOpsService;

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mUid:I
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$100(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I

    move-result v4

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mPackageName:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$200(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mOpNames:Ljava/util/List;
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$400(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)Ljava/util/List;

    move-result-object v6

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mBeginTimeMillis:J
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$700(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)J

    move-result-wide v7

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mEndTimeMillis:J
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$800(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)J

    move-result-wide v9

    # getter for: Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->mFlags:I
    invoke-static/range {p0 .. p0}, Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;->access$900(Lrikka/hidden/compat/AppOpsApis$HistoricalOpsRequest;)I

    move-result v11

    move-object v12, v15

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/app/IAppOpsService;->getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/util/List;JJILandroid/os/RemoteCallback;)V

    .line 526
    :goto_a8
    return-void
.end method

.method public static getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 4
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    sget-object v0, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getUidOps(I[I)Ljava/util/List;
    .registers 3
    .param p0, "uid"    # I
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    sget-object v0, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isOperationActive(IILjava/lang/String;)Z
    .registers 4
    .param p0, "code"    # I
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    sget-object v0, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->isOperationActive(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getHistoricalOps$0(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 483
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getHistoricalOps$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 477
    if-nez p2, :cond_3

    return-void

    .line 479
    :cond_3
    sget-object v0, Landroid/app/AppOpsManager;->KEY_HISTORICAL_OPS:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 481
    .local v0, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 483
    .local v1, "identity":J
    :try_start_f
    new-instance v3, Lrikka/hidden/compat/AppOpsApis$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1, v0}, Lrikka/hidden/compat/AppOpsApis$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1c

    .line 485
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 486
    nop

    .line 487
    return-void

    .line 485
    :catchall_1c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 486
    throw v3
.end method

.method static synthetic lambda$getHistoricalOpsFromDiskRaw$2(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 513
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getHistoricalOpsFromDiskRaw$3(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 507
    if-nez p2, :cond_3

    return-void

    .line 509
    :cond_3
    sget-object v0, Landroid/app/AppOpsManager;->KEY_HISTORICAL_OPS:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 511
    .local v0, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 513
    .local v1, "identity":J
    :try_start_f
    new-instance v3, Lrikka/hidden/compat/AppOpsApis$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0}, Lrikka/hidden/compat/AppOpsApis$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1c

    .line 515
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    nop

    .line 517
    return-void

    .line 515
    :catchall_1c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    throw v3
.end method

.method public static resetAllModes(ILjava/lang/String;)V
    .registers 3
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    sget-object v0, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 50
    return-void
.end method

.method public static resetHistoryParameters()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 535
    sget-object v0, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->resetHistoryParameters()V

    .line 536
    return-void
.end method

.method public static setHistoryParameters(IJI)V
    .registers 5
    .param p0, "mode"    # I
    .param p1, "baseSnapshotInterval"    # J
    .param p3, "compressionStep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    sget-object v0, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setHistoryParameters(IJI)V

    .line 531
    return-void
.end method

.method public static setMode(IILjava/lang/String;I)V
    .registers 5
    .param p0, "code"    # I
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    sget-object v0, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    .line 42
    return-void
.end method

.method public static setUidMode(III)V
    .registers 4
    .param p0, "code"    # I
    .param p1, "uid"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    sget-object v0, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V

    .line 46
    return-void
.end method

.method public static startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    .registers 3
    .param p0, "ops"    # [I
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsActiveCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    sget-object v0, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/app/IAppOpsService;->startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V

    .line 55
    return-void
.end method

.method public static startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V
    .registers 3
    .param p0, "ops"    # [I
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsNotedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    sget-object v0, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/app/IAppOpsService;->startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V

    .line 70
    return-void
.end method

.method public static stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    .registers 2
    .param p0, "callback"    # Lcom/android/internal/app/IAppOpsActiveCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    sget-object v0, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p0}, Lcom/android/internal/app/IAppOpsService;->stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V

    .line 60
    return-void
.end method

.method public static stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V
    .registers 2
    .param p0, "callback"    # Lcom/android/internal/app/IAppOpsNotedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    sget-object v0, Lrikka/hidden/compat/Services;->appOps:Lrikka/hidden/compat/util/SystemServiceBinder;

    invoke-virtual {v0}, Lrikka/hidden/compat/util/SystemServiceBinder;->get()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p0}, Lcom/android/internal/app/IAppOpsService;->stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V

    .line 75
    return-void
.end method
