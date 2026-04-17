.class public final synthetic Lrikka/hidden/compat/Services$$ExternalSyntheticLambda6;
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

    invoke-static {p1}, Lrikka/hidden/compat/Services;->$r8$lambda$lN2KZAS5u4-_IqertEms3cWepC0(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object p1

    return-object p1
.end method
