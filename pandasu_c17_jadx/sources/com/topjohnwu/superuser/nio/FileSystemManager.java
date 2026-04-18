package com.topjohnwu.superuser.nio;

import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import com.topjohnwu.superuser.internal.NIOFactory;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.nio.channels.FileChannel;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public abstract class FileSystemManager {
    private static final FileSystemManager LOCAL = NIOFactory.createLocal();
    public static final int MODE_APPEND = 33554432;
    public static final int MODE_CREATE = 134217728;
    public static final int MODE_READ_ONLY = 268435456;
    public static final int MODE_READ_WRITE = 805306368;
    public static final int MODE_TRUNCATE = 67108864;
    public static final int MODE_WRITE_ONLY = 536870912;
    private static Binder fsService;

    public abstract ExtendedFile getFile(String str);

    public abstract ExtendedFile getFile(String str, String str2);

    public abstract FileChannel openChannel(File file, int i) throws IOException;

    public static synchronized Binder getService() {
        Binder binder;
        synchronized (FileSystemManager.class) {
            if (fsService == null) {
                fsService = NIOFactory.createFsService();
            }
            binder = fsService;
        }
        return binder;
    }

    public static FileSystemManager getLocal() {
        return LOCAL;
    }

    public static FileSystemManager getRemote(IBinder binder) throws RemoteException {
        return NIOFactory.createRemote(binder);
    }

    public final ExtendedFile getFile(File parent, String child) {
        return getFile(parent == null ? null : parent.getPath(), child);
    }

    public final ExtendedFile getFile(URI uri) {
        return getFile(new File(uri).getPath());
    }

    public final FileChannel openChannel(String pathname, int mode) throws IOException {
        return openChannel(new File(pathname), mode);
    }
}
