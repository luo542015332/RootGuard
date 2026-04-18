package dagger.hilt.android.internal.modules;

import android.app.Activity;
import android.content.Context;
import androidx.fragment.app.FragmentActivity;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;

@Module
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
abstract class ActivityModule {
    @Binds
    abstract Context provideContext(Activity activity);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Provides
    @Reusable
    public static FragmentActivity provideFragmentActivity(Activity activity) {
        try {
            return (FragmentActivity) activity;
        } catch (ClassCastException e) {
            throw new IllegalStateException("Expected activity to be a FragmentActivity: " + activity, e);
        }
    }

    private ActivityModule() {
    }
}
