package androidx.core.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public interface MenuProvider {
    void onCreateMenu(Menu menu, MenuInflater menuInflater);

    boolean onMenuItemSelected(MenuItem menuItem);

    default void onPrepareMenu(Menu menu) {
    }

    default void onMenuClosed(Menu menu) {
    }
}
