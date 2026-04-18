package com.topjohnwu.superuser.io;

import com.topjohnwu.superuser.Shell;
import com.topjohnwu.superuser.ShellUtils;
import com.topjohnwu.superuser.internal.IOFactory;
import com.topjohnwu.superuser.internal.Utils;
import com.topjohnwu.superuser.nio.ExtendedFile;
import com.topjohnwu.superuser.nio.FileSystemManager;
import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class SuFile extends ExtendedFile {
    private final String escapedPath;
    private Shell mShell;

    public static ExtendedFile open(String pathname) {
        return Utils.isMainShellRoot() ? new SuFile(pathname) : FileSystemManager.getLocal().getFile(pathname);
    }

    public static ExtendedFile open(String parent, String child) {
        return Utils.isMainShellRoot() ? new SuFile(parent, child) : FileSystemManager.getLocal().getFile(parent, child);
    }

    public static ExtendedFile open(File parent, String child) {
        return Utils.isMainShellRoot() ? new SuFile(parent, child) : FileSystemManager.getLocal().getFile(parent.getPath(), child);
    }

    public static ExtendedFile open(URI uri) {
        return Utils.isMainShellRoot() ? new SuFile(uri) : FileSystemManager.getLocal().getFile(new File(uri).getPath());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SuFile(File file) {
        super(file.getAbsolutePath());
        this.escapedPath = ShellUtils.escapedString(getPath());
    }

    public SuFile(String pathname) {
        this(new File(pathname));
    }

    public SuFile(String parent, String child) {
        this(new File(parent, child));
    }

    public SuFile(File parent, String child) {
        this(parent.getAbsolutePath(), child);
    }

    public SuFile(URI uri) {
        this(new File(uri));
    }

    private SuFile create(String path) {
        SuFile s = new SuFile(path);
        s.mShell = this.mShell;
        return s;
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public SuFile getChildFile(String name) {
        SuFile s = new SuFile(this, name);
        s.mShell = this.mShell;
        return s;
    }

    private String cmd(String c) {
        return ShellUtils.fastCmd(getShell(), c.replace("@@", this.escapedPath));
    }

    private boolean cmdBool(String c) {
        return ShellUtils.fastCmdResult(getShell(), c.replace("@@", this.escapedPath));
    }

    public void setShell(Shell shell) {
        this.mShell = shell;
    }

    public Shell getShell() {
        Shell shell = this.mShell;
        return shell == null ? Shell.getShell() : shell;
    }

    public String getEscapedPath() {
        return this.escapedPath;
    }

    @Override // java.io.File
    public boolean canExecute() {
        return cmdBool("[ -x @@ ]");
    }

    @Override // java.io.File
    public boolean canRead() {
        return cmdBool("[ -r @@ ]");
    }

    @Override // java.io.File
    public boolean canWrite() {
        return cmdBool("[ -w @@ ]");
    }

    @Override // java.io.File
    public boolean createNewFile() {
        return cmdBool("[ ! -e @@ ] && echo -n > @@");
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean createNewLink(String existing) {
        String existing2 = ShellUtils.escapedString(existing);
        return cmdBool("[ ! -d " + existing2 + " ] && ln @@ " + existing2);
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean createNewSymlink(String target) {
        String target2 = ShellUtils.escapedString(target);
        return cmdBool("[ ! -d " + target2 + " ] && ln -s @@ " + target2);
    }

    @Override // java.io.File
    public boolean delete() {
        return cmdBool("rm -f @@ || rmdir -f @@");
    }

    public boolean deleteRecursive() {
        return cmdBool("rm -rf @@");
    }

    public boolean clear() {
        return cmdBool("echo -n > @@");
    }

    @Override // java.io.File
    public void deleteOnExit() {
        throw new UnsupportedOperationException("Unsupported SuFile operation");
    }

    @Override // java.io.File
    public boolean exists() {
        return cmdBool("[ -e @@ ]");
    }

    @Override // java.io.File
    public String getAbsolutePath() {
        return getPath();
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile, java.io.File
    public SuFile getAbsoluteFile() {
        return this;
    }

    @Override // java.io.File
    public String getCanonicalPath() {
        String path = cmd("readlink -f @@");
        return path.isEmpty() ? getPath() : path;
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile, java.io.File
    public SuFile getCanonicalFile() {
        return create(getCanonicalPath());
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile, java.io.File
    public SuFile getParentFile() {
        String parent = getParent();
        if (parent == null) {
            return null;
        }
        return create(parent);
    }

    private long statFS(String fmt) {
        String[] res = cmd("stat -fc '%S " + fmt + "' @@").split(" ");
        if (res.length != 2) {
            return Long.MAX_VALUE;
        }
        try {
            return Long.parseLong(res[0]) * Long.parseLong(res[1]);
        } catch (NumberFormatException e) {
            return Long.MAX_VALUE;
        }
    }

    @Override // java.io.File
    public long getFreeSpace() {
        return statFS("%f");
    }

    @Override // java.io.File
    public long getTotalSpace() {
        return statFS("%b");
    }

    @Override // java.io.File
    public long getUsableSpace() {
        return statFS("%a");
    }

    @Override // java.io.File
    public boolean isDirectory() {
        return cmdBool("[ -d @@ ]");
    }

    @Override // java.io.File
    public boolean isFile() {
        return cmdBool("[ -f @@ ]");
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean isBlock() {
        return cmdBool("[ -b @@ ]");
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean isCharacter() {
        return cmdBool("[ -c @@ ]");
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean isSymlink() {
        return cmdBool("[ -L @@ ]");
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean isNamedPipe() {
        return cmdBool("[ -p @@ ]");
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public boolean isSocket() {
        return cmdBool("[ -S @@ ]");
    }

    @Override // java.io.File
    public long lastModified() {
        try {
            return Long.parseLong(cmd("stat -c '%Y' @@")) * 1000;
        } catch (NumberFormatException e) {
            return 0L;
        }
    }

    @Override // java.io.File
    public long length() {
        try {
            return Long.parseLong(cmd("stat -c '%s' @@"));
        } catch (NumberFormatException e) {
            return 0L;
        }
    }

    @Override // java.io.File
    public boolean mkdir() {
        return cmdBool("mkdir @@");
    }

    @Override // java.io.File
    public boolean mkdirs() {
        return cmdBool("mkdir -p @@");
    }

    @Override // java.io.File
    public boolean renameTo(File dest) {
        String cmd = "mv -f " + this.escapedPath + " " + ShellUtils.escapedString(dest.getAbsolutePath());
        return ShellUtils.fastCmdResult(getShell(), cmd);
    }

    private boolean setPerms(boolean set, boolean ownerOnly, int b) {
        int perm;
        char[] perms = cmd("stat -c '%a' @@").toCharArray();
        if (perms.length != 3) {
            return false;
        }
        for (int i = 0; i < 3; i++) {
            int perm2 = perms[i] - '0';
            if (set && (!ownerOnly || i == 0)) {
                perm = perm2 | b;
            } else {
                perm = perm2 & (~b);
            }
            perms[i] = (char) (perm + 48);
        }
        return cmdBool("chmod " + new String(perms) + " @@");
    }

    @Override // java.io.File
    public boolean setExecutable(boolean executable, boolean ownerOnly) {
        return setPerms(executable, ownerOnly, 1);
    }

    @Override // java.io.File
    public boolean setReadable(boolean readable, boolean ownerOnly) {
        return setPerms(readable, ownerOnly, 4);
    }

    @Override // java.io.File
    public boolean setWritable(boolean writable, boolean ownerOnly) {
        return setPerms(writable, ownerOnly, 2);
    }

    @Override // java.io.File
    public boolean setReadOnly() {
        return setWritable(false, false) && setExecutable(false, false);
    }

    @Override // java.io.File
    public boolean setLastModified(long time) {
        DateFormat df = new SimpleDateFormat("yyyyMMddHHmm", Locale.US);
        String date = df.format(new Date(time));
        return cmdBool("[ -e @@ ] && touch -t " + date + " @@");
    }

    @Override // java.io.File
    public String[] list() {
        return list(null);
    }

    @Override // java.io.File
    public String[] list(FilenameFilter filter) {
        if (!isDirectory()) {
            return null;
        }
        String cmd = "ls -a " + this.escapedPath;
        List<String> out = getShell().newJob().add(cmd).to(new LinkedList(), null).exec().getOut();
        ListIterator<String> it = out.listIterator();
        while (it.hasNext()) {
            String name = it.next();
            if (name.equals(".") || name.equals("..") || (filter != null && !filter.accept(this, name))) {
                it.remove();
            }
        }
        return (String[]) out.toArray(new String[0]);
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile, java.io.File
    public SuFile[] listFiles() {
        String[] ss;
        if (!isDirectory() || (ss = list()) == null) {
            return null;
        }
        int n = ss.length;
        SuFile[] fs = new SuFile[n];
        for (int i = 0; i < n; i++) {
            fs[i] = getChildFile(ss[i]);
        }
        return fs;
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile, java.io.File
    public SuFile[] listFiles(FilenameFilter filter) {
        String[] ss;
        if (!isDirectory() || (ss = list(filter)) == null) {
            return null;
        }
        int n = ss.length;
        SuFile[] fs = new SuFile[n];
        for (int i = 0; i < n; i++) {
            fs[i] = getChildFile(ss[i]);
        }
        return fs;
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile, java.io.File
    public SuFile[] listFiles(FileFilter filter) {
        String[] ss = list();
        if (ss == null) {
            return null;
        }
        ArrayList<SuFile> files = new ArrayList<>();
        for (String s : ss) {
            SuFile f = getChildFile(s);
            if (filter == null || filter.accept(f)) {
                files.add(f);
            }
        }
        return (SuFile[]) files.toArray(new SuFile[0]);
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public InputStream newInputStream() throws IOException {
        return IOFactory.fifoIn(this);
    }

    @Override // com.topjohnwu.superuser.nio.ExtendedFile
    public OutputStream newOutputStream(boolean append) throws IOException {
        return IOFactory.fifoOut(this, append);
    }
}
