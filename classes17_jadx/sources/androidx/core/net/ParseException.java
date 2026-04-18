package androidx.core.net;

/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public class ParseException extends RuntimeException {
    public final String response;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ParseException(String response) {
        super(response);
        this.response = response;
    }
}
