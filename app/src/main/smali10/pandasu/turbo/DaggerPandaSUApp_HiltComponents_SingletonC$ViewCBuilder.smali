.class final Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCBuilder;
.super Ljava/lang/Object;
.source "DaggerPandaSUApp_HiltComponents_SingletonC.java"

# interfaces
.implements Lcom/pandasu/turbo/PandaSUApp_HiltComponents$ViewC$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewCBuilder"
.end annotation


# instance fields
.field private final activityCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;

.field private final activityRetainedCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;)V
    .registers 4
    .param p1, "singletonCImpl"    # Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "activityRetainedCImpl"    # Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;
    .param p3, "activityCImpl"    # Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl"
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCBuilder;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 218
    iput-object p2, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCBuilder;->activityRetainedCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 219
    iput-object p3, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCBuilder;->activityCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;

    .line 220
    return-void
.end method

.method synthetic constructor <init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCBuilder-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCBuilder;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/pandasu/turbo/PandaSUApp_HiltComponents$ViewC;
    .registers 9

    .line 230
    iget-object v0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCBuilder;->view:Landroid/view/View;

    const-class v1, Landroid/view/View;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 231
    new-instance v0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCImpl;

    iget-object v3, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCBuilder;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v4, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCBuilder;->activityRetainedCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v5, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCBuilder;->activityCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;

    iget-object v6, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCBuilder;->view:Landroid/view/View;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCImpl;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;Landroid/view/View;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCImpl-IA;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/hilt/android/components/ViewComponent;
    .registers 2

    .line 206
    invoke-virtual {p0}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCBuilder;->build()Lcom/pandasu/turbo/PandaSUApp_HiltComponents$ViewC;

    move-result-object v0

    return-object v0
.end method

.method public view(Landroid/view/View;)Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCBuilder;
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 224
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCBuilder;->view:Landroid/view/View;

    .line 225
    return-object p0
.end method

.method public bridge synthetic view(Landroid/view/View;)Ldagger/hilt/android/internal/builders/ViewComponentBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCBuilder;->view(Landroid/view/View;)Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCBuilder;

    move-result-object p1

    return-object p1
.end method
