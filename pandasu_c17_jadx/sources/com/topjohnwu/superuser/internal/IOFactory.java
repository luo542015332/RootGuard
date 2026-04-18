package com.topjohnwu.superuser.internal;

import com.topjohnwu.superuser.io.SuFile;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class IOFactory {
    static final byte[] JUNK = new byte[1];

    private IOFactory() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static ShellIO shellIO(SuFile file, String mode) throws FileNotFoundException {
        char c;
        switch (mode.hashCode()) {
            case 114:
                if (mode.equals("r")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 3653:
                if (mode.equals("rw")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 113343:
                if (mode.equals("rwd")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 113358:
                if (mode.equals("rws")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                break;
            case 1:
            case 2:
            case 3:
                mode = "rw";
                break;
            default:
                throw new IllegalArgumentException("Unknown mode: " + mode);
        }
        return ShellIO.get(file, mode);
    }

    public static RAFWrapper raf(File file, String mode) throws FileNotFoundException {
        return new RAFWrapper(file, mode);
    }

    public static InputStream fifoIn(SuFile file) throws FileNotFoundException {
        return ShellPipeStream.openReadStream(file);
    }

    public static OutputStream fifoOut(SuFile file, boolean append) throws FileNotFoundException {
        return ShellPipeStream.openWriteStream(file, append);
    }
}
