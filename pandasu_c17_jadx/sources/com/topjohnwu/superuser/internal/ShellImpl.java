package com.topjohnwu.superuser.internal;

import android.text.TextUtils;
import com.topjohnwu.superuser.Shell;
import com.topjohnwu.superuser.ShellUtils;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class ShellImpl extends Shell {
    private final NoCloseInputStream STDERR;
    private final NoCloseOutputStream STDIN;
    private final NoCloseInputStream STDOUT;
    private final Condition idle;
    private boolean isRunningTask;
    private final Process process;
    private final ReentrantLock scheduleLock;
    private volatile int status;
    private final ArrayDeque<Shell.Task> tasks;

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    public static final class SyncTask implements Shell.Task {
        private final Condition condition;
        private boolean set = false;

        SyncTask(Condition c) {
            this.condition = c;
        }

        void signal() {
            this.set = true;
            this.condition.signal();
        }

        void await() {
            while (!this.set) {
                try {
                    this.condition.await();
                } catch (InterruptedException e) {
                }
            }
        }

        @Override // com.topjohnwu.superuser.Shell.Task
        public void run(OutputStream stdin, InputStream stdout, InputStream stderr) {
        }
    }

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    public static class NoCloseInputStream extends FilterInputStream {
        NoCloseInputStream(InputStream in) {
            super(in);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        void close0() throws IOException {
            this.in.close();
        }
    }

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    public static class NoCloseOutputStream extends FilterOutputStream {
        NoCloseOutputStream(OutputStream out) {
            super(out instanceof BufferedOutputStream ? out : new BufferedOutputStream(out));
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] b, int off, int len) throws IOException {
            this.out.write(b, off, len);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.out.flush();
        }

        void close0() throws IOException {
            super.close();
        }
    }

    public ShellImpl(BuilderImpl builder, Process proc) throws IOException {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.scheduleLock = reentrantLock;
        this.idle = reentrantLock.newCondition();
        this.tasks = new ArrayDeque<>();
        this.isRunningTask = false;
        this.status = -1;
        this.process = proc;
        this.STDIN = new NoCloseOutputStream(proc.getOutputStream());
        this.STDOUT = new NoCloseInputStream(proc.getInputStream());
        this.STDERR = new NoCloseInputStream(proc.getErrorStream());
        FutureTask<Integer> check = new FutureTask<>(new Callable() { // from class: com.topjohnwu.superuser.internal.ShellImpl$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer shellCheck;
                shellCheck = ShellImpl.this.shellCheck();
                return shellCheck;
            }
        });
        EXECUTOR.execute(check);
        try {
            try {
                try {
                    this.status = check.get(builder.timeout, TimeUnit.SECONDS).intValue();
                } catch (TimeoutException e) {
                    throw new IOException("Shell check timeout", e);
                }
            } catch (InterruptedException e2) {
                throw new IOException("Shell check interrupted", e2);
            } catch (ExecutionException e3) {
                Throwable cause = e3.getCause();
                if (cause instanceof IOException) {
                    throw ((IOException) cause);
                }
                throw new IOException("Unknown ExecutionException", cause);
            }
        } catch (IOException e4) {
            release();
            throw e4;
        }
    }

    public Integer shellCheck() throws IOException {
        try {
            this.process.exitValue();
            throw new IOException("Created process has terminated");
        } catch (IllegalThreadStateException e) {
            ShellUtils.cleanInputStream(this.STDOUT);
            ShellUtils.cleanInputStream(this.STDERR);
            int status = 0;
            BufferedReader br = new BufferedReader(new InputStreamReader(this.STDOUT));
            try {
                this.STDIN.write("echo SHELL_TEST\n".getBytes(StandardCharsets.UTF_8));
                this.STDIN.flush();
                String s = br.readLine();
                if (TextUtils.isEmpty(s) || !s.contains("SHELL_TEST")) {
                    throw new IOException("Created process is not a shell");
                }
                this.STDIN.write("id\n".getBytes(StandardCharsets.UTF_8));
                this.STDIN.flush();
                String s2 = br.readLine();
                if (!TextUtils.isEmpty(s2) && s2.contains("uid=0")) {
                    status = 1;
                    Utils.setConfirmedRootState(true);
                    String cwd = ShellUtils.escapedString(System.getProperty("user.dir"));
                    this.STDIN.write(("cd " + cwd + "\n").getBytes(StandardCharsets.UTF_8));
                    this.STDIN.flush();
                }
                br.close();
                return Integer.valueOf(status);
            } catch (Throwable th) {
                try {
                    br.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    private void release() {
        this.status = -1;
        try {
            this.STDIN.close0();
        } catch (IOException e) {
        }
        try {
            this.STDERR.close0();
        } catch (IOException e2) {
        }
        try {
            this.STDOUT.close0();
        } catch (IOException e3) {
        }
        this.process.destroy();
    }

    @Override // com.topjohnwu.superuser.Shell
    public boolean waitAndClose(long timeout, TimeUnit unit) throws InterruptedException {
        if (this.status < 0) {
            return true;
        }
        this.scheduleLock.lock();
        try {
            if (!this.isRunningTask || this.idle.await(timeout, unit)) {
                close();
                return true;
            }
            this.scheduleLock.unlock();
            return false;
        } finally {
            this.scheduleLock.unlock();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.status < 0) {
            return;
        }
        release();
    }

    @Override // com.topjohnwu.superuser.Shell
    public int getStatus() {
        return this.status;
    }

    @Override // com.topjohnwu.superuser.Shell
    public boolean isAlive() {
        if (this.status < 0) {
            return false;
        }
        try {
            this.process.exitValue();
            release();
            return false;
        } catch (IllegalThreadStateException e) {
            return true;
        }
    }

    private synchronized void exec0(Shell.Task task) throws IOException {
        if (this.status < 0) {
            task.shellDied();
            return;
        }
        ShellUtils.cleanInputStream(this.STDOUT);
        ShellUtils.cleanInputStream(this.STDERR);
        try {
            this.STDIN.write(10);
            this.STDIN.flush();
            task.run(this.STDIN, this.STDOUT, this.STDERR);
        } catch (IOException e) {
            release();
            task.shellDied();
        }
    }

    public void processTasks() {
        while (true) {
            Shell.Task task = processNextTask(false);
            if (task != null) {
                try {
                    exec0(task);
                } catch (IOException e) {
                }
            } else {
                return;
            }
        }
    }

    private Shell.Task processNextTask(boolean fromExec) {
        this.scheduleLock.lock();
        try {
            Shell.Task task = this.tasks.poll();
            if (task == null) {
                this.isRunningTask = false;
                this.idle.signalAll();
                return null;
            }
            if (task instanceof SyncTask) {
                ((SyncTask) task).signal();
                return null;
            }
            if (!fromExec) {
                return task;
            }
            this.tasks.offerFirst(task);
            this.scheduleLock.unlock();
            EXECUTOR.execute(new ShellImpl$$ExternalSyntheticLambda0(this));
            return null;
        } finally {
            this.scheduleLock.unlock();
        }
    }

    @Override // com.topjohnwu.superuser.Shell
    public void submitTask(Shell.Task task) {
        this.scheduleLock.lock();
        try {
            this.tasks.offer(task);
            if (!this.isRunningTask) {
                this.isRunningTask = true;
                EXECUTOR.execute(new ShellImpl$$ExternalSyntheticLambda0(this));
            }
        } finally {
            this.scheduleLock.unlock();
        }
    }

    @Override // com.topjohnwu.superuser.Shell
    public void execTask(Shell.Task task) throws IOException {
        this.scheduleLock.lock();
        try {
            if (this.isRunningTask) {
                SyncTask sync = new SyncTask(this.scheduleLock.newCondition());
                this.tasks.offer(sync);
                sync.await();
            }
            this.isRunningTask = true;
            this.scheduleLock.unlock();
            exec0(task);
            processNextTask(true);
        } catch (Throwable th) {
            this.scheduleLock.unlock();
            throw th;
        }
    }

    @Override // com.topjohnwu.superuser.Shell
    public Shell.Job newJob() {
        return new ShellJob(this);
    }
}
