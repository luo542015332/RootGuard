.class public final Lcom/pandasu/turbo/utils/AndroidVersionCompat;
.super Ljava/lang/Object;
.source "AndroidVersionCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;,
        Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;,
        Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;,
        Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;,
        Lcom/pandasu/turbo/utils/AndroidVersionCompat$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidVersionCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidVersionCompat.kt\ncom/pandasu/turbo/utils/AndroidVersionCompat\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,358:1\n1#2:359\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0018\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0004TUVWB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020$J\u0006\u0010%\u001a\u00020&J\u0006\u0010\'\u001a\u00020\u000fJ\u0006\u0010(\u001a\u00020\u001eJ\u0006\u0010)\u001a\u00020\u001eJ\u0006\u0010*\u001a\u00020\u001eJ\u0006\u0010+\u001a\u00020\u001eJ\u0006\u0010,\u001a\u00020\u001eJ\u0006\u0010-\u001a\u00020\u001eJ\u0006\u0010.\u001a\u00020\u001eJ\u0006\u0010/\u001a\u00020\u001eJ\u0006\u00100\u001a\u00020\u001eJ\u0006\u00101\u001a\u00020\u001eJ\u0006\u00102\u001a\u00020\u001eJ\u0006\u00103\u001a\u00020\u001eJ\u0006\u00104\u001a\u00020\u001eJ\u0006\u00105\u001a\u00020\u001eJ\u0006\u00106\u001a\u00020\u001eJ\u0006\u00107\u001a\u00020\u001eJ\u0006\u00108\u001a\u00020\u001eJ\u0006\u00109\u001a\u00020\u001eJ\u0006\u0010:\u001a\u00020\u001eJ\u0006\u0010;\u001a\u00020\u001eJ\u0006\u0010<\u001a\u00020\u001eJ\u001a\u0010=\u001a\u00020>2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020>0@H\u0086\u0008\u00f8\u0001\u0000J\u001a\u0010A\u001a\u00020>2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020>0@H\u0086\u0008\u00f8\u0001\u0000J\u001a\u0010B\u001a\u00020>2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020>0@H\u0086\u0008\u00f8\u0001\u0000J\u001a\u0010C\u001a\u00020>2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020>0@H\u0086\u0008\u00f8\u0001\u0000J\u001a\u0010D\u001a\u00020>2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020>0@H\u0086\u0008\u00f8\u0001\u0000J\u001a\u0010E\u001a\u00020>2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020>0@H\u0086\u0008\u00f8\u0001\u0000J\u001a\u0010F\u001a\u00020>2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020>0@H\u0086\u0008\u00f8\u0001\u0000J\u001a\u0010G\u001a\u00020>2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020>0@H\u0086\u0008\u00f8\u0001\u0000J\u001a\u0010H\u001a\u00020>2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020>0@H\u0086\u0008\u00f8\u0001\u0000J\u001a\u0010I\u001a\u00020>2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020>0@H\u0086\u0008\u00f8\u0001\u0000J\u001a\u0010J\u001a\u00020>2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020>0@H\u0086\u0008\u00f8\u0001\u0000J\u001a\u0010K\u001a\u00020>2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020>0@H\u0086\u0008\u00f8\u0001\u0000J\u0010\u0010L\u001a\u00020\u000f2\u0006\u0010M\u001a\u00020\u000fH\u0002J\u0006\u0010N\u001a\u00020\u001eJ\u0006\u0010O\u001a\u00020\u001eJ\u0006\u0010P\u001a\u00020\u001eJ\u0006\u0010Q\u001a\u00020\u001eJ\u0006\u0010R\u001a\u00020\u001eJ\u0006\u0010S\u001a\u00020\u001eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0011\u0010\u0014\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011R\u0011\u0010\u0016\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0011R\u0011\u0010\u0018\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0011R\u0011\u0010\u001a\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006X"
    }
    d2 = {
        "Lcom/pandasu/turbo/utils/AndroidVersionCompat;",
        "",
        "()V",
        "ANDROID_10",
        "",
        "ANDROID_11",
        "ANDROID_12",
        "ANDROID_12L",
        "ANDROID_13",
        "ANDROID_14",
        "ANDROID_15",
        "ANDROID_16",
        "ANDROID_8",
        "ANDROID_9",
        "BRAND",
        "",
        "getBRAND",
        "()Ljava/lang/String;",
        "DEVICE",
        "getDEVICE",
        "MANUFACTURER",
        "getMANUFACTURER",
        "MODEL",
        "getMODEL",
        "PRODUCT",
        "getPRODUCT",
        "SDK_INT",
        "getSDK_INT",
        "()I",
        "checkCompatibility",
        "",
        "requirements",
        "Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;",
        "generateCompatibilityReport",
        "Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;",
        "getCustomOS",
        "Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;",
        "getDeviceManufacturer",
        "Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;",
        "getVersionDescription",
        "isAtLeastOreo",
        "isAtLeastPie",
        "isAtLeastQ",
        "isAtLeastR",
        "isAtLeastS",
        "isAtLeastS_V2",
        "isAtLeastTiramisu",
        "isAtLeastUpsideDownCake",
        "isAtLeastVanillaIceCream",
        "isAtLeastW",
        "isColorOS",
        "isHarmonyOS",
        "isHuaweiDevice",
        "isHyperOS",
        "isMIUI",
        "isOneUI",
        "isOppoDevice",
        "isOriginOS",
        "isSamsungDevice",
        "isVivoDevice",
        "isXiaomiDevice",
        "runOnAtLeastOreo",
        "",
        "block",
        "Lkotlin/Function0;",
        "runOnAtLeastPie",
        "runOnAtLeastQ",
        "runOnAtLeastR",
        "runOnAtLeastS",
        "runOnAtLeastTiramisu",
        "runOnAtLeastUpsideDownCake",
        "runOnAtLeastVanillaIceCream",
        "runOnAtLeastW",
        "runOnBelowOreo",
        "runOnBelowPie",
        "runOnBelowQ",
        "runSuCommandOutput",
        "command",
        "supportsAppOps",
        "supportsDynamicColor",
        "supportsPhotoPicker",
        "supportsPredictiveBack",
        "supportsScopedStorage",
        "supportsSeccomp",
        "CompatibilityReport",
        "CompatibilityRequirements",
        "CustomOS",
        "DeviceManufacturer",
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
.field public static final $stable:I = 0x0

.field public static final ANDROID_10:I = 0x1d

.field public static final ANDROID_11:I = 0x1e

.field public static final ANDROID_12:I = 0x1f

.field public static final ANDROID_12L:I = 0x20

.field public static final ANDROID_13:I = 0x21

.field public static final ANDROID_14:I = 0x22

.field public static final ANDROID_15:I = 0x23

.field public static final ANDROID_16:I = 0x24

.field public static final ANDROID_8:I = 0x1a

.field public static final ANDROID_9:I = 0x1c

.field private static final BRAND:Ljava/lang/String;

.field private static final DEVICE:Ljava/lang/String;

.field public static final INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

.field private static final MANUFACTURER:Ljava/lang/String;

.field private static final MODEL:Ljava/lang/String;

.field private static final PRODUCT:Ljava/lang/String;

.field private static final SDK_INT:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-direct {v0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;-><init>()V

    sput-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->SDK_INT:I

    .line 28
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "MANUFACTURER"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->MANUFACTURER:Ljava/lang/String;

    .line 29
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "BRAND"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->BRAND:Ljava/lang/String;

    .line 30
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->MODEL:Ljava/lang/String;

    .line 31
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "DEVICE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->DEVICE:Ljava/lang/String;

    .line 32
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "PRODUCT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->PRODUCT:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final runSuCommandOutput(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "command"    # Ljava/lang/String;

    .line 242
    nop

    .line 243
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "-c"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 244
    .local v0, "process":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "getInputStream(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Reader;

    instance-of v1, v3, Ljava/io/BufferedReader;

    if-eqz v1, :cond_32

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_3a

    :cond_32
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v1

    :goto_3a
    move-object v1, v3

    .line 245
    .local v1, "reader":Ljava/io/BufferedReader;
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3e} :catch_5f

    :try_start_3e
    move-object v3, v2

    check-cast v3, Ljava/io/BufferedReader;

    .line 359
    .local v3, "it":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 245
    .local v4, "$i$a$-use-AndroidVersionCompat$runSuCommandOutput$1":I
    move-object v5, v3

    check-cast v5, Ljava/io/Reader;

    invoke-static {v5}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_53
    .catchall {:try_start_3e .. :try_end_53} :catchall_58

    .end local v3    # "it":Ljava/io/BufferedReader;
    .end local v4    # "$i$a$-use-AndroidVersionCompat$runSuCommandOutput$1":I
    const/4 v3, 0x0

    :try_start_54
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_5f

    goto :goto_88

    :catchall_58
    move-exception v3

    .end local v0    # "process":Ljava/lang/Process;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "command":Ljava/lang/String;
    :try_start_59
    throw v3
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    .restart local v0    # "process":Ljava/lang/Process;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "command":Ljava/lang/String;
    :catchall_5a
    move-exception v4

    :try_start_5b
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p1    # "command":Ljava/lang/String;
    throw v4
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5f} :catch_5f

    .line 246
    .end local v0    # "process":Ljava/lang/Process;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "command":Ljava/lang/String;
    :catch_5f
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pandasu/turbo/utils/Logger;->INSTANCE:Lcom/pandasu/turbo/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6267\u884c\u547d\u4ee4\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pandasu/turbo/utils/Logger;->w(Ljava/lang/String;)V

    .line 248
    const-string v5, ""

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_88
    return-object v5
.end method


# virtual methods
.method public final checkCompatibility(Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;)Z
    .registers 4
    .param p1, "requirements"    # Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;

    const-string v0, "requirements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityRequirements;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 271
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_16
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastS()Z

    move-result v0

    goto :goto_2e

    .line 270
    :pswitch_1b
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastR()Z

    move-result v0

    goto :goto_2e

    .line 269
    :pswitch_20
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastPie()Z

    move-result v0

    goto :goto_2e

    .line 268
    :pswitch_25
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastQ()Z

    move-result v0

    goto :goto_2e

    .line 267
    :pswitch_2a
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastOreo()Z

    move-result v0

    .line 266
    :goto_2e
    return v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method public final generateCompatibilityReport()Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;
    .registers 15

    .line 299
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->BRAND:Ljava/lang/String;

    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->MODEL:Ljava/lang/String;

    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->DEVICE:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "deviceInfo":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getVersionDescription()Ljava/lang/String;

    move-result-object v8

    .line 301
    .local v8, "androidVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getCustomOS()Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->name()Ljava/lang/String;

    move-result-object v9

    .line 303
    .local v9, "customOS":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v1

    check-cast v10, Ljava/util/List;

    .line 304
    .local v10, "supportedFeatures":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    check-cast v11, Ljava/util/List;

    .line 305
    .local v11, "unsupportedFeatures":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v1

    check-cast v12, Ljava/util/List;

    .line 308
    .local v12, "suggestions":Ljava/util/List;
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->supportsSeccomp()Z

    move-result v1

    const-string v2, "Seccomp \u6c99\u76d2"

    if-eqz v1, :cond_5d

    .line 309
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 311
    :cond_5d
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    const-string v1, "Android 8.0+ \u624d\u652f\u6301 Seccomp"

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :goto_65
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->supportsAppOps()Z

    move-result v1

    const-string v2, "AppOps \u6743\u9650\u7ba1\u7406"

    if-eqz v1, :cond_71

    .line 316
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_79

    .line 318
    :cond_71
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v1, "Android 9.0+ \u7684 AppOps \u66f4\u5b8c\u5584"

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :goto_79
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->supportsScopedStorage()Z

    move-result v1

    const-string v2, "\u5206\u533a\u5b58\u50a8"

    if-eqz v1, :cond_85

    .line 323
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8d

    .line 325
    :cond_85
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    const-string v1, "Android 10+ \u624d\u652f\u6301\u5b8c\u6574\u7684\u5206\u533a\u5b58\u50a8"

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :goto_8d
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->supportsDynamicColor()Z

    move-result v1

    if-eqz v1, :cond_98

    .line 330
    const-string v1, "\u52a8\u6001\u8272\u5f69\u4e3b\u9898"

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_98
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getCustomOS()Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    move-result-object v1

    sget-object v2, Lcom/pandasu/turbo/utils/AndroidVersionCompat$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_d6

    goto :goto_c3

    .line 344
    :pswitch_a8
    const-string v1, "ColorOS \u6709\u4e25\u683c\u7684\u6743\u9650\u7ba1\u7406"

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 340
    :pswitch_ae
    const-string v1, "MIUI \u9700\u8981\u5904\u7406 FLAG_SYSTEM \u6807\u5fd7\u5f02\u5e38"

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    const-string v1, "\u5efa\u8bae\u4f7f\u7528\u5b89\u88c5\u8def\u5f84\u5224\u65ad\u7cfb\u7edf\u5e94\u7528"

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 336
    :pswitch_b9
    const-string v1, "HyperOS \u7cfb\u7edf\u9700\u8981\u7279\u6b8a\u6743\u9650\u5904\u7406"

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    const-string v1, "\u5efa\u8bae\u4f7f\u7528 KernelSU RootService \u83b7\u53d6\u5e94\u7528\u5217\u8868"

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :goto_c3
    new-instance v13, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;

    .line 350
    nop

    .line 351
    nop

    .line 352
    nop

    .line 353
    nop

    .line 354
    nop

    .line 355
    nop

    .line 349
    move-object v1, v13

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CompatibilityReport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v13

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_b9
        :pswitch_ae
        :pswitch_a8
    .end packed-switch
.end method

.method public final getBRAND()Ljava/lang/String;
    .registers 2

    .line 29
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomOS()Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;
    .registers 2

    .line 227
    nop

    .line 228
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isHyperOS()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->HYPEROS:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    goto :goto_39

    .line 229
    :cond_a
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->MIUI:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    goto :goto_39

    .line 230
    :cond_13
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isColorOS()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->COLOROS:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    goto :goto_39

    .line 231
    :cond_1c
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isOriginOS()Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ORIGINOS:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    goto :goto_39

    .line 232
    :cond_25
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isHarmonyOS()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->HARMONYOS:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    goto :goto_39

    .line 233
    :cond_2e
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isOneUI()Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ONEUI:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    goto :goto_39

    .line 234
    :cond_37
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->STOCK:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    .line 227
    :goto_39
    return-object v0
.end method

.method public final getDEVICE()Ljava/lang/String;
    .registers 2

    .line 31
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceManufacturer()Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;
    .registers 2

    .line 75
    nop

    .line 76
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isXiaomiDevice()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->XIAOMI:Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;

    goto :goto_30

    .line 77
    :cond_a
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isHuaweiDevice()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->HUAWEI:Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;

    goto :goto_30

    .line 78
    :cond_13
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isOppoDevice()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->OPPO:Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;

    goto :goto_30

    .line 79
    :cond_1c
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isVivoDevice()Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->VIVO:Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;

    goto :goto_30

    .line 80
    :cond_25
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->SAMSUNG:Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;

    goto :goto_30

    .line 81
    :cond_2e
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->OTHER:Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;

    .line 75
    :goto_30
    return-object v0
.end method

.method public final getMANUFACTURER()Ljava/lang/String;
    .registers 2

    .line 28
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public final getMODEL()Ljava/lang/String;
    .registers 2

    .line 30
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public final getPRODUCT()Ljava/lang/String;
    .registers 2

    .line 32
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public final getSDK_INT()I
    .registers 2

    .line 27
    sget v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->SDK_INT:I

    return v0
.end method

.method public final getVersionDescription()Ljava/lang/String;
    .registers 5

    .line 157
    sget v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->SDK_INT:I

    packed-switch v0, :pswitch_data_4a

    .line 168
    :pswitch_5
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    .line 167
    :pswitch_2b
    const-string v0, "Android 16 (W)"

    goto :goto_48

    .line 166
    :pswitch_2e
    const-string v0, "Android 15 (Vanilla Ice Cream)"

    goto :goto_48

    .line 165
    :pswitch_31
    const-string v0, "Android 14 (Upside Down Cake)"

    goto :goto_48

    .line 164
    :pswitch_34
    const-string v0, "Android 13 (Tiramisu)"

    goto :goto_48

    .line 163
    :pswitch_37
    const-string v0, "Android 12L (S_V2)"

    goto :goto_48

    .line 162
    :pswitch_3a
    const-string v0, "Android 12 (S)"

    goto :goto_48

    .line 161
    :pswitch_3d
    const-string v0, "Android 11 (R)"

    goto :goto_48

    .line 160
    :pswitch_40
    const-string v0, "Android 10 (Q)"

    goto :goto_48

    .line 159
    :pswitch_43
    const-string v0, "Android 9.0 (Pie)"

    goto :goto_48

    .line 158
    :pswitch_46
    const-string v0, "Android 8.0 (Oreo)"

    .line 157
    :goto_48
    return-object v0

    nop

    :pswitch_data_4a
    .packed-switch 0x1a
        :pswitch_46
        :pswitch_5
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
    .end packed-switch
.end method

.method public final isAtLeastOreo()Z
    .registers 3

    .line 88
    sget v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isAtLeastPie()Z
    .registers 3

    .line 89
    sget v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isAtLeastQ()Z
    .registers 3

    .line 90
    sget v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isAtLeastR()Z
    .registers 3

    .line 91
    sget v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isAtLeastS()Z
    .registers 3

    .line 92
    sget v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isAtLeastS_V2()Z
    .registers 3

    .line 93
    sget v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isAtLeastTiramisu()Z
    .registers 3

    .line 94
    sget v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isAtLeastUpsideDownCake()Z
    .registers 3

    .line 95
    sget v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isAtLeastVanillaIceCream()Z
    .registers 3

    .line 96
    sget v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isAtLeastW()Z
    .registers 3

    .line 97
    sget v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isColorOS()Z
    .registers 5

    .line 192
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isOppoDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v2, "DISPLAY"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "coloros"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 193
    const-string v0, "getprop ro.coloros.version"

    invoke-direct {p0, v0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->runSuCommandOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2b

    move v0, v3

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    if-eqz v0, :cond_30

    :cond_2e
    move v1, v3

    goto :goto_31

    :cond_30
    nop

    .line 192
    :goto_31
    return v1
.end method

.method public final isHarmonyOS()Z
    .registers 5

    .line 208
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isHuaweiDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v2, "DISPLAY"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "harmonyos"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 209
    const-string v0, "getprop ro.huawei.system.os"

    invoke-direct {p0, v0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->runSuCommandOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2b

    move v0, v3

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    if-eqz v0, :cond_30

    :cond_2e
    move v1, v3

    goto :goto_31

    :cond_30
    nop

    .line 208
    :goto_31
    return v1
.end method

.method public final isHuaweiDevice()Z
    .registers 6

    .line 44
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->BRAND:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "huawei"

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 45
    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->MANUFACTURER:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 46
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "honor"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 v4, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    nop

    .line 44
    :goto_2d
    return v4
.end method

.method public final isHyperOS()Z
    .registers 5

    .line 176
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isXiaomiDevice()Z

    move-result v0

    if-eqz v0, :cond_3e

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v1, "INCREMENTAL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "hyperos"

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 177
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v2, "DISPLAY"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 178
    const-string v0, "getprop ro.miui.ui.version.name"

    invoke-direct {p0, v0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->runSuCommandOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_3d
    goto :goto_3f

    :cond_3e
    const/4 v3, 0x0

    .line 176
    :goto_3f
    return v3
.end method

.method public final isMIUI()Z
    .registers 2

    .line 185
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isXiaomiDevice()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isHyperOS()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final isOneUI()Z
    .registers 4

    .line 216
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v1, "DISPLAY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "one ui"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    return v2
.end method

.method public final isOppoDevice()Z
    .registers 6

    .line 50
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->BRAND:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "oppo"

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_39

    .line 51
    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->MANUFACTURER:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_39

    .line 52
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "oneplus"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_39

    .line 53
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "realme"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_39

    :cond_37
    const/4 v4, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    nop

    .line 50
    :goto_3a
    return v4
.end method

.method public final isOriginOS()Z
    .registers 5

    .line 200
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isVivoDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v2, "DISPLAY"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "originos"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 201
    const-string v0, "getprop ro.vivo.os.version"

    invoke-direct {p0, v0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->runSuCommandOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2b

    move v0, v3

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    if-eqz v0, :cond_30

    :cond_2e
    move v1, v3

    goto :goto_31

    :cond_30
    nop

    .line 200
    :goto_31
    return v1
.end method

.method public final isSamsungDevice()Z
    .registers 5

    .line 63
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->BRAND:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "samsung"

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 64
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->MANUFACTURER:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v3, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    nop

    .line 63
    :goto_20
    return v3
.end method

.method public final isVivoDevice()Z
    .registers 6

    .line 57
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->BRAND:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "vivo"

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 58
    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->MANUFACTURER:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 59
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "iqoo"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 v4, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    nop

    .line 57
    :goto_2d
    return v4
.end method

.method public final isXiaomiDevice()Z
    .registers 6

    .line 38
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->BRAND:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "xiaomi"

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 39
    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->MANUFACTURER:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 40
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "redmi"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 v4, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    nop

    .line 38
    :goto_2d
    return v4
.end method

.method public final runOnAtLeastOreo(Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 103
    .local v0, "$i$f$runOnAtLeastOreo":I
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastOreo()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 104
    :cond_f
    return-void
.end method

.method public final runOnAtLeastPie(Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 107
    .local v0, "$i$f$runOnAtLeastPie":I
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastPie()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 108
    :cond_f
    return-void
.end method

.method public final runOnAtLeastQ(Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 111
    .local v0, "$i$f$runOnAtLeastQ":I
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastQ()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 112
    :cond_f
    return-void
.end method

.method public final runOnAtLeastR(Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 115
    .local v0, "$i$f$runOnAtLeastR":I
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastR()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 116
    :cond_f
    return-void
.end method

.method public final runOnAtLeastS(Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 119
    .local v0, "$i$f$runOnAtLeastS":I
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 120
    :cond_f
    return-void
.end method

.method public final runOnAtLeastTiramisu(Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 123
    .local v0, "$i$f$runOnAtLeastTiramisu":I
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastTiramisu()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 124
    :cond_f
    return-void
.end method

.method public final runOnAtLeastUpsideDownCake(Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 127
    .local v0, "$i$f$runOnAtLeastUpsideDownCake":I
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastUpsideDownCake()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 128
    :cond_f
    return-void
.end method

.method public final runOnAtLeastVanillaIceCream(Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 131
    .local v0, "$i$f$runOnAtLeastVanillaIceCream":I
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastVanillaIceCream()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 132
    :cond_f
    return-void
.end method

.method public final runOnAtLeastW(Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 135
    .local v0, "$i$f$runOnAtLeastW":I
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastW()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 136
    :cond_f
    return-void
.end method

.method public final runOnBelowOreo(Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 142
    .local v0, "$i$f$runOnBelowOreo":I
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastOreo()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 143
    :cond_f
    return-void
.end method

.method public final runOnBelowPie(Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 146
    .local v0, "$i$f$runOnBelowPie":I
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastPie()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 147
    :cond_f
    return-void
.end method

.method public final runOnBelowQ(Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 150
    .local v0, "$i$f$runOnBelowQ":I
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastQ()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 151
    :cond_f
    return-void
.end method

.method public final supportsAppOps()Z
    .registers 2

    .line 256
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastPie()Z

    move-result v0

    return v0
.end method

.method public final supportsDynamicColor()Z
    .registers 2

    .line 258
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastS()Z

    move-result v0

    return v0
.end method

.method public final supportsPhotoPicker()Z
    .registers 2

    .line 259
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastTiramisu()Z

    move-result v0

    return v0
.end method

.method public final supportsPredictiveBack()Z
    .registers 2

    .line 260
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastUpsideDownCake()Z

    move-result v0

    return v0
.end method

.method public final supportsScopedStorage()Z
    .registers 2

    .line 257
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastQ()Z

    move-result v0

    return v0
.end method

.method public final supportsSeccomp()Z
    .registers 2

    .line 255
    invoke-virtual {p0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->isAtLeastOreo()Z

    move-result v0

    return v0
.end method
