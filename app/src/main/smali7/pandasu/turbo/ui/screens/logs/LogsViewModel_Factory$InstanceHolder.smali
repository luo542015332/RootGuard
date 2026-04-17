.class final Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "LogsViewModel_Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel_Factory;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel_Factory;
    .registers 1

    sget-object v0, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel_Factory$InstanceHolder;->INSTANCE:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel_Factory;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel_Factory;

    invoke-direct {v0}, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel_Factory;-><init>()V

    sput-object v0, Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel_Factory$InstanceHolder;->INSTANCE:Lcom/pandasu/turbo/ui/screens/logs/LogsViewModel_Factory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
