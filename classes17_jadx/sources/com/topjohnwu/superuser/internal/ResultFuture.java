package com.topjohnwu.superuser.internal;

import com.topjohnwu.superuser.Shell;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
class ResultFuture extends ResultHolder implements Future<Shell.Result> {
    private final CountDownLatch latch = new CountDownLatch(1);

    @Override // com.topjohnwu.superuser.internal.ResultHolder, com.topjohnwu.superuser.Shell.ResultCallback
    public void onResult(Shell.Result out) {
        super.onResult(out);
        this.latch.countDown();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean mayInterruptIfRunning) {
        return this.latch.getCount() != 0;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.latch.getCount() == 0;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Future
    public Shell.Result get() throws InterruptedException {
        this.latch.await();
        return getResult();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Future
    public Shell.Result get(long timeout, TimeUnit unit) throws InterruptedException, TimeoutException {
        if (!this.latch.await(timeout, unit)) {
            throw new TimeoutException();
        }
        return getResult();
    }
}
