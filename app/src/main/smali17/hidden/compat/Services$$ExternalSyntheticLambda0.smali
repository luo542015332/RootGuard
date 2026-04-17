.class public final synthetic Lrikka/hidden/compat/Services$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lrikka/hidden/compat/Services;->$r8$lambda$ZztB2WLC7fbGHAR3hunSrmLyfJg(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object p1

    return-object p1
.end method
