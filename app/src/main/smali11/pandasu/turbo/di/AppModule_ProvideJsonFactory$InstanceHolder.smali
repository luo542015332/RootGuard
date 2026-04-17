.class final Lcom/pandasu/turbo/di/AppModule_ProvideJsonFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "AppModule_ProvideJsonFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/di/AppModule_ProvideJsonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/pandasu/turbo/di/AppModule_ProvideJsonFactory;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/pandasu/turbo/di/AppModule_ProvideJsonFactory;
    .registers 1

    sget-object v0, Lcom/pandasu/turbo/di/AppModule_ProvideJsonFactory$InstanceHolder;->INSTANCE:Lcom/pandasu/turbo/di/AppModule_ProvideJsonFactory;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/pandasu/turbo/di/AppModule_ProvideJsonFactory;

    invoke-direct {v0}, Lcom/pandasu/turbo/di/AppModule_ProvideJsonFactory;-><init>()V

    sput-object v0, Lcom/pandasu/turbo/di/AppModule_ProvideJsonFactory$InstanceHolder;->INSTANCE:Lcom/pandasu/turbo/di/AppModule_ProvideJsonFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
