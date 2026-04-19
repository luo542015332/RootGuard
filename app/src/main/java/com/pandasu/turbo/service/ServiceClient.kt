package com.pandasu.turbo.service

import android.os.IBinder
import android.os.IBinder.DeathRecipient
import android.os.Parcel
import android.os.RemoteException
import android.os.ServiceManager
import android.util.Log
import com.pandasu.turbo.lspoed.Constants
import com.pandasu.turbo.lspoed.ITurboService
import java.lang.reflect.InvocationHandler
import java.lang.reflect.Method
import java.lang.reflect.Proxy

object ServiceClient : ITurboService, DeathRecipient {

    private const val TAG = "ServiceClient"

    private class ServiceProxy(private val obj: ITurboService) : InvocationHandler {
        override fun invoke(proxy: Any?, method: Method, args: Array<out Any?>?): Any? {
            val result = method.invoke(obj, *args.orEmpty())
            if (result == null) Log.i(TAG, "Call service method ${method.name}")
            else Log.i(TAG, "Call service method ${method.name} with result " + result.toString().take(20))
            return result
        }
    }

    @Volatile
    private var service: ITurboService? = null

    fun linkService(binder: IBinder) {
        service = Proxy.newProxyInstance(
            javaClass.classLoader,
            arrayOf(ITurboService::class.java),
            ServiceProxy(ITurboService.Stub.asInterface(binder))
        ) as ITurboService
        binder.linkToDeath(this, 0)
    }

    private fun getServiceLegacy(): ITurboService? {
        if (service != null) return service
        val pm = ServiceManager.getService("package")
        val data = Parcel.obtain()
        val reply = Parcel.obtain()
        val remote = try {
            data.writeInterfaceToken(Constants.DESCRIPTOR)
            data.writeInt(Constants.ACTION_GET_BINDER)
            pm.transact(Constants.TRANSACTION, data, reply, 0)
            reply.readException()
            val binder = reply.readStrongBinder()
            ITurboService.Stub.asInterface(binder)
        } catch (e: RemoteException) {
            Log.d(TAG, "Failed to get binder")
            null
        } finally {
            data.recycle()
            reply.recycle()
        }
        if (remote != null) {
            Log.i(TAG, "Binder acquired")
            remote.asBinder().linkToDeath(this, 0)
            service = Proxy.newProxyInstance(
                javaClass.classLoader,
                arrayOf(ITurboService::class.java),
                ServiceProxy(remote)
            ) as ITurboService
        }
        return service
    }

    override fun binderDied() {
        service = null
        Log.e(TAG, "Binder died")
    }

    override fun asBinder() = service?.asBinder()

    override fun getServiceVersion() = getServiceLegacy()?.serviceVersion ?: 0

    override fun getFilterCount() = getServiceLegacy()?.filterCount ?: 0

    override fun getLogs() = getServiceLegacy()?.logs

    override fun clearLogs() {
        getServiceLegacy()?.clearLogs()
    }

    override fun syncConfig(json: String) {
        getServiceLegacy()?.syncConfig(json)
    }

    override fun stopService(cleanEnv: Boolean) {
        getServiceLegacy()?.stopService(cleanEnv)
    }
}
