.class final Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ServiceCImpl;
.super Lcom/pandasu/turbo/PandaSUApp_HiltComponents$ServiceC;
.source "DaggerPandaSUApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceCImpl"
.end annotation


# instance fields
.field private final serviceCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ServiceCImpl;

.field private final singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method private constructor <init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Landroid/app/Service;)V
    .registers 3
    .param p1, "singletonCImpl"    # Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;
    .param p2, "serviceParam"    # Landroid/app/Service;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "serviceParam"
        }
    .end annotation

    .line 550
    invoke-direct {p0}, Lcom/pandasu/turbo/PandaSUApp_HiltComponents$ServiceC;-><init>()V

    .line 548
    iput-object p0, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ServiceCImpl;->serviceCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ServiceCImpl;

    .line 551
    iput-object p1, p0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ServiceCImpl;->singletonCImpl:Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;

    .line 554
    return-void
.end method

.method synthetic constructor <init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Landroid/app/Service;Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ServiceCImpl-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ServiceCImpl;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;Landroid/app/Service;)V

    return-void
.end method
