package androidx.core.widget;

import android.view.View;
import android.widget.ListPopupWindow;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class ListPopupWindowCompat {
    private ListPopupWindowCompat() {
    }

    @Deprecated
    public static View.OnTouchListener createDragToOpenListener(Object listPopupWindow, View src) {
        return createDragToOpenListener((ListPopupWindow) listPopupWindow, src);
    }

    public static View.OnTouchListener createDragToOpenListener(ListPopupWindow listPopupWindow, View src) {
        return Api19Impl.createDragToOpenListener(listPopupWindow, src);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
    public static class Api19Impl {
        private Api19Impl() {
        }

        static View.OnTouchListener createDragToOpenListener(ListPopupWindow listPopupWindow, View src) {
            return listPopupWindow.createDragToOpenListener(src);
        }
    }
}
