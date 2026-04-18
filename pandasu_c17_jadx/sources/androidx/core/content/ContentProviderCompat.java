package androidx.core.content;

import android.content.ContentProvider;
import android.content.Context;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class ContentProviderCompat {
    private ContentProviderCompat() {
    }

    public static Context requireContext(ContentProvider provider) {
        Context ctx = provider.getContext();
        if (ctx == null) {
            throw new IllegalStateException("Cannot find context from the provider.");
        }
        return ctx;
    }
}
