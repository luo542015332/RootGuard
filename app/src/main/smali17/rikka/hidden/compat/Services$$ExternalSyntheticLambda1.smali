.class public final synthetic Lrikka/hidden/compat/Services$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrikka/hidden/compat/util/SystemServiceBinder$ServiceCreator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lrikka/hidden/compat/Services;->lambda$static$0(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object p1

    return-object p1
.end method
