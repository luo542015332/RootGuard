package com.topjohnwu.superuser.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import com.topjohnwu.superuser.internal.IFileSystemService;
import com.topjohnwu.superuser.nio.ExtendedFile;
import com.topjohnwu.superuser.nio.FileSystemManager;
import java.io.File;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.file.attribute.FileAttribute;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class NIOFactory {
    private NIOFactory() {
    }

    public static FileSystemManager createLocal() {
        return new FileSystemManager() { // from class: com.topjohnwu.superuser.internal.NIOFactory.1
            @Override // com.topjohnwu.superuser.nio.FileSystemManager
            public ExtendedFile getFile(String pathname) {
                return new LocalFile(pathname);
            }

            @Override // com.topjohnwu.superuser.nio.FileSystemManager
            public ExtendedFile getFile(String parent, String child) {
                return new LocalFile(parent, child);
            }

            @Override // com.topjohnwu.superuser.nio.FileSystemManager
            public FileChannel openChannel(File file, int mode) throws IOException {
                return FileChannel.open(file.toPath(), FileUtils.modeToOptions(mode), new FileAttribute[0]);
            }
        };
    }

    public static FileSystemManager createRemote(IBinder b) throws RemoteException {
        final IFileSystemService fs = IFileSystemService.Stub.asInterface(b);
        if (fs == null) {
            throw new IllegalArgumentException("The IBinder provided is invalid");
        }
        fs.register(new Binder());
        return new FileSystemManager() { // from class: com.topjohnwu.superuser.internal.NIOFactory.2
            @Override // com.topjohnwu.superuser.nio.FileSystemManager
            public ExtendedFile getFile(String pathname) {
                return new RemoteFile(IFileSystemService.this, pathname);
            }

            @Override // com.topjohnwu.superuser.nio.FileSystemManager
            public ExtendedFile getFile(String parent, String child) {
                return new RemoteFile(IFileSystemService.this, parent, child);
            }

            @Override // com.topjohnwu.superuser.nio.FileSystemManager
            public FileChannel openChannel(File file, int mode) throws IOException {
                return new RemoteFileChannel(IFileSystemService.this, file, mode);
            }
        };
    }

    public static FileSystemService createFsService() {
        return new FileSystemService();
    }
}
