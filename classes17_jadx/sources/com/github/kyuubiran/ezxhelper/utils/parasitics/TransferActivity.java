package com.github.kyuubiran.ezxhelper.utils.parasitics;

import android.app.Activity;
import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TransferActivity.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0014¨\u0006\t"}, d2 = {"Lcom/github/kyuubiran/ezxhelper/utils/parasitics/TransferActivity;", "Landroid/app/Activity;", "()V", "getClassLoader", "Ljava/lang/ClassLoader;", "onRestoreInstanceState", "", "savedInstanceState", "Landroid/os/Bundle;", "EzXHelper_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class TransferActivity extends Activity {
    @Override // android.content.ContextWrapper, android.content.Context
    public ClassLoader getClassLoader() {
        return new FixedClassLoader(ActivityProxyManager.INSTANCE.getMODULE_CLASS_LOADER(), ActivityProxyManager.INSTANCE.getHOST_CLASS_LOADER());
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(savedInstanceState, "savedInstanceState");
        Bundle windowState = savedInstanceState.getBundle("android:viewHierarchyState");
        if (windowState != null) {
            ClassLoader classLoader = TransferActivity.class.getClassLoader();
            Intrinsics.checkNotNull(classLoader);
            windowState.setClassLoader(classLoader);
        }
        super.onRestoreInstanceState(savedInstanceState);
    }
}
