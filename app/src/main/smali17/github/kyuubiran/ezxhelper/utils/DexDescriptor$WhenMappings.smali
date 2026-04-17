.class public final synthetic Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$WhenMappings;
.super Ljava/lang/Object;
.source "DexDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion$TYPE;->values()[Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion$TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion$TYPE;->FIELD:Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion$TYPE;

    invoke-virtual {v1}, Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion$TYPE;->METHOD:Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion$TYPE;

    invoke-virtual {v1}, Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$Companion$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lcom/github/kyuubiran/ezxhelper/utils/DexDescriptor$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
