package com.rootguard.app;

import android.app.Activity;
import android.app.Service;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import com.rootguard.app.PandaSUApp_HiltComponents;
import com.rootguard.app.data.local.IsolationDataStore;
import com.rootguard.app.data.local.SettingsDataStore;
import com.rootguard.app.data.magisk.RootHider;
import com.rootguard.app.di.AppModule;
import com.rootguard.app.di.AppModule_ProvideSettingsDataStoreFactory;
import com.rootguard.app.receiver.AutoApplyReceiver;
import com.rootguard.app.receiver.AutoApplyReceiver_MembersInjector;
import com.rootguard.app.ui.screens.envscore.EnvScoreDetailViewModel;
import com.rootguard.app.ui.screens.envscore.EnvScoreDetailViewModel_HiltModules_KeyModule_ProvideFactory;
import com.rootguard.app.ui.screens.isolation.IsolationViewModel;
import com.rootguard.app.ui.screens.isolation.IsolationViewModel_HiltModules_KeyModule_ProvideFactory;
import com.rootguard.app.ui.screens.logs.LogsViewModel;
import com.rootguard.app.ui.screens.logs.LogsViewModel_HiltModules_KeyModule_ProvideFactory;
import com.rootguard.app.util.DetectorScanner;
import com.rootguard.app.utils.OneClickIsolationHelper;
import dagger.hilt.android.ActivityRetainedLifecycle;
import dagger.hilt.android.ViewModelLifecycle;
import dagger.hilt.android.flags.HiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule;
import dagger.hilt.android.internal.builders.ActivityComponentBuilder;
import dagger.hilt.android.internal.builders.ActivityRetainedComponentBuilder;
import dagger.hilt.android.internal.builders.FragmentComponentBuilder;
import dagger.hilt.android.internal.builders.ServiceComponentBuilder;
import dagger.hilt.android.internal.builders.ViewComponentBuilder;
import dagger.hilt.android.internal.builders.ViewModelComponentBuilder;
import dagger.hilt.android.internal.builders.ViewWithFragmentComponentBuilder;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories_InternalFactoryFactory_Factory;
import dagger.hilt.android.internal.managers.ActivityRetainedComponentManager_LifecycleModule_ProvideActivityRetainedLifecycleFactory;
import dagger.hilt.android.internal.modules.ApplicationContextModule;
import dagger.hilt.android.internal.modules.ApplicationContextModule_ProvideContextFactory;
import dagger.internal.DoubleCheck;
import dagger.internal.MapBuilder;
import dagger.internal.Preconditions;
import dagger.internal.SetBuilder;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import javax.inject.Provider;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
public final class DaggerPandaSUApp_HiltComponents_SingletonC {
    private DaggerPandaSUApp_HiltComponents_SingletonC() {
    }

    public static Builder builder() {
        return new Builder();
    }

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    public static final class Builder {
        private ApplicationContextModule applicationContextModule;

        private Builder() {
        }

        @Deprecated
        public Builder appModule(AppModule appModule) {
            Preconditions.checkNotNull(appModule);
            return this;
        }

        public Builder applicationContextModule(ApplicationContextModule applicationContextModule) {
            this.applicationContextModule = (ApplicationContextModule) Preconditions.checkNotNull(applicationContextModule);
            return this;
        }

        @Deprecated
        public Builder hiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule(HiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule hiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule) {
            Preconditions.checkNotNull(hiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule);
            return this;
        }

        public PandaSUApp_HiltComponents.SingletonC build() {
            Preconditions.checkBuilderRequirement(this.applicationContextModule, ApplicationContextModule.class);
            return new SingletonCImpl(this.applicationContextModule);
        }
    }

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    private static final class ActivityRetainedCBuilder implements PandaSUApp_HiltComponents.ActivityRetainedC.Builder {
        private final SingletonCImpl singletonCImpl;

        private ActivityRetainedCBuilder(SingletonCImpl singletonCImpl) {
            this.singletonCImpl = singletonCImpl;
        }

        /* renamed from: build, reason: merged with bridge method [inline-methods] */
        public PandaSUApp_HiltComponents.ActivityRetainedC m5build() {
            return new ActivityRetainedCImpl(this.singletonCImpl);
        }
    }

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    private static final class ActivityCBuilder implements PandaSUApp_HiltComponents.ActivityC.Builder {
        private Activity activity;
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private final SingletonCImpl singletonCImpl;

        private ActivityCBuilder(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl) {
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
        }

        /* renamed from: activity, reason: merged with bridge method [inline-methods] */
        public ActivityCBuilder m3activity(Activity activity) {
            this.activity = (Activity) Preconditions.checkNotNull(activity);
            return this;
        }

        /* renamed from: build, reason: merged with bridge method [inline-methods] */
        public PandaSUApp_HiltComponents.ActivityC m4build() {
            Preconditions.checkBuilderRequirement(this.activity, Activity.class);
            return new ActivityCImpl(this.singletonCImpl, this.activityRetainedCImpl, this.activity);
        }
    }

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    private static final class FragmentCBuilder implements PandaSUApp_HiltComponents.FragmentC.Builder {
        private final ActivityCImpl activityCImpl;
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private Fragment fragment;
        private final SingletonCImpl singletonCImpl;

        private FragmentCBuilder(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, ActivityCImpl activityCImpl) {
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
            this.activityCImpl = activityCImpl;
        }

        /* renamed from: fragment, reason: merged with bridge method [inline-methods] */
        public FragmentCBuilder m7fragment(Fragment fragment) {
            this.fragment = (Fragment) Preconditions.checkNotNull(fragment);
            return this;
        }

        /* renamed from: build, reason: merged with bridge method [inline-methods] */
        public PandaSUApp_HiltComponents.FragmentC m6build() {
            Preconditions.checkBuilderRequirement(this.fragment, Fragment.class);
            return new FragmentCImpl(this.singletonCImpl, this.activityRetainedCImpl, this.activityCImpl, this.fragment);
        }
    }

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    private static final class ViewWithFragmentCBuilder implements PandaSUApp_HiltComponents.ViewWithFragmentC.Builder {
        private final ActivityCImpl activityCImpl;
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private final FragmentCImpl fragmentCImpl;
        private final SingletonCImpl singletonCImpl;
        private View view;

        private ViewWithFragmentCBuilder(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, ActivityCImpl activityCImpl, FragmentCImpl fragmentCImpl) {
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
            this.activityCImpl = activityCImpl;
            this.fragmentCImpl = fragmentCImpl;
        }

        /* renamed from: view, reason: merged with bridge method [inline-methods] */
        public ViewWithFragmentCBuilder m22view(View view) {
            this.view = (View) Preconditions.checkNotNull(view);
            return this;
        }

        /* renamed from: build, reason: merged with bridge method [inline-methods] */
        public PandaSUApp_HiltComponents.ViewWithFragmentC m21build() {
            Preconditions.checkBuilderRequirement(this.view, View.class);
            return new ViewWithFragmentCImpl(this.singletonCImpl, this.activityRetainedCImpl, this.activityCImpl, this.fragmentCImpl, this.view);
        }
    }

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    private static final class ViewCBuilder implements PandaSUApp_HiltComponents.ViewC.Builder {
        private final ActivityCImpl activityCImpl;
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private final SingletonCImpl singletonCImpl;
        private View view;

        private ViewCBuilder(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, ActivityCImpl activityCImpl) {
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
            this.activityCImpl = activityCImpl;
        }

        /* renamed from: view, reason: merged with bridge method [inline-methods] */
        public ViewCBuilder m17view(View view) {
            this.view = (View) Preconditions.checkNotNull(view);
            return this;
        }

        /* renamed from: build, reason: merged with bridge method [inline-methods] */
        public PandaSUApp_HiltComponents.ViewC m16build() {
            Preconditions.checkBuilderRequirement(this.view, View.class);
            return new ViewCImpl(this.singletonCImpl, this.activityRetainedCImpl, this.activityCImpl, this.view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    public static final class ViewModelCBuilder implements PandaSUApp_HiltComponents.ViewModelC.Builder {
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private SavedStateHandle savedStateHandle;
        private final SingletonCImpl singletonCImpl;
        private ViewModelLifecycle viewModelLifecycle;

        private ViewModelCBuilder(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl) {
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
        }

        /* renamed from: savedStateHandle, reason: merged with bridge method [inline-methods] */
        public ViewModelCBuilder m19savedStateHandle(SavedStateHandle handle) {
            this.savedStateHandle = (SavedStateHandle) Preconditions.checkNotNull(handle);
            return this;
        }

        /* renamed from: viewModelLifecycle, reason: merged with bridge method [inline-methods] */
        public ViewModelCBuilder m20viewModelLifecycle(ViewModelLifecycle viewModelLifecycle) {
            this.viewModelLifecycle = (ViewModelLifecycle) Preconditions.checkNotNull(viewModelLifecycle);
            return this;
        }

        /* renamed from: build, reason: merged with bridge method [inline-methods] */
        public PandaSUApp_HiltComponents.ViewModelC m18build() {
            Preconditions.checkBuilderRequirement(this.savedStateHandle, SavedStateHandle.class);
            Preconditions.checkBuilderRequirement(this.viewModelLifecycle, ViewModelLifecycle.class);
            return new ViewModelCImpl(this.singletonCImpl, this.activityRetainedCImpl, this.savedStateHandle, this.viewModelLifecycle);
        }
    }

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    private static final class ServiceCBuilder implements PandaSUApp_HiltComponents.ServiceC.Builder {
        private Service service;
        private final SingletonCImpl singletonCImpl;

        private ServiceCBuilder(SingletonCImpl singletonCImpl) {
            this.singletonCImpl = singletonCImpl;
        }

        /* renamed from: service, reason: merged with bridge method [inline-methods] */
        public ServiceCBuilder m9service(Service service) {
            this.service = (Service) Preconditions.checkNotNull(service);
            return this;
        }

        /* renamed from: build, reason: merged with bridge method [inline-methods] */
        public PandaSUApp_HiltComponents.ServiceC m8build() {
            Preconditions.checkBuilderRequirement(this.service, Service.class);
            return new ServiceCImpl(this.singletonCImpl, this.service);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    public static final class ViewWithFragmentCImpl extends PandaSUApp_HiltComponents.ViewWithFragmentC {
        private final ActivityCImpl activityCImpl;
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private final FragmentCImpl fragmentCImpl;
        private final SingletonCImpl singletonCImpl;
        private final ViewWithFragmentCImpl viewWithFragmentCImpl;

        private ViewWithFragmentCImpl(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, ActivityCImpl activityCImpl, FragmentCImpl fragmentCImpl, View viewParam) {
            this.viewWithFragmentCImpl = this;
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
            this.activityCImpl = activityCImpl;
            this.fragmentCImpl = fragmentCImpl;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    public static final class FragmentCImpl extends PandaSUApp_HiltComponents.FragmentC {
        private final ActivityCImpl activityCImpl;
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private final FragmentCImpl fragmentCImpl;
        private final SingletonCImpl singletonCImpl;

        private FragmentCImpl(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, ActivityCImpl activityCImpl, Fragment fragmentParam) {
            this.fragmentCImpl = this;
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
            this.activityCImpl = activityCImpl;
        }

        public DefaultViewModelFactories.InternalFactoryFactory getHiltInternalFactoryFactory() {
            return this.activityCImpl.getHiltInternalFactoryFactory();
        }

        public ViewWithFragmentComponentBuilder viewWithFragmentComponentBuilder() {
            return new ViewWithFragmentCBuilder(this.singletonCImpl, this.activityRetainedCImpl, this.activityCImpl, this.fragmentCImpl);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    public static final class ViewCImpl extends PandaSUApp_HiltComponents.ViewC {
        private final ActivityCImpl activityCImpl;
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private final SingletonCImpl singletonCImpl;
        private final ViewCImpl viewCImpl;

        private ViewCImpl(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, ActivityCImpl activityCImpl, View viewParam) {
            this.viewCImpl = this;
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
            this.activityCImpl = activityCImpl;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    public static final class ActivityCImpl extends PandaSUApp_HiltComponents.ActivityC {
        private final ActivityCImpl activityCImpl;
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private final SingletonCImpl singletonCImpl;

        private ActivityCImpl(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, Activity activityParam) {
            this.activityCImpl = this;
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
        }

        @Override // com.rootguard.app.MainActivity_GeneratedInjector
        public void injectMainActivity(MainActivity arg0) {
            injectMainActivity2(arg0);
        }

        public DefaultViewModelFactories.InternalFactoryFactory getHiltInternalFactoryFactory() {
            return DefaultViewModelFactories_InternalFactoryFactory_Factory.newInstance(getViewModelKeys(), new ViewModelCBuilder(this.singletonCImpl, this.activityRetainedCImpl));
        }

        public Set<String> getViewModelKeys() {
            return SetBuilder.newSetBuilder(3).add(EnvScoreDetailViewModel_HiltModules_KeyModule_ProvideFactory.provide()).add(IsolationViewModel_HiltModules_KeyModule_ProvideFactory.provide()).add(LogsViewModel_HiltModules_KeyModule_ProvideFactory.provide()).build();
        }

        public ViewModelComponentBuilder getViewModelComponentBuilder() {
            return new ViewModelCBuilder(this.singletonCImpl, this.activityRetainedCImpl);
        }

        public FragmentComponentBuilder fragmentComponentBuilder() {
            return new FragmentCBuilder(this.singletonCImpl, this.activityRetainedCImpl, this.activityCImpl);
        }

        public ViewComponentBuilder viewComponentBuilder() {
            return new ViewCBuilder(this.singletonCImpl, this.activityRetainedCImpl, this.activityCImpl);
        }

        private MainActivity injectMainActivity2(MainActivity instance) {
            MainActivity_MembersInjector.injectSettingsDataStore(instance, (SettingsDataStore) this.singletonCImpl.provideSettingsDataStoreProvider.get());
            MainActivity_MembersInjector.injectIsolationDataStore(instance, (IsolationDataStore) this.singletonCImpl.isolationDataStoreProvider.get());
            MainActivity_MembersInjector.injectRootHider(instance, (RootHider) this.singletonCImpl.rootHiderProvider.get());
            return instance;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    public static final class ViewModelCImpl extends PandaSUApp_HiltComponents.ViewModelC {
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private Provider<EnvScoreDetailViewModel> envScoreDetailViewModelProvider;
        private Provider<IsolationViewModel> isolationViewModelProvider;
        private Provider<LogsViewModel> logsViewModelProvider;
        private final SingletonCImpl singletonCImpl;
        private final ViewModelCImpl viewModelCImpl;

        private ViewModelCImpl(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, SavedStateHandle savedStateHandleParam, ViewModelLifecycle viewModelLifecycleParam) {
            this.viewModelCImpl = this;
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
            initialize(savedStateHandleParam, viewModelLifecycleParam);
        }

        private void initialize(final SavedStateHandle savedStateHandleParam, final ViewModelLifecycle viewModelLifecycleParam) {
            this.envScoreDetailViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 0);
            this.isolationViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 1);
            this.logsViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 2);
        }

        public Map<String, Provider<ViewModel>> getHiltViewModelMap() {
            return MapBuilder.newMapBuilder(3).put("com.rootguard.app.ui.screens.envscore.EnvScoreDetailViewModel", this.envScoreDetailViewModelProvider).put("com.rootguard.app.ui.screens.isolation.IsolationViewModel", this.isolationViewModelProvider).put("com.rootguard.app.ui.screens.logs.LogsViewModel", this.logsViewModelProvider).build();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
        public static final class SwitchingProvider<T> implements Provider<T> {
            private final ActivityRetainedCImpl activityRetainedCImpl;
            private final int id;
            private final SingletonCImpl singletonCImpl;
            private final ViewModelCImpl viewModelCImpl;

            SwitchingProvider(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, ViewModelCImpl viewModelCImpl, int id) {
                this.singletonCImpl = singletonCImpl;
                this.activityRetainedCImpl = activityRetainedCImpl;
                this.viewModelCImpl = viewModelCImpl;
                this.id = id;
            }

            public T get() {
                switch (this.id) {
                    case 0:
                        return (T) new EnvScoreDetailViewModel((RootHider) this.singletonCImpl.rootHiderProvider.get(), (DetectorScanner) this.singletonCImpl.detectorScannerProvider.get(), (IsolationDataStore) this.singletonCImpl.isolationDataStoreProvider.get());
                    case 1:
                        return (T) new IsolationViewModel((IsolationDataStore) this.singletonCImpl.isolationDataStoreProvider.get(), (RootHider) this.singletonCImpl.rootHiderProvider.get(), (OneClickIsolationHelper) this.singletonCImpl.oneClickIsolationHelperProvider.get());
                    case 2:
                        return (T) new LogsViewModel();
                    default:
                        throw new AssertionError(this.id);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    public static final class ActivityRetainedCImpl extends PandaSUApp_HiltComponents.ActivityRetainedC {
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private Provider<ActivityRetainedLifecycle> provideActivityRetainedLifecycleProvider;
        private final SingletonCImpl singletonCImpl;

        private ActivityRetainedCImpl(SingletonCImpl singletonCImpl) {
            this.activityRetainedCImpl = this;
            this.singletonCImpl = singletonCImpl;
            initialize();
        }

        private void initialize() {
            this.provideActivityRetainedLifecycleProvider = DoubleCheck.provider(new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, 0));
        }

        public ActivityComponentBuilder activityComponentBuilder() {
            return new ActivityCBuilder(this.singletonCImpl, this.activityRetainedCImpl);
        }

        public ActivityRetainedLifecycle getActivityRetainedLifecycle() {
            return (ActivityRetainedLifecycle) this.provideActivityRetainedLifecycleProvider.get();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
        public static final class SwitchingProvider<T> implements Provider<T> {
            private final ActivityRetainedCImpl activityRetainedCImpl;
            private final int id;
            private final SingletonCImpl singletonCImpl;

            SwitchingProvider(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, int id) {
                this.singletonCImpl = singletonCImpl;
                this.activityRetainedCImpl = activityRetainedCImpl;
                this.id = id;
            }

            public T get() {
                switch (this.id) {
                    case 0:
                        return (T) ActivityRetainedComponentManager_LifecycleModule_ProvideActivityRetainedLifecycleFactory.provideActivityRetainedLifecycle();
                    default:
                        throw new AssertionError(this.id);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    public static final class ServiceCImpl extends PandaSUApp_HiltComponents.ServiceC {
        private final ServiceCImpl serviceCImpl;
        private final SingletonCImpl singletonCImpl;

        private ServiceCImpl(SingletonCImpl singletonCImpl, Service serviceParam) {
            this.serviceCImpl = this;
            this.singletonCImpl = singletonCImpl;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
    public static final class SingletonCImpl extends PandaSUApp_HiltComponents.SingletonC {
        private final ApplicationContextModule applicationContextModule;
        private Provider<DetectorScanner> detectorScannerProvider;
        private Provider<IsolationDataStore> isolationDataStoreProvider;
        private Provider<OneClickIsolationHelper> oneClickIsolationHelperProvider;
        private Provider<SettingsDataStore> provideSettingsDataStoreProvider;
        private Provider<RootHider> rootHiderProvider;
        private final SingletonCImpl singletonCImpl;

        private SingletonCImpl(ApplicationContextModule applicationContextModuleParam) {
            this.singletonCImpl = this;
            this.applicationContextModule = applicationContextModuleParam;
            initialize(applicationContextModuleParam);
        }

        private void initialize(final ApplicationContextModule applicationContextModuleParam) {
            this.isolationDataStoreProvider = DoubleCheck.provider(new SwitchingProvider(this.singletonCImpl, 0));
            this.rootHiderProvider = DoubleCheck.provider(new SwitchingProvider(this.singletonCImpl, 1));
            this.provideSettingsDataStoreProvider = DoubleCheck.provider(new SwitchingProvider(this.singletonCImpl, 2));
            this.detectorScannerProvider = DoubleCheck.provider(new SwitchingProvider(this.singletonCImpl, 3));
            this.oneClickIsolationHelperProvider = DoubleCheck.provider(new SwitchingProvider(this.singletonCImpl, 4));
        }

        @Override // com.rootguard.app.PandaSUApp_GeneratedInjector
        public void injectPandaSUApp(PandaSUApp arg0) {
        }

        public void injectAutoApplyReceiver(AutoApplyReceiver arg0) {
            injectAutoApplyReceiver2(arg0);
        }

        public Set<Boolean> getDisableFragmentGetContextFix() {
            return Collections.emptySet();
        }

        public ActivityRetainedComponentBuilder retainedComponentBuilder() {
            return new ActivityRetainedCBuilder(this.singletonCImpl);
        }

        public ServiceComponentBuilder serviceComponentBuilder() {
            return new ServiceCBuilder(this.singletonCImpl);
        }

        private AutoApplyReceiver injectAutoApplyReceiver2(AutoApplyReceiver instance) {
            AutoApplyReceiver_MembersInjector.injectIsolationDataStore(instance, (IsolationDataStore) this.isolationDataStoreProvider.get());
            AutoApplyReceiver_MembersInjector.injectRootHider(instance, (RootHider) this.rootHiderProvider.get());
            return instance;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes10.dex */
        public static final class SwitchingProvider<T> implements Provider<T> {
            private final int id;
            private final SingletonCImpl singletonCImpl;

            SwitchingProvider(SingletonCImpl singletonCImpl, int id) {
                this.singletonCImpl = singletonCImpl;
                this.id = id;
            }

            public T get() {
                switch (this.id) {
                    case 0:
                        return (T) new IsolationDataStore(ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule));
                    case 1:
                        return (T) new RootHider(ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule), (IsolationDataStore) this.singletonCImpl.isolationDataStoreProvider.get());
                    case 2:
                        return (T) AppModule_ProvideSettingsDataStoreFactory.provideSettingsDataStore(ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule));
                    case 3:
                        return (T) new DetectorScanner(ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule));
                    case 4:
                        return (T) new OneClickIsolationHelper(ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule));
                    default:
                        throw new AssertionError(this.id);
                }
            }
        }
    }
}
