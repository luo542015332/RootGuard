package com.topjohnwu.superuser.internal;

import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
interface DataOutputImpl extends DataOutput {
    @Override // java.io.DataOutput
    default void write(int b) throws IOException {
        byte[] buf = {(byte) (b & 255)};
        write(buf);
    }

    @Override // java.io.DataOutput
    default void write(byte[] b) throws IOException {
        write(b, 0, b.length);
    }

    @Override // java.io.DataOutput
    default void writeBoolean(boolean z) throws IOException {
        write(z ? 1 : 0);
    }

    @Override // java.io.DataOutput
    default void writeByte(int v) throws IOException {
        write(v);
    }

    @Override // java.io.DataOutput
    default void writeShort(int v) throws IOException {
        byte[] b = {(byte) (v >>> 8), (byte) (v >>> 0)};
        write(b);
    }

    @Override // java.io.DataOutput
    default void writeChar(int v) throws IOException {
        writeShort(v);
    }

    @Override // java.io.DataOutput
    default void writeInt(int v) throws IOException {
        byte[] b = {(byte) (v >>> 24), (byte) (v >>> 16), (byte) (v >>> 8), (byte) (v >>> 0)};
        write(b);
    }

    @Override // java.io.DataOutput
    default void writeLong(long v) throws IOException {
        byte[] b = {(byte) (v >>> 56), (byte) (v >>> 48), (byte) (v >>> 40), (byte) (v >>> 32), (byte) (v >>> 24), (byte) (v >>> 16), (byte) (v >>> 8), (byte) (v >>> 0)};
        write(b);
    }

    @Override // java.io.DataOutput
    default void writeFloat(float v) throws IOException {
        writeInt(Float.floatToIntBits(v));
    }

    @Override // java.io.DataOutput
    default void writeDouble(double v) throws IOException {
        writeLong(Double.doubleToLongBits(v));
    }

    @Override // java.io.DataOutput
    default void writeBytes(String s) throws IOException {
        ByteOutputStream buf = new ByteOutputStream();
        DataOutputStream out = new DataOutputStream(buf);
        out.writeBytes(s);
        buf.writeTo(this);
    }

    @Override // java.io.DataOutput
    default void writeChars(String s) throws IOException {
        ByteOutputStream buf = new ByteOutputStream();
        DataOutputStream out = new DataOutputStream(buf);
        out.writeChars(s);
        buf.writeTo(this);
    }

    @Override // java.io.DataOutput
    default void writeUTF(String s) throws IOException {
        ByteOutputStream buf = new ByteOutputStream();
        DataOutputStream out = new DataOutputStream(buf);
        out.writeUTF(s);
        buf.writeTo(this);
    }
}
