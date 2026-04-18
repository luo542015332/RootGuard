package androidx.core.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public interface MenuProvider {
    void onCreateMenu(Menu menu, MenuInflater menuInflater);

    boolean onMenuItemSelected(MenuItem menuItem);

    default void onPrepareMenu(Menu menu) {
    }

    default void onMenuClosed(Menu menu) {
    }
}
