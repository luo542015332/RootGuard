package com.topjohnwu.superuser.internal;

import android.content.Context;
import android.text.TextUtils;
import com.topjohnwu.superuser.NoShellException;
import com.topjohnwu.superuser.Shell;
import java.io.IOException;
import java.lang.reflect.Constructor;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public final class BuilderImpl extends Shell.Builder {
    private static final String TAG = "BUILDER";
    private String[] command;
    private Shell.Initializer[] initializers;
    long timeout = 20;
    private int flags = 0;

    boolean hasFlags(int mask) {
        return (this.flags & mask) == mask;
    }

    @Override // com.topjohnwu.superuser.Shell.Builder
    public Shell.Builder setFlags(int f) {
        this.flags = f;
        return this;
    }

    @Override // com.topjohnwu.superuser.Shell.Builder
    public Shell.Builder setTimeout(long t) {
        this.timeout = t;
        return this;
    }

    @Override // com.topjohnwu.superuser.Shell.Builder
    public Shell.Builder setCommands(String... c) {
        this.command = c;
        return this;
    }

    public void setInitializersImpl(Class<? extends Shell.Initializer>[] clz) {
        this.initializers = new Shell.Initializer[clz.length];
        for (int i = 0; i < clz.length; i++) {
            try {
                Constructor<? extends Shell.Initializer> c = clz[i].getDeclaredConstructor(new Class[0]);
                c.setAccessible(true);
                this.initializers[i] = c.newInstance(new Object[0]);
            } catch (ClassCastException | ReflectiveOperationException e) {
                Utils.err(e);
            }
        }
    }

    private ShellImpl start() {
        ShellImpl shell = null;
        if (!hasFlags(1) && hasFlags(2)) {
            try {
                shell = exec("su", "--mount-master");
                if (!shell.isRoot()) {
                    shell = null;
                }
            } catch (NoShellException e) {
            }
        }
        if (shell == null && !hasFlags(1)) {
            try {
                shell = exec("su");
                if (!shell.isRoot()) {
                    shell = null;
                }
            } catch (NoShellException e2) {
            }
        }
        if (shell == null) {
            if (!hasFlags(1)) {
                Utils.setConfirmedRootState(false);
            }
            return exec("sh");
        }
        return shell;
    }

    private ShellImpl exec(String... commands) {
        try {
            Utils.log(TAG, "exec " + TextUtils.join(" ", commands));
            Process process = Runtime.getRuntime().exec(commands);
            return build(process);
        } catch (IOException e) {
            Utils.ex(e);
            throw new NoShellException("Unable to create a shell!", e);
        }
    }

    @Override // com.topjohnwu.superuser.Shell.Builder
    public ShellImpl build(Process process) {
        try {
            ShellImpl shell = new ShellImpl(this, process);
            if (hasFlags(8)) {
                Shell.enableLegacyStderrRedirection = true;
            }
            MainShell.setCached(shell);
            if (this.initializers != null) {
                Context ctx = Utils.getContext();
                for (Shell.Initializer init : this.initializers) {
                    if (init != null && !init.onInit(ctx, shell)) {
                        MainShell.setCached(null);
                        throw new NoShellException("Unable to init shell");
                    }
                }
            }
            return shell;
        } catch (IOException e) {
            Utils.ex(e);
            throw new NoShellException("Unable to create a shell!", e);
        }
    }

    @Override // com.topjohnwu.superuser.Shell.Builder
    public ShellImpl build() {
        String[] strArr = this.command;
        if (strArr != null) {
            return exec(strArr);
        }
        return start();
    }
}
