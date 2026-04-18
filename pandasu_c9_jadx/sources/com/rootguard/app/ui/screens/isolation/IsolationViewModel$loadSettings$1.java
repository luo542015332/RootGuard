package com.rootguard.app.ui.screens.isolation;

import com.rootguard.app.data.local.IsolationDataStore;
import com.rootguard.app.data.model.IsolationConfig;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IsolationViewModel.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.ui.screens.isolation.IsolationViewModel$loadSettings$1", f = "IsolationViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
public final class IsolationViewModel$loadSettings$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ IsolationViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsolationViewModel$loadSettings$1(IsolationViewModel isolationViewModel, Continuation<? super IsolationViewModel$loadSettings$1> continuation) {
        super(2, continuation);
        this.this$0 = isolationViewModel;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Continuation<Unit> isolationViewModel$loadSettings$1 = new IsolationViewModel$loadSettings$1(this.this$0, continuation);
        isolationViewModel$loadSettings$1.L$0 = obj;
        return isolationViewModel$loadSettings$1;
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IsolationViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.rootguard.app.ui.screens.isolation.IsolationViewModel$loadSettings$1$1", f = "IsolationViewModel.kt", i = {}, l = {88}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.rootguard.app.ui.screens.isolation.IsolationViewModel$loadSettings$1$1, reason: invalid class name */
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ IsolationViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(IsolationViewModel isolationViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = isolationViewModel;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object $result) {
            IsolationDataStore isolationDataStore;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    isolationDataStore = this.this$0.isolationDataStore;
                    Flow globalIsolationEnabled = isolationDataStore.getGlobalIsolationEnabled();
                    final IsolationViewModel isolationViewModel = this.this$0;
                    this.label = 1;
                    if (globalIsolationEnabled.collect(new FlowCollector() { // from class: com.rootguard.app.ui.screens.isolation.IsolationViewModel.loadSettings.1.1.1
                        public /* bridge */ /* synthetic */ Object emit(Object value, Continuation $completion) {
                            return emit(((Boolean) value).booleanValue(), (Continuation<? super Unit>) $completion);
                        }

                        public final Object emit(boolean enabled, Continuation<? super Unit> continuation) {
                            MutableStateFlow $this$update$iv;
                            Object prevValue$iv;
                            Object nextValue$iv;
                            $this$update$iv = IsolationViewModel.this._uiState;
                            do {
                                prevValue$iv = $this$update$iv.getValue();
                                IsolationUiState s = (IsolationUiState) prevValue$iv;
                                nextValue$iv = s.copy((r36 & 1) != 0 ? s.globalEnabled : enabled, (r36 & 2) != 0 ? s.currentConfig : null, (r36 & 4) != 0 ? s.isolatedApps : null, (r36 & 8) != 0 ? s.isLoading : false, (r36 & 16) != 0 ? s.errorMessage : null, (r36 & 32) != 0 ? s.successMessage : null, (r36 & 64) != 0 ? s.showSandboxRules : false, (r36 & 128) != 0 ? s.isolationStats : null, (r36 & 256) != 0 ? s.oneClickProgress : null, (r36 & 512) != 0 ? s.userApps : null, (r36 & 1024) != 0 ? s.systemApps : null, (r36 & 2048) != 0 ? s.isAppListLoading : false, (r36 & 4096) != 0 ? s.hasRootPermission : false, (r36 & 8192) != 0 ? s.searchQuery : null, (r36 & 16384) != 0 ? s.activeTab : null, (r36 & 32768) != 0 ? s.selectedOneClickPreset : null, (r36 & 65536) != 0 ? s.isDenyListEnabled : false, (r36 & 131072) != 0 ? s.isPropSpoofEnabled : false);
                            } while (!$this$update$iv.compareAndSet(prevValue$iv, nextValue$iv));
                            return Unit.INSTANCE;
                        }
                    }, (Continuation) this) != coroutine_suspended) {
                        break;
                    } else {
                        return coroutine_suspended;
                    }
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                CoroutineScope $this$launch = (CoroutineScope) this.L$0;
                BuildersKt.launch$default($this$launch, (CoroutineContext) null, (CoroutineStart) null, new AnonymousClass1(this.this$0, null), 3, (Object) null);
                BuildersKt.launch$default($this$launch, (CoroutineContext) null, (CoroutineStart) null, new AnonymousClass2(this.this$0, null), 3, (Object) null);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IsolationViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.rootguard.app.ui.screens.isolation.IsolationViewModel$loadSettings$1$2", f = "IsolationViewModel.kt", i = {}, l = {89}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.rootguard.app.ui.screens.isolation.IsolationViewModel$loadSettings$1$2, reason: invalid class name */
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ IsolationViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(IsolationViewModel isolationViewModel, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = isolationViewModel;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object $result) {
            IsolationDataStore isolationDataStore;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    isolationDataStore = this.this$0.isolationDataStore;
                    Flow isolationConfigs = isolationDataStore.getIsolationConfigs();
                    final IsolationViewModel isolationViewModel = this.this$0;
                    this.label = 1;
                    if (isolationConfigs.collect(new FlowCollector() { // from class: com.rootguard.app.ui.screens.isolation.IsolationViewModel.loadSettings.1.2.1
                        public /* bridge */ /* synthetic */ Object emit(Object value, Continuation $completion) {
                            return emit((List<IsolationConfig>) value, (Continuation<? super Unit>) $completion);
                        }

                        public final Object emit(List<IsolationConfig> list, Continuation<? super Unit> continuation) {
                            MutableStateFlow $this$update$iv;
                            Object prevValue$iv;
                            Object nextValue$iv;
                            $this$update$iv = IsolationViewModel.this._uiState;
                            do {
                                prevValue$iv = $this$update$iv.getValue();
                                IsolationUiState s = (IsolationUiState) prevValue$iv;
                                List<IsolationConfig> $this$filter$iv = list;
                                Collection destination$iv$iv = new ArrayList();
                                for (T t : $this$filter$iv) {
                                    IsolationConfig c = (IsolationConfig) t;
                                    if (c.isEnabled()) {
                                        destination$iv$iv.add(t);
                                    }
                                }
                                nextValue$iv = s.copy((r36 & 1) != 0 ? s.globalEnabled : false, (r36 & 2) != 0 ? s.currentConfig : null, (r36 & 4) != 0 ? s.isolatedApps : (List) destination$iv$iv, (r36 & 8) != 0 ? s.isLoading : false, (r36 & 16) != 0 ? s.errorMessage : null, (r36 & 32) != 0 ? s.successMessage : null, (r36 & 64) != 0 ? s.showSandboxRules : false, (r36 & 128) != 0 ? s.isolationStats : null, (r36 & 256) != 0 ? s.oneClickProgress : null, (r36 & 512) != 0 ? s.userApps : null, (r36 & 1024) != 0 ? s.systemApps : null, (r36 & 2048) != 0 ? s.isAppListLoading : false, (r36 & 4096) != 0 ? s.hasRootPermission : false, (r36 & 8192) != 0 ? s.searchQuery : null, (r36 & 16384) != 0 ? s.activeTab : null, (r36 & 32768) != 0 ? s.selectedOneClickPreset : null, (r36 & 65536) != 0 ? s.isDenyListEnabled : false, (r36 & 131072) != 0 ? s.isPropSpoofEnabled : false);
                            } while (!$this$update$iv.compareAndSet(prevValue$iv, nextValue$iv));
                            return Unit.INSTANCE;
                        }
                    }, (Continuation) this) != coroutine_suspended) {
                        break;
                    } else {
                        return coroutine_suspended;
                    }
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }
}
