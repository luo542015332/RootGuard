package com.topjohnwu.superuser.io;

import com.topjohnwu.superuser.internal.IOFactory;
import com.topjohnwu.superuser.internal.Utils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class SuFileOutputStream {
    public static OutputStream open(String path) throws FileNotFoundException {
        return open(new File(path), false);
    }

    public static OutputStream open(String path, boolean append) throws FileNotFoundException {
        return open(new File(path), append);
    }

    public static OutputStream open(File file) throws FileNotFoundException {
        return open(file, false);
    }

    public static OutputStream open(File file, boolean append) throws FileNotFoundException {
        if (file instanceof SuFile) {
            return IOFactory.fifoOut((SuFile) file, append);
        }
        try {
            return new FileOutputStream(file, append);
        } catch (FileNotFoundException e) {
            if (!Utils.isMainShellRoot()) {
                throw e;
            }
            return IOFactory.fifoOut(new SuFile(file), append);
        }
    }

    private SuFileOutputStream() {
    }
}
