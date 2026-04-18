package com.topjohnwu.superuser.io;

import com.topjohnwu.superuser.internal.IOFactory;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public abstract class SuRandomAccessFile implements DataInput, DataOutput, Closeable {
    public abstract long getFilePointer() throws IOException;

    public abstract long length() throws IOException;

    public abstract int read() throws IOException;

    public abstract int read(byte[] bArr) throws IOException;

    public abstract int read(byte[] bArr, int i, int i2) throws IOException;

    public abstract void seek(long j) throws IOException;

    public abstract void setLength(long j) throws IOException;

    public static SuRandomAccessFile open(File file, String mode) throws FileNotFoundException {
        if (file instanceof SuFile) {
            return IOFactory.shellIO((SuFile) file, mode);
        }
        try {
            return IOFactory.raf(file, mode);
        } catch (FileNotFoundException e) {
            return IOFactory.shellIO(new SuFile(file), mode);
        }
    }

    public static SuRandomAccessFile open(String path, String mode) throws FileNotFoundException {
        return open(new File(path), mode);
    }
}
