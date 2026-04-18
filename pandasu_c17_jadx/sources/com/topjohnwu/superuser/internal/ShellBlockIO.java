package com.topjohnwu.superuser.internal;

import com.topjohnwu.superuser.ShellUtils;
import com.topjohnwu.superuser.io.SuFile;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class ShellBlockIO extends ShellIO {
    private final long blockSize;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShellBlockIO(SuFile file, String mode) throws FileNotFoundException {
        super(file, mode);
        long bs;
        try {
            bs = Long.parseLong(ShellUtils.fastCmd("blockdev --getsize64 " + file.getEscapedPath()));
        } catch (NumberFormatException e) {
            bs = Long.MAX_VALUE;
        }
        this.blockSize = bs;
    }

    @Override // com.topjohnwu.superuser.internal.ShellIO
    protected String getConv() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.topjohnwu.superuser.internal.ShellIO
    public int alignedRead(byte[] b, int _off, int count, int skip, int bs) throws IOException {
        if (skip * bs >= this.blockSize) {
            this.eof = true;
            return -1;
        }
        return super.alignedRead(b, _off, count, skip, bs);
    }

    @Override // com.topjohnwu.superuser.internal.ShellIO, java.io.DataOutput
    public void write(byte[] b, int off, int len) throws IOException {
        if (this.fileOff + len > this.blockSize) {
            throw new IOException("Cannot write pass block size");
        }
        super.write(b, off, len);
    }

    @Override // com.topjohnwu.superuser.internal.ShellIO, com.topjohnwu.superuser.io.SuRandomAccessFile
    public long length() {
        return this.blockSize;
    }

    @Override // com.topjohnwu.superuser.internal.ShellIO, com.topjohnwu.superuser.io.SuRandomAccessFile
    public void setLength(long newLength) {
        throw new UnsupportedOperationException("Block devices have fixed sizes");
    }

    @Override // com.topjohnwu.superuser.internal.ShellIO, com.topjohnwu.superuser.io.SuRandomAccessFile
    public void seek(long pos) throws IOException {
        if (pos > this.blockSize) {
            throw new IOException("Cannot seek pass block size");
        }
        this.fileOff = pos;
    }
}
