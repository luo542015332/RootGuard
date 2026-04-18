package com.topjohnwu.superuser.internal;

import com.topjohnwu.superuser.Shell;
import com.topjohnwu.superuser.ShellUtils;
import com.topjohnwu.superuser.io.SuFile;
import com.topjohnwu.superuser.io.SuRandomAccessFile;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class ShellIO extends SuRandomAccessFile implements DataInputImpl, DataOutputImpl {
    private static final String TAG = "SHELLIO";
    boolean eof;
    private final SuFile file;
    long fileOff;
    private boolean readOnly;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ShellIO get(SuFile file, String mode) throws FileNotFoundException {
        if (file.isBlock()) {
            return new ShellBlockIO(file, mode);
        }
        return new ShellIO(file, mode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public ShellIO(SuFile file, String mode) throws FileNotFoundException {
        char c;
        FileNotFoundException fnf = new FileNotFoundException("No such file or directory");
        this.file = file;
        if (file.isDirectory()) {
            throw fnf;
        }
        this.fileOff = 0L;
        switch (mode.hashCode()) {
            case 114:
                if (mode.equals("r")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 119:
                if (mode.equals("w")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 3653:
                if (mode.equals("rw")) {
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
                if (!file.exists()) {
                    throw fnf;
                }
                this.readOnly = true;
                return;
            case 1:
                if (!file.clear()) {
                    throw fnf;
                }
                return;
            case 2:
                if (!file.exists() && !file.createNewFile()) {
                    throw fnf;
                }
                return;
            default:
                return;
        }
    }

    protected String getConv() {
        return "conv=notrunc";
    }

    public void write(byte[] b, int off, int len) throws IOException {
        if (off < 0 || len < 0 || off + len > b.length) {
            throw new IndexOutOfBoundsException();
        }
        if (this.readOnly) {
            throw new IOException("File is opened as read-only");
        }
        long j = this.fileOff;
        if (j > 0 && j < 512 && len > 512) {
            int size = 512 - ((int) j);
            write0(b, off, size);
            len -= size;
            off += size;
        }
        write0(b, off, len);
    }

    private void write0(final byte[] b, final int off, final int len) throws IOException {
        this.file.getShell().execTask(new Shell.Task() { // from class: com.topjohnwu.superuser.internal.ShellIO$$ExternalSyntheticLambda1
            @Override // com.topjohnwu.superuser.Shell.Task
            public final void run(OutputStream outputStream, InputStream inputStream, InputStream inputStream2) {
                ShellIO.this.m1008lambda$write0$0$comtopjohnwusuperuserinternalShellIO(len, b, off, outputStream, inputStream, inputStream2);
            }
        });
        this.fileOff += len;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$write0$0$com-topjohnwu-superuser-internal-ShellIO, reason: not valid java name */
    public /* synthetic */ void m1008lambda$write0$0$comtopjohnwusuperuserinternalShellIO(int len, byte[] b, int off, OutputStream in, InputStream out, InputStream err) throws IOException {
        String cmd;
        if (this.fileOff == 0) {
            cmd = String.format(Locale.ROOT, "dd of=%s bs=%d count=1 %s 2>/dev/null; echo\n", this.file.getEscapedPath(), Integer.valueOf(len), getConv());
        } else {
            cmd = String.format(Locale.ROOT, "dd of=%s ibs=%d count=1 obs=%d seek=1 %s 2>/dev/null; echo\n", this.file.getEscapedPath(), Integer.valueOf(len), Long.valueOf(this.fileOff), getConv());
        }
        Utils.log(TAG, cmd);
        in.write(cmd.getBytes(StandardCharsets.UTF_8));
        in.flush();
        in.write(b, off, len);
        in.flush();
        out.read(IOFactory.JUNK);
    }

    @Override // com.topjohnwu.superuser.io.SuRandomAccessFile
    public int read() throws IOException {
        return super.read();
    }

    @Override // com.topjohnwu.superuser.io.SuRandomAccessFile
    public int read(byte[] b) throws IOException {
        return super.read(b);
    }

    @Override // com.topjohnwu.superuser.io.SuRandomAccessFile
    public int read(byte[] b, int off, int len) throws IOException {
        int read;
        if (off < 0 || len < 0 || off + len > b.length) {
            throw new IndexOutOfBoundsException();
        }
        if (len == 0) {
            return 0;
        }
        if (this.eof) {
            return -1;
        }
        int bs = (int) ShellUtils.gcd(this.fileOff, len);
        if (bs >= 512 || len < 512) {
            read = alignedRead(b, off, len / bs, (int) (this.fileOff / bs), bs);
        } else {
            long j = this.fileOff;
            long skip = j / 4096;
            int count = (int) (((((j + len) + 4096) - 1) / 4096) - skip);
            byte[] buf = new byte[count * 4096];
            long start = skip * 4096;
            int read2 = alignedRead(buf, 0, count, (int) skip, 4096);
            if (read2 > 0) {
                int valid = (int) ((start + read2) - this.fileOff);
                if (valid < len) {
                    this.eof = true;
                }
                int len2 = Math.min(valid, len);
                System.arraycopy(buf, (int) (this.fileOff - start), b, off, len2);
                read = len2;
            } else {
                read = len;
            }
        }
        this.fileOff += read;
        if (read == 0) {
            return -1;
        }
        return read;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int alignedRead(final byte[] b, final int _off, final int count, final int skip, final int bs) throws IOException {
        if (this.eof) {
            return 0;
        }
        final int[] total = new int[1];
        final int len = count * bs;
        this.file.getShell().execTask(new Shell.Task() { // from class: com.topjohnwu.superuser.internal.ShellIO$$ExternalSyntheticLambda2
            @Override // com.topjohnwu.superuser.Shell.Task
            public final void run(OutputStream outputStream, InputStream inputStream, InputStream inputStream2) {
                ShellIO.this.m1006lambda$alignedRead$1$comtopjohnwusuperuserinternalShellIO(_off, bs, skip, count, len, total, b, outputStream, inputStream, inputStream2);
            }
        });
        if (total[0] == 0 || total[0] != len) {
            this.eof = true;
        }
        return total[0];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$alignedRead$1$com-topjohnwu-superuser-internal-ShellIO, reason: not valid java name */
    public /* synthetic */ void m1006lambda$alignedRead$1$comtopjohnwusuperuserinternalShellIO(int _off, int bs, int skip, int count, int len, int[] total, byte[] b, OutputStream in, InputStream out, InputStream err) throws IOException {
        int off = _off;
        String cmd = String.format(Locale.ROOT, "dd if=%s ibs=%d skip=%d count=%d obs=%d 2>/dev/null; echo >&2\n", this.file.getEscapedPath(), Integer.valueOf(bs), Integer.valueOf(skip), Integer.valueOf(count), Integer.valueOf(len));
        Utils.log(TAG, cmd);
        in.write(cmd.getBytes(StandardCharsets.UTF_8));
        in.flush();
        while (true) {
            if ((total[0] != len && err.available() == 0) || out.available() != 0) {
                int read = out.read(b, off, out.available());
                off += read;
                total[0] = total[0] + read;
            } else {
                err.read(IOFactory.JUNK);
                return;
            }
        }
    }

    @Override // java.io.DataInput, com.topjohnwu.superuser.internal.DataInputImpl
    public String readLine() throws IOException {
        ByteOutputStream bs = new ByteOutputStream();
        boolean eos = false;
        do {
            long skip = this.fileOff / 512;
            byte[] buf = new byte[512];
            int read = alignedRead(buf, 0, 1, (int) skip, 512);
            if (read != 0) {
                int i = (int) (this.fileOff - (512 * skip));
                while (true) {
                    if (i >= read) {
                        break;
                    }
                    byte b = buf[i];
                    bs.write(b);
                    if (b != 10) {
                        i++;
                    } else {
                        i++;
                        eos = true;
                        break;
                    }
                }
                if (this.eof && i != read) {
                    this.eof = false;
                }
                if (this.eof) {
                    break;
                }
            } else {
                break;
            }
        } while (!eos);
        int size = bs.size();
        if (size == 0) {
            return null;
        }
        this.fileOff += size;
        byte[] bytes = bs.getBuf();
        if (bytes[size - 1] == 10 && size - 1 > 0 && bytes[size - 1] == 13) {
            size--;
        }
        return new String(bytes, 0, size, StandardCharsets.UTF_8);
    }

    @Override // com.topjohnwu.superuser.io.SuRandomAccessFile
    public void seek(long pos) throws IOException {
        this.fileOff = pos;
        this.eof = false;
    }

    @Override // com.topjohnwu.superuser.io.SuRandomAccessFile
    public void setLength(final long newLength) throws IOException {
        if (newLength == 0) {
            if (!this.file.clear()) {
                throw new IOException("Cannot clear file");
            }
        } else {
            this.file.getShell().execTask(new Shell.Task() { // from class: com.topjohnwu.superuser.internal.ShellIO$$ExternalSyntheticLambda0
                @Override // com.topjohnwu.superuser.Shell.Task
                public final void run(OutputStream outputStream, InputStream inputStream, InputStream inputStream2) {
                    ShellIO.this.m1007lambda$setLength$2$comtopjohnwusuperuserinternalShellIO(newLength, outputStream, inputStream, inputStream2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$setLength$2$com-topjohnwu-superuser-internal-ShellIO, reason: not valid java name */
    public /* synthetic */ void m1007lambda$setLength$2$comtopjohnwusuperuserinternalShellIO(long newLength, OutputStream in, InputStream out, InputStream err) throws IOException {
        String cmd = String.format(Locale.ROOT, "dd of=%s bs=%d seek=1 count=0 2>/dev/null; echo\n", this.file.getEscapedPath(), Long.valueOf(newLength));
        Utils.log(TAG, cmd);
        in.write(cmd.getBytes(StandardCharsets.UTF_8));
        in.flush();
        out.read(IOFactory.JUNK);
    }

    @Override // com.topjohnwu.superuser.io.SuRandomAccessFile
    public long length() {
        return this.file.length();
    }

    @Override // com.topjohnwu.superuser.io.SuRandomAccessFile
    public long getFilePointer() {
        return this.fileOff;
    }

    @Override // java.io.DataInput
    public int skipBytes(int n) {
        if (n <= 0) {
            return 0;
        }
        long old = this.fileOff;
        long min = Math.min(length(), this.fileOff + n);
        this.fileOff = min;
        return (int) (min - old);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
