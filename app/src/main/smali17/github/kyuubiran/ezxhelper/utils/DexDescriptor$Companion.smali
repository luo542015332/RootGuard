.class public final Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion;
.super Ljava/lang/Object;
.source "DexDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion$TYPE;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0008B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion;",
        "",
        "()V",
        "newFieldDesc",
        "Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor;",
        "sig",
        "",
        "newMethodDesc",
        "TYPE",
        "EzXHelper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newFieldDesc(Ljava/lang/String;)Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor;
    .registers 5
    .param p1, "sig"    # Ljava/lang/String;

    const-string/jumbo v0, "sig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor;

    sget-object v1, Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion$TYPE;->FIELD:Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion$TYPE;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor;-><init>(Ljava/lang/String;Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion$TYPE;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final newMethodDesc(Ljava/lang/String;)Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor;
    .registers 5
    .param p1, "sig"    # Ljava/lang/String;

    const-string/jumbo v0, "sig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor;

    sget-object v1, Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion$TYPE;->METHOD:Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion$TYPE;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor;-><init>(Ljava/lang/String;Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion$TYPE;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
