package com.topjohnwu.superuser.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.LruCache;
import com.topjohnwu.superuser.internal.IFileSystemService;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class FileSystemService extends IFileSystemService.Stub {
    static final int PIPE_CAPACITY = 65536;
    private final LruCache<String, File> mCache = new LruCache<String, File>(100) { // from class: com.topjohnwu.superuser.internal.FileSystemService.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        public File create(String key) {
            return new File(key);
        }
    };
    private final FileContainer openFiles = new FileContainer();
    private final ExecutorService streamPool = Executors.newCachedThreadPool();

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public IOResult getCanonicalPath(String path) {
        try {
            return new IOResult(this.mCache.get(path).getCanonicalPath());
        } catch (IOException e) {
            return new IOResult(e);
        }
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public boolean isDirectory(String path) {
        return this.mCache.get(path).isDirectory();
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public boolean isFile(String path) {
        return this.mCache.get(path).isFile();
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public boolean isHidden(String path) {
        return this.mCache.get(path).isHidden();
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public long lastModified(String path) {
        return this.mCache.get(path).lastModified();
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public long length(String path) {
        return this.mCache.get(path).length();
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public IOResult createNewFile(String path) {
        try {
            return new IOResult(Boolean.valueOf(this.mCache.get(path).createNewFile()));
        } catch (IOException e) {
            return new IOResult(e);
        }
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public boolean delete(String path) {
        return this.mCache.get(path).delete();
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public String[] list(String path) {
        return this.mCache.get(path).list();
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public boolean mkdir(String path) {
        return this.mCache.get(path).mkdir();
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public boolean mkdirs(String path) {
        return this.mCache.get(path).mkdirs();
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public boolean renameTo(String path, String dest) {
        return this.mCache.get(path).renameTo(this.mCache.get(dest));
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public boolean setLastModified(String path, long time) {
        return this.mCache.get(path).setLastModified(time);
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public boolean setReadOnly(String path) {
        return this.mCache.get(path).setReadOnly();
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public boolean setWritable(String path, boolean writable, boolean ownerOnly) {
        return this.mCache.get(path).setWritable(writable, ownerOnly);
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public boolean setReadable(String path, boolean readable, boolean ownerOnly) {
        return this.mCache.get(path).setReadable(readable, ownerOnly);
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public boolean setExecutable(String path, boolean executable, boolean ownerOnly) {
        return this.mCache.get(path).setExecutable(executable, ownerOnly);
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public boolean checkAccess(String path, int access) {
        try {
            return Os.access(path, access);
        } catch (ErrnoException e) {
            return false;
        }
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public long getTotalSpace(String path) {
        return this.mCache.get(path).getTotalSpace();
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public long getFreeSpace(String path) {
        return this.mCache.get(path).getFreeSpace();
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public long getUsableSpace(String path) {
        return this.mCache.get(path).getUsableSpace();
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public int getMode(String path) {
        try {
            return Os.lstat(path).st_mode;
        } catch (ErrnoException e) {
            return 0;
        }
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public IOResult createLink(String link, String target, boolean soft) {
        try {
            if (soft) {
                Os.symlink(target, link);
            } else {
                Os.link(target, link);
            }
            return new IOResult((Object) true);
        } catch (ErrnoException e) {
            if (e.errno == OsConstants.EEXIST) {
                return new IOResult((Object) false);
            }
            return new IOResult(e);
        }
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public void register(IBinder client) {
        final int pid = Binder.getCallingPid();
        try {
            client.linkToDeath(new IBinder.DeathRecipient() { // from class: com.topjohnwu.superuser.internal.FileSystemService$$ExternalSyntheticLambda2
                @Override // android.os.IBinder.DeathRecipient
                public final void binderDied() {
                    FileSystemService.this.m994xcbca6e54(pid);
                }
            }, 0);
        } catch (RemoteException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$register$0$com-topjohnwu-superuser-internal-FileSystemService, reason: not valid java name */
    public /* synthetic */ void m994xcbca6e54(int pid) {
        this.openFiles.pidDied(pid);
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public IOResult openChannel(String path, int mode, String fifo) {
        OpenFile f = new OpenFile();
        try {
            f.fd = Os.open(path, OsConstants.O_NONBLOCK | mode, 438);
            f.read = Os.open(fifo, OsConstants.O_RDONLY | OsConstants.O_NONBLOCK, 0);
            f.write = Os.open(fifo, OsConstants.O_WRONLY | OsConstants.O_NONBLOCK, 0);
            return new IOResult(Integer.valueOf(this.openFiles.put(f)));
        } catch (ErrnoException e) {
            f.close();
            return new IOResult(e);
        }
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public IOResult openReadStream(String path, final ParcelFileDescriptor fd) {
        final OpenFile f = new OpenFile();
        try {
            f.fd = Os.open(path, OsConstants.O_RDONLY, 0);
            this.streamPool.execute(new Runnable() { // from class: com.topjohnwu.superuser.internal.FileSystemService$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    FileSystemService.lambda$openReadStream$1(OpenFile.this, fd);
                }
            });
            return new IOResult();
        } catch (ErrnoException e) {
            f.close();
            return new IOResult(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$openReadStream$1(OpenFile f, ParcelFileDescriptor fd) {
        try {
            try {
                f.write = FileUtils.createFileDescriptor(fd.detachFd());
                do {
                } while (f.pread(65536, -1L) > 0);
                if (f != null) {
                    f.close();
                }
            } finally {
            }
        } catch (ErrnoException e) {
        } catch (IOException e2) {
        }
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public IOResult openWriteStream(String path, final ParcelFileDescriptor fd, boolean append) {
        final OpenFile f = new OpenFile();
        try {
            int mode = OsConstants.O_CREAT | OsConstants.O_WRONLY | (append ? OsConstants.O_APPEND : OsConstants.O_TRUNC);
            f.fd = Os.open(path, mode, 438);
            this.streamPool.execute(new Runnable() { // from class: com.topjohnwu.superuser.internal.FileSystemService$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FileSystemService.lambda$openWriteStream$2(OpenFile.this, fd);
                }
            });
            return new IOResult();
        } catch (ErrnoException e) {
            f.close();
            return new IOResult(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$openWriteStream$2(OpenFile f, ParcelFileDescriptor fd) {
        try {
            try {
                f.read = FileUtils.createFileDescriptor(fd.detachFd());
                do {
                } while (f.pwrite(65536, -1L, false) > 0);
                if (f != null) {
                    f.close();
                }
            } finally {
            }
        } catch (ErrnoException e) {
        } catch (IOException e2) {
        }
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public void close(int handle) {
        this.openFiles.remove(handle);
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public IOResult pread(int handle, int len, long offset) {
        try {
            return new IOResult(Integer.valueOf(this.openFiles.get(handle).pread(len, offset)));
        } catch (ErrnoException | IOException e) {
            return new IOResult(e);
        }
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public IOResult pwrite(int handle, int len, long offset) {
        try {
            this.openFiles.get(handle).pwrite(len, offset, true);
            return new IOResult();
        } catch (ErrnoException | IOException e) {
            return new IOResult(e);
        }
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public IOResult lseek(int handle, long offset, int whence) {
        try {
            return new IOResult(Long.valueOf(this.openFiles.get(handle).lseek(offset, whence)));
        } catch (ErrnoException | IOException e) {
            return new IOResult(e);
        }
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public IOResult size(int handle) {
        try {
            return new IOResult(Long.valueOf(this.openFiles.get(handle).size()));
        } catch (ErrnoException | IOException e) {
            return new IOResult(e);
        }
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public IOResult ftruncate(int handle, long length) {
        try {
            this.openFiles.get(handle).ftruncate(length);
            return new IOResult();
        } catch (ErrnoException | IOException e) {
            return new IOResult(e);
        }
    }

    @Override // com.topjohnwu.superuser.internal.IFileSystemService
    public IOResult sync(int handle, boolean metadata) {
        try {
            this.openFiles.get(handle).sync(metadata);
            return new IOResult();
        } catch (ErrnoException | IOException e) {
            return new IOResult(e);
        }
    }
}
