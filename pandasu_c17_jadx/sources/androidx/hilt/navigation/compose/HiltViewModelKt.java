package androidx.hilt.navigation.compose;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.hilt.navigation.HiltViewModelFactory;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HiltViewModel.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001¢\u0006\u0002\u0010\u0004\u001a0\u0010\u0005\u001a\u0002H\u0006\"\n\b\u0000\u0010\u0006\u0018\u0001*\u00020\u00072\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH\u0087\b¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"createHiltViewModelFactory", "Landroidx/lifecycle/ViewModelProvider$Factory;", "viewModelStoreOwner", "Landroidx/lifecycle/ViewModelStoreOwner;", "(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;I)Landroidx/lifecycle/ViewModelProvider$Factory;", "hiltViewModel", "VM", "Landroidx/lifecycle/ViewModel;", "key", "", "(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/lifecycle/ViewModel;", "hilt-navigation-compose_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class HiltViewModelKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [androidx.lifecycle.viewmodel.CreationExtras] */
    public static final /* synthetic */ <VM extends ViewModel> VM hiltViewModel(ViewModelStoreOwner viewModelStoreOwner, String str, Composer composer, int i, int i2) {
        CreationExtras.Empty empty;
        composer.startReplaceableGroup(1890788296);
        ComposerKt.sourceInformation(composer, "CC(hiltViewModel)P(1)*42@1793L7,47@1936L47,48@1995L54:HiltViewModel.kt#9mcars");
        if ((i2 & 1) != 0) {
            ViewModelStoreOwner current = LocalViewModelStoreOwner.INSTANCE.getCurrent(composer, LocalViewModelStoreOwner.$stable);
            if (current == null) {
                throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
            }
            viewModelStoreOwner = current;
        }
        if ((i2 & 2) != 0) {
            str = null;
        }
        ViewModelProvider.Factory createHiltViewModelFactory = createHiltViewModelFactory(viewModelStoreOwner, composer, 8);
        int i3 = (i & 112) | 520;
        composer.startReplaceableGroup(1729797275);
        ComposerKt.sourceInformation(composer, "CC(viewModel)P(3,2,1)*80@3834L7,90@4209L68:ViewModel.kt#3tja67");
        if (viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory) {
            empty = ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getDefaultViewModelCreationExtras();
        } else {
            empty = CreationExtras.Empty.INSTANCE;
        }
        Intrinsics.reifiedOperationMarker(4, "VM");
        VM vm = (VM) ViewModelKt.viewModel(ViewModel.class, viewModelStoreOwner, str, createHiltViewModelFactory, empty, composer, ((i3 << 3) & 896) | 36936, 0);
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        return vm;
    }

    public static final ViewModelProvider.Factory createHiltViewModelFactory(ViewModelStoreOwner viewModelStoreOwner, Composer $composer, int $changed) {
        ViewModelProvider.Factory factory;
        $composer.startReplaceableGroup(1770922558);
        ComposerKt.sourceInformation($composer, "C(createHiltViewModelFactory)57@2319L7:HiltViewModel.kt#9mcars");
        if (viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory) {
            CompositionLocal this_$iv = AndroidCompositionLocals_androidKt.getLocalContext();
            ComposerKt.sourceInformationMarkerStart($composer, 103361330, "C:CompositionLocal.kt#9igjgp");
            Object consume = $composer.consume(this_$iv);
            ComposerKt.sourceInformationMarkerEnd($composer);
            factory = HiltViewModelFactory.create((Context) consume, ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getDefaultViewModelProviderFactory());
        } else {
            factory = null;
        }
        $composer.endReplaceableGroup();
        return factory;
    }
}
