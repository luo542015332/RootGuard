package com.topjohnwu.superuser.internal;

import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import kotlin.UByte;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
interface DataInputImpl extends DataInput {
    int read(byte[] bArr, int i, int i2) throws IOException;

    default int read() throws IOException {
        byte[] b = new byte[1];
        if (read(b) != 1) {
            return -1;
        }
        return b[0] & UByte.MAX_VALUE;
    }

    default int read(byte[] b) throws IOException {
        return read(b, 0, b.length);
    }

    @Override // java.io.DataInput
    default void readFully(byte[] b) throws IOException {
        readFully(b, 0, b.length);
    }

    @Override // java.io.DataInput
    default void readFully(byte[] b, int off, int len) throws IOException {
        if (read(b, off, len) != len) {
            throw new EOFException();
        }
    }

    @Override // java.io.DataInput
    default boolean readBoolean() throws IOException {
        return readByte() != 0;
    }

    @Override // java.io.DataInput
    default byte readByte() throws IOException {
        byte[] b = new byte[1];
        readFully(b);
        return b[0];
    }

    @Override // java.io.DataInput
    default int readUnsignedByte() throws IOException {
        return readByte() & UByte.MAX_VALUE;
    }

    @Override // java.io.DataInput
    default short readShort() throws IOException {
        byte[] b = new byte[2];
        readFully(b);
        return (short) ((b[0] << 8) + (b[1] << 0));
    }

    @Override // java.io.DataInput
    default int readUnsignedShort() throws IOException {
        byte[] b = new byte[2];
        readFully(b);
        return (b[0] << 8) + (b[1] << 0);
    }

    @Override // java.io.DataInput
    default char readChar() throws IOException {
        return (char) readUnsignedShort();
    }

    @Override // java.io.DataInput
    default int readInt() throws IOException {
        byte[] b = new byte[4];
        readFully(b);
        return (b[0] << 24) + (b[1] << 16) + (b[2] << 8) + (b[3] << 0);
    }

    @Override // java.io.DataInput
    default long readLong() throws IOException {
        byte[] b = new byte[8];
        readFully(b);
        return (b[0] << 56) + ((b[1] & UByte.MAX_VALUE) << 48) + ((b[2] & UByte.MAX_VALUE) << 40) + ((b[3] & UByte.MAX_VALUE) << 32) + ((b[4] & UByte.MAX_VALUE) << 24) + ((b[5] & UByte.MAX_VALUE) << 16) + ((b[6] & UByte.MAX_VALUE) << 8) + ((b[7] & UByte.MAX_VALUE) << 0);
    }

    @Override // java.io.DataInput
    default float readFloat() throws IOException {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    default double readDouble() throws IOException {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    default String readLine() throws IOException {
        int b;
        ByteOutputStream buf = new ByteOutputStream();
        do {
            try {
                b = readUnsignedByte();
                buf.write(b);
            } catch (EOFException e) {
            }
        } while (b != 10);
        int size = buf.size();
        if (size == 0) {
            return null;
        }
        byte[] bytes = buf.getBuf();
        if (bytes[size - 1] == 10 && size - 1 > 0 && bytes[size - 1] == 13) {
            size--;
        }
        return new String(bytes, 0, size, StandardCharsets.UTF_8);
    }

    @Override // java.io.DataInput
    default String readUTF() throws IOException {
        int len = readUnsignedShort();
        byte[] b = new byte[len + 2];
        b[0] = (byte) (len >>> 8);
        b[1] = (byte) (len >>> 0);
        readFully(b, 2, len);
        return new DataInputStream(new ByteArrayInputStream(b)).readUTF();
    }
}
