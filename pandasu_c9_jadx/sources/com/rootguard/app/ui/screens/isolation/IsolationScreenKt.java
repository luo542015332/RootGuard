package com.rootguard.app.ui.screens.isolation;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.CheckCircleKt;
import androidx.compose.material.icons.filled.ErrorKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.CardColors;
import androidx.compose.material3.CardDefaults;
import androidx.compose.material3.CardElevation;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.IconButtonColors;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.OutlinedTextFieldDefaults;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarColors;
import androidx.compose.material3.TopAppBarScrollBehavior;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.hilt.navigation.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import com.rootguard.app.data.model.AppCategory;
import com.rootguard.app.data.model.IsolationConfig;
import com.rootguard.app.data.model.IsolationLevel;
import com.rootguard.app.utils.OneClickIsolationHelper;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: IsolationScreen.kt */
@Metadata(d1 = {"\u0000f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\u001a+\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0005H\u0007¢\u0006\u0002\u0010\u0006\u001a9\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u00052\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0007¢\u0006\u0002\u0010\u000e\u001a+\u0010\u000f\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0005H\u0007¢\u0006\u0002\u0010\u0006\u001a9\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00010\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00010\u0016H\u0007¢\u0006\u0002\u0010\u0018\u001a)\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u001b2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00010\u0005H\u0007¢\u0006\u0002\u0010\u001d\u001aw\u0010\u001e\u001a\u00020\u00012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001b2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00010\u00162\u001c\b\u0002\u0010\"\u001a\u0016\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u0001\u0018\u00010#2\u0010\b\u0002\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00162\b\b\u0002\u0010%\u001a\u00020\u00142\b\b\u0002\u0010&\u001a\u00020'H\u0007¢\u0006\u0002\u0010(\u001a1\u0010)\u001a\u00020\u00012\u0006\u0010*\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020\u00142\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010\u0005H\u0007¢\u0006\u0002\u0010-\u001a\u001d\u0010.\u001a\u00020\u00012\u0006\u0010/\u001a\u00020\u001b2\u0006\u00100\u001a\u00020\u0014H\u0007¢\u0006\u0002\u00101\u001a#\u00102\u001a\u00020\u00012\u0006\u00103\u001a\u00020\u001b2\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u00010\u0016H\u0007¢\u0006\u0002\u00105\u001a=\u00106\u001a\u00020\u00012\u0006\u00107\u001a\u00020\u001b2\u0006\u00108\u001a\u00020\u001b2\u0006\u00109\u001a\u00020\u001b2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00010\u00162\b\b\u0002\u0010:\u001a\u00020;H\u0007¢\u0006\u0002\u0010<\u001a!\u0010=\u001a\u00020\u00012\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u00020?\u0012\u0004\u0012\u00020\u00010\u0005H\u0007¢\u0006\u0002\u0010@\u001a\u0015\u0010A\u001a\u00020\u00012\u0006\u0010%\u001a\u00020\u0014H\u0007¢\u0006\u0002\u0010B¨\u0006C²\u0006\n\u0010D\u001a\u00020EX\u008a\u0084\u0002"}, d2 = {"AdvancedIsolationSettings", "", "config", "Lcom/rootguard/app/data/model/IsolationConfig;", "onConfigChange", "Lkotlin/Function1;", "(Lcom/rootguard/app/data/model/IsolationConfig;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "AppFilterTabRow", "activeTab", "Lcom/rootguard/app/ui/screens/isolation/AppFilterTab;", "onTabSelected", "userCount", "", "systemCount", "(Lcom/rootguard/app/ui/screens/isolation/AppFilterTab;Lkotlin/jvm/functions/Function1;IILandroidx/compose/runtime/Composer;I)V", "AppIsolationCard", "AppListItem", "appInfo", "Lcom/rootguard/app/utils/OneClickIsolationHelper$AppInfo;", "isIsolated", "", "onToggle", "Lkotlin/Function0;", "onClick", "(Lcom/rootguard/app/utils/OneClickIsolationHelper$AppInfo;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "AppSearchBar", "query", "", "onQueryChange", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "IsolationScreen", "packageName", "appName", "onNavigateBack", "onNavigateToAppIsolation", "Lkotlin/Function2;", "onNavigateToLogs", "hasRootPermission", "viewModel", "Lcom/rootguard/app/ui/screens/isolation/IsolationViewModel;", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/rootguard/app/ui/screens/isolation/IsolationViewModel;Landroidx/compose/runtime/Composer;II)V", "IsolationToggleItem", "title", "checked", "onCheckedChange", "(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "MessageCard", "message", "isError", "(Ljava/lang/String;ZLandroidx/compose/runtime/Composer;I)V", "ModuleStatusCard", "report", "onDismiss", "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "PresetButton", "emoji", "label", "desc", "modifier", "Landroidx/compose/ui/Modifier;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "PresetSelectionCard", "onSelectPreset", "Lcom/rootguard/app/data/model/IsolationLevel;", "(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "RootPermissionStatusCard", "(ZLandroidx/compose/runtime/Composer;I)V", "app_debug", "uiState", "Lcom/rootguard/app/ui/screens/isolation/IsolationUiState;"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
public final class IsolationScreenKt {

    /* compiled from: IsolationScreen.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AppFilterTab.values().length];
            try {
                iArr[AppFilterTab.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[AppFilterTab.USER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[AppFilterTab.SYSTEM.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final void IsolationScreen(String packageName, String appName, final Function0<Unit> function0, Function2<? super String, ? super String, Unit> function2, Function0<Unit> function02, boolean hasRootPermission, IsolationViewModel viewModel, Composer $composer, final int $changed, final int i) {
        String str;
        String str2;
        Function2 function22;
        Function0 onNavigateToLogs;
        boolean hasRootPermission2;
        String packageName2;
        Function0 onNavigateToLogs2;
        boolean hasRootPermission3;
        int $dirty;
        String appName2;
        Function2 onNavigateToAppIsolation;
        IsolationViewModel viewModel2;
        IsolationViewModel viewModel3;
        String packageName3;
        String appName3;
        Intrinsics.checkNotNullParameter(function0, "onNavigateBack");
        Composer $composer2 = $composer.startRestartGroup(923172804);
        ComposerKt.sourceInformation($composer2, "C(IsolationScreen)P(5!1,2,3,4)41@1772L15,43@1829L16,44@1850L84,45@1939L130,47@2075L10203:IsolationScreen.kt#r3e9si");
        int $dirty2 = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty2 |= 6;
            str = packageName;
        } else if (($changed & 14) == 0) {
            str = packageName;
            $dirty2 |= $composer2.changed(str) ? 4 : 2;
        } else {
            str = packageName;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty2 |= 48;
            str2 = appName;
        } else if (($changed & 112) == 0) {
            str2 = appName;
            $dirty2 |= $composer2.changed(str2) ? 32 : 16;
        } else {
            str2 = appName;
        }
        if ((i & 4) != 0) {
            $dirty2 |= 384;
        } else if (($changed & 896) == 0) {
            $dirty2 |= $composer2.changedInstance(function0) ? 256 : 128;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty2 |= 3072;
            function22 = function2;
        } else if (($changed & 7168) == 0) {
            function22 = function2;
            $dirty2 |= $composer2.changedInstance(function22) ? 2048 : 1024;
        } else {
            function22 = function2;
        }
        int i5 = i & 16;
        if (i5 != 0) {
            $dirty2 |= 24576;
            onNavigateToLogs = function02;
        } else if ((57344 & $changed) == 0) {
            onNavigateToLogs = function02;
            $dirty2 |= $composer2.changedInstance(onNavigateToLogs) ? 16384 : 8192;
        } else {
            onNavigateToLogs = function02;
        }
        int i6 = i & 32;
        if (i6 != 0) {
            $dirty2 |= 196608;
            hasRootPermission2 = hasRootPermission;
        } else if ((458752 & $changed) == 0) {
            hasRootPermission2 = hasRootPermission;
            $dirty2 |= $composer2.changed(hasRootPermission2) ? 131072 : 65536;
        } else {
            hasRootPermission2 = hasRootPermission;
        }
        int i7 = i & 64;
        if (i7 != 0) {
            $dirty2 |= 524288;
        }
        int $dirty3 = $dirty2;
        if (i7 == 64 && ($dirty3 & 2995931) == 599186 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            viewModel3 = viewModel;
            appName3 = str2;
            onNavigateToAppIsolation = function22;
            onNavigateToLogs2 = onNavigateToLogs;
            packageName3 = str;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                String packageName4 = i2 != 0 ? null : str;
                String appName4 = i3 != 0 ? null : str2;
                Function2 onNavigateToAppIsolation2 = i4 != 0 ? null : function22;
                if (i5 != 0) {
                    onNavigateToLogs = null;
                }
                if (i6 != 0) {
                    hasRootPermission2 = true;
                }
                if (i7 != 0) {
                    $composer2.startReplaceableGroup(1890788296);
                    ComposerKt.sourceInformation($composer2, "CC(hiltViewModel)P(1)*42@1793L7,47@1936L47,48@1995L54:HiltViewModel.kt#9mcars");
                    HasDefaultViewModelProviderFactory current = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer2, LocalViewModelStoreOwner.$stable);
                    if (current == null) {
                        throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
                    }
                    ViewModelProvider.Factory factory$iv = HiltViewModelKt.createHiltViewModelFactory(current, $composer2, 8);
                    int $changed$iv$iv = (0 & 112) | 520;
                    $composer2.startReplaceableGroup(1729797275);
                    ComposerKt.sourceInformation($composer2, "CC(viewModel)P(3,2,1)*80@3834L7,90@4209L68:ViewModel.kt#3tja67");
                    CreationExtras extras$iv$iv = current instanceof HasDefaultViewModelProviderFactory ? current.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
                    ViewModel viewModel4 = ViewModelKt.viewModel(IsolationViewModel.class, current, (String) null, factory$iv, extras$iv$iv, $composer2, (($changed$iv$iv << 3) & 896) | 36936, 0);
                    $composer2.endReplaceableGroup();
                    $composer2.endReplaceableGroup();
                    packageName2 = packageName4;
                    $dirty = $dirty3 & (-3670017);
                    onNavigateToLogs2 = onNavigateToLogs;
                    hasRootPermission3 = hasRootPermission2;
                    appName2 = appName4;
                    onNavigateToAppIsolation = onNavigateToAppIsolation2;
                    viewModel2 = (IsolationViewModel) viewModel4;
                } else {
                    packageName2 = packageName4;
                    onNavigateToLogs2 = onNavigateToLogs;
                    hasRootPermission3 = hasRootPermission2;
                    $dirty = $dirty3;
                    appName2 = appName4;
                    onNavigateToAppIsolation = onNavigateToAppIsolation2;
                    viewModel2 = viewModel;
                }
            } else {
                $composer2.skipToGroupEnd();
                if (i7 != 0) {
                    $dirty = $dirty3 & (-3670017);
                    packageName2 = str;
                    onNavigateToAppIsolation = function22;
                    onNavigateToLogs2 = onNavigateToLogs;
                    hasRootPermission3 = hasRootPermission2;
                    viewModel2 = viewModel;
                    appName2 = str2;
                } else {
                    packageName2 = str;
                    onNavigateToAppIsolation = function22;
                    onNavigateToLogs2 = onNavigateToLogs;
                    hasRootPermission3 = hasRootPermission2;
                    $dirty = $dirty3;
                    viewModel2 = viewModel;
                    appName2 = str2;
                }
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(923172804, $dirty, -1, "com.rootguard.app.ui.screens.isolation.IsolationScreen (IsolationScreen.kt:42)");
            }
            final State uiState$delegate = SnapshotStateKt.collectAsState(viewModel2.getUiState(), (CoroutineContext) null, $composer2, 8, 1);
            EffectsKt.LaunchedEffect(Boolean.valueOf(hasRootPermission3), new IsolationScreenKt$IsolationScreen$1(viewModel2, hasRootPermission3, null), $composer2, (($dirty >> 15) & 14) | 64);
            EffectsKt.LaunchedEffect(packageName2, appName2, new IsolationScreenKt$IsolationScreen$2(packageName2, appName2, viewModel2, null), $composer2, ($dirty & 14) | 512 | ($dirty & 112));
            final String str3 = packageName2;
            final String str4 = appName2;
            final Function0 function03 = onNavigateToLogs2;
            final IsolationViewModel isolationViewModel = viewModel2;
            Function2 composableLambda = ComposableLambdaKt.composableLambda($composer2, 2110313344, true, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$3
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
                    invoke((Composer) p1, ((Number) p2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer3, int $changed2) {
                    ComposerKt.sourceInformation($composer3, "C49@2116L795:IsolationScreen.kt#r3e9si");
                    if (($changed2 & 11) != 2 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(2110313344, $changed2, -1, "com.rootguard.app.ui.screens.isolation.IsolationScreen.<anonymous> (IsolationScreen.kt:49)");
                        }
                        final String str5 = str3;
                        final String str6 = str4;
                        Function2 composableLambda2 = ComposableLambdaKt.composableLambda($composer3, -851915452, true, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$3.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
                                invoke((Composer) p1, ((Number) p2).intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer $composer4, int $changed3) {
                                ComposerKt.sourceInformation($composer4, "C50@2153L56:IsolationScreen.kt#r3e9si");
                                if (($changed3 & 11) == 2 && $composer4.getSkipping()) {
                                    $composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-851915452, $changed3, -1, "com.rootguard.app.ui.screens.isolation.IsolationScreen.<anonymous>.<anonymous> (IsolationScreen.kt:50)");
                                }
                                TextKt.Text--4IGK_g(str5 != null ? String.valueOf(str6) : "Root 隔离", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, $composer4, 0, 0, 131070);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        });
                        final String str7 = str3;
                        final Function0<Unit> function04 = function0;
                        Function2 composableLambda3 = ComposableLambdaKt.composableLambda($composer3, -75667898, true, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$3.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
                                invoke((Composer) p1, ((Number) p2).intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer $composer4, int $changed3) {
                                ComposerKt.sourceInformation($composer4, "C51@2273L76:IsolationScreen.kt#r3e9si");
                                if (($changed3 & 11) == 2 && $composer4.getSkipping()) {
                                    $composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-75667898, $changed3, -1, "com.rootguard.app.ui.screens.isolation.IsolationScreen.<anonymous>.<anonymous> (IsolationScreen.kt:51)");
                                }
                                if (str7 != null) {
                                    IconButtonKt.IconButton(function04, (Modifier) null, false, (IconButtonColors) null, (MutableInteractionSource) null, ComposableSingletons$IsolationScreenKt.INSTANCE.m0getLambda1$app_debug(), $composer4, 196608, 30);
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        });
                        final String str8 = str3;
                        final Function0<Unit> function05 = function03;
                        final IsolationViewModel isolationViewModel2 = isolationViewModel;
                        AppBarKt.TopAppBar(composableLambda2, (Modifier) null, composableLambda3, ComposableLambdaKt.composableLambda($composer3, -991714705, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$3.3
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(3);
                            }

                            public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                                invoke((RowScope) p1, (Composer) p2, ((Number) p3).intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(RowScope $this$TopAppBar, Composer $composer4, int $changed3) {
                                Object value$iv;
                                Intrinsics.checkNotNullParameter($this$TopAppBar, "$this$TopAppBar");
                                ComposerKt.sourceInformation($composer4, "C:IsolationScreen.kt#r3e9si");
                                if (($changed3 & 81) != 16 || !$composer4.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-991714705, $changed3, -1, "com.rootguard.app.ui.screens.isolation.IsolationScreen.<anonymous>.<anonymous> (IsolationScreen.kt:53)");
                                    }
                                    if (str8 == null) {
                                        $composer4.startReplaceableGroup(-1973823714);
                                        ComposerKt.sourceInformation($composer4, "55@2489L139");
                                        $composer4.startReplaceableGroup(-632041117);
                                        boolean invalid$iv = $composer4.changedInstance(function05);
                                        final Function0<Unit> function06 = function05;
                                        Object it$iv = $composer4.rememberedValue();
                                        if (invalid$iv || it$iv == Composer.Companion.getEmpty()) {
                                            value$iv = new Function0<Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$3$3$1$1
                                                /* JADX INFO: Access modifiers changed from: package-private */
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(0);
                                                }

                                                public /* bridge */ /* synthetic */ Object invoke() {
                                                    m16invoke();
                                                    return Unit.INSTANCE;
                                                }

                                                /* renamed from: invoke, reason: collision with other method in class */
                                                public final void m16invoke() {
                                                    Function0<Unit> function07 = function06;
                                                    if (function07 != null) {
                                                        function07.invoke();
                                                    }
                                                }
                                            };
                                            $composer4.updateRememberedValue(value$iv);
                                        } else {
                                            value$iv = it$iv;
                                        }
                                        $composer4.endReplaceableGroup();
                                        IconButtonKt.IconButton((Function0) value$iv, (Modifier) null, false, (IconButtonColors) null, (MutableInteractionSource) null, ComposableSingletons$IsolationScreenKt.INSTANCE.m5getLambda2$app_debug(), $composer4, 196608, 30);
                                        $composer4.endReplaceableGroup();
                                    } else {
                                        $composer4.startReplaceableGroup(-1973823484);
                                        ComposerKt.sourceInformation($composer4, "60@2722L135");
                                        final IsolationViewModel isolationViewModel3 = isolationViewModel2;
                                        IconButtonKt.IconButton(new Function0<Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.IsolationScreen.3.3.2
                                            {
                                                super(0);
                                            }

                                            public /* bridge */ /* synthetic */ Object invoke() {
                                                m17invoke();
                                                return Unit.INSTANCE;
                                            }

                                            /* renamed from: invoke, reason: collision with other method in class */
                                            public final void m17invoke() {
                                                IsolationViewModel.this.saveConfig();
                                            }
                                        }, (Modifier) null, false, (IconButtonColors) null, (MutableInteractionSource) null, ComposableSingletons$IsolationScreenKt.INSTANCE.m6getLambda3$app_debug(), $composer4, 196608, 30);
                                        $composer4.endReplaceableGroup();
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer4.skipToGroupEnd();
                            }
                        }), (WindowInsets) null, (TopAppBarColors) null, (TopAppBarScrollBehavior) null, $composer3, 3462, 114);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            });
            final String packageName5 = packageName2;
            final IsolationViewModel isolationViewModel2 = viewModel2;
            final String str5 = appName2;
            final Function2 function23 = onNavigateToAppIsolation;
            IsolationViewModel viewModel5 = viewModel2;
            boolean hasRootPermission4 = hasRootPermission3;
            String appName5 = appName2;
            ScaffoldKt.Scaffold-TvnljyQ((Modifier) null, composableLambda, (Function2) null, (Function2) null, (Function2) null, 0, 0L, 0L, (WindowInsets) null, ComposableLambdaKt.composableLambda($composer2, -1228785131, true, new Function3<PaddingValues, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$4
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(3);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                    invoke((PaddingValues) p1, (Composer) p2, ((Number) p3).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(PaddingValues pv, Composer $composer3, int $changed2) {
                    IsolationUiState IsolationScreen$lambda$0;
                    IsolationUiState IsolationScreen$lambda$02;
                    IsolationUiState IsolationScreen$lambda$03;
                    IsolationUiState IsolationScreen$lambda$04;
                    Object value$iv$iv;
                    Intrinsics.checkNotNullParameter(pv, "pv");
                    ComposerKt.sourceInformation($composer3, "C:IsolationScreen.kt#r3e9si");
                    int $dirty4 = $changed2;
                    if (($changed2 & 14) == 0) {
                        $dirty4 |= $composer3.changed(pv) ? 4 : 2;
                    }
                    int $dirty5 = $dirty4;
                    if (($dirty5 & 91) != 18 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1228785131, $dirty5, -1, "com.rootguard.app.ui.screens.isolation.IsolationScreen.<anonymous> (IsolationScreen.kt:68)");
                        }
                        if (packageName5 != null) {
                            $composer3.startReplaceableGroup(1957544860);
                            ComposerKt.sourceInformation($composer3, "69@2983L490");
                            Modifier modifier = PaddingKt.padding-3ABfNKs(PaddingKt.padding(SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, (Object) null), pv), Dp.constructor-impl(16));
                            Arrangement.Vertical vertical = Arrangement.INSTANCE.spacedBy-0680j_4(Dp.constructor-impl(16));
                            final State<IsolationUiState> state = uiState$delegate;
                            final IsolationViewModel isolationViewModel3 = isolationViewModel2;
                            final String str6 = packageName5;
                            final String str7 = str5;
                            LazyDslKt.LazyColumn(modifier, (LazyListState) null, (PaddingValues) null, false, vertical, (Alignment.Horizontal) null, (FlingBehavior) null, false, new Function1<LazyListScope, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$4.1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                                    invoke((LazyListScope) p1);
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(LazyListScope $this$LazyColumn) {
                                    Intrinsics.checkNotNullParameter($this$LazyColumn, "$this$LazyColumn");
                                    final State<IsolationUiState> state2 = state;
                                    final IsolationViewModel isolationViewModel4 = isolationViewModel3;
                                    LazyListScope.item$default($this$LazyColumn, (Object) null, (Object) null, ComposableLambdaKt.composableLambdaInstance(-80457596, true, new Function3<LazyItemScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.IsolationScreen.4.1.1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(3);
                                        }

                                        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                                            invoke((LazyItemScope) p1, (Composer) p2, ((Number) p3).intValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(LazyItemScope $this$item, Composer $composer4, int $changed3) {
                                            IsolationUiState IsolationScreen$lambda$05;
                                            Intrinsics.checkNotNullParameter($this$item, "$this$item");
                                            ComposerKt.sourceInformation($composer4, "C70@3121L71:IsolationScreen.kt#r3e9si");
                                            if (($changed3 & 81) == 16 && $composer4.getSkipping()) {
                                                $composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-80457596, $changed3, -1, "com.rootguard.app.ui.screens.isolation.IsolationScreen.<anonymous>.<anonymous>.<anonymous> (IsolationScreen.kt:70)");
                                            }
                                            IsolationScreen$lambda$05 = IsolationScreenKt.IsolationScreen$lambda$0(state2);
                                            IsolationConfig currentConfig = IsolationScreen$lambda$05.getCurrentConfig();
                                            final IsolationViewModel isolationViewModel5 = isolationViewModel4;
                                            IsolationScreenKt.AppIsolationCard(currentConfig, new Function1<IsolationConfig, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.IsolationScreen.4.1.1.1
                                                {
                                                    super(1);
                                                }

                                                public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                                                    invoke((IsolationConfig) p1);
                                                    return Unit.INSTANCE;
                                                }

                                                public final void invoke(IsolationConfig it) {
                                                    Intrinsics.checkNotNullParameter(it, "it");
                                                    IsolationViewModel.this.updateConfig(it);
                                                }
                                            }, $composer4, 8);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }
                                    }), 3, (Object) null);
                                    final IsolationViewModel isolationViewModel5 = isolationViewModel3;
                                    final String str8 = str6;
                                    final String str9 = str7;
                                    LazyListScope.item$default($this$LazyColumn, (Object) null, (Object) null, ComposableLambdaKt.composableLambdaInstance(344576379, true, new Function3<LazyItemScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.IsolationScreen.4.1.2
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(3);
                                        }

                                        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                                            invoke((LazyItemScope) p1, (Composer) p2, ((Number) p3).intValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(LazyItemScope $this$item, Composer $composer4, int $changed3) {
                                            Intrinsics.checkNotNullParameter($this$item, "$this$item");
                                            ComposerKt.sourceInformation($composer4, "C71@3218L77:IsolationScreen.kt#r3e9si");
                                            if (($changed3 & 81) == 16 && $composer4.getSkipping()) {
                                                $composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(344576379, $changed3, -1, "com.rootguard.app.ui.screens.isolation.IsolationScreen.<anonymous>.<anonymous>.<anonymous> (IsolationScreen.kt:71)");
                                            }
                                            final IsolationViewModel isolationViewModel6 = IsolationViewModel.this;
                                            final String str10 = str8;
                                            final String str11 = str9;
                                            IsolationScreenKt.PresetSelectionCard(new Function1<IsolationLevel, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.IsolationScreen.4.1.2.1
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(1);
                                                }

                                                public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                                                    invoke((IsolationLevel) p1);
                                                    return Unit.INSTANCE;
                                                }

                                                public final void invoke(IsolationLevel it) {
                                                    Intrinsics.checkNotNullParameter(it, "it");
                                                    IsolationViewModel isolationViewModel7 = IsolationViewModel.this;
                                                    String str12 = str10;
                                                    String str13 = str11;
                                                    if (str13 == null) {
                                                        str13 = "";
                                                    }
                                                    isolationViewModel7.applyPreset(str12, str13, it);
                                                }
                                            }, $composer4, 0);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }
                                    }), 3, (Object) null);
                                    final State<IsolationUiState> state3 = state;
                                    final IsolationViewModel isolationViewModel6 = isolationViewModel3;
                                    LazyListScope.item$default($this$LazyColumn, (Object) null, (Object) null, ComposableLambdaKt.composableLambdaInstance(-2006419012, true, new Function3<LazyItemScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.IsolationScreen.4.1.3
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(3);
                                        }

                                        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                                            invoke((LazyItemScope) p1, (Composer) p2, ((Number) p3).intValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(LazyItemScope $this$item, Composer $composer4, int $changed3) {
                                            IsolationUiState IsolationScreen$lambda$05;
                                            Intrinsics.checkNotNullParameter($this$item, "$this$item");
                                            ComposerKt.sourceInformation($composer4, "C72@3321L80:IsolationScreen.kt#r3e9si");
                                            if (($changed3 & 81) == 16 && $composer4.getSkipping()) {
                                                $composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-2006419012, $changed3, -1, "com.rootguard.app.ui.screens.isolation.IsolationScreen.<anonymous>.<anonymous>.<anonymous> (IsolationScreen.kt:72)");
                                            }
                                            IsolationScreen$lambda$05 = IsolationScreenKt.IsolationScreen$lambda$0(state3);
                                            IsolationConfig currentConfig = IsolationScreen$lambda$05.getCurrentConfig();
                                            final IsolationViewModel isolationViewModel7 = isolationViewModel6;
                                            IsolationScreenKt.AdvancedIsolationSettings(currentConfig, new Function1<IsolationConfig, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.IsolationScreen.4.1.3.1
                                                {
                                                    super(1);
                                                }

                                                public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                                                    invoke((IsolationConfig) p1);
                                                    return Unit.INSTANCE;
                                                }

                                                public final void invoke(IsolationConfig it) {
                                                    Intrinsics.checkNotNullParameter(it, "it");
                                                    IsolationViewModel.this.updateConfig(it);
                                                }
                                            }, $composer4, 8);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }
                                    }), 3, (Object) null);
                                    LazyListScope.item$default($this$LazyColumn, (Object) null, (Object) null, ComposableSingletons$IsolationScreenKt.INSTANCE.m7getLambda4$app_debug(), 3, (Object) null);
                                }
                            }, $composer3, 24576, 238);
                            $composer3.endReplaceableGroup();
                        } else {
                            $composer3.startReplaceableGroup(1957545380);
                            ComposerKt.sourceInformation($composer3, "76@3522L118,77@3653L8609");
                            IsolationScreen$lambda$0 = IsolationScreenKt.IsolationScreen$lambda$0(uiState$delegate);
                            List<OneClickIsolationHelper.AppInfo> userApps = IsolationScreen$lambda$0.getUserApps();
                            IsolationScreen$lambda$02 = IsolationScreenKt.IsolationScreen$lambda$0(uiState$delegate);
                            List<OneClickIsolationHelper.AppInfo> systemApps = IsolationScreen$lambda$02.getSystemApps();
                            IsolationScreen$lambda$03 = IsolationScreenKt.IsolationScreen$lambda$0(uiState$delegate);
                            String searchQuery = IsolationScreen$lambda$03.getSearchQuery();
                            IsolationScreen$lambda$04 = IsolationScreenKt.IsolationScreen$lambda$0(uiState$delegate);
                            Object[] keys$iv = {userApps, systemApps, searchQuery, IsolationScreen$lambda$04.getActiveTab()};
                            IsolationViewModel isolationViewModel4 = isolationViewModel2;
                            $composer3.startReplaceableGroup(-568225417);
                            ComposerKt.sourceInformation($composer3, "CC(remember)P(1):Composables.kt#9igjgp");
                            boolean invalid$iv = false;
                            for (Object key$iv : keys$iv) {
                                invalid$iv |= $composer3.changed(key$iv);
                            }
                            Object it$iv$iv = $composer3.rememberedValue();
                            if (invalid$iv || it$iv$iv == Composer.Companion.getEmpty()) {
                                value$iv$iv = isolationViewModel4.getFilteredApps();
                                $composer3.updateRememberedValue(value$iv$iv);
                            } else {
                                value$iv$iv = it$iv$iv;
                            }
                            $composer3.endReplaceableGroup();
                            final List filteredApps = (List) value$iv$iv;
                            Modifier padding = PaddingKt.padding(SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, (Object) null), pv);
                            final State<IsolationUiState> state2 = uiState$delegate;
                            final IsolationViewModel isolationViewModel5 = isolationViewModel2;
                            final Function2<String, String, Unit> function24 = function23;
                            LazyDslKt.LazyColumn(padding, (LazyListState) null, (PaddingValues) null, false, (Arrangement.Vertical) null, (Alignment.Horizontal) null, (FlingBehavior) null, false, new Function1<LazyListScope, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$4.2
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(1);
                                }

                                public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                                    invoke((LazyListScope) p1);
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(LazyListScope $this$LazyColumn) {
                                    IsolationUiState IsolationScreen$lambda$05;
                                    IsolationUiState IsolationScreen$lambda$06;
                                    IsolationUiState IsolationScreen$lambda$07;
                                    Function1<Integer, Object> function1;
                                    Intrinsics.checkNotNullParameter($this$LazyColumn, "$this$LazyColumn");
                                    final State<IsolationUiState> state3 = state2;
                                    LazyListScope.item$default($this$LazyColumn, (Object) null, (Object) null, ComposableLambdaKt.composableLambdaInstance(2019361101, true, new Function3<LazyItemScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.IsolationScreen.4.2.1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(3);
                                        }

                                        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                                            invoke((LazyItemScope) p1, (Composer) p2, ((Number) p3).intValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(LazyItemScope $this$item, Composer $composer4, int $changed3) {
                                            IsolationUiState IsolationScreen$lambda$08;
                                            Intrinsics.checkNotNullParameter($this$item, "$this$item");
                                            ComposerKt.sourceInformation($composer4, "C78@3725L51:IsolationScreen.kt#r3e9si");
                                            if (($changed3 & 81) == 16 && $composer4.getSkipping()) {
                                                $composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(2019361101, $changed3, -1, "com.rootguard.app.ui.screens.isolation.IsolationScreen.<anonymous>.<anonymous>.<anonymous> (IsolationScreen.kt:78)");
                                            }
                                            IsolationScreen$lambda$08 = IsolationScreenKt.IsolationScreen$lambda$0(state3);
                                            IsolationScreenKt.RootPermissionStatusCard(IsolationScreen$lambda$08.getHasRootPermission(), $composer4, 0);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }
                                    }), 3, (Object) null);
                                    IsolationScreen$lambda$05 = IsolationScreenKt.IsolationScreen$lambda$0(state2);
                                    final String it = IsolationScreen$lambda$05.getSuccessMessage();
                                    if (it != null) {
                                        LazyListScope.item$default($this$LazyColumn, (Object) null, (Object) null, ComposableLambdaKt.composableLambdaInstance(-1926679507, true, new Function3<LazyItemScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$4$2$2$1
                                            /* JADX INFO: Access modifiers changed from: package-private */
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(3);
                                            }

                                            public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                                                invoke((LazyItemScope) p1, (Composer) p2, ((Number) p3).intValue());
                                                return Unit.INSTANCE;
                                            }

                                            public final void invoke(LazyItemScope $this$item, Composer $composer4, int $changed3) {
                                                Intrinsics.checkNotNullParameter($this$item, "$this$item");
                                                ComposerKt.sourceInformation($composer4, "C79@3832L22:IsolationScreen.kt#r3e9si");
                                                if (($changed3 & 81) == 16 && $composer4.getSkipping()) {
                                                    $composer4.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(-1926679507, $changed3, -1, "com.rootguard.app.ui.screens.isolation.IsolationScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (IsolationScreen.kt:79)");
                                                }
                                                IsolationScreenKt.MessageCard(it, false, $composer4, 48);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }
                                        }), 3, (Object) null);
                                    }
                                    IsolationScreen$lambda$06 = IsolationScreenKt.IsolationScreen$lambda$0(state2);
                                    final String it2 = IsolationScreen$lambda$06.getErrorMessage();
                                    if (it2 != null) {
                                        LazyListScope.item$default($this$LazyColumn, (Object) null, (Object) null, ComposableLambdaKt.composableLambdaInstance(516378340, true, new Function3<LazyItemScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$4$2$3$1
                                            /* JADX INFO: Access modifiers changed from: package-private */
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(3);
                                            }

                                            public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                                                invoke((LazyItemScope) p1, (Composer) p2, ((Number) p3).intValue());
                                                return Unit.INSTANCE;
                                            }

                                            public final void invoke(LazyItemScope $this$item, Composer $composer4, int $changed3) {
                                                Intrinsics.checkNotNullParameter($this$item, "$this$item");
                                                ComposerKt.sourceInformation($composer4, "C80@3910L21:IsolationScreen.kt#r3e9si");
                                                if (($changed3 & 81) == 16 && $composer4.getSkipping()) {
                                                    $composer4.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(516378340, $changed3, -1, "com.rootguard.app.ui.screens.isolation.IsolationScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (IsolationScreen.kt:80)");
                                                }
                                                IsolationScreenKt.MessageCard(it2, true, $composer4, 48);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }
                                        }), 3, (Object) null);
                                    }
                                    final IsolationViewModel isolationViewModel6 = isolationViewModel5;
                                    final State<IsolationUiState> state4 = state2;
                                    LazyListScope.item$default($this$LazyColumn, (Object) null, (Object) null, ComposableLambdaKt.composableLambdaInstance(205280260, true, new Function3<LazyItemScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.IsolationScreen.4.2.4
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(3);
                                        }

                                        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                                            invoke((LazyItemScope) p1, (Composer) p2, ((Number) p3).intValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(LazyItemScope $this$item, Composer $composer4, int $changed3) {
                                            Intrinsics.checkNotNullParameter($this$item, "$this$item");
                                            ComposerKt.sourceInformation($composer4, "C86@4203L11,86@4161L69,84@4004L5346:IsolationScreen.kt#r3e9si");
                                            if (($changed3 & 81) != 16 || !$composer4.getSkipping()) {
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(205280260, $changed3, -1, "com.rootguard.app.ui.screens.isolation.IsolationScreen.<anonymous>.<anonymous>.<anonymous> (IsolationScreen.kt:84)");
                                                }
                                                Modifier modifier2 = PaddingKt.padding-VpY3zN4(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(16), Dp.constructor-impl(4));
                                                CardColors cardColors = CardDefaults.INSTANCE.cardColors-ro_MJ88(MaterialTheme.INSTANCE.getColorScheme($composer4, MaterialTheme.$stable).getSurfaceVariant-0d7_KjU(), 0L, 0L, 0L, $composer4, CardDefaults.$stable << 12, 14);
                                                final IsolationViewModel isolationViewModel7 = IsolationViewModel.this;
                                                final State<IsolationUiState> state5 = state4;
                                                CardKt.Card(modifier2, (Shape) null, cardColors, (CardElevation) null, (BorderStroke) null, ComposableLambdaKt.composableLambda($composer4, 467270006, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.IsolationScreen.4.2.4.1
                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    {
                                                        super(3);
                                                    }

                                                    public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                                                        invoke((ColumnScope) p1, (Composer) p2, ((Number) p3).intValue());
                                                        return Unit.INSTANCE;
                                                    }

                                                    /* JADX WARN: Removed duplicated region for block: B:24:0x0228  */
                                                    /* JADX WARN: Removed duplicated region for block: B:27:0x0234  */
                                                    /* JADX WARN: Removed duplicated region for block: B:35:0x043f  */
                                                    /* JADX WARN: Removed duplicated region for block: B:38:0x044b  */
                                                    /* JADX WARN: Removed duplicated region for block: B:41:0x0484  */
                                                    /* JADX WARN: Removed duplicated region for block: B:47:0x0518  */
                                                    /* JADX WARN: Removed duplicated region for block: B:57:0x0642  */
                                                    /* JADX WARN: Removed duplicated region for block: B:62:0x06a9  */
                                                    /* JADX WARN: Removed duplicated region for block: B:75:0x07ec  */
                                                    /* JADX WARN: Removed duplicated region for block: B:77:0x080a  */
                                                    /* JADX WARN: Removed duplicated region for block: B:83:0x08ff  */
                                                    /* JADX WARN: Removed duplicated region for block: B:85:? A[RETURN, SYNTHETIC] */
                                                    /* JADX WARN: Removed duplicated region for block: B:88:0x049a A[ADDED_TO_REGION] */
                                                    /* JADX WARN: Removed duplicated region for block: B:89:0x0451  */
                                                    /* JADX WARN: Removed duplicated region for block: B:92:0x023a  */
                                                    /*
                                                        Code decompiled incorrectly, please refer to instructions dump.
                                                        To view partially-correct add '--show-bad-code' argument
                                                    */
                                                    public final void invoke(androidx.compose.foundation.layout.ColumnScope r90, androidx.compose.runtime.Composer r91, int r92) {
                                                        /*
                                                            Method dump skipped, instructions count: 2307
                                                            To view this dump add '--comments-level debug' option
                                                        */
                                                        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$4.AnonymousClass2.AnonymousClass4.AnonymousClass1.invoke(androidx.compose.foundation.layout.ColumnScope, androidx.compose.runtime.Composer, int):void");
                                                    }
                                                }), $composer4, 196614, 26);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                    return;
                                                }
                                                return;
                                            }
                                            $composer4.skipToGroupEnd();
                                        }
                                    }), 3, (Object) null);
                                    final State<IsolationUiState> state5 = state2;
                                    final IsolationViewModel isolationViewModel7 = isolationViewModel5;
                                    LazyListScope.item$default($this$LazyColumn, (Object) null, (Object) null, ComposableLambdaKt.composableLambdaInstance(-1736828795, true, new Function3<LazyItemScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.IsolationScreen.4.2.5
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(3);
                                        }

                                        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                                            invoke((LazyItemScope) p1, (Composer) p2, ((Number) p3).intValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(LazyItemScope $this$item, Composer $composer4, int $changed3) {
                                            IsolationUiState IsolationScreen$lambda$08;
                                            Intrinsics.checkNotNullParameter($this$item, "$this$item");
                                            ComposerKt.sourceInformation($composer4, "C194@10402L70:IsolationScreen.kt#r3e9si");
                                            if (($changed3 & 81) == 16 && $composer4.getSkipping()) {
                                                $composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1736828795, $changed3, -1, "com.rootguard.app.ui.screens.isolation.IsolationScreen.<anonymous>.<anonymous>.<anonymous> (IsolationScreen.kt:194)");
                                            }
                                            IsolationScreen$lambda$08 = IsolationScreenKt.IsolationScreen$lambda$0(state5);
                                            String searchQuery2 = IsolationScreen$lambda$08.getSearchQuery();
                                            final IsolationViewModel isolationViewModel8 = isolationViewModel7;
                                            IsolationScreenKt.AppSearchBar(searchQuery2, new Function1<String, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.IsolationScreen.4.2.5.1
                                                {
                                                    super(1);
                                                }

                                                public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                                                    invoke((String) p1);
                                                    return Unit.INSTANCE;
                                                }

                                                public final void invoke(String it3) {
                                                    Intrinsics.checkNotNullParameter(it3, "it");
                                                    IsolationViewModel.this.updateSearchQuery(it3);
                                                }
                                            }, $composer4, 0);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }
                                    }), 3, (Object) null);
                                    final State<IsolationUiState> state6 = state2;
                                    final IsolationViewModel isolationViewModel8 = isolationViewModel5;
                                    LazyListScope.item$default($this$LazyColumn, (Object) null, (Object) null, ComposableLambdaKt.composableLambdaInstance(616029446, true, new Function3<LazyItemScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.IsolationScreen.4.2.6
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(3);
                                        }

                                        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                                            invoke((LazyItemScope) p1, (Composer) p2, ((Number) p3).intValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(LazyItemScope $this$item, Composer $composer4, int $changed3) {
                                            IsolationUiState IsolationScreen$lambda$08;
                                            IsolationUiState IsolationScreen$lambda$09;
                                            IsolationUiState IsolationScreen$lambda$010;
                                            Intrinsics.checkNotNullParameter($this$item, "$this$item");
                                            ComposerKt.sourceInformation($composer4, "C195@10498L114:IsolationScreen.kt#r3e9si");
                                            if (($changed3 & 81) == 16 && $composer4.getSkipping()) {
                                                $composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(616029446, $changed3, -1, "com.rootguard.app.ui.screens.isolation.IsolationScreen.<anonymous>.<anonymous>.<anonymous> (IsolationScreen.kt:195)");
                                            }
                                            IsolationScreen$lambda$08 = IsolationScreenKt.IsolationScreen$lambda$0(state6);
                                            AppFilterTab activeTab = IsolationScreen$lambda$08.getActiveTab();
                                            final IsolationViewModel isolationViewModel9 = isolationViewModel8;
                                            Function1<AppFilterTab, Unit> function12 = new Function1<AppFilterTab, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.IsolationScreen.4.2.6.1
                                                {
                                                    super(1);
                                                }

                                                public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                                                    invoke((AppFilterTab) p1);
                                                    return Unit.INSTANCE;
                                                }

                                                public final void invoke(AppFilterTab it3) {
                                                    Intrinsics.checkNotNullParameter(it3, "it");
                                                    IsolationViewModel.this.setActiveTab(it3);
                                                }
                                            };
                                            IsolationScreen$lambda$09 = IsolationScreenKt.IsolationScreen$lambda$0(state6);
                                            int size = IsolationScreen$lambda$09.getUserApps().size();
                                            IsolationScreen$lambda$010 = IsolationScreenKt.IsolationScreen$lambda$0(state6);
                                            IsolationScreenKt.AppFilterTabRow(activeTab, function12, size, IsolationScreen$lambda$010.getSystemApps().size(), $composer4, 0);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }
                                    }), 3, (Object) null);
                                    final List<OneClickIsolationHelper.AppInfo> list = filteredApps;
                                    final State<IsolationUiState> state7 = state2;
                                    final IsolationViewModel isolationViewModel9 = isolationViewModel5;
                                    LazyListScope.item$default($this$LazyColumn, (Object) null, (Object) null, ComposableLambdaKt.composableLambdaInstance(-1326079609, true, new Function3<LazyItemScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.IsolationScreen.4.2.7
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(3);
                                        }

                                        public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                                            invoke((LazyItemScope) p1, (Composer) p2, ((Number) p3).intValue());
                                            return Unit.INSTANCE;
                                        }

                                        /* JADX WARN: Removed duplicated region for block: B:24:0x0208  */
                                        /* JADX WARN: Removed duplicated region for block: B:26:0x020f  */
                                        /* JADX WARN: Removed duplicated region for block: B:29:0x0257  */
                                        /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
                                        /* JADX WARN: Removed duplicated region for block: B:32:0x020b  */
                                        /*
                                            Code decompiled incorrectly, please refer to instructions dump.
                                            To view partially-correct add '--show-bad-code' argument
                                        */
                                        public final void invoke(androidx.compose.foundation.lazy.LazyItemScope r51, androidx.compose.runtime.Composer r52, int r53) {
                                            /*
                                                Method dump skipped, instructions count: 603
                                                To view this dump add '--comments-level debug' option
                                            */
                                            throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$4.AnonymousClass2.AnonymousClass7.invoke(androidx.compose.foundation.lazy.LazyItemScope, androidx.compose.runtime.Composer, int):void");
                                        }
                                    }), 3, (Object) null);
                                    IsolationScreen$lambda$07 = IsolationScreenKt.IsolationScreen$lambda$0(state2);
                                    if (IsolationScreen$lambda$07.isAppListLoading()) {
                                        LazyListScope.item$default($this$LazyColumn, (Object) null, (Object) null, ComposableSingletons$IsolationScreenKt.INSTANCE.m10getLambda7$app_debug(), 3, (Object) null);
                                    } else if (filteredApps.isEmpty()) {
                                        final State<IsolationUiState> state8 = state2;
                                        LazyListScope.item$default($this$LazyColumn, (Object) null, (Object) null, ComposableLambdaKt.composableLambdaInstance(985452113, true, new Function3<LazyItemScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.IsolationScreen.4.2.8
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(3);
                                            }

                                            public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                                                invoke((LazyItemScope) p1, (Composer) p2, ((Number) p3).intValue());
                                                return Unit.INSTANCE;
                                            }

                                            /* JADX WARN: Removed duplicated region for block: B:24:0x0172  */
                                            /* JADX WARN: Removed duplicated region for block: B:26:0x0179  */
                                            /* JADX WARN: Removed duplicated region for block: B:29:0x01eb  */
                                            /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
                                            /* JADX WARN: Removed duplicated region for block: B:32:0x017c  */
                                            /* JADX WARN: Removed duplicated region for block: B:33:0x0175  */
                                            /*
                                                Code decompiled incorrectly, please refer to instructions dump.
                                                To view partially-correct add '--show-bad-code' argument
                                            */
                                            public final void invoke(androidx.compose.foundation.lazy.LazyItemScope r53, androidx.compose.runtime.Composer r54, int r55) {
                                                /*
                                                    Method dump skipped, instructions count: 495
                                                    To view this dump add '--comments-level debug' option
                                                */
                                                throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$4.AnonymousClass2.AnonymousClass8.invoke(androidx.compose.foundation.lazy.LazyItemScope, androidx.compose.runtime.Composer, int):void");
                                            }
                                        }), 3, (Object) null);
                                    } else {
                                        final List items$iv = filteredApps;
                                        final Function1 key$iv2 = new Function1<OneClickIsolationHelper.AppInfo, Object>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.IsolationScreen.4.2.9
                                            public final Object invoke(OneClickIsolationHelper.AppInfo it3) {
                                                Intrinsics.checkNotNullParameter(it3, "it");
                                                return it3.getPackageName();
                                            }
                                        };
                                        final Function2<String, String, Unit> function25 = function24;
                                        final State<IsolationUiState> state9 = state2;
                                        final IsolationViewModel isolationViewModel10 = isolationViewModel5;
                                        final Function1 contentType$iv = new Function1() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$1
                                            public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                                                return m13invoke((OneClickIsolationHelper.AppInfo) p1);
                                            }

                                            /* renamed from: invoke, reason: collision with other method in class */
                                            public final Void m13invoke(OneClickIsolationHelper.AppInfo appInfo) {
                                                return null;
                                            }
                                        };
                                        int size = items$iv.size();
                                        if (key$iv2 != null) {
                                            function1 = new Function1<Integer, Object>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$2
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(1);
                                                }

                                                public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                                                    return invoke(((Number) p1).intValue());
                                                }

                                                public final Object invoke(int index) {
                                                    return key$iv2.invoke(items$iv.get(index));
                                                }
                                            };
                                        } else {
                                            function1 = null;
                                        }
                                        $this$LazyColumn.items(size, function1, new Function1<Integer, Object>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$3
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(1);
                                            }

                                            public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                                                return invoke(((Number) p1).intValue());
                                            }

                                            public final Object invoke(int index) {
                                                return contentType$iv.invoke(items$iv.get(index));
                                            }
                                        }, ComposableLambdaKt.composableLambdaInstance(-632812321, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$4
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(4);
                                            }

                                            public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3, Object p4) {
                                                invoke((LazyItemScope) p1, ((Number) p2).intValue(), (Composer) p3, ((Number) p4).intValue());
                                                return Unit.INSTANCE;
                                            }

                                            /* JADX WARN: Removed duplicated region for block: B:37:0x010f  */
                                            /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
                                            /*
                                                Code decompiled incorrectly, please refer to instructions dump.
                                                To view partially-correct add '--show-bad-code' argument
                                            */
                                            public final void invoke(androidx.compose.foundation.lazy.LazyItemScope r19, int r20, androidx.compose.runtime.Composer r21, int r22) {
                                                /*
                                                    Method dump skipped, instructions count: 275
                                                    To view this dump add '--comments-level debug' option
                                                */
                                                throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$4$2$invoke$$inlined$items$default$4.invoke(androidx.compose.foundation.lazy.LazyItemScope, int, androidx.compose.runtime.Composer, int):void");
                                            }
                                        }));
                                    }
                                    LazyListScope.item$default($this$LazyColumn, (Object) null, (Object) null, ComposableSingletons$IsolationScreenKt.INSTANCE.m11getLambda8$app_debug(), 3, (Object) null);
                                }
                            }, $composer3, 0, 254);
                            $composer3.endReplaceableGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }), $composer2, 805306416, 509);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            viewModel3 = viewModel5;
            hasRootPermission2 = hasRootPermission4;
            packageName3 = packageName5;
            appName3 = appName5;
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            final String str6 = packageName3;
            final String str7 = appName3;
            final Function2 function24 = onNavigateToAppIsolation;
            final Function0 function04 = onNavigateToLogs2;
            final boolean z = hasRootPermission2;
            final IsolationViewModel isolationViewModel3 = viewModel3;
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$IsolationScreen$5
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i8) {
                    IsolationScreenKt.IsolationScreen(str6, str7, function0, function24, function04, z, isolationViewModel3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IsolationUiState IsolationScreen$lambda$0(State<IsolationUiState> state) {
        Object thisObj$iv = state.getValue();
        return (IsolationUiState) thisObj$iv;
    }

    public static final void AppSearchBar(final String query, final Function1<? super String, Unit> function1, Composer $composer, final int $changed) {
        Composer $composer2;
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(function1, "onQueryChange");
        Composer $composer3 = $composer.startRestartGroup(-1409792254);
        ComposerKt.sourceInformation($composer3, "C(AppSearchBar)P(1)228@13168L11,228@13243L11,228@13124L158,221@12394L967:IsolationScreen.kt#r3e9si");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer3.changed(query) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer3.changedInstance(function1) ? 32 : 16;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 91) == 18 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1409792254, $dirty2, -1, "com.rootguard.app.ui.screens.isolation.AppSearchBar (IsolationScreen.kt:220)");
            }
            $composer2 = $composer3;
            OutlinedTextFieldKt.OutlinedTextField(query, function1, PaddingKt.padding-VpY3zN4(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(16), Dp.constructor-impl(4)), false, false, (TextStyle) null, (Function2) null, ComposableSingletons$IsolationScreenKt.INSTANCE.m12getLambda9$app_debug(), ComposableSingletons$IsolationScreenKt.INSTANCE.m1getLambda10$app_debug(), ComposableLambdaKt.composableLambda($composer3, -412205703, true, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$AppSearchBar$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
                    invoke((Composer) p1, ((Number) p2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer4, int $changed2) {
                    Object value$iv;
                    ComposerKt.sourceInformation($composer4, "C226@12840L175:IsolationScreen.kt#r3e9si");
                    if (($changed2 & 11) == 2 && $composer4.getSkipping()) {
                        $composer4.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-412205703, $changed2, -1, "com.rootguard.app.ui.screens.isolation.AppSearchBar.<anonymous> (IsolationScreen.kt:226)");
                    }
                    if (query.length() > 0) {
                        $composer4.startReplaceableGroup(-632030766);
                        boolean invalid$iv = $composer4.changedInstance(function1);
                        final Function1<String, Unit> function12 = function1;
                        Object it$iv = $composer4.rememberedValue();
                        if (invalid$iv || it$iv == Composer.Companion.getEmpty()) {
                            value$iv = new Function0<Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$AppSearchBar$1$1$1
                                /* JADX INFO: Access modifiers changed from: package-private */
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(0);
                                }

                                public /* bridge */ /* synthetic */ Object invoke() {
                                    m15invoke();
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: collision with other method in class */
                                public final void m15invoke() {
                                    function12.invoke("");
                                }
                            };
                            $composer4.updateRememberedValue(value$iv);
                        } else {
                            value$iv = it$iv;
                        }
                        $composer4.endReplaceableGroup();
                        IconButtonKt.IconButton((Function0) value$iv, (Modifier) null, false, (IconButtonColors) null, (MutableInteractionSource) null, ComposableSingletons$IsolationScreenKt.INSTANCE.m2getLambda11$app_debug(), $composer4, 196608, 30);
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }), (Function2) null, (Function2) null, (Function2) null, false, (VisualTransformation) null, new KeyboardOptions(0, false, 0, ImeAction.Companion.getSearch-eUduSuo(), 7, (DefaultConstructorMarker) null), (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(12)), OutlinedTextFieldDefaults.INSTANCE.colors-0hiis_0(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, (TextSelectionColors) null, Color.copy-wmQWz5c$default(MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getPrimary-0d7_KjU(), 0.5f, 0.0f, 0.0f, 0.0f, 14, (Object) null), Color.copy-wmQWz5c$default(MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getOutline-0d7_KjU(), 0.3f, 0.0f, 0.0f, 0.0f, 14, (Object) null), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, $composer3, 0, 0, 0, 0, 3072, 2147477503, 4095), $composer2, ($dirty2 & 14) | 918552960 | ($dirty2 & 112), 12779520, 0, 1932408);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$AppSearchBar$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    IsolationScreenKt.AppSearchBar(query, function1, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02e5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void AppFilterTabRow(final com.rootguard.app.ui.screens.isolation.AppFilterTab r55, final kotlin.jvm.functions.Function1<? super com.rootguard.app.ui.screens.isolation.AppFilterTab, kotlin.Unit> r56, final int r57, final int r58, androidx.compose.runtime.Composer r59, final int r60) {
        /*
            Method dump skipped, instructions count: 782
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.AppFilterTabRow(com.rootguard.app.ui.screens.isolation.AppFilterTab, kotlin.jvm.functions.Function1, int, int, androidx.compose.runtime.Composer, int):void");
    }

    public static final void RootPermissionStatusCard(final boolean hasRootPermission, Composer $composer, final int $changed) {
        long j;
        Composer $composer2 = $composer.startRestartGroup(-685808875);
        ComposerKt.sourceInformation($composer2, "C(RootPermissionStatusCard)250@14372L203,248@14258L1155:IsolationScreen.kt#r3e9si");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer2.changed(hasRootPermission) ? 4 : 2;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 11) != 2 || !$composer2.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-685808875, $dirty2, -1, "com.rootguard.app.ui.screens.isolation.RootPermissionStatusCard (IsolationScreen.kt:247)");
            }
            Modifier modifier = PaddingKt.padding-VpY3zN4(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(16), Dp.constructor-impl(8));
            CardDefaults cardDefaults = CardDefaults.INSTANCE;
            $composer2.startReplaceableGroup(-517773730);
            ComposerKt.sourceInformation($composer2, "253@14520L11");
            if (hasRootPermission) {
                j = Color.copy-wmQWz5c$default(ColorKt.Color(4283215696L), 0.1f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
            } else {
                j = Color.copy-wmQWz5c$default(MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getErrorContainer-0d7_KjU(), 0.5f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
            }
            $composer2.endReplaceableGroup();
            CardKt.Card(modifier, RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(12)), cardDefaults.cardColors-ro_MJ88(j, 0L, 0L, 0L, $composer2, CardDefaults.$stable << 12, 14), (CardElevation) null, (BorderStroke) null, ComposableLambdaKt.composableLambda($composer2, -599939485, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$RootPermissionStatusCard$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                    invoke((ColumnScope) p1, (Composer) p2, ((Number) p3).intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:24:0x016d  */
                /* JADX WARN: Removed duplicated region for block: B:27:0x0185  */
                /* JADX WARN: Removed duplicated region for block: B:30:0x01c2  */
                /* JADX WARN: Removed duplicated region for block: B:33:0x022a  */
                /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:36:0x01c5  */
                /* JADX WARN: Removed duplicated region for block: B:37:0x018f  */
                /* JADX WARN: Removed duplicated region for block: B:38:0x0172  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void invoke(androidx.compose.foundation.layout.ColumnScope r50, androidx.compose.runtime.Composer r51, int r52) {
                    /*
                        Method dump skipped, instructions count: 558
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$RootPermissionStatusCard$1.invoke(androidx.compose.foundation.layout.ColumnScope, androidx.compose.runtime.Composer, int):void");
                }
            }), $composer2, 196614, 24);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$RootPermissionStatusCard$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    IsolationScreenKt.RootPermissionStatusCard(hasRootPermission, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    public static final void AppListItem(final OneClickIsolationHelper.AppInfo appInfo, final boolean isIsolated, final Function0<Unit> function0, final Function0<Unit> function02, Composer $composer, final int $changed) {
        long j;
        Intrinsics.checkNotNullParameter(appInfo, "appInfo");
        Intrinsics.checkNotNullParameter(function0, "onToggle");
        Intrinsics.checkNotNullParameter(function02, "onClick");
        Composer $composer2 = $composer.startRestartGroup(-67802893);
        ComposerKt.sourceInformation($composer2, "C(AppListItem)P(!2,3)281@15588L2505:IsolationScreen.kt#r3e9si");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer2.changed(appInfo) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer2.changed(isIsolated) ? 32 : 16;
        }
        if (($changed & 896) == 0) {
            $dirty |= $composer2.changedInstance(function0) ? 256 : 128;
        }
        if (($changed & 7168) == 0) {
            $dirty |= $composer2.changedInstance(function02) ? 2048 : 1024;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 5851) == 1170 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-67802893, $dirty2, -1, "com.rootguard.app.ui.screens.isolation.AppListItem (IsolationScreen.kt:280)");
            }
            Modifier modifier = ClickableKt.clickable-XHw0xAI$default(PaddingKt.padding-VpY3zN4(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(16), Dp.constructor-impl(2)), false, (String) null, (Role) null, function02, 7, (Object) null);
            Shape shape = RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(8));
            if (isIsolated) {
                $composer2.startReplaceableGroup(471664230);
                ComposerKt.sourceInformation($composer2, "282@15775L11");
                j = Color.copy-wmQWz5c$default(MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getPrimaryContainer-0d7_KjU(), 0.3f, 0.0f, 0.0f, 0.0f, 14, (Object) null);
            } else {
                $composer2.startReplaceableGroup(471664280);
                ComposerKt.sourceInformation($composer2, "282@15842L11");
                j = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getSurface-0d7_KjU();
            }
            $composer2.endReplaceableGroup();
            SurfaceKt.Surface-T9BRK9s(modifier, shape, j, 0L, 0.0f, 0.0f, (BorderStroke) null, ComposableLambdaKt.composableLambda($composer2, 951528270, true, new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$AppListItem$1

                /* compiled from: IsolationScreen.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
                public /* synthetic */ class WhenMappings {
                    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                    static {
                        int[] iArr = new int[AppCategory.values().length];
                        try {
                            iArr[AppCategory.FINANCE.ordinal()] = 1;
                        } catch (NoSuchFieldError e) {
                        }
                        try {
                            iArr[AppCategory.GAME.ordinal()] = 2;
                        } catch (NoSuchFieldError e2) {
                        }
                        try {
                            iArr[AppCategory.SOCIAL.ordinal()] = 3;
                        } catch (NoSuchFieldError e3) {
                        }
                        $EnumSwitchMapping$0 = iArr;
                    }
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2) {
                    invoke((Composer) p1, ((Number) p2).intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:100:0x02ca  */
                /* JADX WARN: Removed duplicated region for block: B:35:0x02a9  */
                /* JADX WARN: Removed duplicated region for block: B:38:0x02e5  */
                /* JADX WARN: Removed duplicated region for block: B:41:0x03de  */
                /* JADX WARN: Removed duplicated region for block: B:44:0x03ea  */
                /* JADX WARN: Removed duplicated region for block: B:52:0x054d  */
                /* JADX WARN: Removed duplicated region for block: B:55:0x0559  */
                /* JADX WARN: Removed duplicated region for block: B:58:0x0592  */
                /* JADX WARN: Removed duplicated region for block: B:63:0x06c5  */
                /* JADX WARN: Removed duplicated region for block: B:66:0x06d1  */
                /* JADX WARN: Removed duplicated region for block: B:69:0x070a  */
                /* JADX WARN: Removed duplicated region for block: B:74:0x07f8  */
                /* JADX WARN: Removed duplicated region for block: B:77:0x089b  */
                /* JADX WARN: Removed duplicated region for block: B:82:0x0902  */
                /* JADX WARN: Removed duplicated region for block: B:84:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:87:0x0720 A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:88:0x06d7  */
                /* JADX WARN: Removed duplicated region for block: B:90:0x05a8 A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:91:0x055f  */
                /* JADX WARN: Removed duplicated region for block: B:94:0x03f0  */
                /* JADX WARN: Removed duplicated region for block: B:95:0x030e  */
                /* JADX WARN: Removed duplicated region for block: B:96:0x0326  */
                /* JADX WARN: Removed duplicated region for block: B:97:0x033e  */
                /* JADX WARN: Removed duplicated region for block: B:98:0x02b4  */
                /* JADX WARN: Removed duplicated region for block: B:99:0x02bf  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void invoke(androidx.compose.runtime.Composer r126, int r127) {
                    /*
                        Method dump skipped, instructions count: 2330
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$AppListItem$1.invoke(androidx.compose.runtime.Composer, int):void");
                }
            }), $composer2, 12582912, 120);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$AppListItem$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    IsolationScreenKt.AppListItem(appInfo, isIsolated, function0, function02, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    public static final void MessageCard(final String message, final boolean isError, Composer $composer, final int $changed) {
        long j;
        Composer $composer2;
        Intrinsics.checkNotNullParameter(message, "message");
        Composer $composer3 = $composer.startRestartGroup(-1144472448);
        ComposerKt.sourceInformation($composer3, "C(MessageCard)P(1)306@18301L131,305@18196L646:IsolationScreen.kt#r3e9si");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer3.changed(message) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer3.changed(isError) ? 32 : 16;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 91) == 18 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1144472448, $dirty2, -1, "com.rootguard.app.ui.screens.isolation.MessageCard (IsolationScreen.kt:304)");
            }
            Modifier modifier = PaddingKt.padding-VpY3zN4(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(16), Dp.constructor-impl(4));
            CardDefaults cardDefaults = CardDefaults.INSTANCE;
            if (isError) {
                $composer3.startReplaceableGroup(-1306755227);
                ComposerKt.sourceInformation($composer3, "306@18356L11");
                j = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getErrorContainer-0d7_KjU();
            } else {
                $composer3.startReplaceableGroup(-1306755181);
                ComposerKt.sourceInformation($composer3, "306@18402L11");
                j = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getTertiaryContainer-0d7_KjU();
            }
            $composer3.endReplaceableGroup();
            $composer2 = $composer3;
            CardKt.Card(modifier, (Shape) null, cardDefaults.cardColors-ro_MJ88(j, 0L, 0L, 0L, $composer3, CardDefaults.$stable << 12, 14), (CardElevation) null, (BorderStroke) null, ComposableLambdaKt.composableLambda($composer2, 2021069390, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$MessageCard$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                    invoke((ColumnScope) p1, (Composer) p2, ((Number) p3).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope $this$Card, Composer $composer4, int $changed2) {
                    long j2;
                    Intrinsics.checkNotNullParameter($this$Card, "$this$Card");
                    ComposerKt.sourceInformation($composer4, "C307@18444L392:IsolationScreen.kt#r3e9si");
                    if (($changed2 & 81) == 16 && $composer4.getSkipping()) {
                        $composer4.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(2021069390, $changed2, -1, "com.rootguard.app.ui.screens.isolation.MessageCard.<anonymous> (IsolationScreen.kt:307)");
                    }
                    Modifier modifier2 = PaddingKt.padding-3ABfNKs(Modifier.Companion, Dp.constructor-impl(16));
                    Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                    Arrangement.Horizontal horizontal = Arrangement.INSTANCE.spacedBy-0680j_4(Dp.constructor-impl(12));
                    boolean z = isError;
                    String str = message;
                    $composer4.startReplaceableGroup(693286680);
                    ComposerKt.sourceInformation($composer4, "CC(Row)P(2,1,3)76@3779L58,77@3842L130:Row.kt#2w3rfo");
                    MeasurePolicy measurePolicy$iv = RowKt.rowMeasurePolicy(horizontal, centerVertically, $composer4, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                    int $changed$iv$iv = (438 << 3) & 112;
                    $composer4.startReplaceableGroup(-1323940314);
                    ComposerKt.sourceInformation($composer4, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                    CompositionLocalMap localMap$iv$iv = $composer4.getCurrentCompositionLocalMap();
                    Function0 factory$iv$iv$iv = ComposeUiNode.Companion.getConstructor();
                    Function3 skippableUpdate$iv$iv$iv = LayoutKt.modifierMaterializerOf(modifier2);
                    int $changed$iv$iv$iv = (($changed$iv$iv << 9) & 7168) | 6;
                    if (!($composer4.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer4.startReusableNode();
                    if ($composer4.getInserting()) {
                        $composer4.createNode(factory$iv$iv$iv);
                    } else {
                        $composer4.useNode();
                    }
                    Composer $this$Layout_u24lambda_u240$iv$iv = Updater.constructor-impl($composer4);
                    Updater.set-impl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.Companion.getSetMeasurePolicy());
                    Updater.set-impl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                    Function2 block$iv$iv$iv = ComposeUiNode.Companion.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                        $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                        $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
                    }
                    skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.box-impl(SkippableUpdater.constructor-impl($composer4)), $composer4, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                    $composer4.startReplaceableGroup(2058660585);
                    int i = ($changed$iv$iv$iv >> 9) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer4, -326682417, "C78@3887L9:Row.kt#2w3rfo");
                    RowScope rowScope = RowScopeInstance.INSTANCE;
                    int i2 = ((438 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer4, 774372355, "C308@18588L167,309@18804L10,309@18768L58:IsolationScreen.kt#r3e9si");
                    Icons.Filled filled = Icons.INSTANCE.getDefault();
                    ImageVector error = z ? ErrorKt.getError(filled) : CheckCircleKt.getCheckCircle(filled);
                    if (z) {
                        $composer4.startReplaceableGroup(774372477);
                        ComposerKt.sourceInformation($composer4, "308@18698L11");
                        j2 = MaterialTheme.INSTANCE.getColorScheme($composer4, MaterialTheme.$stable).getError-0d7_KjU();
                    } else {
                        $composer4.startReplaceableGroup(774372514);
                        ComposerKt.sourceInformation($composer4, "308@18735L11");
                        j2 = MaterialTheme.INSTANCE.getColorScheme($composer4, MaterialTheme.$stable).getPrimary-0d7_KjU();
                    }
                    $composer4.endReplaceableGroup();
                    IconKt.Icon-ww6aTOc(error, (String) null, (Modifier) null, j2, $composer4, 48, 4);
                    TextKt.Text--4IGK_g(str, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, MaterialTheme.INSTANCE.getTypography($composer4, MaterialTheme.$stable).getBodyMedium(), $composer4, 0, 0, 65534);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    $composer4.endReplaceableGroup();
                    $composer4.endNode();
                    $composer4.endReplaceableGroup();
                    $composer4.endReplaceableGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }), $composer2, 196614, 26);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$MessageCard$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    IsolationScreenKt.MessageCard(message, isError, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    public static final void AppIsolationCard(final IsolationConfig config, final Function1<? super IsolationConfig, Unit> function1, Composer $composer, final int $changed) {
        Intrinsics.checkNotNullParameter(function1, "onConfigChange");
        Composer $composer2 = $composer.startRestartGroup(1503550068);
        ComposerKt.sourceInformation($composer2, "C(AppIsolationCard)316@18954L1452:IsolationScreen.kt#r3e9si");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1503550068, $changed, -1, "com.rootguard.app.ui.screens.isolation.AppIsolationCard (IsolationScreen.kt:315)");
        }
        CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), (Shape) null, (CardColors) null, (CardElevation) null, (BorderStroke) null, ComposableLambdaKt.composableLambda($composer2, 1236489282, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$AppIsolationCard$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                invoke((ColumnScope) p1, (Composer) p2, ((Number) p3).intValue());
                return Unit.INSTANCE;
            }

            /* JADX WARN: Removed duplicated region for block: B:24:0x01b0  */
            /* JADX WARN: Removed duplicated region for block: B:37:0x0355  */
            /* JADX WARN: Removed duplicated region for block: B:40:0x03f4  */
            /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:46:0x03ca  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void invoke(androidx.compose.foundation.layout.ColumnScope r82, androidx.compose.runtime.Composer r83, int r84) {
                /*
                    Method dump skipped, instructions count: 1016
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$AppIsolationCard$1.invoke(androidx.compose.foundation.layout.ColumnScope, androidx.compose.runtime.Composer, int):void");
            }
        }), $composer2, 196614, 30);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$AppIsolationCard$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    IsolationScreenKt.AppIsolationCard(config, function1, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0227  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void IsolationToggleItem(final java.lang.String r48, final boolean r49, final kotlin.jvm.functions.Function1<? super java.lang.Boolean, kotlin.Unit> r50, androidx.compose.runtime.Composer r51, final int r52) {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.isolation.IsolationScreenKt.IsolationToggleItem(java.lang.String, boolean, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int):void");
    }

    public static final void PresetSelectionCard(final Function1<? super IsolationLevel, Unit> function1, Composer $composer, final int $changed) {
        Intrinsics.checkNotNullParameter(function1, "onSelectPreset");
        Composer $composer2 = $composer.startRestartGroup(49894964);
        ComposerKt.sourceInformation($composer2, "C(PresetSelectionCard)348@20902L682:IsolationScreen.kt#r3e9si");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer2.changedInstance(function1) ? 4 : 2;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 11) != 2 || !$composer2.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(49894964, $dirty2, -1, "com.rootguard.app.ui.screens.isolation.PresetSelectionCard (IsolationScreen.kt:347)");
            }
            CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), (Shape) null, (CardColors) null, (CardElevation) null, (BorderStroke) null, ComposableLambdaKt.composableLambda($composer2, 109872550, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$PresetSelectionCard$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                    invoke((ColumnScope) p1, (Composer) p2, ((Number) p3).intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:24:0x0221  */
                /* JADX WARN: Removed duplicated region for block: B:27:0x022d  */
                /* JADX WARN: Removed duplicated region for block: B:35:0x0300  */
                /* JADX WARN: Removed duplicated region for block: B:40:0x0370  */
                /* JADX WARN: Removed duplicated region for block: B:45:0x03df  */
                /* JADX WARN: Removed duplicated region for block: B:50:0x045d  */
                /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:54:0x03ec A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:56:0x0381 A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:58:0x0311 A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:61:0x0233  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void invoke(androidx.compose.foundation.layout.ColumnScope r59, androidx.compose.runtime.Composer r60, int r61) {
                    /*
                        Method dump skipped, instructions count: 1121
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$PresetSelectionCard$1.invoke(androidx.compose.foundation.layout.ColumnScope, androidx.compose.runtime.Composer, int):void");
                }
            }), $composer2, 196614, 30);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$PresetSelectionCard$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    IsolationScreenKt.PresetSelectionCard(function1, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    public static final void PresetButton(final String emoji, final String label, final String desc, final Function0<Unit> function0, Modifier modifier, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        Modifier modifier3;
        Intrinsics.checkNotNullParameter(emoji, "emoji");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(desc, "desc");
        Intrinsics.checkNotNullParameter(function0, "onClick");
        Composer $composer2 = $composer.startRestartGroup(1605669969);
        ComposerKt.sourceInformation($composer2, "C(PresetButton)P(1,2!1,4)362@21838L11,362@21796L73,362@21719L571:IsolationScreen.kt#r3e9si");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 14) == 0) {
            $dirty |= $composer2.changed(emoji) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty |= 48;
        } else if (($changed & 112) == 0) {
            $dirty |= $composer2.changed(label) ? 32 : 16;
        }
        if ((i & 4) != 0) {
            $dirty |= 384;
        } else if (($changed & 896) == 0) {
            $dirty |= $composer2.changed(desc) ? 256 : 128;
        }
        if ((i & 8) != 0) {
            $dirty |= 3072;
        } else if (($changed & 7168) == 0) {
            $dirty |= $composer2.changedInstance(function0) ? 2048 : 1024;
        }
        int i2 = i & 16;
        if (i2 != 0) {
            $dirty |= 24576;
            modifier2 = modifier;
        } else if ((57344 & $changed) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 16384 : 8192;
        } else {
            modifier2 = modifier;
        }
        int $dirty2 = $dirty;
        if ((46811 & $dirty2) != 9362 || !$composer2.getSkipping()) {
            modifier3 = i2 != 0 ? (Modifier) Modifier.Companion : modifier2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1605669969, $dirty2, -1, "com.rootguard.app.ui.screens.isolation.PresetButton (IsolationScreen.kt:361)");
            }
            CardKt.Card(ClickableKt.clickable-XHw0xAI$default(modifier3, false, (String) null, (Role) null, function0, 7, (Object) null), (Shape) null, CardDefaults.INSTANCE.cardColors-ro_MJ88(MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getSecondaryContainer-0d7_KjU(), 0L, 0L, 0L, $composer2, CardDefaults.$stable << 12, 14), (CardElevation) null, (BorderStroke) null, ComposableLambdaKt.composableLambda($composer2, -2001853281, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$PresetButton$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                    invoke((ColumnScope) p1, (Composer) p2, ((Number) p3).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(ColumnScope $this$Card, Composer $composer3, int $changed2) {
                    Intrinsics.checkNotNullParameter($this$Card, "$this$Card");
                    ComposerKt.sourceInformation($composer3, "C363@21881L403:IsolationScreen.kt#r3e9si");
                    if (($changed2 & 81) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-2001853281, $changed2, -1, "com.rootguard.app.ui.screens.isolation.PresetButton.<anonymous> (IsolationScreen.kt:363)");
                        }
                        Modifier modifier$iv = PaddingKt.padding-3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(12));
                        Alignment.Horizontal horizontalAlignment$iv = Alignment.Companion.getCenterHorizontally();
                        String str = emoji;
                        String str2 = label;
                        String str3 = desc;
                        $composer3.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation($composer3, "CC(Column)P(2,3,1)75@3779L61,76@3845L133:Column.kt#2w3rfo");
                        Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
                        MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer3, ((390 >> 3) & 14) | ((390 >> 3) & 112));
                        int $changed$iv$iv = (390 << 3) & 112;
                        $composer3.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation($composer3, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv = $composer3.getCurrentCompositionLocalMap();
                        Function0 factory$iv$iv$iv = ComposeUiNode.Companion.getConstructor();
                        Function3 skippableUpdate$iv$iv$iv = LayoutKt.modifierMaterializerOf(modifier$iv);
                        int $changed$iv$iv$iv = (($changed$iv$iv << 9) & 7168) | 6;
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if ($composer3.getInserting()) {
                            $composer3.createNode(factory$iv$iv$iv);
                        } else {
                            $composer3.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv = Updater.constructor-impl($composer3);
                        Updater.set-impl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.Companion.getSetMeasurePolicy());
                        Updater.set-impl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                        Function2 block$iv$iv$iv = ComposeUiNode.Companion.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), block$iv$iv$iv);
                        }
                        skippableUpdate$iv$iv$iv.invoke(SkippableUpdater.box-impl(SkippableUpdater.constructor-impl($composer3)), $composer3, Integer.valueOf(($changed$iv$iv$iv >> 3) & 112));
                        $composer3.startReplaceableGroup(2058660585);
                        int i3 = ($changed$iv$iv$iv >> 9) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, 276693570, "C77@3893L9:Column.kt#2w3rfo");
                        ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
                        int i4 = ((390 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, -500560417, "C364@22028L10,364@21994L60,364@22056L29,365@22132L10,365@22098L56,365@22189L10,365@22233L11,365@22156L118:IsolationScreen.kt#r3e9si");
                        TextKt.Text--4IGK_g(str, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable).getHeadlineMedium(), $composer3, 0, 0, 65534);
                        SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(4)), $composer3, 6);
                        TextKt.Text--4IGK_g(str2, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable).getBodyMedium(), $composer3, 0, 0, 65534);
                        TextKt.Text--4IGK_g(str3, (Modifier) null, Color.copy-wmQWz5c$default(MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getOnSurface-0d7_KjU(), 0.6f, 0.0f, 0.0f, 0.0f, 14, (Object) null), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable).getBodySmall(), $composer3, 0, 0, 65530);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endReplaceableGroup();
                        $composer3.endNode();
                        $composer3.endReplaceableGroup();
                        $composer3.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }), $composer2, 196608, 26);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            final Modifier modifier4 = modifier3;
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$PresetButton$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i3) {
                    IsolationScreenKt.PresetButton(emoji, label, desc, function0, modifier4, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    public static final void AdvancedIsolationSettings(final IsolationConfig config, final Function1<? super IsolationConfig, Unit> function1, Composer $composer, final int $changed) {
        Intrinsics.checkNotNullParameter(function1, "onConfigChange");
        Composer $composer2 = $composer.startRestartGroup(1776056842);
        ComposerKt.sourceInformation($composer2, "C(AdvancedIsolationSettings)372@22411L589:IsolationScreen.kt#r3e9si");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1776056842, $changed, -1, "com.rootguard.app.ui.screens.isolation.AdvancedIsolationSettings (IsolationScreen.kt:371)");
        }
        CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), (Shape) null, (CardColors) null, (CardElevation) null, (BorderStroke) null, ComposableLambdaKt.composableLambda($composer2, 1382590460, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$AdvancedIsolationSettings$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                invoke((ColumnScope) p1, (Composer) p2, ((Number) p3).intValue());
                return Unit.INSTANCE;
            }

            /* JADX WARN: Removed duplicated region for block: B:24:0x01b1  */
            /* JADX WARN: Removed duplicated region for block: B:27:0x024d  */
            /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void invoke(androidx.compose.foundation.layout.ColumnScope r53, androidx.compose.runtime.Composer r54, int r55) {
                /*
                    Method dump skipped, instructions count: 593
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$AdvancedIsolationSettings$1.invoke(androidx.compose.foundation.layout.ColumnScope, androidx.compose.runtime.Composer, int):void");
            }
        }), $composer2, 196614, 30);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$AdvancedIsolationSettings$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    IsolationScreenKt.AdvancedIsolationSettings(config, function1, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    public static final void ModuleStatusCard(final String report, final Function0<Unit> function0, Composer $composer, final int $changed) {
        Composer $composer2;
        Intrinsics.checkNotNullParameter(report, "report");
        Intrinsics.checkNotNullParameter(function0, "onDismiss");
        Composer $composer3 = $composer.startRestartGroup(1274845693);
        ComposerKt.sourceInformation($composer3, "C(ModuleStatusCard)P(1)391@23291L11,391@23249L69,389@23124L1686:IsolationScreen.kt#r3e9si");
        int $dirty = $changed;
        if (($changed & 14) == 0) {
            $dirty |= $composer3.changed(report) ? 4 : 2;
        }
        if (($changed & 112) == 0) {
            $dirty |= $composer3.changedInstance(function0) ? 32 : 16;
        }
        int $dirty2 = $dirty;
        if (($dirty2 & 91) != 18 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1274845693, $dirty2, -1, "com.rootguard.app.ui.screens.isolation.ModuleStatusCard (IsolationScreen.kt:388)");
            }
            $composer2 = $composer3;
            CardKt.Card(PaddingKt.padding-VpY3zN4(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(16), Dp.constructor-impl(8)), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(16)), CardDefaults.INSTANCE.cardColors-ro_MJ88(MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getSurfaceVariant-0d7_KjU(), 0L, 0L, 0L, $composer3, CardDefaults.$stable << 12, 14), (CardElevation) null, (BorderStroke) null, ComposableLambdaKt.composableLambda($composer2, -358170513, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$ModuleStatusCard$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object p1, Object p2, Object p3) {
                    invoke((ColumnScope) p1, (Composer) p2, ((Number) p3).intValue());
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:35:0x030c  */
                /* JADX WARN: Removed duplicated region for block: B:38:0x0318  */
                /* JADX WARN: Removed duplicated region for block: B:46:0x0513  */
                /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:51:0x031e  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void invoke(androidx.compose.foundation.layout.ColumnScope r105, androidx.compose.runtime.Composer r106, int r107) {
                    /*
                        Method dump skipped, instructions count: 1303
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$ModuleStatusCard$1.invoke(androidx.compose.foundation.layout.ColumnScope, androidx.compose.runtime.Composer, int):void");
                }
            }), $composer2, 196614, 24);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        }
        ScopeUpdateScope endRestartGroup = $composer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: com.rootguard.app.ui.screens.isolation.IsolationScreenKt$ModuleStatusCard$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i) {
                    IsolationScreenKt.ModuleStatusCard(report, function0, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }
}
