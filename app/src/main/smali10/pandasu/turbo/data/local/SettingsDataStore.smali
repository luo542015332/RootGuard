.class public final Lcom/pandasu/turbo/data/local/SettingsDataStore;
.super Ljava/lang/Object;
.source "SettingsDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandasu/turbo/data/local/SettingsDataStore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsDataStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsDataStore.kt\ncom/pandasu/turbo/data/local/SettingsDataStore\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,119:1\n53#2:120\n55#2:124\n53#2:125\n55#2:129\n53#2:130\n55#2:134\n53#2:135\n55#2:139\n53#2:140\n55#2:144\n53#2:145\n55#2:149\n53#2:150\n55#2:154\n53#2:155\n55#2:159\n53#2:160\n55#2:164\n53#2:165\n55#2:169\n53#2:170\n55#2:174\n50#3:121\n55#3:123\n50#3:126\n55#3:128\n50#3:131\n55#3:133\n50#3:136\n55#3:138\n50#3:141\n55#3:143\n50#3:146\n55#3:148\n50#3:151\n55#3:153\n50#3:156\n55#3:158\n50#3:161\n55#3:163\n50#3:166\n55#3:168\n50#3:171\n55#3:173\n107#4:122\n107#4:127\n107#4:132\n107#4:137\n107#4:142\n107#4:147\n107#4:152\n107#4:157\n107#4:162\n107#4:167\n107#4:172\n*S KotlinDebug\n*F\n+ 1 SettingsDataStore.kt\ncom/pandasu/turbo/data/local/SettingsDataStore\n*L\n38#1:120\n38#1:124\n41#1:125\n41#1:129\n44#1:130\n44#1:134\n47#1:135\n47#1:139\n50#1:140\n50#1:144\n74#1:145\n74#1:149\n82#1:150\n82#1:154\n90#1:155\n90#1:159\n98#1:160\n98#1:164\n106#1:165\n106#1:169\n114#1:170\n114#1:174\n38#1:121\n38#1:123\n41#1:126\n41#1:128\n44#1:131\n44#1:133\n47#1:136\n47#1:138\n50#1:141\n50#1:143\n74#1:146\n74#1:148\n82#1:151\n82#1:153\n90#1:156\n90#1:158\n98#1:161\n98#1:163\n106#1:166\n106#1:168\n114#1:171\n114#1:173\n38#1:122\n41#1:127\n44#1:132\n47#1:137\n50#1:142\n74#1:147\n82#1:152\n90#1:157\n98#1:162\n106#1:167\n114#1:172\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0008\u0010\u0008\u0007\u0018\u0000 22\u00020\u0001:\u00012B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010%J\u0016\u0010&\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010%J\u0016\u0010\'\u001a\u00020#2\u0006\u0010(\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010)J\u0016\u0010*\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010%J\u0016\u0010+\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010%J\u0016\u0010,\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010%J\u0016\u0010-\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010%J\u0016\u0010.\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010%J\u0016\u0010/\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010%J\u0016\u00100\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010%J\u0016\u00101\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010%R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\tR\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\tR\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\tR\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\tR\u0017\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\tR\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\tR\u0017\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\tR\u0017\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\tR\u0017\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\t\u00a8\u00063"
    }
    d2 = {
        "Lcom/pandasu/turbo/data/local/SettingsDataStore;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "autoDenyUnknown",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "getAutoDenyUnknown",
        "()Lkotlinx/coroutines/flow/Flow;",
        "checkModuleUpdates",
        "getCheckModuleUpdates",
        "currentTheme",
        "",
        "getCurrentTheme",
        "darkMode",
        "getDarkMode",
        "dataStore",
        "Landroidx/datastore/core/DataStore;",
        "Landroidx/datastore/preferences/core/Preferences;",
        "defaultUnmountModules",
        "getDefaultUnmountModules",
        "dynamicColors",
        "getDynamicColors",
        "kernelUnmountModules",
        "getKernelUnmountModules",
        "showFloatingDialog",
        "getShowFloatingDialog",
        "showNotifications",
        "getShowNotifications",
        "traditionalSuSupport",
        "getTraditionalSuSupport",
        "webViewDebugging",
        "getWebViewDebugging",
        "setAutoDenyUnknown",
        "",
        "enabled",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setCheckModuleUpdates",
        "setCurrentTheme",
        "themeId",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setDarkMode",
        "setDefaultUnmountModules",
        "setDynamicColors",
        "setKernelUnmountModules",
        "setShowFloatingDialog",
        "setShowNotifications",
        "setTraditionalSuSupport",
        "setWebViewDebugging",
        "Companion",
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

.field private static final AUTO_DENY_UNKNOWN:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHECK_MODULE_UPDATES:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final CURRENT_THEME:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/pandasu/turbo/data/local/SettingsDataStore$Companion;

.field private static final DARK_MODE:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_UNMOUNT_MODULES:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final DYNAMIC_COLORS:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final KERNEL_UNMOUNT_MODULES:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHOW_FLOATING_DIALOG:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHOW_NOTIFICATIONS:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRADITIONAL_SU_SUPPORT:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final WEBVIEW_DEBUGGING:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final autoDenyUnknown:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final checkModuleUpdates:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final currentTheme:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final darkMode:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final dataStore:Landroidx/datastore/core/DataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/DataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultUnmountModules:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final dynamicColors:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final kernelUnmountModules:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final showFloatingDialog:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final showNotifications:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final traditionalSuSupport:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final webViewDebugging:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/pandasu/turbo/data/local/SettingsDataStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pandasu/turbo/data/local/SettingsDataStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->Companion:Lcom/pandasu/turbo/data/local/SettingsDataStore$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->$stable:I

    .line 24
    const-string v0, "dark_mode"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->DARK_MODE:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 25
    const-string v0, "dynamic_colors"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->DYNAMIC_COLORS:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 26
    const-string v0, "auto_deny_unknown"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->AUTO_DENY_UNKNOWN:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 27
    const-string v0, "show_notifications"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->SHOW_NOTIFICATIONS:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 28
    const-string v0, "show_floating_dialog"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->SHOW_FLOATING_DIALOG:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 29
    const-string v0, "current_theme"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->CURRENT_THEME:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 30
    const-string v0, "check_module_updates"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->CHECK_MODULE_UPDATES:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 31
    const-string v0, "traditional_su_support"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->TRADITIONAL_SU_SUPPORT:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 32
    const-string v0, "kernel_unmount_modules"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->KERNEL_UNMOUNT_MODULES:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 33
    const-string v0, "default_unmount_modules"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->DEFAULT_UNMOUNT_MODULES:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 34
    const-string v0, "webview_debugging"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->WEBVIEW_DEBUGGING:Landroidx/datastore/preferences/core/Preferences$Key;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->context:Landroid/content/Context;

    .line 21
    # invokes: Lcom/pandasu/turbo/data/local/SettingsDataStoreKt;->getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;
    invoke-static {p1}, Lcom/pandasu/turbo/data/local/SettingsDataStoreKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    .line 38
    nop

    .line 37
    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 38
    nop

    .local v1, "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 120
    .local v2, "$i$f$map":I
    move-object v3, v1

    .local v3, "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 121
    .local v4, "$i$f$unsafeTransform":I
    const/4 v5, 0x0

    .line 122
    .local v5, "$i$f$unsafeFlow":I
    new-instance v6, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$1;

    invoke-direct {v6, v3}, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 123
    .end local v5    # "$i$f$unsafeFlow":I
    nop

    .line 124
    .end local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform":I
    nop

    .line 38
    .end local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map":I
    iput-object v6, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->darkMode:Lkotlinx/coroutines/flow/Flow;

    .line 41
    nop

    .line 40
    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 41
    nop

    .restart local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 125
    .restart local v2    # "$i$f$map":I
    move-object v3, v1

    .restart local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 126
    .restart local v4    # "$i$f$unsafeTransform":I
    const/4 v5, 0x0

    .line 127
    .restart local v5    # "$i$f$unsafeFlow":I
    new-instance v6, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$2;

    invoke-direct {v6, v3}, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 128
    .end local v5    # "$i$f$unsafeFlow":I
    nop

    .line 129
    .end local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform":I
    nop

    .line 41
    .end local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map":I
    iput-object v6, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->dynamicColors:Lkotlinx/coroutines/flow/Flow;

    .line 44
    nop

    .line 43
    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 44
    nop

    .restart local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 130
    .restart local v2    # "$i$f$map":I
    move-object v3, v1

    .restart local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 131
    .restart local v4    # "$i$f$unsafeTransform":I
    const/4 v5, 0x0

    .line 132
    .restart local v5    # "$i$f$unsafeFlow":I
    new-instance v6, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$3;

    invoke-direct {v6, v3}, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 133
    .end local v5    # "$i$f$unsafeFlow":I
    nop

    .line 134
    .end local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform":I
    nop

    .line 44
    .end local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map":I
    iput-object v6, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->autoDenyUnknown:Lkotlinx/coroutines/flow/Flow;

    .line 47
    nop

    .line 46
    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 47
    nop

    .restart local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 135
    .restart local v2    # "$i$f$map":I
    move-object v3, v1

    .restart local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 136
    .restart local v4    # "$i$f$unsafeTransform":I
    const/4 v5, 0x0

    .line 137
    .restart local v5    # "$i$f$unsafeFlow":I
    new-instance v6, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$4;

    invoke-direct {v6, v3}, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 138
    .end local v5    # "$i$f$unsafeFlow":I
    nop

    .line 139
    .end local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform":I
    nop

    .line 47
    .end local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map":I
    iput-object v6, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->showNotifications:Lkotlinx/coroutines/flow/Flow;

    .line 50
    nop

    .line 49
    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 50
    nop

    .restart local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 140
    .restart local v2    # "$i$f$map":I
    move-object v3, v1

    .restart local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 141
    .restart local v4    # "$i$f$unsafeTransform":I
    const/4 v5, 0x0

    .line 142
    .restart local v5    # "$i$f$unsafeFlow":I
    new-instance v6, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$5;

    invoke-direct {v6, v3}, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 143
    .end local v5    # "$i$f$unsafeFlow":I
    nop

    .line 144
    .end local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform":I
    nop

    .line 50
    .end local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map":I
    iput-object v6, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->showFloatingDialog:Lkotlinx/coroutines/flow/Flow;

    .line 74
    nop

    .line 73
    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 74
    nop

    .restart local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 145
    .restart local v2    # "$i$f$map":I
    move-object v3, v1

    .restart local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 146
    .restart local v4    # "$i$f$unsafeTransform":I
    const/4 v5, 0x0

    .line 147
    .restart local v5    # "$i$f$unsafeFlow":I
    new-instance v6, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$6;

    invoke-direct {v6, v3}, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$6;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 148
    .end local v5    # "$i$f$unsafeFlow":I
    nop

    .line 149
    .end local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform":I
    nop

    .line 74
    .end local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map":I
    iput-object v6, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->currentTheme:Lkotlinx/coroutines/flow/Flow;

    .line 82
    nop

    .line 81
    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 82
    nop

    .restart local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 150
    .restart local v2    # "$i$f$map":I
    move-object v3, v1

    .restart local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 151
    .restart local v4    # "$i$f$unsafeTransform":I
    const/4 v5, 0x0

    .line 152
    .restart local v5    # "$i$f$unsafeFlow":I
    new-instance v6, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$7;

    invoke-direct {v6, v3}, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$7;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 153
    .end local v5    # "$i$f$unsafeFlow":I
    nop

    .line 154
    .end local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform":I
    nop

    .line 82
    .end local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map":I
    iput-object v6, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->checkModuleUpdates:Lkotlinx/coroutines/flow/Flow;

    .line 90
    nop

    .line 89
    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 90
    nop

    .restart local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 155
    .restart local v2    # "$i$f$map":I
    move-object v3, v1

    .restart local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 156
    .restart local v4    # "$i$f$unsafeTransform":I
    const/4 v5, 0x0

    .line 157
    .restart local v5    # "$i$f$unsafeFlow":I
    new-instance v6, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$8;

    invoke-direct {v6, v3}, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$8;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 158
    .end local v5    # "$i$f$unsafeFlow":I
    nop

    .line 159
    .end local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform":I
    nop

    .line 90
    .end local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map":I
    iput-object v6, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->traditionalSuSupport:Lkotlinx/coroutines/flow/Flow;

    .line 98
    nop

    .line 97
    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 98
    nop

    .restart local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 160
    .restart local v2    # "$i$f$map":I
    move-object v3, v1

    .restart local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 161
    .restart local v4    # "$i$f$unsafeTransform":I
    const/4 v5, 0x0

    .line 162
    .restart local v5    # "$i$f$unsafeFlow":I
    new-instance v6, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$9;

    invoke-direct {v6, v3}, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$9;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 163
    .end local v5    # "$i$f$unsafeFlow":I
    nop

    .line 164
    .end local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform":I
    nop

    .line 98
    .end local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map":I
    iput-object v6, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->kernelUnmountModules:Lkotlinx/coroutines/flow/Flow;

    .line 106
    nop

    .line 105
    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 106
    nop

    .restart local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v2, 0x0

    .line 165
    .restart local v2    # "$i$f$map":I
    move-object v3, v1

    .restart local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .line 166
    .restart local v4    # "$i$f$unsafeTransform":I
    const/4 v5, 0x0

    .line 167
    .restart local v5    # "$i$f$unsafeFlow":I
    new-instance v6, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$10;

    invoke-direct {v6, v3}, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$10;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 168
    .end local v5    # "$i$f$unsafeFlow":I
    nop

    .line 169
    .end local v3    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$unsafeTransform":I
    nop

    .line 106
    .end local v1    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v2    # "$i$f$map":I
    iput-object v6, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->defaultUnmountModules:Lkotlinx/coroutines/flow/Flow;

    .line 114
    nop

    .line 113
    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 114
    nop

    .local v0, "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 170
    .local v1, "$i$f$map":I
    move-object v2, v0

    .local v2, "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 171
    .local v3, "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 172
    .local v4, "$i$f$unsafeFlow":I
    new-instance v5, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$11;

    invoke-direct {v5, v2}, Lcom/pandasu/turbo/data/local/SettingsDataStore$special$$inlined$map$11;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 173
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 174
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 114
    .end local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map":I
    iput-object v5, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->webViewDebugging:Lkotlinx/coroutines/flow/Flow;

    .line 18
    return-void
.end method

.method public static final synthetic access$getAUTO_DENY_UNKNOWN$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 1

    .line 17
    sget-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->AUTO_DENY_UNKNOWN:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getCHECK_MODULE_UPDATES$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 1

    .line 17
    sget-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->CHECK_MODULE_UPDATES:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getCURRENT_THEME$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 1

    .line 17
    sget-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->CURRENT_THEME:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getDARK_MODE$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 1

    .line 17
    sget-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->DARK_MODE:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_UNMOUNT_MODULES$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 1

    .line 17
    sget-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->DEFAULT_UNMOUNT_MODULES:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getDYNAMIC_COLORS$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 1

    .line 17
    sget-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->DYNAMIC_COLORS:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getKERNEL_UNMOUNT_MODULES$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 1

    .line 17
    sget-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->KERNEL_UNMOUNT_MODULES:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getSHOW_FLOATING_DIALOG$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 1

    .line 17
    sget-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->SHOW_FLOATING_DIALOG:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getSHOW_NOTIFICATIONS$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 1

    .line 17
    sget-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->SHOW_NOTIFICATIONS:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getTRADITIONAL_SU_SUPPORT$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 1

    .line 17
    sget-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->TRADITIONAL_SU_SUPPORT:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getWEBVIEW_DEBUGGING$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .registers 1

    .line 17
    sget-object v0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->WEBVIEW_DEBUGGING:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method


# virtual methods
.method public final getAutoDenyUnknown()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->autoDenyUnknown:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getCheckModuleUpdates()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->checkModuleUpdates:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getCurrentTheme()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->currentTheme:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getDarkMode()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->darkMode:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getDefaultUnmountModules()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->defaultUnmountModules:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getDynamicColors()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->dynamicColors:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getKernelUnmountModules()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->kernelUnmountModules:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getShowFloatingDialog()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->showFloatingDialog:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getShowNotifications()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->showNotifications:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getTraditionalSuSupport()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->traditionalSuSupport:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getWebViewDebugging()Lkotlinx/coroutines/flow/Flow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->webViewDebugging:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final setAutoDenyUnknown(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/pandasu/turbo/data/local/SettingsDataStore$setAutoDenyUnknown$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pandasu/turbo/data/local/SettingsDataStore$setAutoDenyUnknown$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 62
    return-object v0
.end method

.method public final setCheckModuleUpdates(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/pandasu/turbo/data/local/SettingsDataStore$setCheckModuleUpdates$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pandasu/turbo/data/local/SettingsDataStore$setCheckModuleUpdates$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 86
    return-object v0
.end method

.method public final setCurrentTheme(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1, "themeId"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/pandasu/turbo/data/local/SettingsDataStore$setCurrentTheme$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pandasu/turbo/data/local/SettingsDataStore$setCurrentTheme$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 78
    return-object v0
.end method

.method public final setDarkMode(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/pandasu/turbo/data/local/SettingsDataStore$setDarkMode$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pandasu/turbo/data/local/SettingsDataStore$setDarkMode$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 54
    return-object v0
.end method

.method public final setDefaultUnmountModules(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/pandasu/turbo/data/local/SettingsDataStore$setDefaultUnmountModules$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pandasu/turbo/data/local/SettingsDataStore$setDefaultUnmountModules$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 110
    return-object v0
.end method

.method public final setDynamicColors(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/pandasu/turbo/data/local/SettingsDataStore$setDynamicColors$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pandasu/turbo/data/local/SettingsDataStore$setDynamicColors$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 58
    return-object v0
.end method

.method public final setKernelUnmountModules(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/pandasu/turbo/data/local/SettingsDataStore$setKernelUnmountModules$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pandasu/turbo/data/local/SettingsDataStore$setKernelUnmountModules$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 102
    return-object v0
.end method

.method public final setShowFloatingDialog(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/pandasu/turbo/data/local/SettingsDataStore$setShowFloatingDialog$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pandasu/turbo/data/local/SettingsDataStore$setShowFloatingDialog$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 70
    return-object v0
.end method

.method public final setShowNotifications(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/pandasu/turbo/data/local/SettingsDataStore$setShowNotifications$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pandasu/turbo/data/local/SettingsDataStore$setShowNotifications$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 66
    return-object v0
.end method

.method public final setTraditionalSuSupport(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/pandasu/turbo/data/local/SettingsDataStore$setTraditionalSuSupport$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pandasu/turbo/data/local/SettingsDataStore$setTraditionalSuSupport$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 94
    return-object v0
.end method

.method public final setWebViewDebugging(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/pandasu/turbo/data/local/SettingsDataStore;->dataStore:Landroidx/datastore/core/DataStore;

    new-instance v1, Lcom/pandasu/turbo/data/local/SettingsDataStore$setWebViewDebugging$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/pandasu/turbo/data/local/SettingsDataStore$setWebViewDebugging$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 118
    return-object v0
.end method
