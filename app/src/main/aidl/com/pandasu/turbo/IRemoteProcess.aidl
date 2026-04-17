// IRemoteProcess.aidl
package com.pandasu.turbo;

// Remote process interface for executing shell commands via Shizuku
interface IRemoteProcess {
    String execute(String command);
    void destroy();
}
