package com.topjohnwu.superuser.internal;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.system.OsConstants;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
class RemoteFile extends FileImpl<RemoteFile> {
    private final IFileSystemService fs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RemoteFile(IFileSystemService f, String path) {
        super(path);
        this.fs = f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RemoteFile(IFileSystemService f, String parent, String child) {
        super(parent, child);
        this.fs = f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.topjohnwu.superuser.internal.FileImpl
    public RemoteFile create(String path) {
        return new RemoteFile(this.fs, path);
    }

    @Override // com.topjohnwu.superuser.internal.FileImpl, com.topjohnwu.superuser.nio.ExtendedFile
    public RemoteFile getChildFile(String name) {
        return new RemoteFile(this.fs, getPath(), name);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.topjohnwu.superuser.internal.FileImpl
    public RemoteFile[] createArray(int n) {
        return new RemoteFile[n];
    }

    @Override // java.io.File
    public String getCanonicalPath() throws IOException {
        try {
            return (String) this.fs.getCanonicalPath(getPath()).tryAndGet();
        } catch (RemoteException e) {
            throw new IOException(e);
        }
    }

    private boolean checkAccess(int access) {
        try {
            return this.fs.checkAccess(getPath(), access);
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // java.io.File
    public boolean canRead() {
        return checkAccess(OsConstants.R_OK);
    }

    @Override // java.io.File
    public boolean canWrite() {
        return checkAccess(OsConstants.W_OK);
    }

    @Override // java.io.File
    public boolean canExecute() {
        return checkAccess(OsConstants.X_OK);
    }

    @Override // java.io.File
    public boolean exists() {
        return checkAccess(OsConstants.F_OK);
    }

    @Override // java.io.File
    public boolean isDirectory() {
        try {
            return this.fs.isDirectory(getPath());
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // java.io.File
    public boolean isFile() {
        try {
            return this.fs.isFile(getPath());
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean isBlock() {
        try {
            return OsConstants.S_ISBLK(this.fs.getMode(getPath()));
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean isCharacter() {
        try {
            return OsConstants.S_ISCHR(this.fs.getMode(getPath()));
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean isSymlink() {
        try {
            return OsConstants.S_ISLNK(this.fs.getMode(getPath()));
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean isNamedPipe() {
        try {
            return OsConstants.S_ISFIFO(this.fs.getMode(getPath()));
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean isSocket() {
        try {
            return OsConstants.S_ISSOCK(this.fs.getMode(getPath()));
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // java.io.File
    public boolean isHidden() {
        try {
            return this.fs.isHidden(getPath());
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // java.io.File
    public long lastModified() {
        try {
            return this.fs.lastModified(getPath());
        } catch (RemoteException e) {
            return Long.MIN_VALUE;
        }
    }

    @Override // java.io.File
    public long length() {
        try {
            return this.fs.length(getPath());
        } catch (RemoteException e) {
            return 0L;
        }
    }

    @Override // java.io.File
    public boolean createNewFile() throws IOException {
        try {
            return ((Boolean) this.fs.createNewFile(getPath()).tryAndGet()).booleanValue();
        } catch (RemoteException e) {
            throw new IOException(e);
        }
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean createNewLink(String existing) throws IOException {
        try {
            return ((Boolean) this.fs.createLink(getPath(), existing, false).tryAndGet()).booleanValue();
        } catch (RemoteException e) {
            throw new IOException(e);
        }
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean createNewSymlink(String target) throws IOException {
        try {
            return ((Boolean) this.fs.createLink(getPath(), target, true).tryAndGet()).booleanValue();
        } catch (RemoteException e) {
            throw new IOException(e);
        }
    }

    @Override // java.io.File
    public boolean delete() {
        try {
            return this.fs.delete(getPath());
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // java.io.File
    public void deleteOnExit() {
        throw new UnsupportedOperationException("deleteOnExit() is not supported in RemoteFile");
    }

    @Override // java.io.File
    public String[] list() {
        try {
            return this.fs.list(getPath());
        } catch (RemoteException e) {
            return null;
        }
    }

    @Override // java.io.File
    public boolean mkdir() {
        try {
            return this.fs.mkdir(getPath());
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // java.io.File
    public boolean mkdirs() {
        try {
            return this.fs.mkdirs(getPath());
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // java.io.File
    public boolean renameTo(File dest) {
        try {
            return this.fs.renameTo(getPath(), dest.getAbsolutePath());
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // java.io.File
    public boolean setLastModified(long time) {
        try {
            return this.fs.setLastModified(getPath(), time);
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // java.io.File
    public boolean setReadOnly() {
        try {
            return this.fs.setReadOnly(getPath());
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // java.io.File
    public boolean setWritable(boolean writable, boolean ownerOnly) {
        try {
            return this.fs.setWritable(getPath(), writable, ownerOnly);
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // java.io.File
    public boolean setReadable(boolean readable, boolean ownerOnly) {
        try {
            return this.fs.setReadable(getPath(), readable, ownerOnly);
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // java.io.File
    public boolean setExecutable(boolean executable, boolean ownerOnly) {
        try {
            return this.fs.setExecutable(getPath(), executable, ownerOnly);
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // java.io.File
    public long getTotalSpace() {
        try {
            return this.fs.getTotalSpace(getPath());
        } catch (RemoteException e) {
            return 0L;
        }
    }

    @Override // java.io.File
    public long getFreeSpace() {
        try {
            return this.fs.getFreeSpace(getPath());
        } catch (RemoteException e) {
            return 0L;
        }
    }

    @Override // java.io.File
    public long getUsableSpace() {
        try {
            return this.fs.getUsableSpace(getPath());
        } catch (RemoteException e) {
            return 0L;
        }
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public InputStream newInputStream() throws IOException {
        ParcelFileDescriptor[] pipe = ParcelFileDescriptor.createPipe();
        try {
            try {
                this.fs.openReadStream(getPath(), pipe[1]).checkException();
                pipe[1].close();
                return new ParcelFileDescriptor.AutoCloseInputStream(pipe[0]);
            } catch (RemoteException e) {
                pipe[0].close();
                throw new IOException(e);
            }
        } catch (Throwable th) {
            pipe[1].close();
            throw th;
        }
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public OutputStream newOutputStream(boolean append) throws IOException {
        ParcelFileDescriptor[] pipe = ParcelFileDescriptor.createPipe();
        try {
            try {
                this.fs.openWriteStream(getPath(), pipe[0], append).checkException();
                pipe[0].close();
                return new ParcelFileDescriptor.AutoCloseOutputStream(pipe[1]);
            } catch (RemoteException e) {
                pipe[1].close();
                throw new IOException(e);
            }
        } catch (Throwable th) {
            pipe[0].close();
            throw th;
        }
    }
}
