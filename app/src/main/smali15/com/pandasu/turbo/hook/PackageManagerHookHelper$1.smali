.class Lcom/pandasu/turbo/hook/PackageManagerHookHelper$1;
.super Ljava/lang/Object;
.source "PackageManagerHookHelper.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandasu/turbo/hook/PackageManagerHookHelper;->hookPackageManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$originalPM:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/pandasu/turbo/hook/PackageManagerHookHelper$1;->val$originalPM:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 196
    const-string v0, "PandaSU-PMHook"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "methodName":Ljava/lang/String;
    :try_start_0
    const-string v2, "getInstalledPackages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const-string v2, "getInstalledPackages intercepted"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v2, p0, Lcom/pandasu/turbo/hook/PackageManagerHookHelper$1;->val$originalPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 203
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-static {v2}, Lcom/pandasu/turbo/hook/PackageManagerHookHelper;->-$$Nest$smfilterPackageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 207
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_0
    const-string v2, "getInstalledPackagesAsUser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    const-string v2, "getInstalledPackagesAsUser intercepted"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v2, p0, Lcom/pandasu/turbo/hook/PackageManagerHookHelper$1;->val$originalPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 210
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-static {v2}, Lcom/pandasu/turbo/hook/PackageManagerHookHelper;->-$$Nest$smfilterPackageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 214
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_1
    const-string v2, "getPackageInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 215
    if-eqz p3, :cond_3

    array-length v2, p3

    if-lez v2, :cond_3

    aget-object v2, p3, v3

    if-eqz v2, :cond_3

    .line 216
    aget-object v2, p3, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Lcom/pandasu/turbo/hook/PackageManagerHookHelper;->-$$Nest$smshouldHidePackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 218
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blocking getPackageInfo for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v3, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v3, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v1    # "methodName":Ljava/lang/String;
    .end local p1    # "proxy":Ljava/lang/Object;
    .end local p2    # "method":Ljava/lang/reflect/Method;
    .end local p3    # "args":[Ljava/lang/Object;
    throw v3

    .line 225
    .end local v2    # "packageName":Ljava/lang/String;
    .restart local v1    # "methodName":Ljava/lang/String;
    .restart local p1    # "proxy":Ljava/lang/Object;
    .restart local p2    # "method":Ljava/lang/reflect/Method;
    .restart local p3    # "args":[Ljava/lang/Object;
    :cond_3
    :goto_0
    const-string v2, "queryIntentActivities"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 226
    if-eqz p3, :cond_4

    array-length v2, p3

    const/4 v4, 0x1

    if-le v2, v4, :cond_4

    aget-object v2, p3, v3

    if-eqz v2, :cond_4

    .line 227
    aget-object v2, p3, v3

    check-cast v2, Landroid/content/Intent;

    .line 228
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_4

    const-string v4, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 229
    const-string v3, "Blocking battery optimization query"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3

    .line 236
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v2, "getApplicationInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 237
    if-eqz p3, :cond_6

    array-length v2, p3

    if-lez v2, :cond_6

    aget-object v2, p3, v3

    if-eqz v2, :cond_6

    .line 238
    aget-object v2, p3, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Lcom/pandasu/turbo/hook/PackageManagerHookHelper;->-$$Nest$smshouldHidePackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 240
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blocking getApplicationInfo for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v3, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v3, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v1    # "methodName":Ljava/lang/String;
    .end local p1    # "proxy":Ljava/lang/Object;
    .end local p2    # "method":Ljava/lang/reflect/Method;
    .end local p3    # "args":[Ljava/lang/Object;
    throw v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v2    # "packageName":Ljava/lang/String;
    .restart local v1    # "methodName":Ljava/lang/String;
    .restart local p1    # "proxy":Ljava/lang/Object;
    .restart local p2    # "method":Ljava/lang/reflect/Method;
    .restart local p3    # "args":[Ljava/lang/Object;
    :cond_6
    :goto_1
    goto :goto_2

    .line 248
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in invoke: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v0, p0, Lcom/pandasu/turbo/hook/PackageManagerHookHelper$1;->val$originalPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 246
    :catch_1
    move-exception v0

    .line 247
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    throw v0
.end method
