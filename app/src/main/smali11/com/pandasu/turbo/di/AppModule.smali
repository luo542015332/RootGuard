.class public final Lcom/pandasu/turbo/di/AppModule;
.super Ljava/lang/Object;
.source "AppModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0007J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006H\u0007J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/pandasu/turbo/di/AppModule;",
        "",
        "()V",
        "provideJson",
        "Lkotlinx/serialization/json/Json;",
        "provideMagiskProvider",
        "Lcom/pandasu/turbo/data/magisk/MagiskProvider;",
        "context",
        "Landroid/content/Context;",
        "provideMagiskRepository",
        "Lcom/pandasu/turbo/data/repository/MagiskRepository;",
        "magiskProvider",
        "provideSettingsDataStore",
        "Lcom/pandasu/turbo/data/local/SettingsDataStore;",
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

.field public static final INSTANCE:Lcom/pandasu/turbo/di/AppModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pandasu/turbo/di/AppModule;

    invoke-direct {v0}, Lcom/pandasu/turbo/di/AppModule;-><init>()V

    sput-object v0, Lcom/pandasu/turbo/di/AppModule;->INSTANCE:Lcom/pandasu/turbo/di/AppModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideJson()Lkotlinx/serialization/json/Json;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 23
    sget-object v0, Lcom/pandasu/turbo/di/AppModule$provideJson$1;->INSTANCE:Lcom/pandasu/turbo/di/AppModule$provideJson$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    return-object v0
.end method

.method public final provideMagiskProvider(Landroid/content/Context;)Lcom/pandasu/turbo/data/magisk/MagiskProvider;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/pandasu/turbo/data/magisk/MagiskProvider;

    invoke-direct {v0, p1}, Lcom/pandasu/turbo/data/magisk/MagiskProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final provideMagiskRepository(Lcom/pandasu/turbo/data/magisk/MagiskProvider;)Lcom/pandasu/turbo/data/repository/MagiskRepository;
    .locals 1
    .param p1, "magiskProvider"    # Lcom/pandasu/turbo/data/magisk/MagiskProvider;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "magiskProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/pandasu/turbo/data/repository/MagiskRepository;

    invoke-direct {v0, p1}, Lcom/pandasu/turbo/data/repository/MagiskRepository;-><init>(Lcom/pandasu/turbo/data/magisk/MagiskProvider;)V

    return-object v0
.end method

.method public final provideSettingsDataStore(Landroid/content/Context;)Lcom/pandasu/turbo/data/local/SettingsDataStore;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;

    invoke-direct {v0, p1}, Lcom/pandasu/turbo/data/local/SettingsDataStore;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
