package com.topjohnwu.superuser.internal;

import com.topjohnwu.superuser.io.SuRandomAccessFile;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class RAFWrapper extends SuRandomAccessFile {
    private final RandomAccessFile raf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RAFWrapper(File file, String mode) throws FileNotFoundException {
        this.raf = new RandomAccessFile(file, mode);
    }

    @Override // com.topjohnwu.superuser.io.SuRandomAccessFile
    public int read() throws IOException {
        return this.raf.read();
    }

    @Override // com.topjohnwu.superuser.io.SuRandomAccessFile
    public int read(byte[] b, int off, int len) throws IOException {
        return this.raf.read(b, off, len);
    }

    @Override // com.topjohnwu.superuser.io.SuRandomAccessFile
    public int read(byte[] b) throws IOException {
        return this.raf.read(b);
    }

    @Override // java.io.DataInput
    public int skipBytes(int n) throws IOException {
        return this.raf.skipBytes(n);
    }

    @Override // java.io.DataOutput
    public void write(int b) throws IOException {
        this.raf.write(b);
    }

    @Override // java.io.DataOutput
    public void write(byte[] b) throws IOException {
        this.raf.write(b);
    }

    @Override // java.io.DataOutput
    public void write(byte[] b, int off, int len) throws IOException {
        this.raf.write(b, off, len);
    }

    @Override // com.topjohnwu.superuser.io.SuRandomAccessFile
    public void seek(long pos) throws IOException {
        this.raf.seek(pos);
    }

    @Override // com.topjohnwu.superuser.io.SuRandomAccessFile
    public void setLength(long newLength) throws IOException {
        this.raf.setLength(newLength);
    }

    @Override // com.topjohnwu.superuser.io.SuRandomAccessFile
    public long length() throws IOException {
        return this.raf.length();
    }

    @Override // com.topjohnwu.superuser.io.SuRandomAccessFile
    public long getFilePointer() throws IOException {
        return this.raf.getFilePointer();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.raf.close();
    }

    @Override // java.io.DataOutput
    public void writeBoolean(boolean v) throws IOException {
        this.raf.writeBoolean(v);
    }

    @Override // java.io.DataOutput
    public void writeByte(int v) throws IOException {
        this.raf.writeByte(v);
    }

    @Override // java.io.DataOutput
    public void writeShort(int v) throws IOException {
        this.raf.writeShort(v);
    }

    @Override // java.io.DataOutput
    public void writeChar(int v) throws IOException {
        this.raf.writeChar(v);
    }

    @Override // java.io.DataOutput
    public void writeInt(int v) throws IOException {
        this.raf.writeInt(v);
    }

    @Override // java.io.DataOutput
    public void writeLong(long v) throws IOException {
        this.raf.writeLong(v);
    }

    @Override // java.io.DataOutput
    public void writeFloat(float v) throws IOException {
        this.raf.writeFloat(v);
    }

    @Override // java.io.DataOutput
    public void writeDouble(double v) throws IOException {
        this.raf.writeDouble(v);
    }

    @Override // java.io.DataOutput
    public void writeBytes(String s) throws IOException {
        this.raf.writeBytes(s);
    }

    @Override // java.io.DataOutput
    public void writeChars(String s) throws IOException {
        this.raf.writeChars(s);
    }

    @Override // java.io.DataOutput
    public void writeUTF(String s) throws IOException {
        this.raf.writeUTF(s);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] b) throws IOException {
        this.raf.readFully(b);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] b, int off, int len) throws IOException {
        this.raf.readFully(b, off, len);
    }

    @Override // java.io.DataInput
    public boolean readBoolean() throws IOException {
        return this.raf.readBoolean();
    }

    @Override // java.io.DataInput
    public byte readByte() throws IOException {
        return this.raf.readByte();
    }

    @Override // java.io.DataInput
    public int readUnsignedByte() throws IOException {
        return this.raf.readUnsignedByte();
    }

    @Override // java.io.DataInput
    public short readShort() throws IOException {
        return this.raf.readShort();
    }

    @Override // java.io.DataInput
    public int readUnsignedShort() throws IOException {
        return this.raf.readUnsignedShort();
    }

    @Override // java.io.DataInput
    public char readChar() throws IOException {
        return this.raf.readChar();
    }

    @Override // java.io.DataInput
    public int readInt() throws IOException {
        return this.raf.readInt();
    }

    @Override // java.io.DataInput
    public long readLong() throws IOException {
        return this.raf.readLong();
    }

    @Override // java.io.DataInput
    public float readFloat() throws IOException {
        return this.raf.readFloat();
    }

    @Override // java.io.DataInput
    public double readDouble() throws IOException {
        return this.raf.readDouble();
    }

    @Override // java.io.DataInput
    public String readLine() throws IOException {
        return this.raf.readLine();
    }

    @Override // java.io.DataInput
    public String readUTF() throws IOException {
        return this.raf.readUTF();
    }

    public FileDescriptor getFD() throws IOException {
        return this.raf.getFD();
    }

    public FileChannel getChannel() {
        return this.raf.getChannel();
    }
}
