package com.topjohnwu.superuser.io;

import com.topjohnwu.superuser.internal.IOFactory;
import com.topjohnwu.superuser.internal.Utils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class SuFileInputStream {
    public static InputStream open(String path) throws FileNotFoundException {
        return open(new File(path));
    }

    public static InputStream open(File file) throws FileNotFoundException {
        if (file instanceof SuFile) {
            return IOFactory.fifoIn((SuFile) file);
        }
        try {
            return new FileInputStream(file);
        } catch (FileNotFoundException e) {
            if (!Utils.isMainShellRoot()) {
                throw e;
            }
            return IOFactory.fifoIn(new SuFile(file));
        }
    }

    private SuFileInputStream() {
    }
}
