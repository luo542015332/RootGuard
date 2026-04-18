package com.rootguard.app.ui.screens.isolation;

import com.rootguard.app.utils.OneClickIsolationHelper;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IsolationViewModel.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.rootguard.app.ui.screens.isolation.IsolationViewModel$loadAppList$1", f = "IsolationViewModel.kt", i = {}, l = {101}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes9.dex */
public final class IsolationViewModel$loadAppList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ IsolationViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IsolationViewModel$loadAppList$1(IsolationViewModel isolationViewModel, Continuation<? super IsolationViewModel$loadAppList$1> continuation) {
        super(2, continuation);
        this.this$0 = isolationViewModel;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new IsolationViewModel$loadAppList$1(this.this$0, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v7, types: [com.rootguard.app.ui.screens.isolation.IsolationViewModel$loadAppList$1] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    public final Object invokeSuspend(Object obj) {
        IsolationViewModel$loadAppList$1 isolationViewModel$loadAppList$1;
        Object obj2;
        MutableStateFlow mutableStateFlow;
        Object value;
        IsolationUiState copy;
        MutableStateFlow mutableStateFlow2;
        IsolationUiState copy2;
        OneClickIsolationHelper oneClickIsolationHelper;
        Object obj3;
        Object obj4;
        MutableStateFlow mutableStateFlow3;
        Object value2;
        IsolationUiState copy3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r2 = this.label;
        int i = 1;
        try {
            switch (r2) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    IsolationViewModel$loadAppList$1 isolationViewModel$loadAppList$12 = this;
                    mutableStateFlow2 = isolationViewModel$loadAppList$12.this$0._uiState;
                    while (true) {
                        Object value3 = mutableStateFlow2.getValue();
                        copy2 = r29.copy((r36 & 1) != 0 ? r29.globalEnabled : false, (r36 & 2) != 0 ? r29.currentConfig : null, (r36 & 4) != 0 ? r29.isolatedApps : null, (r36 & 8) != 0 ? r29.isLoading : false, (r36 & 16) != 0 ? r29.errorMessage : null, (r36 & 32) != 0 ? r29.successMessage : null, (r36 & 64) != 0 ? r29.showSandboxRules : false, (r36 & 128) != 0 ? r29.isolationStats : null, (r36 & 256) != 0 ? r29.oneClickProgress : null, (r36 & 512) != 0 ? r29.userApps : null, (r36 & 1024) != 0 ? r29.systemApps : null, (r36 & 2048) != 0 ? r29.isAppListLoading : true, (r36 & 4096) != 0 ? r29.hasRootPermission : false, (r36 & 8192) != 0 ? r29.searchQuery : null, (r36 & 16384) != 0 ? r29.activeTab : null, (r36 & 32768) != 0 ? r29.selectedOneClickPreset : null, (r36 & 65536) != 0 ? r29.isDenyListEnabled : false, (r36 & 131072) != 0 ? ((IsolationUiState) value3).isPropSpoofEnabled : false);
                        if (mutableStateFlow2.compareAndSet(value3, copy2)) {
                            oneClickIsolationHelper = isolationViewModel$loadAppList$12.this$0.oneClickIsolationHelper;
                            isolationViewModel$loadAppList$12.label = i;
                            Object scanAllApps = oneClickIsolationHelper.scanAllApps((Continuation) isolationViewModel$loadAppList$12);
                            if (scanAllApps == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            obj3 = obj;
                            obj4 = scanAllApps;
                            r2 = isolationViewModel$loadAppList$12;
                            break;
                        } else {
                            i = 1;
                        }
                    }
                case 1:
                    r2 = this;
                    obj4 = obj;
                    ResultKt.throwOnFailure(obj4);
                    obj3 = obj4;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Exception e) {
            e = e;
            isolationViewModel$loadAppList$1 = r2;
            obj2 = mutableStateFlow3;
        }
        try {
            List list = (List) obj4;
            mutableStateFlow3 = r2.this$0._uiState;
            do {
                value2 = mutableStateFlow3.getValue();
                IsolationUiState isolationUiState = (IsolationUiState) value2;
                ArrayList arrayList = new ArrayList();
                for (Object obj5 : list) {
                    OneClickIsolationHelper.AppInfo appInfo = (OneClickIsolationHelper.AppInfo) obj5;
                    if ((appInfo.isSystemApp() || Intrinsics.areEqual(appInfo.getPackageName(), "com.rootguard.app")) ? false : true) {
                        arrayList.add(obj5);
                    }
                }
                ArrayList arrayList2 = arrayList;
                ArrayList arrayList3 = new ArrayList();
                for (Object obj6 : list) {
                    if (((OneClickIsolationHelper.AppInfo) obj6).isSystemApp()) {
                        arrayList3.add(obj6);
                    }
                }
                copy3 = isolationUiState.copy((r36 & 1) != 0 ? isolationUiState.globalEnabled : false, (r36 & 2) != 0 ? isolationUiState.currentConfig : null, (r36 & 4) != 0 ? isolationUiState.isolatedApps : null, (r36 & 8) != 0 ? isolationUiState.isLoading : false, (r36 & 16) != 0 ? isolationUiState.errorMessage : null, (r36 & 32) != 0 ? isolationUiState.successMessage : null, (r36 & 64) != 0 ? isolationUiState.showSandboxRules : false, (r36 & 128) != 0 ? isolationUiState.isolationStats : null, (r36 & 256) != 0 ? isolationUiState.oneClickProgress : null, (r36 & 512) != 0 ? isolationUiState.userApps : arrayList2, (r36 & 1024) != 0 ? isolationUiState.systemApps : arrayList3, (r36 & 2048) != 0 ? isolationUiState.isAppListLoading : false, (r36 & 4096) != 0 ? isolationUiState.hasRootPermission : false, (r36 & 8192) != 0 ? isolationUiState.searchQuery : null, (r36 & 16384) != 0 ? isolationUiState.activeTab : null, (r36 & 32768) != 0 ? isolationUiState.selectedOneClickPreset : null, (r36 & 65536) != 0 ? isolationUiState.isDenyListEnabled : false, (r36 & 131072) != 0 ? isolationUiState.isPropSpoofEnabled : false);
            } while (!mutableStateFlow3.compareAndSet(value2, copy3));
        } catch (Exception e2) {
            e = e2;
            isolationViewModel$loadAppList$1 = r2;
            obj2 = obj3;
            Exception exc = e;
            mutableStateFlow = isolationViewModel$loadAppList$1.this$0._uiState;
            do {
                value = mutableStateFlow.getValue();
                copy = r2.copy((r36 & 1) != 0 ? r2.globalEnabled : false, (r36 & 2) != 0 ? r2.currentConfig : null, (r36 & 4) != 0 ? r2.isolatedApps : null, (r36 & 8) != 0 ? r2.isLoading : false, (r36 & 16) != 0 ? r2.errorMessage : "获取应用列表失败: " + exc.getMessage(), (r36 & 32) != 0 ? r2.successMessage : null, (r36 & 64) != 0 ? r2.showSandboxRules : false, (r36 & 128) != 0 ? r2.isolationStats : null, (r36 & 256) != 0 ? r2.oneClickProgress : null, (r36 & 512) != 0 ? r2.userApps : null, (r36 & 1024) != 0 ? r2.systemApps : null, (r36 & 2048) != 0 ? r2.isAppListLoading : false, (r36 & 4096) != 0 ? r2.hasRootPermission : false, (r36 & 8192) != 0 ? r2.searchQuery : null, (r36 & 16384) != 0 ? r2.activeTab : null, (r36 & 32768) != 0 ? r2.selectedOneClickPreset : null, (r36 & 65536) != 0 ? r2.isDenyListEnabled : false, (r36 & 131072) != 0 ? ((IsolationUiState) value).isPropSpoofEnabled : false);
            } while (!mutableStateFlow.compareAndSet(value, copy));
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}
