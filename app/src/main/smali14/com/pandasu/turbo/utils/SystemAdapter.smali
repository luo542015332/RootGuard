.class public final Lcom/pandasu/turbo/utils/SystemAdapter;
.super Ljava/lang/Object;
.source "SystemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/utils/SystemAdapter$AppListStrategy;,
        Lcom/pandasu/turbo/utils/SystemAdapter$ColorOSStrategy;,
        Lcom/pandasu/turbo/utils/SystemAdapter$DefaultStrategy;,
        Lcom/pandasu/turbo/utils/SystemAdapter$HarmonyOSStrategy;,
        Lcom/pandasu/turbo/utils/SystemAdapter$HyperOSStrategy;,
        Lcom/pandasu/turbo/utils/SystemAdapter$MIUIStrategy;,
        Lcom/pandasu/turbo/utils/SystemAdapter$OneUIStrategy;,
        Lcom/pandasu/turbo/utils/SystemAdapter$OriginOSStrategy;,
        Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;,
        Lcom/pandasu/turbo/utils/SystemAdapter$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\t\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0008J\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000bJ\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/pandasu/turbo/utils/SystemAdapter;",
        "",
        "()V",
        "getAppListStrategy",
        "Lcom/pandasu/turbo/utils/SystemAdapter$AppListStrategy;",
        "context",
        "Landroid/content/Context;",
        "getPropertySpoofConfig",
        "",
        "",
        "getSystemSuggestions",
        "",
        "isFeatureSupported",
        "",
        "feature",
        "Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;",
        "AppListStrategy",
        "ColorOSStrategy",
        "DefaultStrategy",
        "HarmonyOSStrategy",
        "HyperOSStrategy",
        "MIUIStrategy",
        "OneUIStrategy",
        "OriginOSStrategy",
        "SystemFeature",
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
.field public static final $stable:I

.field public static final INSTANCE:Lcom/pandasu/turbo/utils/SystemAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pandasu/turbo/utils/SystemAdapter;

    invoke-direct {v0}, Lcom/pandasu/turbo/utils/SystemAdapter;-><init>()V

    sput-object v0, Lcom/pandasu/turbo/utils/SystemAdapter;->INSTANCE:Lcom/pandasu/turbo/utils/SystemAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppListStrategy(Landroid/content/Context;)Lcom/pandasu/turbo/utils/SystemAdapter$AppListStrategy;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getCustomOS()Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    move-result-object v0

    .line 20
    .local v0, "customOS":Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;
    sget-object v1, Lcom/pandasu/turbo/utils/SystemAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 27
    new-instance v1, Lcom/pandasu/turbo/utils/SystemAdapter$DefaultStrategy;

    invoke-direct {v1}, Lcom/pandasu/turbo/utils/SystemAdapter$DefaultStrategy;-><init>()V

    check-cast v1, Lcom/pandasu/turbo/utils/SystemAdapter$AppListStrategy;

    goto :goto_0

    .line 26
    :pswitch_0
    new-instance v1, Lcom/pandasu/turbo/utils/SystemAdapter$OneUIStrategy;

    invoke-direct {v1}, Lcom/pandasu/turbo/utils/SystemAdapter$OneUIStrategy;-><init>()V

    check-cast v1, Lcom/pandasu/turbo/utils/SystemAdapter$AppListStrategy;

    goto :goto_0

    .line 25
    :pswitch_1
    new-instance v1, Lcom/pandasu/turbo/utils/SystemAdapter$HarmonyOSStrategy;

    invoke-direct {v1}, Lcom/pandasu/turbo/utils/SystemAdapter$HarmonyOSStrategy;-><init>()V

    check-cast v1, Lcom/pandasu/turbo/utils/SystemAdapter$AppListStrategy;

    goto :goto_0

    .line 24
    :pswitch_2
    new-instance v1, Lcom/pandasu/turbo/utils/SystemAdapter$OriginOSStrategy;

    invoke-direct {v1}, Lcom/pandasu/turbo/utils/SystemAdapter$OriginOSStrategy;-><init>()V

    check-cast v1, Lcom/pandasu/turbo/utils/SystemAdapter$AppListStrategy;

    goto :goto_0

    .line 23
    :pswitch_3
    new-instance v1, Lcom/pandasu/turbo/utils/SystemAdapter$ColorOSStrategy;

    invoke-direct {v1}, Lcom/pandasu/turbo/utils/SystemAdapter$ColorOSStrategy;-><init>()V

    check-cast v1, Lcom/pandasu/turbo/utils/SystemAdapter$AppListStrategy;

    goto :goto_0

    .line 22
    :pswitch_4
    new-instance v1, Lcom/pandasu/turbo/utils/SystemAdapter$MIUIStrategy;

    invoke-direct {v1}, Lcom/pandasu/turbo/utils/SystemAdapter$MIUIStrategy;-><init>()V

    check-cast v1, Lcom/pandasu/turbo/utils/SystemAdapter$AppListStrategy;

    goto :goto_0

    .line 21
    :pswitch_5
    new-instance v1, Lcom/pandasu/turbo/utils/SystemAdapter$HyperOSStrategy;

    invoke-direct {v1}, Lcom/pandasu/turbo/utils/SystemAdapter$HyperOSStrategy;-><init>()V

    check-cast v1, Lcom/pandasu/turbo/utils/SystemAdapter$AppListStrategy;

    .line 20
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getPropertySpoofConfig()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getCustomOS()Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    move-result-object v0

    .line 36
    .local v0, "customOS":Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;
    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v1}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getDeviceManufacturer()Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;

    move-result-object v1

    .line 38
    .local v1, "manufacturer":Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 39
    .local v2, "config":Ljava/util/Map;
    sget-object v3, Lcom/pandasu/turbo/data/model/IsolationPresets;->INSTANCE:Lcom/pandasu/turbo/data/model/IsolationPresets;

    invoke-virtual {v3}, Lcom/pandasu/turbo/data/model/IsolationPresets;->getFULL_PROP_SPOOF()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 41
    sget-object v3, Lcom/pandasu/turbo/utils/SystemAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "ro.vivo.os.version"

    packed-switch v3, :pswitch_data_0

    .line 76
    sget-object v3, Lcom/pandasu/turbo/utils/SystemAdapter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$DeviceManufacturer;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    .line 70
    :pswitch_0
    const-string v3, "ro.build.scafe.version"

    const-string v4, "2023A"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v3, "ro.build.scafe.cream"

    const-string v4, "white"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v3, "ro.build.scafe.size"

    const-string v4, "tall"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 64
    :pswitch_1
    const-string v3, "ro.huawei.system.os"

    const-string v4, "HarmonyOS"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v3, "ro.huawei.system.version"

    const-string v4, "3.0.0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v3, "ro.build.hw_emui_api_level"

    const-string v4, "10"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :pswitch_2
    const-string v3, "PD2145B_A_1.10.5"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v4, "ro.vivo.os.build.display.id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    :pswitch_3
    const-string v3, "ro.coloros.version"

    const-string v4, "V13.1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v3, "ro.coloros.version.name"

    const-string v4, "ColorOS 13.1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v3, "ro.oppo.theme.version"

    const-string v4, "CTS"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 44
    :pswitch_4
    sget-object v3, Lcom/pandasu/turbo/data/model/IsolationPresets;->INSTANCE:Lcom/pandasu/turbo/data/model/IsolationPresets;

    invoke-virtual {v3}, Lcom/pandasu/turbo/data/model/IsolationPresets;->getMIUI_PROPS()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 46
    sget-object v3, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->HYPEROS:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    if-ne v0, v3, :cond_0

    .line 47
    const-string v3, "ro.miui.ui.version.name"

    const-string v4, "V14"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v3, "ro.miui.ui.version.code"

    const-string v4, "14"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 92
    :pswitch_5
    sget-object v3, Lcom/pandasu/turbo/data/model/IsolationPresets;->INSTANCE:Lcom/pandasu/turbo/data/model/IsolationPresets;

    invoke-virtual {v3}, Lcom/pandasu/turbo/data/model/IsolationPresets;->getREALME_PROPS()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 89
    :pswitch_6
    const-string v3, "ro.samsung.security.device.rooting"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    :pswitch_7
    const-string v3, "4.0"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    :pswitch_8
    const-string v3, "ro.huawei.build.version.security_patch"

    const-string v4, "2025-01-01"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    :pswitch_9
    sget-object v3, Lcom/pandasu/turbo/data/model/IsolationPresets;->INSTANCE:Lcom/pandasu/turbo/data/model/IsolationPresets;

    invoke-virtual {v3}, Lcom/pandasu/turbo/data/model/IsolationPresets;->getMIUI_PROPS()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 101
    :cond_0
    :goto_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final getSystemSuggestions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 142
    .local v0, "suggestions":Ljava/util/List;
    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v1}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getCustomOS()Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    move-result-object v1

    .line 144
    .local v1, "customOS":Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;
    sget-object v2, Lcom/pandasu/turbo/utils/SystemAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 175
    const-string v2, "\u6807\u51c6 Android \u7cfb\u7edf\uff0c\u4f7f\u7528\u5e38\u89c4\u65b9\u6cd5"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :pswitch_0
    const-string v2, "OneUI \u6709 Samsung Knox \u5b89\u5168\u673a\u5236"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v2, "\u90e8\u5206\u529f\u80fd\u53ef\u80fd\u53d7\u5230\u9650\u5236"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v2, "\u5efa\u8bae\u68c0\u67e5 Knox \u76f8\u5173\u8bbe\u7f6e"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :pswitch_1
    const-string v2, "HarmonyOS \u4f7f\u7528\u5fae\u5185\u6838\u67b6\u6784"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v2, "\u7cfb\u7edf\u8c03\u7528\u548c\u6743\u9650\u7ba1\u7406\u53ef\u80fd\u4e0e Android \u4e0d\u540c"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v2, "\u53ef\u80fd\u9700\u8981 HarmonyOS \u7279\u5b9a\u7684\u9002\u914d"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :pswitch_2
    const-string v2, "OriginOS \u6709\u72ec\u7279\u7684\u6743\u9650\u7ba1\u7406"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v2, "\u5e94\u7528\u5217\u8868\u83b7\u53d6\u53ef\u80fd\u9700\u8981\u7279\u6b8a\u5904\u7406"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :pswitch_3
    const-string v2, "ColorOS \u6709\u4e25\u683c\u7684\u6743\u9650\u7ba1\u7406\u673a\u5236"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v2, "\u53ef\u80fd\u9700\u8981\u989d\u5916\u6743\u9650\u7533\u8bf7"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    const-string v2, "\u7cfb\u7edf\u884c\u4e3a\u53ef\u80fd\u4e0e\u539f\u751f Android \u4e0d\u540c"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :pswitch_4
    const-string v2, "MIUI \u7cfb\u7edf FLAG_SYSTEM \u6807\u5fd7\u5f02\u5e38\uff0c\u9700\u8981\u4f7f\u7528\u5b89\u88c5\u8def\u5f84\u5224\u65ad"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    const-string v2, "\u90e8\u5206 MIUI \u9884\u88c5\u5e94\u7528\u5b89\u88c5\u5728 /data/app/ \u76ee\u5f55\u4e0b"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    const-string v2, "\u5efa\u8bae\u4f7f\u7528\u591a\u65b9\u6cd5\u83b7\u53d6\u5e94\u7528\u5217\u8868"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :pswitch_5
    const-string v2, "HyperOS \u7cfb\u7edf\u9650\u5236\u8f83\u591a\uff0c\u5efa\u8bae\u4f7f\u7528 KernelSU RootService"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    const-string v2, "\u5e94\u7528\u5217\u8868\u83b7\u53d6\u53ef\u80fd\u9700\u8981\u7279\u6b8a\u6743\u9650"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v2, "\u7cfb\u7edf\u5e94\u7528\u5224\u65ad\u9700\u8981\u4f7f\u7528\u5b89\u88c5\u8def\u5f84\u800c\u975e FLAG_SYSTEM"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isFeatureSupported(Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;)Z
    .locals 4
    .param p1, "feature"    # Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;

    const-string v0, "feature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/pandasu/turbo/utils/SystemAdapter$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Lcom/pandasu/turbo/utils/SystemAdapter$SystemFeature;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 132
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v0}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getCustomOS()Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    move-result-object v0

    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->HARMONYOS:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    .line 126
    :pswitch_1
    new-array v0, v1, [Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->COLOROS:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    aput-object v1, v0, v3

    .line 127
    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->ORIGINOS:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    aput-object v1, v0, v2

    .line 126
    nop

    .line 125
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v1}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getCustomOS()Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 119
    :pswitch_2
    new-array v0, v1, [Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->HYPEROS:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    aput-object v1, v0, v3

    .line 120
    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->MIUI:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    aput-object v1, v0, v2

    .line 119
    nop

    .line 118
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v1}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getCustomOS()Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 112
    :pswitch_3
    new-array v0, v1, [Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->HYPEROS:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    aput-object v1, v0, v3

    .line 113
    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;->MIUI:Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    aput-object v1, v0, v2

    .line 112
    nop

    .line 111
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->INSTANCE:Lcom/pandasu/turbo/utils/AndroidVersionCompat;

    invoke-virtual {v1}, Lcom/pandasu/turbo/utils/AndroidVersionCompat;->getCustomOS()Lcom/pandasu/turbo/utils/AndroidVersionCompat$CustomOS;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 108
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
