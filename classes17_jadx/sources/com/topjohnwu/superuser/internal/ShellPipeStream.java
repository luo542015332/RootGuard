package com.topjohnwu.superuser.internal;

import com.topjohnwu.superuser.Shell;
import com.topjohnwu.superuser.io.SuFile;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class ShellPipeStream {
    private static final byte[] END_CMD = "echo\n".getBytes(StandardCharsets.UTF_8);
    private static final int FIFO_TIMEOUT = 250;
    private static final String TAG = "FIFOIO";

    ShellPipeStream() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static InputStream openReadStream(final SuFile file) throws FileNotFoundException {
        if (file.isDirectory() || !file.canRead()) {
            throw new FileNotFoundException("No such file or directory: " + file.getPath());
        }
        File f = null;
        try {
            try {
                final File fifo = FileUtils.createTempFIFO();
                f = fifo;
                file.getShell().execTask(new Shell.Task() { // from class: com.topjohnwu.superuser.internal.ShellPipeStream$$ExternalSyntheticLambda0
                    @Override // com.topjohnwu.superuser.Shell.Task
                    public final void run(OutputStream outputStream, InputStream inputStream, InputStream inputStream2) {
                        ShellPipeStream.lambda$openReadStream$0(SuFile.this, fifo, outputStream, inputStream, inputStream2);
                    }
                });
                FutureTask<InputStream> stream = new FutureTask<>(new Callable() { // from class: com.topjohnwu.superuser.internal.ShellPipeStream$$ExternalSyntheticLambda1
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return ShellPipeStream.lambda$openReadStream$1(fifo);
                    }
                });
                Shell.EXECUTOR.execute(stream);
                return stream.get(250L, TimeUnit.MILLISECONDS);
            } catch (Exception e) {
                if (e instanceof FileNotFoundException) {
                    throw ((FileNotFoundException) e);
                }
                Throwable cause = e.getCause();
                if (cause instanceof FileNotFoundException) {
                    throw ((FileNotFoundException) cause);
                }
                Throwable err = new FileNotFoundException("Cannot open fifo").initCause(e);
                throw ((FileNotFoundException) err);
            }
        } finally {
            if (f != null) {
                f.delete();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$openReadStream$0(SuFile file, File fifo, OutputStream in, InputStream out, InputStream err) throws IOException {
        String cmd = "cat " + file.getEscapedPath() + " > " + fifo + " 2>/dev/null &";
        Utils.log(TAG, cmd);
        in.write(cmd.getBytes(StandardCharsets.UTF_8));
        in.write(10);
        in.flush();
        in.write(END_CMD);
        in.flush();
        out.read(IOFactory.JUNK);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ InputStream lambda$openReadStream$1(File fifo) throws Exception {
        return new FileInputStream(fifo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static OutputStream openWriteStream(final SuFile file, boolean append) throws FileNotFoundException {
        if (file.isDirectory()) {
            throw new FileNotFoundException(file.getPath() + " is not a file but a directory");
        }
        if (file.isBlock() || file.isCharacter()) {
            append = false;
        }
        if (append && !file.canWrite() && !file.createNewFile()) {
            throw new FileNotFoundException("Cannot write to file " + file.getPath());
        }
        if (!file.clear()) {
            throw new FileNotFoundException("Failed to clear file " + file.getPath());
        }
        final String op = append ? " >> " : " > ";
        File f = null;
        try {
            try {
                final File fifo = FileUtils.createTempFIFO();
                f = fifo;
                file.getShell().execTask(new Shell.Task() { // from class: com.topjohnwu.superuser.internal.ShellPipeStream$$ExternalSyntheticLambda2
                    @Override // com.topjohnwu.superuser.Shell.Task
                    public final void run(OutputStream outputStream, InputStream inputStream, InputStream inputStream2) {
                        ShellPipeStream.lambda$openWriteStream$2(fifo, op, file, outputStream, inputStream, inputStream2);
                    }
                });
                FutureTask<OutputStream> stream = new FutureTask<>(new Callable() { // from class: com.topjohnwu.superuser.internal.ShellPipeStream$$ExternalSyntheticLambda3
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return ShellPipeStream.lambda$openWriteStream$3(fifo);
                    }
                });
                Shell.EXECUTOR.execute(stream);
                return stream.get(250L, TimeUnit.MILLISECONDS);
            } catch (Exception e) {
                if (e instanceof FileNotFoundException) {
                    throw ((FileNotFoundException) e);
                }
                Throwable cause = e.getCause();
                if (cause instanceof FileNotFoundException) {
                    throw ((FileNotFoundException) cause);
                }
                Throwable err = new FileNotFoundException("Cannot open fifo").initCause(e);
                throw ((FileNotFoundException) err);
            }
        } finally {
            if (f != null) {
                f.delete();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$openWriteStream$2(File fifo, String op, SuFile file, OutputStream in, InputStream out, InputStream err) throws IOException {
        String cmd = "cat " + fifo + op + file.getEscapedPath() + " 2>/dev/null &";
        Utils.log(TAG, cmd);
        in.write(cmd.getBytes(StandardCharsets.UTF_8));
        in.write(10);
        in.flush();
        in.write(END_CMD);
        in.flush();
        out.read(IOFactory.JUNK);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ OutputStream lambda$openWriteStream$3(File fifo) throws Exception {
        return new FileOutputStream(fifo);
    }
}
