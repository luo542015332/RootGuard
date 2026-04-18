package androidx.core.net;

/* loaded from: C:\Users\Administrator\Desktop\新建文件夹 (2)\installed_decode\classes17.dex */
public class ParseException extends RuntimeException {
    public final String response;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ParseException(String response) {
        super(response);
        this.response = response;
    }
}
