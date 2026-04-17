.class final Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$FragmentCImpl;
.super Lcom/pandasu/turbo/PandaSUApp_HiltComponents$FragmentC;
.source "DaggerPandaSUApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentCImpl"
.end annotation


# instance fields
.field private final activityCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;

.field private final activityRetainedCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final fragmentCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$FragmentCImpl;

.field private final singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method private constructor <init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;Landroidx/fragment/app/Fragment;)V
    .registers 5
    .param p1, "singletonCImpl"    # Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "activityCImpl"    # Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;
    .param p4, "fragmentParam"    # Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl",
            "fragmentParam"
        }
    .end annotation

    .line 326
    invoke-direct {p0}, Lcom/pandasu/turbo/PandaSUApp_HiltComponents$FragmentC;-><init>()V

    .line 322
    iput-object p0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$FragmentCImpl;->fragmentCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$FragmentCImpl;

    .line 327
    iput-object p1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 328
    iput-object p2, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$FragmentCImpl;->activityRetainedCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 329
    iput-object p3, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$FragmentCImpl;->activityCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;

    .line 332
    return-void
.end method

.method synthetic constructor <init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;Landroidx/fragment/app/Fragment;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$FragmentCImpl-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$FragmentCImpl;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public getHiltInternalFactoryFactory()Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$FragmentCImpl;->activityCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {v0}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;->getHiltInternalFactoryFactory()Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;

    move-result-object v0

    return-object v0
.end method

.method public viewWithFragmentComponentBuilder()Ldagger/hilt/android/internal/builders/ViewWithFragmentComponentBuilder;
    .registers 8

    .line 341
    new-instance v6, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewWithFragmentCBuilder;

    iget-object v1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$FragmentCImpl;->activityRetainedCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$FragmentCImpl;->activityCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;

    iget-object v4, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$FragmentCImpl;->fragmentCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$FragmentCImpl;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewWithFragmentCBuilder;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$FragmentCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewWithFragmentCBuilder-IA;)V

    return-object v6
.end method
