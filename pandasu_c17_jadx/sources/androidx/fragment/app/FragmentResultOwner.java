package androidx.fragment.app;

import android.os.Bundle;
import androidx.lifecycle.LifecycleOwner;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public interface FragmentResultOwner {
    void clearFragmentResult(String str);

    void clearFragmentResultListener(String str);

    void setFragmentResult(String str, Bundle bundle);

    void setFragmentResultListener(String str, LifecycleOwner lifecycleOwner, FragmentResultListener fragmentResultListener);
}
