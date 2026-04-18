package androidx.lifecycle;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class MutableLiveData<T> extends LiveData<T> {
    public MutableLiveData(T value) {
        super(value);
    }

    public MutableLiveData() {
    }

    @Override // androidx.lifecycle.LiveData
    public void postValue(T value) {
        super.postValue(value);
    }

    @Override // androidx.lifecycle.LiveData
    public void setValue(T value) {
        super.setValue(value);
    }
}
