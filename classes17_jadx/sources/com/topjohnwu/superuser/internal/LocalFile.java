package com.topjohnwu.superuser.internal;

import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
class LocalFile extends FileImpl<LocalFile> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public LocalFile(String pathname) {
        super(pathname);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocalFile(String parent, String child) {
        super(parent, child);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.topjohnwu.superuser.internal.FileImpl
    public LocalFile create(String path) {
        return new LocalFile(path);
    }

    @Override // com.topjohnwu.superuser.internal.FileImpl, com.topjohnwu.superuser.nio.ExtendedFile
    public LocalFile getChildFile(String name) {
        return new LocalFile(getPath(), name);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.topjohnwu.superuser.internal.FileImpl
    public LocalFile[] createArray(int n) {
        return new LocalFile[n];
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean isBlock() {
        try {
            StructStat st = Os.lstat(getPath());
            return OsConstants.S_ISBLK(st.st_mode);
        } catch (ErrnoException e) {
            return false;
        }
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean isCharacter() {
        try {
            StructStat st = Os.lstat(getPath());
            return OsConstants.S_ISCHR(st.st_mode);
        } catch (ErrnoException e) {
            return false;
        }
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean isSymlink() {
        try {
            StructStat st = Os.lstat(getPath());
            return OsConstants.S_ISLNK(st.st_mode);
        } catch (ErrnoException e) {
            return false;
        }
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean isNamedPipe() {
        try {
            StructStat st = Os.lstat(getPath());
            return OsConstants.S_ISFIFO(st.st_mode);
        } catch (ErrnoException e) {
            return false;
        }
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean isSocket() {
        try {
            StructStat st = Os.lstat(getPath());
            return OsConstants.S_ISSOCK(st.st_mode);
        } catch (ErrnoException e) {
            return false;
        }
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public InputStream newInputStream() throws IOException {
        return new FileInputStream(this);
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public OutputStream newOutputStream(boolean append) throws IOException {
        return new FileOutputStream(this, append);
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean createNewLink(String existing) throws IOException {
        return createLink(existing, false);
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean createNewSymlink(String target) throws IOException {
        return createLink(target, true);
    }

    private boolean createLink(String target, boolean soft) throws IOException {
        try {
            if (soft) {
                Os.symlink(target, getPath());
                return true;
            }
            Os.link(target, getPath());
            return true;
        } catch (ErrnoException e) {
            if (e.errno != OsConstants.EEXIST) {
                throw new IOException(e);
            }
            return false;
        }
    }
}
