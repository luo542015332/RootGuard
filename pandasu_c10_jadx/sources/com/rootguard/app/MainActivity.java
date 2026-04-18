package com.rootguard.app;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.Toast;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.core.splashscreen.SplashScreen;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import com.rootguard.app.data.local.IsolationDataStore;
import com.rootguard.app.data.local.SettingsDataStore;
import com.rootguard.app.data.magisk.RootHider;
import com.rootguard.app.utils.AndroidVersionCompat;
import com.rootguard.app.utils.Logger;
import dagger.hilt.android.AndroidEntryPoint;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineStart;

/* compiled from: MainActivity.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\u0012\u0010\u0017\u001a\u00020\u00162\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\b\u0010\u001a\u001a\u00020\u0016H\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001c²\u0006\f\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u008a\u008e\u0002²\u0006\n\u0010\u001f\u001a\u00020 X\u008a\u008e\u0002²\u0006\n\u0010!\u001a\u00020 X\u008a\u008e\u0002²\u0006\n\u0010\"\u001a\u00020#X\u008a\u0084\u0002²\u0006\n\u0010$\u001a\u00020 X\u008a\u0084\u0002²\u0006\n\u0010%\u001a\u00020 X\u008a\u0084\u0002"}, d2 = {"Lcom/rootguard/app/MainActivity;", "Landroidx/activity/ComponentActivity;", "()V", "isolationDataStore", "Lcom/rootguard/app/data/local/IsolationDataStore;", "getIsolationDataStore", "()Lcom/rootguard/app/data/local/IsolationDataStore;", "setIsolationDataStore", "(Lcom/rootguard/app/data/local/IsolationDataStore;)V", "rootHider", "Lcom/rootguard/app/data/magisk/RootHider;", "getRootHider", "()Lcom/rootguard/app/data/magisk/RootHider;", "setRootHider", "(Lcom/rootguard/app/data/magisk/RootHider;)V", "settingsDataStore", "Lcom/rootguard/app/data/local/SettingsDataStore;", "getSettingsDataStore", "()Lcom/rootguard/app/data/local/SettingsDataStore;", "setSettingsDataStore", "(Lcom/rootguard/app/data/local/SettingsDataStore;)V", "applyBankingIsolationForTaxApps", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "runCompatibilityCheck", "Companion", "app_debug", "authorizationStatus", "Lcom/rootguard/app/util/RootEnvironmentDetector$AuthorizationStatus;", "isCheckingPermission", "", "isLoading", "themeId", "", "isDarkMode", "useDynamicColors"}, k = 1, mv = {1, 9, 0}, xi = 48)
@AndroidEntryPoint
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
public final class MainActivity extends Hilt_MainActivity {

    @Inject
    public IsolationDataStore isolationDataStore;

    @Inject
    public RootHider rootHider;

    @Inject
    public SettingsDataStore settingsDataStore;
    public static final int $stable = 8;
    private static final List<Pair<String, String>> TAX_APPS = CollectionsKt.listOf(new Pair[]{TuplesKt.to("cn.gov.tax.its", "电子税务"), TuplesKt.to("cn.gov.chinatax.gt4.app", "中国税务")});
    private static final List<Pair<String, String>> HIGH_RISK_DETECTOR_APPS = CollectionsKt.listOf(new Pair[]{TuplesKt.to("com.zhenxi.hunter", "Hunter检测器"), TuplesKt.to("icu.nullptr.applistdetector", "AppList Detector")});

    /* compiled from: MainActivity.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AndroidVersionCompat.CustomOS.values().length];
            try {
                iArr[AndroidVersionCompat.CustomOS.HYPEROS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[AndroidVersionCompat.CustomOS.MIUI.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[AndroidVersionCompat.CustomOS.COLOROS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final SettingsDataStore getSettingsDataStore() {
        SettingsDataStore settingsDataStore = this.settingsDataStore;
        if (settingsDataStore != null) {
            return settingsDataStore;
        }
        Intrinsics.throwUninitializedPropertyAccessException("settingsDataStore");
        return null;
    }

    public final void setSettingsDataStore(SettingsDataStore settingsDataStore) {
        Intrinsics.checkNotNullParameter(settingsDataStore, "<set-?>");
        this.settingsDataStore = settingsDataStore;
    }

    public final IsolationDataStore getIsolationDataStore() {
        IsolationDataStore isolationDataStore = this.isolationDataStore;
        if (isolationDataStore != null) {
            return isolationDataStore;
        }
        Intrinsics.throwUninitializedPropertyAccessException("isolationDataStore");
        return null;
    }

    public final void setIsolationDataStore(IsolationDataStore isolationDataStore) {
        Intrinsics.checkNotNullParameter(isolationDataStore, "<set-?>");
        this.isolationDataStore = isolationDataStore;
    }

    public final RootHider getRootHider() {
        RootHider rootHider = this.rootHider;
        if (rootHider != null) {
            return rootHider;
        }
        Intrinsics.throwUninitializedPropertyAccessException("rootHider");
        return null;
    }

    public final void setRootHider(RootHider rootHider) {
        Intrinsics.checkNotNullParameter(rootHider, "<set-?>");
        this.rootHider = rootHider;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void onCreate(Bundle savedInstanceState) {
        SplashScreen.Companion.installSplashScreen((Activity) this);
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable$default(this, (SystemBarStyle) null, (SystemBarStyle) null, 3, (Object) null);
        Toast.makeText((Context) this, "PandaSU v3.0.52 启动", 1).show();
        Logger.INSTANCE.d("MainActivity onCreate called - Isolation Only Mode");
        Logger.INSTANCE.d("BuildConfig.VERSION_NAME: 3.0.52");
        BuildersKt.launch$default(LifecycleOwnerKt.getLifecycleScope((LifecycleOwner) this), (CoroutineContext) null, (CoroutineStart) null, new MainActivity$onCreate$1(this, null), 3, (Object) null);
        ComponentActivityKt.setContent$default(this, (CompositionContext) null, ComposableLambdaKt.composableLambdaInstance(279818031, true, new MainActivity$onCreate$2(this)), 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void applyBankingIsolationForTaxApps() {
        BuildersKt.launch$default(LifecycleOwnerKt.getLifecycleScope((LifecycleOwner) this), (CoroutineContext) null, (CoroutineStart) null, new MainActivity$applyBankingIsolationForTaxApps$1(this, null), 3, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runCompatibilityCheck() {
        try {
            AndroidVersionCompat.DeviceManufacturer deviceManufacturer = AndroidVersionCompat.INSTANCE.getDeviceManufacturer();
            AndroidVersionCompat.CustomOS customOS = AndroidVersionCompat.INSTANCE.getCustomOS();
            String androidVersion = AndroidVersionCompat.INSTANCE.getVersionDescription();
            Logger.INSTANCE.d("系统兼容性信息:");
            Logger.INSTANCE.d("  设备厂商: " + deviceManufacturer.name());
            Logger.INSTANCE.d("  定制系统: " + customOS.name());
            Logger.INSTANCE.d("  Android 版本: " + androidVersion);
            Logger.INSTANCE.d("  SDK_INT: " + AndroidVersionCompat.INSTANCE.getSDK_INT());
            boolean supportsSeccomp = AndroidVersionCompat.INSTANCE.supportsSeccomp();
            boolean supportsScopedStorage = AndroidVersionCompat.INSTANCE.supportsScopedStorage();
            boolean supportsDynamicColor = AndroidVersionCompat.INSTANCE.supportsDynamicColor();
            Logger.INSTANCE.d("功能支持检查:");
            Logger.INSTANCE.d("  Seccomp 支持: " + supportsSeccomp + " (需要 Android 8.0+)");
            Logger.INSTANCE.d("  分区存储支持: " + supportsScopedStorage + " (需要 Android 10+)");
            Logger.INSTANCE.d("  动态色彩支持: " + supportsDynamicColor + " (需要 Android 12+)");
            AndroidVersionCompat.CompatibilityReport report = AndroidVersionCompat.INSTANCE.generateCompatibilityReport();
            Logger.INSTANCE.d("兼容性报告:");
            Logger.INSTANCE.d("  设备信息: " + report.getDeviceInfo());
            Logger.INSTANCE.d("  支持的功能: " + CollectionsKt.joinToString$default(report.getSupportedFeatures(), ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null));
            Logger.INSTANCE.d("  不支持的功能: " + CollectionsKt.joinToString$default(report.getUnsupportedFeatures(), ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null));
            if (!report.getSuggestions().isEmpty()) {
                Logger.INSTANCE.d("系统建议:");
                Iterable $this$forEach$iv = report.getSuggestions();
                for (Object element$iv : $this$forEach$iv) {
                    String suggestion = (String) element$iv;
                    Logger.INSTANCE.d("  - " + suggestion);
                }
            }
            switch (WhenMappings.$EnumSwitchMapping$0[customOS.ordinal()]) {
                case 1:
                    Logger.INSTANCE.d("HyperOS 系统检测: 可能需要特殊权限处理");
                    break;
                case 2:
                    Logger.INSTANCE.d("MIUI 系统检测: 需要处理 FLAG_SYSTEM 标志异常");
                    break;
                case 3:
                    Logger.INSTANCE.d("ColorOS 系统检测: 有严格的权限管理机制");
                    break;
                default:
                    Logger.INSTANCE.d("标准 Android 系统: 使用常规适配");
                    break;
            }
            Logger.INSTANCE.d("兼容性检查完成");
        } catch (Exception e) {
            Logger.INSTANCE.w("兼容性检查失败: " + e.getMessage());
        }
    }
}
