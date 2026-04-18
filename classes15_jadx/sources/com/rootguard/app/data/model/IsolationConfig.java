package com.rootguard.app.data.model;

import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: IsolationConfig.kt */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b,\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 O2\u00020\u0001:\u0002NOBµ\u0001\b\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\b\u0012\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0011\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0006\u0010\u0014\u001a\u00020\b\u0012\u0006\u0010\u0015\u001a\u00020\b\u0012\u0006\u0010\u0016\u001a\u00020\b\u0012\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0018\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a¢\u0006\u0002\u0010\u001bBµ\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\b\u0012\b\b\u0002\u0010\f\u001a\u00020\b\u0012\b\b\u0002\u0010\r\u001a\u00020\b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\b\u0012\b\b\u0002\u0010\u000f\u001a\u00020\b\u0012\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0014\u001a\u00020\b\u0012\b\b\u0002\u0010\u0015\u001a\u00020\b\u0012\b\b\u0002\u0010\u0016\u001a\u00020\b\u0012\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u0018¢\u0006\u0002\u0010\u001cJ\t\u00101\u001a\u00020\u0005HÆ\u0003J\t\u00102\u001a\u00020\bHÆ\u0003J\u0015\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\t\u00105\u001a\u00020\bHÆ\u0003J\t\u00106\u001a\u00020\bHÆ\u0003J\t\u00107\u001a\u00020\bHÆ\u0003J\u000f\u00108\u001a\b\u0012\u0004\u0012\u00020\u00050\u0018HÆ\u0003J\t\u00109\u001a\u00020\u0005HÆ\u0003J\t\u0010:\u001a\u00020\bHÆ\u0003J\t\u0010;\u001a\u00020\bHÆ\u0003J\t\u0010<\u001a\u00020\bHÆ\u0003J\t\u0010=\u001a\u00020\bHÆ\u0003J\t\u0010>\u001a\u00020\bHÆ\u0003J\t\u0010?\u001a\u00020\bHÆ\u0003J\t\u0010@\u001a\u00020\bHÆ\u0003J½\u0001\u0010A\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\b2\b\b\u0002\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u000e\u001a\u00020\b2\b\b\u0002\u0010\u000f\u001a\u00020\b2\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\b\u0002\u0010\u0014\u001a\u00020\b2\b\b\u0002\u0010\u0015\u001a\u00020\b2\b\b\u0002\u0010\u0016\u001a\u00020\b2\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u0018HÆ\u0001J\u0013\u0010B\u001a\u00020\b2\b\u0010C\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010D\u001a\u00020\u0003HÖ\u0001J\t\u0010E\u001a\u00020\u0005HÖ\u0001J&\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020\u00002\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020LHÁ\u0001¢\u0006\u0002\bMR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u001d\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010\u000f\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0011\u0010\u0015\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\"R\u0011\u0010\u0014\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\"R\u0011\u0010\u0016\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\"R\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u0018¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u0011\u0010\u000b\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\"R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\"R\u0011\u0010\r\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\"R\u0011\u0010\n\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\"R\u0011\u0010\f\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\"R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\"R\u0011\u0010\u000e\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\"R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\u001eR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\b\n\u0000\u001a\u0004\b/\u00100¨\u0006P"}, d2 = {"Lcom/rootguard/app/data/model/IsolationConfig;", "", "seen1", "", "packageName", "", "appName", "isEnabled", "", "hideMagisk", "hideSuBinary", "hideBusybox", "hideXposed", "hideMagiskApp", "isolateStorage", "disableRootAccess", "customProps", "", "sandboxRule", "Lcom/rootguard/app/data/model/SandboxRule;", "enablePlatformCompatHook", "enableAppDataIsolation", "enablePmsHook", "hiddenPackages", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/rootguard/app/data/model/SandboxRule;ZZZLjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZLjava/util/Map;Lcom/rootguard/app/data/model/SandboxRule;ZZZLjava/util/List;)V", "getAppName", "()Ljava/lang/String;", "getCustomProps", "()Ljava/util/Map;", "getDisableRootAccess", "()Z", "getEnableAppDataIsolation", "getEnablePlatformCompatHook", "getEnablePmsHook", "getHiddenPackages", "()Ljava/util/List;", "getHideBusybox", "getHideMagisk", "getHideMagiskApp", "getHideSuBinary", "getHideXposed", "getIsolateStorage", "getPackageName", "getSandboxRule", "()Lcom/rootguard/app/data/model/SandboxRule;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$app_debug", "$serializer", "Companion", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes15.dex */
public final /* data */ class IsolationConfig {
    private final String appName;
    private final Map<String, String> customProps;
    private final boolean disableRootAccess;
    private final boolean enableAppDataIsolation;
    private final boolean enablePlatformCompatHook;
    private final boolean enablePmsHook;
    private final List<String> hiddenPackages;
    private final boolean hideBusybox;
    private final boolean hideMagisk;
    private final boolean hideMagiskApp;
    private final boolean hideSuBinary;
    private final boolean hideXposed;
    private final boolean isEnabled;
    private final boolean isolateStorage;
    private final String packageName;
    private final SandboxRule sandboxRule;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, null, null, null, null, null, new LinkedHashMapSerializer(StringSerializer.INSTANCE, StringSerializer.INSTANCE), null, null, null, null, new ArrayListSerializer(StringSerializer.INSTANCE)};

    /* renamed from: component1, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    /* renamed from: component10, reason: from getter */
    public final boolean getDisableRootAccess() {
        return this.disableRootAccess;
    }

    public final Map<String, String> component11() {
        return this.customProps;
    }

    /* renamed from: component12, reason: from getter */
    public final SandboxRule getSandboxRule() {
        return this.sandboxRule;
    }

    /* renamed from: component13, reason: from getter */
    public final boolean getEnablePlatformCompatHook() {
        return this.enablePlatformCompatHook;
    }

    /* renamed from: component14, reason: from getter */
    public final boolean getEnableAppDataIsolation() {
        return this.enableAppDataIsolation;
    }

    /* renamed from: component15, reason: from getter */
    public final boolean getEnablePmsHook() {
        return this.enablePmsHook;
    }

    public final List<String> component16() {
        return this.hiddenPackages;
    }

    /* renamed from: component2, reason: from getter */
    public final String getAppName() {
        return this.appName;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsEnabled() {
        return this.isEnabled;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getHideMagisk() {
        return this.hideMagisk;
    }

    /* renamed from: component5, reason: from getter */
    public final boolean getHideSuBinary() {
        return this.hideSuBinary;
    }

    /* renamed from: component6, reason: from getter */
    public final boolean getHideBusybox() {
        return this.hideBusybox;
    }

    /* renamed from: component7, reason: from getter */
    public final boolean getHideXposed() {
        return this.hideXposed;
    }

    /* renamed from: component8, reason: from getter */
    public final boolean getHideMagiskApp() {
        return this.hideMagiskApp;
    }

    /* renamed from: component9, reason: from getter */
    public final boolean getIsolateStorage() {
        return this.isolateStorage;
    }

    public final IsolationConfig copy(String packageName, String appName, boolean isEnabled, boolean hideMagisk, boolean hideSuBinary, boolean hideBusybox, boolean hideXposed, boolean hideMagiskApp, boolean isolateStorage, boolean disableRootAccess, Map<String, String> customProps, SandboxRule sandboxRule, boolean enablePlatformCompatHook, boolean enableAppDataIsolation, boolean enablePmsHook, List<String> hiddenPackages) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(appName, "appName");
        Intrinsics.checkNotNullParameter(customProps, "customProps");
        Intrinsics.checkNotNullParameter(hiddenPackages, "hiddenPackages");
        return new IsolationConfig(packageName, appName, isEnabled, hideMagisk, hideSuBinary, hideBusybox, hideXposed, hideMagiskApp, isolateStorage, disableRootAccess, customProps, sandboxRule, enablePlatformCompatHook, enableAppDataIsolation, enablePmsHook, hiddenPackages);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof IsolationConfig)) {
            return false;
        }
        IsolationConfig isolationConfig = (IsolationConfig) other;
        return Intrinsics.areEqual(this.packageName, isolationConfig.packageName) && Intrinsics.areEqual(this.appName, isolationConfig.appName) && this.isEnabled == isolationConfig.isEnabled && this.hideMagisk == isolationConfig.hideMagisk && this.hideSuBinary == isolationConfig.hideSuBinary && this.hideBusybox == isolationConfig.hideBusybox && this.hideXposed == isolationConfig.hideXposed && this.hideMagiskApp == isolationConfig.hideMagiskApp && this.isolateStorage == isolationConfig.isolateStorage && this.disableRootAccess == isolationConfig.disableRootAccess && Intrinsics.areEqual(this.customProps, isolationConfig.customProps) && Intrinsics.areEqual(this.sandboxRule, isolationConfig.sandboxRule) && this.enablePlatformCompatHook == isolationConfig.enablePlatformCompatHook && this.enableAppDataIsolation == isolationConfig.enableAppDataIsolation && this.enablePmsHook == isolationConfig.enablePmsHook && Intrinsics.areEqual(this.hiddenPackages, isolationConfig.hiddenPackages);
    }

    public int hashCode() {
        int hashCode = ((((((((((((((((((((this.packageName.hashCode() * 31) + this.appName.hashCode()) * 31) + Boolean.hashCode(this.isEnabled)) * 31) + Boolean.hashCode(this.hideMagisk)) * 31) + Boolean.hashCode(this.hideSuBinary)) * 31) + Boolean.hashCode(this.hideBusybox)) * 31) + Boolean.hashCode(this.hideXposed)) * 31) + Boolean.hashCode(this.hideMagiskApp)) * 31) + Boolean.hashCode(this.isolateStorage)) * 31) + Boolean.hashCode(this.disableRootAccess)) * 31) + this.customProps.hashCode()) * 31;
        SandboxRule sandboxRule = this.sandboxRule;
        return ((((((((hashCode + (sandboxRule == null ? 0 : sandboxRule.hashCode())) * 31) + Boolean.hashCode(this.enablePlatformCompatHook)) * 31) + Boolean.hashCode(this.enableAppDataIsolation)) * 31) + Boolean.hashCode(this.enablePmsHook)) * 31) + this.hiddenPackages.hashCode();
    }

    public String toString() {
        return "IsolationConfig(packageName=" + this.packageName + ", appName=" + this.appName + ", isEnabled=" + this.isEnabled + ", hideMagisk=" + this.hideMagisk + ", hideSuBinary=" + this.hideSuBinary + ", hideBusybox=" + this.hideBusybox + ", hideXposed=" + this.hideXposed + ", hideMagiskApp=" + this.hideMagiskApp + ", isolateStorage=" + this.isolateStorage + ", disableRootAccess=" + this.disableRootAccess + ", customProps=" + this.customProps + ", sandboxRule=" + this.sandboxRule + ", enablePlatformCompatHook=" + this.enablePlatformCompatHook + ", enableAppDataIsolation=" + this.enableAppDataIsolation + ", enablePmsHook=" + this.enablePmsHook + ", hiddenPackages=" + this.hiddenPackages + ")";
    }

    /* compiled from: IsolationConfig.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/rootguard/app/data/model/IsolationConfig$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/rootguard/app/data/model/IsolationConfig;", "app_debug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes15.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<IsolationConfig> serializer() {
            return IsolationConfig$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ IsolationConfig(int seen1, String packageName, String appName, boolean isEnabled, boolean hideMagisk, boolean hideSuBinary, boolean hideBusybox, boolean hideXposed, boolean hideMagiskApp, boolean isolateStorage, boolean disableRootAccess, Map customProps, SandboxRule sandboxRule, boolean enablePlatformCompatHook, boolean enableAppDataIsolation, boolean enablePmsHook, List hiddenPackages, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (seen1 & 3)) {
            PluginExceptionsKt.throwMissingFieldException(seen1, 3, IsolationConfig$$serializer.INSTANCE.getDescriptor());
        }
        this.packageName = packageName;
        this.appName = appName;
        if ((seen1 & 4) == 0) {
            this.isEnabled = false;
        } else {
            this.isEnabled = isEnabled;
        }
        if ((seen1 & 8) == 0) {
            this.hideMagisk = true;
        } else {
            this.hideMagisk = hideMagisk;
        }
        if ((seen1 & 16) == 0) {
            this.hideSuBinary = true;
        } else {
            this.hideSuBinary = hideSuBinary;
        }
        if ((seen1 & 32) == 0) {
            this.hideBusybox = true;
        } else {
            this.hideBusybox = hideBusybox;
        }
        if ((seen1 & 64) == 0) {
            this.hideXposed = true;
        } else {
            this.hideXposed = hideXposed;
        }
        if ((seen1 & 128) == 0) {
            this.hideMagiskApp = true;
        } else {
            this.hideMagiskApp = hideMagiskApp;
        }
        if ((seen1 & 256) == 0) {
            this.isolateStorage = false;
        } else {
            this.isolateStorage = isolateStorage;
        }
        if ((seen1 & 512) == 0) {
            this.disableRootAccess = false;
        } else {
            this.disableRootAccess = disableRootAccess;
        }
        if ((seen1 & 1024) == 0) {
            this.customProps = MapsKt.emptyMap();
        } else {
            this.customProps = customProps;
        }
        if ((seen1 & 2048) == 0) {
            this.sandboxRule = null;
        } else {
            this.sandboxRule = sandboxRule;
        }
        if ((seen1 & 4096) == 0) {
            this.enablePlatformCompatHook = false;
        } else {
            this.enablePlatformCompatHook = enablePlatformCompatHook;
        }
        if ((seen1 & 8192) == 0) {
            this.enableAppDataIsolation = false;
        } else {
            this.enableAppDataIsolation = enableAppDataIsolation;
        }
        if ((seen1 & 16384) == 0) {
            this.enablePmsHook = true;
        } else {
            this.enablePmsHook = enablePmsHook;
        }
        if ((seen1 & 32768) == 0) {
            this.hiddenPackages = CollectionsKt.emptyList();
        } else {
            this.hiddenPackages = hiddenPackages;
        }
    }

    public IsolationConfig(String packageName, String appName, boolean isEnabled, boolean hideMagisk, boolean hideSuBinary, boolean hideBusybox, boolean hideXposed, boolean hideMagiskApp, boolean isolateStorage, boolean disableRootAccess, Map<String, String> map, SandboxRule sandboxRule, boolean enablePlatformCompatHook, boolean enableAppDataIsolation, boolean enablePmsHook, List<String> list) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(appName, "appName");
        Intrinsics.checkNotNullParameter(map, "customProps");
        Intrinsics.checkNotNullParameter(list, "hiddenPackages");
        this.packageName = packageName;
        this.appName = appName;
        this.isEnabled = isEnabled;
        this.hideMagisk = hideMagisk;
        this.hideSuBinary = hideSuBinary;
        this.hideBusybox = hideBusybox;
        this.hideXposed = hideXposed;
        this.hideMagiskApp = hideMagiskApp;
        this.isolateStorage = isolateStorage;
        this.disableRootAccess = disableRootAccess;
        this.customProps = map;
        this.sandboxRule = sandboxRule;
        this.enablePlatformCompatHook = enablePlatformCompatHook;
        this.enableAppDataIsolation = enableAppDataIsolation;
        this.enablePmsHook = enablePmsHook;
        this.hiddenPackages = list;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$app_debug(IsolationConfig self, CompositeEncoder output, SerialDescriptor serialDesc) {
        SerializationStrategy[] serializationStrategyArr = $childSerializers;
        boolean z = false;
        output.encodeStringElement(serialDesc, 0, self.packageName);
        output.encodeStringElement(serialDesc, 1, self.appName);
        if (output.shouldEncodeElementDefault(serialDesc, 2) ? true : self.isEnabled) {
            output.encodeBooleanElement(serialDesc, 2, self.isEnabled);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) ? true : !self.hideMagisk) {
            output.encodeBooleanElement(serialDesc, 3, self.hideMagisk);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) ? true : !self.hideSuBinary) {
            output.encodeBooleanElement(serialDesc, 4, self.hideSuBinary);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5) ? true : !self.hideBusybox) {
            output.encodeBooleanElement(serialDesc, 5, self.hideBusybox);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 6) ? true : !self.hideXposed) {
            output.encodeBooleanElement(serialDesc, 6, self.hideXposed);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 7) ? true : !self.hideMagiskApp) {
            output.encodeBooleanElement(serialDesc, 7, self.hideMagiskApp);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 8) ? true : self.isolateStorage) {
            output.encodeBooleanElement(serialDesc, 8, self.isolateStorage);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 9) ? true : self.disableRootAccess) {
            output.encodeBooleanElement(serialDesc, 9, self.disableRootAccess);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 10) ? true : !Intrinsics.areEqual(self.customProps, MapsKt.emptyMap())) {
            output.encodeSerializableElement(serialDesc, 10, serializationStrategyArr[10], self.customProps);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 11) || self.sandboxRule != null) {
            output.encodeNullableSerializableElement(serialDesc, 11, SandboxRule$$serializer.INSTANCE, self.sandboxRule);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 12) ? true : self.enablePlatformCompatHook) {
            output.encodeBooleanElement(serialDesc, 12, self.enablePlatformCompatHook);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 13) ? true : self.enableAppDataIsolation) {
            output.encodeBooleanElement(serialDesc, 13, self.enableAppDataIsolation);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 14) ? true : !self.enablePmsHook) {
            output.encodeBooleanElement(serialDesc, 14, self.enablePmsHook);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 15)) {
            z = true;
        } else if (!Intrinsics.areEqual(self.hiddenPackages, CollectionsKt.emptyList())) {
            z = true;
        }
        if (z) {
            output.encodeSerializableElement(serialDesc, 15, serializationStrategyArr[15], self.hiddenPackages);
        }
    }

    public /* synthetic */ IsolationConfig(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, Map map, SandboxRule sandboxRule, boolean z9, boolean z10, boolean z11, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? false : z, (i & 8) != 0 ? true : z2, (i & 16) != 0 ? true : z3, (i & 32) != 0 ? true : z4, (i & 64) != 0 ? true : z5, (i & 128) != 0 ? true : z6, (i & 256) != 0 ? false : z7, (i & 512) != 0 ? false : z8, (i & 1024) != 0 ? MapsKt.emptyMap() : map, (i & 2048) != 0 ? null : sandboxRule, (i & 4096) != 0 ? false : z9, (i & 8192) != 0 ? false : z10, (i & 16384) != 0 ? true : z11, (i & 32768) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getAppName() {
        return this.appName;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public final boolean getHideMagisk() {
        return this.hideMagisk;
    }

    public final boolean getHideSuBinary() {
        return this.hideSuBinary;
    }

    public final boolean getHideBusybox() {
        return this.hideBusybox;
    }

    public final boolean getHideXposed() {
        return this.hideXposed;
    }

    public final boolean getHideMagiskApp() {
        return this.hideMagiskApp;
    }

    public final boolean getIsolateStorage() {
        return this.isolateStorage;
    }

    public final boolean getDisableRootAccess() {
        return this.disableRootAccess;
    }

    public final Map<String, String> getCustomProps() {
        return this.customProps;
    }

    public final SandboxRule getSandboxRule() {
        return this.sandboxRule;
    }

    public final boolean getEnablePlatformCompatHook() {
        return this.enablePlatformCompatHook;
    }

    public final boolean getEnableAppDataIsolation() {
        return this.enableAppDataIsolation;
    }

    public final boolean getEnablePmsHook() {
        return this.enablePmsHook;
    }

    public final List<String> getHiddenPackages() {
        return this.hiddenPackages;
    }
}
