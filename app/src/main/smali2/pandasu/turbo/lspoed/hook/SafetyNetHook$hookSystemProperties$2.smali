.class public final Lcom/pandasu/turbo/lspoed/hook/SafetyNetHook$hookSystemProperties$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SafetyNetHook.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/lspoed/hook/SafetyNetHook;->hookSystemProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "com/pandasu/turbo/lspoed/hook/SafetyNetHook$hookSystemProperties$2",
        "Lde/robv/android/xposed/XC_MethodHook;",
        "afterHookedMethod",
        "",
        "param",
        "Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;",
        "PandaSU-LSPosed_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    nop

    .line 97
    :try_start_6
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_12

    check-cast v0, Ljava/lang/String;

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-nez v0, :cond_16

    return-void

    .line 98
    .local v0, "key":Ljava/lang/String;
    :cond_16
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_80

    const-string v2, "1"

    sparse-switch v1, :sswitch_data_82

    goto/16 :goto_7f

    :sswitch_21
    :try_start_21
    const-string v1, "ro.secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_79

    .line 101
    :cond_2a
    invoke-virtual {p1, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_81

    .line 98
    :sswitch_2e
    const-string v1, "ro.build.tags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    goto :goto_79

    .line 99
    :cond_37
    const-string v1, "release-keys"

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_81

    .line 98
    :sswitch_3d
    const-string v1, "ro.boot.verifiedbootstate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    goto :goto_79

    :sswitch_46
    const-string v1, "ro.boot.veritymode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    goto :goto_79

    .line 100
    :cond_4f
    const-string v1, "enforcing"

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_81

    .line 98
    :sswitch_55
    const-string v1, "ro.debuggable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    goto :goto_79

    .line 102
    :cond_5e
    const-string v1, "0"

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_81

    .line 98
    :sswitch_64
    const-string v1, "ro.adb.secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_79

    .line 103
    :cond_6d
    invoke-virtual {p1, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_81

    .line 98
    :sswitch_71
    const-string v1, "ro.boot.vbmeta.device_state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    :goto_79
    goto :goto_81

    .line 105
    :cond_7a
    const-string v1, "locked"

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_7f
    .catchall {:try_start_21 .. :try_end_7f} :catchall_80

    .end local v0    # "key":Ljava/lang/String;
    :goto_7f
    goto :goto_81

    .line 108
    :catchall_80
    move-exception v0

    .line 111
    :goto_81
    return-void

    :sswitch_data_82
    .sparse-switch
        -0x3725c4e6 -> :sswitch_71
        -0x286be009 -> :sswitch_64
        -0x1fcfd7e1 -> :sswitch_55
        -0x1d3f7ee7 -> :sswitch_46
        0x17db1dec -> :sswitch_3d
        0x2ebb33ea -> :sswitch_2e
        0x5c75e448 -> :sswitch_21
    .end sparse-switch
.end method
