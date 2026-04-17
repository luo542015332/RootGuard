.class final Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCBuilder;
.super Ljava/lang/Object;
.source "DaggerPandaSUApp_HiltComponents_SingletonC.java"

# interfaces
.implements Lcom/pandasu/turbo/PandaSUApp_HiltComponents$ActivityRetainedC$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityRetainedCBuilder"
.end annotation


# instance fields
.field private final singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method private constructor <init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;)V
    .registers 2
    .param p1, "singletonCImpl"    # Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singletonCImpl"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCBuilder;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCBuilder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCBuilder;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/pandasu/turbo/PandaSUApp_HiltComponents$ActivityRetainedC;
    .registers 4

    .line 114
    new-instance v0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCBuilder;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl-IA;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/hilt/android/components/ActivityRetainedComponent;
    .registers 2

    .line 105
    invoke-virtual {p0}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCBuilder;->build()Lcom/pandasu/turbo/PandaSUApp_HiltComponents$ActivityRetainedC;

    move-result-object v0

    return-object v0
.end method
