.class public final Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC;
.super Ljava/lang/Object;
.source "DaggerPandaSUApp_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$Builder;,
        Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$SingletonCImpl;,
        Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ServiceCImpl;,
        Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCImpl;,
        Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCImpl;,
        Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCImpl;,
        Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCImpl;,
        Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$FragmentCImpl;,
        Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewWithFragmentCImpl;,
        Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ServiceCBuilder;,
        Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewModelCBuilder;,
        Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewCBuilder;,
        Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ViewWithFragmentCBuilder;,
        Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$FragmentCBuilder;,
        Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityCBuilder;,
        Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$ActivityRetainedCBuilder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static builder()Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$Builder;
    .registers 2

    .line 66
    new-instance v0, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$Builder;-><init>(Lcom/pandasu/turbo/DaggerPandaSUApp_HiltComponents_SingletonC$Builder-IA;)V

    return-object v0
.end method
