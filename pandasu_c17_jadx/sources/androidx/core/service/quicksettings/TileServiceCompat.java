package androidx.core.service.quicksettings;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Build;
import android.service.quicksettings.TileService;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class TileServiceCompat {
    private static TileServiceWrapper sTileServiceWrapper;

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    interface TileServiceWrapper {
        void startActivityAndCollapse(PendingIntent pendingIntent);

        void startActivityAndCollapse(Intent intent);
    }

    public static void startActivityAndCollapse(TileService tileService, PendingIntentActivityWrapper wrapper) {
        if (Build.VERSION.SDK_INT >= 34) {
            TileServiceWrapper tileServiceWrapper = sTileServiceWrapper;
            if (tileServiceWrapper != null) {
                tileServiceWrapper.startActivityAndCollapse(wrapper.getPendingIntent());
                return;
            } else {
                Api34Impl.startActivityAndCollapse(tileService, wrapper.getPendingIntent());
                return;
            }
        }
        TileServiceWrapper tileServiceWrapper2 = sTileServiceWrapper;
        if (tileServiceWrapper2 != null) {
            tileServiceWrapper2.startActivityAndCollapse(wrapper.getIntent());
        } else {
            Api24Impl.startActivityAndCollapse(tileService, wrapper.getIntent());
        }
    }

    public static void setTileServiceWrapper(TileServiceWrapper serviceWrapper) {
        sTileServiceWrapper = serviceWrapper;
    }

    public static void clearTileServiceWrapper() {
        sTileServiceWrapper = null;
    }

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    private static class Api34Impl {
        private Api34Impl() {
        }

        static void startActivityAndCollapse(TileService service, PendingIntent pendingIntent) {
            service.startActivityAndCollapse(pendingIntent);
        }
    }

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    private static class Api24Impl {
        private Api24Impl() {
        }

        static void startActivityAndCollapse(TileService service, Intent intent) {
            service.startActivityAndCollapse(intent);
        }
    }

    private TileServiceCompat() {
    }
}
