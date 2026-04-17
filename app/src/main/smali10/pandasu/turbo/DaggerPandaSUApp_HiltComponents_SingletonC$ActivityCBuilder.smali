.class final Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCBuilder;
.super Ljava/lang/Object;
.source "DaggerPandaSUApp_HiltComponents_SingletonC.java"

# interfaces
.implements Lcom/pandasu/turbo/PandaSUApp_HiltComponents$ActivityC$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityCBuilder"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private final activityRetainedCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method private constructor <init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;)V
    .registers 3
    .param p1, "singletonCImpl"    # Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCBuilder;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 128
    iput-object p2, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCBuilder;->activityRetainedCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCBuilder-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCBuilder;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;)V

    return-void
.end method


# virtual methods
.method public activity(Landroid/app/Activity;)Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCBuilder;
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 133
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCBuilder;->activity:Landroid/app/Activity;

    .line 134
    return-object p0
.end method

.method public bridge synthetic activity(Landroid/app/Activity;)Ldagger/hilt/android/internal/builders/ActivityComponentBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "activity"
        }
    .end annotation

    .line 118
    invoke-virtual {p0, p1}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCBuilder;->activity(Landroid/app/Activity;)Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/pandasu/turbo/PandaSUApp_HiltComponents$ActivityC;
    .registers 6

    .line 139
    iget-object v0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCBuilder;->activity:Landroid/app/Activity;

    const-class v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 140
    new-instance v0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;

    iget-object v1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCBuilder;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCBuilder;->activityRetainedCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCBuilder;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Landroid/app/Activity;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl-IA;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/hilt/android/components/ActivityComponent;
    .registers 2

    .line 118
    invoke-virtual {p0}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCBuilder;->build()Lcom/pandasu/turbo/PandaSUApp_HiltComponents$ActivityC;

    move-result-object v0

    return-object v0
.end method
