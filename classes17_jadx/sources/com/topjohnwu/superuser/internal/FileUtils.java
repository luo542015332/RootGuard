package com.topjohnwu.superuser.internal;

import android.os.Build;
import android.system.ErrnoException;
import android.system.Int64Ref;
import android.system.Os;
import android.system.OsConstants;
import android.util.ArraySet;
import android.util.MutableLong;
import com.topjohnwu.superuser.nio.FileSystemManager;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.file.OpenOption;
import java.nio.file.StandardOpenOption;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class FileUtils {
    private static Object os;
    private static Method sendfile;
    private static AccessibleObject setFd;
    private static Method splice;

    FileUtils() {
    }

    /* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
    static class Flag {
        boolean append;
        boolean create;
        boolean read;
        boolean truncate;
        boolean write;

        Flag() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int modeToPosix(int mode) {
        int res;
        if ((mode & FileSystemManager.MODE_READ_WRITE) == 805306368) {
            res = OsConstants.O_RDWR;
        } else if ((mode & FileSystemManager.MODE_WRITE_ONLY) == 536870912) {
            res = OsConstants.O_WRONLY;
        } else if ((mode & FileSystemManager.MODE_READ_ONLY) == 268435456) {
            res = OsConstants.O_RDONLY;
        } else {
            throw new IllegalArgumentException("Bad mode: " + mode);
        }
        if ((mode & FileSystemManager.MODE_CREATE) == 134217728) {
            res |= OsConstants.O_CREAT;
        }
        if ((mode & 67108864) == 67108864) {
            res |= OsConstants.O_TRUNC;
        }
        if ((mode & FileSystemManager.MODE_APPEND) == 33554432) {
            return res | OsConstants.O_APPEND;
        }
        return res;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Set<OpenOption> modeToOptions(int mode) {
        Set<OpenOption> set = new ArraySet<>();
        if ((mode & FileSystemManager.MODE_READ_WRITE) == 805306368) {
            set.add(StandardOpenOption.READ);
            set.add(StandardOpenOption.WRITE);
        } else if ((mode & FileSystemManager.MODE_WRITE_ONLY) == 536870912) {
            set.add(StandardOpenOption.WRITE);
        } else if ((mode & FileSystemManager.MODE_READ_ONLY) == 268435456) {
            set.add(StandardOpenOption.READ);
        } else {
            throw new IllegalArgumentException("Bad mode: " + mode);
        }
        if ((mode & FileSystemManager.MODE_CREATE) == 134217728) {
            set.add(StandardOpenOption.CREATE);
        }
        if ((mode & 67108864) == 67108864) {
            set.add(StandardOpenOption.TRUNCATE_EXISTING);
        }
        if ((mode & FileSystemManager.MODE_APPEND) == 33554432) {
            set.add(StandardOpenOption.APPEND);
        }
        return set;
    }

    static Flag modeToFlag(int mode) {
        Flag f = new Flag();
        if ((mode & FileSystemManager.MODE_READ_WRITE) == 805306368) {
            f.read = true;
            f.write = true;
        } else if ((mode & FileSystemManager.MODE_WRITE_ONLY) == 536870912) {
            f.write = true;
        } else if ((mode & FileSystemManager.MODE_READ_ONLY) == 268435456) {
            f.read = true;
        } else {
            throw new IllegalArgumentException("Bad mode: " + mode);
        }
        if ((mode & FileSystemManager.MODE_CREATE) == 134217728) {
            f.create = true;
        }
        if ((mode & 67108864) == 67108864) {
            f.truncate = true;
        }
        if ((mode & FileSystemManager.MODE_APPEND) == 33554432) {
            f.append = true;
        }
        if (f.append && f.read) {
            throw new IllegalArgumentException("READ + APPEND not allowed");
        }
        if (f.append && f.truncate) {
            throw new IllegalArgumentException("APPEND + TRUNCATE not allowed");
        }
        return f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long splice(FileDescriptor fdIn, Int64Ref offIn, FileDescriptor fdOut, Int64Ref offOut, long len, int flags) throws ErrnoException {
        try {
            if (splice == null) {
                splice = Os.class.getMethod("splice", FileDescriptor.class, Int64Ref.class, FileDescriptor.class, Int64Ref.class, Long.TYPE, Integer.TYPE);
            }
            return ((Long) splice.invoke(null, fdIn, offIn, fdOut, offOut, Long.valueOf(len), Integer.valueOf(flags))).longValue();
        } catch (InvocationTargetException e) {
            throw ((ErrnoException) e.getTargetException());
        } catch (ReflectiveOperationException e2) {
            throw new ErrnoException("splice", OsConstants.ENOSYS);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long sendfile(FileDescriptor outFd, FileDescriptor inFd, MutableLong inOffset, long byteCount) throws ErrnoException {
        if (Build.VERSION.SDK_INT >= 28) {
            Int64Ref off = inOffset != null ? new Int64Ref(inOffset.value) : null;
            long result = Os.sendfile(outFd, inFd, off, byteCount);
            if (off != null) {
                inOffset.value = off.value;
            }
            return result;
        }
        try {
            if (os == null) {
                os = Class.forName("libcore.io.Libcore").getField("os").get(null);
            }
            if (sendfile == null) {
                sendfile = os.getClass().getMethod("sendfile", FileDescriptor.class, FileDescriptor.class, MutableLong.class, Long.TYPE);
            }
            return ((Long) sendfile.invoke(os, outFd, inFd, inOffset, Long.valueOf(byteCount))).longValue();
        } catch (InvocationTargetException e) {
            throw ((ErrnoException) e.getTargetException());
        } catch (ReflectiveOperationException e2) {
            throw new ErrnoException("sendfile", OsConstants.ENOSYS);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File createTempFIFO() throws ErrnoException, IOException {
        File fifo = File.createTempFile("libsu-fifo-", null);
        fifo.delete();
        Os.mkfifo(fifo.getPath(), 420);
        return fifo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FileDescriptor createFileDescriptor(int fd) {
        if (setFd == null) {
            try {
                setFd = FileDescriptor.class.getDeclaredConstructor(Integer.TYPE);
            } catch (NoSuchMethodException e) {
                try {
                    setFd = FileDescriptor.class.getDeclaredMethod("setInt$", Integer.TYPE);
                } catch (NoSuchMethodException e2) {
                }
            }
            setFd.setAccessible(true);
        }
        try {
            AccessibleObject accessibleObject = setFd;
            if (accessibleObject instanceof Constructor) {
                return (FileDescriptor) ((Constructor) accessibleObject).newInstance(Integer.valueOf(fd));
            }
            FileDescriptor f = new FileDescriptor();
            ((Method) setFd).invoke(f, Integer.valueOf(fd));
            return f;
        } catch (ReflectiveOperationException e3) {
            return null;
        }
    }
}
