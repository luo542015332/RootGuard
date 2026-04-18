package com.topjohnwu.superuser.internal;

import com.topjohnwu.superuser.NoShellException;
import com.topjohnwu.superuser.Shell;
import java.io.InputStream;
import java.util.concurrent.Executor;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public final class MainShell {
    private static boolean isInitMain;
    private static BuilderImpl mainBuilder;
    private static final ShellImpl[] mainShell = new ShellImpl[1];

    private MainShell() {
    }

    public static synchronized ShellImpl get() {
        ShellImpl shell;
        synchronized (MainShell.class) {
            shell = getCached();
            if (shell == null) {
                if (isInitMain) {
                    throw new NoShellException("The main shell died during initialization");
                }
                isInitMain = true;
                if (mainBuilder == null) {
                    mainBuilder = new BuilderImpl();
                }
                shell = mainBuilder.build();
                isInitMain = false;
            }
        }
        return shell;
    }

    private static void returnShell(final Shell s, Executor e, final Shell.GetShellCallback cb) {
        if (e == null) {
            cb.onShell(s);
        } else {
            e.execute(new Runnable() { // from class: com.topjohnwu.superuser.internal.MainShell$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Shell.GetShellCallback.this.onShell(s);
                }
            });
        }
    }

    public static void get(final Executor executor, final Shell.GetShellCallback callback) {
        Shell shell = getCached();
        if (shell != null) {
            returnShell(shell, executor, callback);
        } else {
            Shell.EXECUTOR.execute(new Runnable() { // from class: com.topjohnwu.superuser.internal.MainShell$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    MainShell.lambda$get$1(executor, callback);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$get$1(Executor executor, Shell.GetShellCallback callback) {
        try {
            returnShell(get(), executor, callback);
        } catch (NoShellException e) {
            Utils.ex(e);
        }
    }

    public static ShellImpl getCached() {
        ShellImpl s;
        ShellImpl[] shellImplArr = mainShell;
        synchronized (shellImplArr) {
            s = shellImplArr[0];
            if (s != null && s.getStatus() < 0) {
                s = null;
                shellImplArr[0] = null;
            }
        }
        return s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void setCached(ShellImpl shell) {
        synchronized (MainShell.class) {
            if (isInitMain) {
                ShellImpl[] shellImplArr = mainShell;
                synchronized (shellImplArr) {
                    shellImplArr[0] = shell;
                }
            }
        }
    }

    public static synchronized void setBuilder(Shell.Builder builder) {
        synchronized (MainShell.class) {
            if (isInitMain || getCached() != null) {
                throw new IllegalStateException("The main shell was already created");
            }
            mainBuilder = (BuilderImpl) builder;
        }
    }

    public static Shell.Job newJob(InputStream in) {
        return new PendingJob().add(in);
    }

    public static Shell.Job newJob(String... cmds) {
        return new PendingJob().add(cmds);
    }
}
