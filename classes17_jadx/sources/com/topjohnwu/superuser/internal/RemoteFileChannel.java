package com.topjohnwu.superuser.internal;

import android.os.RemoteException;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import com.topjohnwu.superuser.nio.FileSystemManager;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.NonReadableChannelException;
import java.nio.channels.NonWritableChannelException;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
class RemoteFileChannel extends FileChannel {
    private static final int PIPE_CAPACITY = 65536;
    private final Object fdLock = new Object();
    private final IFileSystemService fs;
    private final int handle;
    private final int mode;
    private final FileDescriptor read;
    private final FileDescriptor write;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RemoteFileChannel(IFileSystemService fs, File file, int mode) throws IOException {
        this.fs = fs;
        this.mode = mode;
        File fifo = null;
        try {
            try {
                fifo = FileUtils.createTempFIFO();
                int posixMode = FileUtils.modeToPosix(mode);
                this.handle = ((Integer) fs.openChannel(file.getAbsolutePath(), posixMode, fifo.getPath()).tryAndGet()).intValue();
                this.read = Os.open(fifo.getPath(), OsConstants.O_RDONLY | OsConstants.O_NONBLOCK, 0);
                this.write = Os.open(fifo.getPath(), OsConstants.O_WRONLY | OsConstants.O_NONBLOCK, 0);
            } finally {
                if (fifo != null) {
                    fifo.delete();
                }
            }
        } catch (RemoteException | ErrnoException e) {
            throw new IOException(e);
        }
    }

    private void ensureOpen() throws IOException {
        if (!isOpen()) {
            throw new ClosedChannelException();
        }
    }

    private boolean writable() {
        switch (this.mode & FileSystemManager.MODE_READ_WRITE) {
            case FileSystemManager.MODE_WRITE_ONLY /* 536870912 */:
            case FileSystemManager.MODE_READ_WRITE /* 805306368 */:
                return true;
            default:
                return false;
        }
    }

    private boolean readable() {
        switch (this.mode & FileSystemManager.MODE_READ_WRITE) {
            case FileSystemManager.MODE_READ_ONLY /* 268435456 */:
            case FileSystemManager.MODE_READ_WRITE /* 805306368 */:
                return true;
            default:
                return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
    
        if (r10 < 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004e, code lost:
    
        r10 = r10 + r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0074, code lost:
    
        r2 = true;
        r9.limit(r0);
        end(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007d, code lost:
    
        return r3 - r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int read0(java.nio.ByteBuffer r9, long r10) throws java.io.IOException {
        /*
            r8 = this;
            r8.begin()
            int r0 = r9.limit()
            int r1 = r9.position()
            r2 = 0
            r3 = r1
        Ld:
            if (r0 <= r3) goto L74
            java.lang.Object r4 = r8.fdLock     // Catch: java.lang.Throwable -> L62 android.os.RemoteException -> L64 android.system.ErrnoException -> L66
            monitor-enter(r4)     // Catch: java.lang.Throwable -> L62 android.os.RemoteException -> L64 android.system.ErrnoException -> L66
            boolean r5 = r8.isOpen()     // Catch: java.lang.Throwable -> L5f
            if (r5 == 0) goto L56
            boolean r5 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L5f
            if (r5 == 0) goto L1f
            goto L56
        L1f:
            com.topjohnwu.superuser.internal.IFileSystemService r5 = r8.fs     // Catch: java.lang.Throwable -> L5f
            int r6 = r8.handle     // Catch: java.lang.Throwable -> L5f
            int r7 = r0 - r3
            com.topjohnwu.superuser.internal.IOResult r5 = r5.pread(r6, r7, r10)     // Catch: java.lang.Throwable -> L5f
            java.lang.Object r5 = r5.tryAndGet()     // Catch: java.lang.Throwable -> L5f
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.lang.Throwable -> L5f
            int r5 = r5.intValue()     // Catch: java.lang.Throwable -> L5f
            if (r5 != 0) goto L37
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L5f
            goto L74
        L37:
            int r6 = r3 + r5
            r9.limit(r6)     // Catch: java.lang.Throwable -> L5f
            r6 = 0
        L3d:
            if (r6 >= r5) goto L47
            java.io.FileDescriptor r7 = r8.read     // Catch: java.lang.Throwable -> L5f
            int r7 = android.system.Os.read(r7, r9)     // Catch: java.lang.Throwable -> L5f
            int r6 = r6 + r7
            goto L3d
        L47:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L5f
            r6 = 0
            int r4 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r4 < 0) goto L50
            long r6 = (long) r5
            long r10 = r10 + r6
        L50:
            int r4 = r9.position()     // Catch: java.lang.Throwable -> L62 android.os.RemoteException -> L64 android.system.ErrnoException -> L66
            r3 = r4
            goto Ld
        L56:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L5f
            r9.limit(r0)
            r8.end(r2)
            r4 = -1
            return r4
        L5f:
            r5 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L5f
            throw r5     // Catch: java.lang.Throwable -> L62 android.os.RemoteException -> L64 android.system.ErrnoException -> L66
        L62:
            r3 = move-exception
            goto L6d
        L64:
            r3 = move-exception
            goto L67
        L66:
            r3 = move-exception
        L67:
            java.io.IOException r4 = new java.io.IOException     // Catch: java.lang.Throwable -> L62
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L62
            throw r4     // Catch: java.lang.Throwable -> L62
        L6d:
            r9.limit(r0)
            r8.end(r2)
            throw r3
        L74:
            r2 = 1
            int r4 = r3 - r1
            r9.limit(r0)
            r8.end(r2)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.topjohnwu.superuser.internal.RemoteFileChannel.read0(java.nio.ByteBuffer, long):int");
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel, java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer dst) throws IOException {
        ensureOpen();
        if (!readable()) {
            throw new NonReadableChannelException();
        }
        return read0(dst, -1L);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.ScatteringByteChannel
    public long read(ByteBuffer[] dsts, int offset, int length) throws IOException {
        if (offset < 0 || length < 0 || offset > dsts.length - length) {
            throw new IndexOutOfBoundsException();
        }
        ensureOpen();
        if (!readable()) {
            throw new NonReadableChannelException();
        }
        int sz = 0;
        for (int i = offset; i < offset + length; i++) {
            sz += read0(dsts[i], -1L);
        }
        return sz;
    }

    private int write0(ByteBuffer src, long offset) throws IOException {
        int len;
        begin();
        int remaining = src.remaining();
        boolean success = false;
        while (src.hasRemaining()) {
            try {
                try {
                    synchronized (this.fdLock) {
                        if (isOpen() && !Thread.interrupted()) {
                            len = Os.write(this.write, src);
                            this.fs.pwrite(this.handle, len, offset).checkException();
                        }
                        end(success);
                        return -1;
                    }
                    if (offset >= 0) {
                        offset += len;
                    }
                } finally {
                    end(success);
                }
            } catch (RemoteException | ErrnoException e) {
                throw new IOException(e);
            }
        }
        success = true;
        return remaining;
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel, java.nio.channels.WritableByteChannel
    public int write(ByteBuffer src) throws IOException {
        ensureOpen();
        if (!writable()) {
            throw new NonWritableChannelException();
        }
        return write0(src, -1L);
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.GatheringByteChannel
    public long write(ByteBuffer[] srcs, int offset, int length) throws IOException {
        if (offset < 0 || length < 0 || offset > srcs.length - length) {
            throw new IndexOutOfBoundsException();
        }
        ensureOpen();
        if (!writable()) {
            throw new NonWritableChannelException();
        }
        int sz = 0;
        for (int i = offset; i < offset + length; i++) {
            sz += write(srcs[i]);
        }
        return sz;
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel
    public long position() throws IOException {
        ensureOpen();
        try {
            return ((Long) this.fs.lseek(this.handle, 0L, OsConstants.SEEK_CUR).tryAndGet()).longValue();
        } catch (RemoteException e) {
            throw new IOException(e);
        }
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel
    public RemoteFileChannel position(long newPosition) throws IOException {
        ensureOpen();
        if (newPosition < 0) {
            throw new IllegalArgumentException();
        }
        try {
            this.fs.lseek(this.handle, newPosition, OsConstants.SEEK_SET).checkException();
            return this;
        } catch (RemoteException e) {
            throw new IOException(e);
        }
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel
    public long size() throws IOException {
        ensureOpen();
        try {
            return ((Long) this.fs.size(this.handle).tryAndGet()).longValue();
        } catch (RemoteException e) {
            throw new IOException(e);
        }
    }

    @Override // java.nio.channels.FileChannel, java.nio.channels.SeekableByteChannel
    public RemoteFileChannel truncate(long size) throws IOException {
        ensureOpen();
        if (size < 0) {
            throw new IllegalArgumentException("Negative size");
        }
        if (!writable()) {
            throw new NonWritableChannelException();
        }
        try {
            this.fs.ftruncate(this.handle, size).checkException();
            return this;
        } catch (RemoteException e) {
            throw new IOException(e);
        }
    }

    @Override // java.nio.channels.FileChannel
    public void force(boolean metaData) throws IOException {
        ensureOpen();
        try {
            this.fs.sync(this.handle, metaData).checkException();
        } catch (RemoteException e) {
            throw new IOException(e);
        }
    }

    @Override // java.nio.channels.FileChannel
    public long transferTo(long position, long count, WritableByteChannel target) throws IOException {
        ensureOpen();
        if (!target.isOpen()) {
            throw new ClosedChannelException();
        }
        if (!readable()) {
            throw new NonReadableChannelException();
        }
        if (position < 0 || count < 0) {
            throw new IllegalArgumentException();
        }
        ByteBuffer b = ByteBuffer.allocateDirect(65536);
        long bytes = 0;
        while (count > bytes) {
            int limit = (int) Math.min(b.capacity(), count - bytes);
            b.limit(limit);
            if (read0(b, position) <= 0) {
                break;
            }
            b.flip();
            int len = target.write(b);
            position += len;
            bytes += len;
            b.clear();
        }
        return bytes;
    }

    @Override // java.nio.channels.FileChannel
    public long transferFrom(ReadableByteChannel src, long position, long count) throws IOException {
        ensureOpen();
        if (!src.isOpen()) {
            throw new ClosedChannelException();
        }
        if (!writable()) {
            throw new NonWritableChannelException();
        }
        if (position < 0 || count < 0) {
            throw new IllegalArgumentException();
        }
        ByteBuffer b = ByteBuffer.allocateDirect(65536);
        long bytes = 0;
        while (count > bytes) {
            int limit = (int) Math.min(b.capacity(), count - bytes);
            b.limit(limit);
            if (src.read(b) <= 0) {
                break;
            }
            b.flip();
            int len = write0(b, position);
            position += len;
            bytes += len;
            b.clear();
        }
        return bytes;
    }

    @Override // java.nio.channels.FileChannel
    public int read(ByteBuffer dst, long position) throws IOException {
        if (position < 0) {
            throw new IllegalArgumentException("Negative position");
        }
        ensureOpen();
        return read0(dst, position);
    }

    @Override // java.nio.channels.FileChannel
    public int write(ByteBuffer src, long position) throws IOException {
        if (position < 0) {
            throw new IllegalArgumentException("Negative position");
        }
        ensureOpen();
        return write0(src, position);
    }

    @Override // java.nio.channels.spi.AbstractInterruptibleChannel
    protected void implCloseChannel() {
        try {
            this.fs.close(this.handle);
        } catch (RemoteException e) {
        }
        synchronized (this.fdLock) {
            try {
                Os.close(this.read);
            } catch (ErrnoException e2) {
            }
            try {
                Os.close(this.write);
            } catch (ErrnoException e3) {
            }
        }
    }

    @Override // java.nio.channels.FileChannel
    public MappedByteBuffer map(FileChannel.MapMode mode, long position, long size) {
        throw new UnsupportedOperationException("Memory mapping a remote file is not supported!");
    }

    @Override // java.nio.channels.FileChannel
    public FileLock lock(long position, long size, boolean shared) {
        throw new UnsupportedOperationException("Locking a remote file is not supported!");
    }

    @Override // java.nio.channels.FileChannel
    public FileLock tryLock(long position, long size, boolean shared) {
        throw new UnsupportedOperationException("Locking a remote file is not supported!");
    }
}
