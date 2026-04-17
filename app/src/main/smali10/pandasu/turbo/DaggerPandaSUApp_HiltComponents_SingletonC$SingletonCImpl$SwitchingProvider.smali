.class final Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "DaggerPandaSUApp_HiltComponents_SingletonC.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwitchingProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final id:I

.field private final singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method constructor <init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;I)V
    .registers 3
    .param p1, "singletonCImpl"    # Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "id"
        }
    .end annotation

    .line 622
    .local p0, "this":Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;, "Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput-object p1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 624
    iput p2, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->id:I

    .line 625
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 630
    .local p0, "this":Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;, "Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider<TT;>;"
    iget v0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->id:I

    packed-switch v0, :pswitch_data_68

    .line 646
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->id:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 644
    :pswitch_d
    new-instance v0, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;

    iget-object v1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetapplicationContextModule(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideContextFactory;->provideContext(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/utils/OneClickIsolationHelper;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 641
    :pswitch_1d
    new-instance v0, Lcom/pandasu/turbo/util/DetectorScanner;

    iget-object v1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetapplicationContextModule(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideContextFactory;->provideContext(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/util/DetectorScanner;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 638
    :pswitch_2d
    iget-object v0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetapplicationContextModule(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideContextFactory;->provideContext(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pandasu/turbo/di/AppModule_ProvideSettingsDataStoreFactory;->provideSettingsDataStore(Landroid/content/Context;)Lcom/pandasu/turbo/data/local/SettingsDataStore;

    move-result-object v0

    return-object v0

    .line 635
    :pswitch_3c
    new-instance v0, Lcom/pandasu/turbo/data/magisk/RootHider;

    iget-object v1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetapplicationContextModule(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideContextFactory;->provideContext(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v2}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetisolationDataStoreProvider(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pandasu/turbo/data/local/IsolationDataStore;

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/data/magisk/RootHider;-><init>(Landroid/content/Context;Lcom/pandasu/turbo/data/local/IsolationDataStore;)V

    return-object v0

    .line 632
    :pswitch_58
    new-instance v0, Lcom/pandasu/turbo/data/local/IsolationDataStore;

    iget-object v1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetapplicationContextModule(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideContextFactory;->provideContext(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/data/local/IsolationDataStore;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_58
        :pswitch_3c
        :pswitch_2d
        :pswitch_1d
        :pswitch_d
    .end packed-switch
.end method
