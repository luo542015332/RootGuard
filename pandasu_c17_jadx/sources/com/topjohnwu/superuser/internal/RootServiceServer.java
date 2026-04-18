package com.topjohnwu.superuser.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Debug;
import android.os.FileObserver;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.SparseArray;
import com.topjohnwu.superuser.Shell;
import com.topjohnwu.superuser.internal.IRootServiceManager;
import com.topjohnwu.superuser.ipc.RootService;
import java.io.File;
import java.lang.reflect.Constructor;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class RootServiceServer extends IRootServiceManager.Stub implements Runnable {
    private static RootServiceServer mInstance;
    private final boolean isDaemon;
    private final FileObserver observer;
    private final Map<ComponentName, ServiceRecord> services = new ArrayMap();
    private final SparseArray<ClientProcess> clients = new SparseArray<>();

    public static RootServiceServer getInstance(Context context) {
        if (mInstance == null) {
            mInstance = new RootServiceServer(context);
        }
        return mInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private RootServiceServer(Context context) {
        Shell.enableVerboseLogging = System.getenv("LIBSU_VERBOSE_LOGGING") != null;
        Utils.context = context;
        if (System.getenv("LIBSU_DEBUGGER") != null) {
            HiddenAPIs.setAppName(context.getPackageName() + ":root");
            Utils.log("IPC", "Waiting for debugger to be attached...");
            while (!Debug.isDebuggerConnected()) {
                try {
                    Thread.sleep(200L);
                } catch (InterruptedException e) {
                }
            }
            Utils.log("IPC", "Debugger attached!");
        }
        AppObserver appObserver = new AppObserver(new File(context.getPackageCodePath()));
        this.observer = appObserver;
        appObserver.startWatching();
        if (context instanceof Callable) {
            try {
                Object[] objs = (Object[]) ((Callable) context).call();
                boolean booleanValue = ((Boolean) objs[1]).booleanValue();
                this.isDaemon = booleanValue;
                if (booleanValue) {
                    HiddenAPIs.addService(RootServerMain.getServiceName(context.getPackageName()), this);
                }
                broadcast(((Integer) objs[0]).intValue());
                if (!booleanValue) {
                    UiThreadHandler.handler.postDelayed(this, 10000L);
                    return;
                }
                return;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
        throw new IllegalArgumentException("Expected Context to be Callable");
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.clients.size() == 0) {
            exit("No active clients");
        }
    }

    @Override // com.topjohnwu.superuser.internal.IRootServiceManager
    public void connect(final IBinder binder) {
        final int uid = getCallingUid();
        UiThreadHandler.run(new Runnable() { // from class: com.topjohnwu.superuser.internal.RootServiceServer$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                RootServiceServer.this.m1001x3a33d973(uid, binder);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: connectInternal, reason: merged with bridge method [inline-methods] */
    public void m1001x3a33d973(int uid, IBinder binder) {
        if (this.clients.get(uid) != null) {
            return;
        }
        try {
            this.clients.put(uid, new ClientProcess(binder, uid));
            UiThreadHandler.handler.removeCallbacks(this);
        } catch (RemoteException e) {
            Utils.err("IPC", e);
        }
    }

    @Override // com.topjohnwu.superuser.internal.IRootServiceManager
    public void broadcast(int uid) {
        int uid2 = getCallingUid() == 0 ? uid : getCallingUid();
        Utils.log("IPC", "broadcast to uid=" + uid2);
        Intent intent = RootServiceManager.getBroadcastIntent(this, this.isDaemon);
        UserHandle h = UserHandle.getUserHandleForUid(uid2);
        Utils.context.sendBroadcastAsUser(intent, h);
    }

    @Override // com.topjohnwu.superuser.internal.IRootServiceManager
    public IBinder bind(final Intent intent) {
        final IBinder[] b = new IBinder[1];
        final int uid = getCallingUid();
        UiThreadHandler.runAndWait(new Runnable() { // from class: com.topjohnwu.superuser.internal.RootServiceServer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                RootServiceServer.this.m1000lambda$bind$1$comtopjohnwusuperuserinternalRootServiceServer(b, uid, intent);
            }
        });
        return b[0];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$bind$1$com-topjohnwu-superuser-internal-RootServiceServer, reason: not valid java name */
    public /* synthetic */ void m1000lambda$bind$1$comtopjohnwusuperuserinternalRootServiceServer(IBinder[] b, int uid, Intent intent) {
        try {
            b[0] = bindInternal(uid, intent);
        } catch (Exception e) {
            Utils.err("IPC", e);
        }
    }

    @Override // com.topjohnwu.superuser.internal.IRootServiceManager
    public void unbind(final ComponentName name) {
        final int uid = getCallingUid();
        UiThreadHandler.run(new Runnable() { // from class: com.topjohnwu.superuser.internal.RootServiceServer$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                RootServiceServer.this.m1004xcd49212b(name, uid);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$unbind$2$com-topjohnwu-superuser-internal-RootServiceServer, reason: not valid java name */
    public /* synthetic */ void m1004xcd49212b(ComponentName name, int uid) {
        Utils.log("IPC", name.getClassName() + " unbind");
        unbindService(uid, name);
    }

    @Override // com.topjohnwu.superuser.internal.IRootServiceManager
    public void stop(final ComponentName name, int uid) {
        final int clientUid = getCallingUid() == 0 ? uid : getCallingUid();
        UiThreadHandler.run(new Runnable() { // from class: com.topjohnwu.superuser.internal.RootServiceServer$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                RootServiceServer.this.m1003lambda$stop$3$comtopjohnwusuperuserinternalRootServiceServer(name, clientUid);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$stop$3$com-topjohnwu-superuser-internal-RootServiceServer, reason: not valid java name */
    public /* synthetic */ void m1003lambda$stop$3$comtopjohnwusuperuserinternalRootServiceServer(ComponentName name, int clientUid) {
        Utils.log("IPC", name.getClassName() + " stop");
        unbindService(-1, name);
        broadcast(clientUid);
    }

    public void selfStop(final ComponentName name) {
        UiThreadHandler.run(new Runnable() { // from class: com.topjohnwu.superuser.internal.RootServiceServer$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                RootServiceServer.this.m1002x90c17111(name);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$selfStop$4$com-topjohnwu-superuser-internal-RootServiceServer, reason: not valid java name */
    public /* synthetic */ void m1002x90c17111(ComponentName name) {
        Utils.log("IPC", name.getClassName() + " selfStop");
        unbindService(-1, name);
    }

    public void register(RootService service) {
        ServiceRecord s = new ServiceRecord(service);
        this.services.put(service.getComponentName(), s);
    }

    private IBinder bindInternal(int uid, Intent intent) throws Exception {
        ClientProcess c = this.clients.get(uid);
        if (c == null) {
            return null;
        }
        ComponentName name = intent.getComponent();
        ServiceRecord s = this.services.get(name);
        if (s == null) {
            Context context = Utils.context;
            Class<?> clz = context.getClassLoader().loadClass(name.getClassName());
            Constructor<?> ctor = clz.getDeclaredConstructor(new Class[0]);
            ctor.setAccessible(true);
            HiddenAPIs.attachBaseContext(ctor.newInstance(new Object[0]), context);
            s = this.services.get(name);
            if (s == null) {
                return null;
            }
        }
        if (s.binder != null) {
            Utils.log("IPC", name.getClassName() + " rebind");
            if (s.rebind) {
                s.service.onRebind(s.intent);
            }
        } else {
            Utils.log("IPC", name.getClassName() + " bind");
            s.binder = s.service.onBind(intent);
            s.intent = intent.cloneFilter();
        }
        s.users.add(Integer.valueOf(uid));
        return s.binder;
    }

    private void unbindInternal(ServiceRecord serviceRecord, int i, Runnable runnable) {
        boolean z = !serviceRecord.users.isEmpty();
        serviceRecord.users.remove(Integer.valueOf(i));
        if (i < 0 || serviceRecord.users.isEmpty()) {
            if (z) {
                serviceRecord.rebind = serviceRecord.service.onUnbind(serviceRecord.intent);
            }
            if (i < 0 || !this.isDaemon) {
                serviceRecord.service.onDestroy();
                runnable.run();
                Iterator<Integer> it = serviceRecord.users.iterator();
                while (it.hasNext()) {
                    ClientProcess clientProcess = this.clients.get(it.next().intValue());
                    if (clientProcess != null) {
                        Message obtain = Message.obtain();
                        obtain.what = 1;
                        obtain.arg1 = this.isDaemon ? 1 : 0;
                        obtain.obj = serviceRecord.intent.getComponent();
                        try {
                            try {
                                clientProcess.m.send(obtain);
                            } catch (RemoteException e) {
                                Utils.err("IPC", e);
                            }
                        } finally {
                            obtain.recycle();
                        }
                    }
                }
            }
        }
        if (this.services.isEmpty()) {
            exit("No active services");
        }
    }

    private void unbindService(int uid, final ComponentName name) {
        ServiceRecord s = this.services.get(name);
        if (s == null) {
            return;
        }
        unbindInternal(s, uid, new Runnable() { // from class: com.topjohnwu.superuser.internal.RootServiceServer$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                RootServiceServer.this.m1005x7735419(name);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$unbindService$5$com-topjohnwu-superuser-internal-RootServiceServer, reason: not valid java name */
    public /* synthetic */ void m1005x7735419(ComponentName name) {
        this.services.remove(name);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unbindServices(int uid) {
        final Iterator<Map.Entry<ComponentName, ServiceRecord>> it = this.services.entrySet().iterator();
        while (it.hasNext()) {
            ServiceRecord s = it.next().getValue();
            if (uid < 0) {
                s.users.clear();
            }
            Objects.requireNonNull(it);
            unbindInternal(s, uid, new Runnable() { // from class: com.topjohnwu.superuser.internal.RootServiceServer$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    it.remove();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exit(String reason) {
        Utils.log("IPC", "Terminate process: " + reason);
        System.exit(0);
    }

    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    private class AppObserver extends FileObserver {
        private final String name;

        AppObserver(File path) {
            super(path.getParent(), 1984);
            Utils.log("IPC", "Start monitoring: " + path.getParent());
            this.name = path.getName();
        }

        @Override // android.os.FileObserver
        public void onEvent(int event, String path) {
            if (event == 1024 || this.name.equals(path)) {
                RootServiceServer.this.exit("Package updated");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    public class ClientProcess extends BinderHolder {
        final Messenger m;
        final int uid;

        ClientProcess(IBinder b, int uid) throws RemoteException {
            super(b);
            this.m = new Messenger(b);
            this.uid = uid;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.topjohnwu.superuser.internal.BinderHolder
        public void onBinderDied() {
            Utils.log("IPC", "Client process terminated, uid=" + this.uid);
            RootServiceServer.this.clients.remove(this.uid);
            RootServiceServer.this.unbindServices(this.uid);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
    public static class ServiceRecord {
        IBinder binder;
        Intent intent;
        boolean rebind;
        final RootService service;
        final Set<Integer> users = Utils.newArraySet();

        ServiceRecord(RootService s) {
            this.service = s;
        }
    }
}
