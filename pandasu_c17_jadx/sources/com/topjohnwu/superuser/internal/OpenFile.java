package com.topjohnwu.superuser.internal;

import android.os.Build;
import android.system.ErrnoException;
import android.system.Int64Ref;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import android.util.MutableLong;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class OpenFile implements Closeable {
    private static final boolean FORCE_NO_SPLICE = false;
    private ByteBuffer buf;
    FileDescriptor fd;
    FileDescriptor read;
    private StructStat st;
    FileDescriptor write;

    private ByteBuffer getBuf() {
        if (this.buf == null) {
            this.buf = ByteBuffer.allocateDirect(65536);
        }
        this.buf.clear();
        return this.buf;
    }

    private StructStat getStat() throws ErrnoException {
        if (this.st == null) {
            this.st = Os.fstat(this.fd);
        }
        return this.st;
    }

    private void ensureOpen() throws ClosedChannelException {
        if (this.fd == null) {
            throw new ClosedChannelException();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        FileDescriptor fileDescriptor = this.fd;
        if (fileDescriptor != null) {
            try {
                Os.close(fileDescriptor);
            } catch (ErrnoException e) {
            }
            this.fd = null;
        }
        FileDescriptor fileDescriptor2 = this.read;
        if (fileDescriptor2 != null) {
            try {
                Os.close(fileDescriptor2);
            } catch (ErrnoException e2) {
            }
            this.read = null;
        }
        FileDescriptor fileDescriptor3 = this.write;
        if (fileDescriptor3 != null) {
            try {
                Os.close(fileDescriptor3);
            } catch (ErrnoException e3) {
            }
            this.write = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long lseek(long offset, int whence) throws ErrnoException, IOException {
        ensureOpen();
        return Os.lseek(this.fd, offset, whence);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long size() throws ErrnoException, IOException {
        long sz;
        ensureOpen();
        long cur = Os.lseek(this.fd, 0L, OsConstants.SEEK_CUR);
        Os.lseek(this.fd, 0L, OsConstants.SEEK_END);
        sz = Os.lseek(this.fd, 0L, OsConstants.SEEK_CUR);
        Os.lseek(this.fd, cur, OsConstants.SEEK_SET);
        return sz;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void ftruncate(long length) throws ErrnoException, IOException {
        ensureOpen();
        Os.ftruncate(this.fd, length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void sync(boolean metadata) throws ErrnoException, IOException {
        ensureOpen();
        if (metadata) {
            Os.fsync(this.fd);
        } else {
            Os.fdatasync(this.fd);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int pread(int i, long j) throws ErrnoException, IOException {
        long sendfile;
        if (this.fd == null || this.write == null) {
            throw new ClosedChannelException();
        }
        if (Build.VERSION.SDK_INT >= 28) {
            sendfile = FileUtils.splice(this.fd, j >= 0 ? new Int64Ref(j) : null, this.write, null, i, 0);
        } else {
            StructStat stat = getStat();
            if (!OsConstants.S_ISREG(stat.st_mode) && !OsConstants.S_ISBLK(stat.st_mode)) {
                ByteBuffer buf = getBuf();
                buf.limit(Math.min(i, buf.capacity()));
                if (j < 0) {
                    Os.read(this.fd, buf);
                } else {
                    Os.pread(this.fd, buf, j);
                }
                buf.flip();
                long remaining = buf.remaining();
                int i2 = (int) remaining;
                while (i2 > 0) {
                    i2 -= Os.write(this.write, buf);
                }
                sendfile = remaining;
            }
            sendfile = FileUtils.sendfile(this.write, this.fd, j >= 0 ? new MutableLong(j) : null, i);
        }
        return (int) sendfile;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int pwrite(int len, long offset, boolean exact) throws ErrnoException, IOException {
        long offset2 = offset;
        synchronized (this) {
            if (this.fd == null || this.read == null) {
                throw new ClosedChannelException();
            }
            if (Build.VERSION.SDK_INT >= 28) {
                Int64Ref outOff = offset2 < 0 ? null : new Int64Ref(offset2);
                if (exact) {
                    int sz = len;
                    while (sz > 0) {
                        sz = (int) (sz - FileUtils.splice(this.read, null, this.fd, outOff, sz, 0));
                    }
                    return len;
                }
                return (int) FileUtils.splice(this.read, null, this.fd, outOff, len, 0);
            }
            ByteBuffer buf = getBuf();
            int sz2 = 0;
            buf.limit(len);
            if (exact) {
                while (len > sz2) {
                    sz2 += Os.read(this.read, buf);
                }
            } else {
                sz2 = Os.read(this.read, buf);
            }
            int len2 = sz2;
            buf.flip();
            while (sz2 > 0) {
                if (offset2 < 0) {
                    sz2 -= Os.write(this.fd, buf);
                } else {
                    int w = Os.pwrite(this.fd, buf, offset2);
                    sz2 -= w;
                    offset2 += w;
                }
            }
            return len2;
        }
    }
}
