package kotlinx.serialization.json.internal;

import androidx.core.location.LocationRequestCompat;
import java.util.ArrayList;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: AbstractJsonLexer.kt */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0001\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0014\b \u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0018\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0018\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0004H\u0002J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0004H\u0014J\b\u0010\u001f\u001a\u00020 H&J\u0006\u0010!\u001a\u00020 J\u0010\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0004H\u0003J\u0006\u0010#\u001a\u00020 J\u0018\u0010$\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\b\u0010&\u001a\u00020\u000fH&J\b\u0010'\u001a\u00020(H&J\u000e\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020(J\u0010\u0010'\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020*H\u0016J\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020\u000fJ \u0010-\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0005J3\u0010.\u001a\u00020\u001c2\u0006\u0010/\u001a\u00020 2!\u00100\u001a\u001d\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(4\u0012\u0004\u0012\u00020\u001c01H\u0016J\u0006\u00105\u001a\u00020\u000fJ\u0006\u00106\u001a\u00020\u000fJ\u0018\u00107\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u0006\u00108\u001a\u00020\u001cJ\b\u00109\u001a\u00020\u001cH\u0016J\u0006\u0010:\u001a\u00020\u001cJ\u001f\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020(2\b\b\u0002\u0010>\u001a\u00020 H\u0000¢\u0006\u0002\b?J\"\u0010;\u001a\u00020<2\u0006\u0010@\u001a\u00020\u000f2\b\b\u0002\u0010A\u001a\u00020\u00042\b\b\u0002\u0010B\u001a\u00020\u000fJ\u000e\u0010C\u001a\u00020\u001c2\u0006\u0010D\u001a\u00020\u000fJ\u0018\u0010E\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u0018\u0010F\u001a\u00020\u00042\u0006\u0010G\u001a\u00020*2\u0006\u0010\u001a\u001a\u00020\u0004H\u0016J\u0018\u0010H\u001a\u00020 2\u0006\u0010/\u001a\u00020 2\u0006\u0010G\u001a\u00020*H\u0002J\u0006\u0010I\u001a\u00020 J\u0010\u0010J\u001a\u00020 2\u0006\u0010K\u001a\u00020*H\u0004J\u001a\u0010L\u001a\u0004\u0018\u00010\u000f2\u0006\u0010M\u001a\u00020\u000f2\u0006\u0010/\u001a\u00020 H&J\u0006\u0010N\u001a\u00020(J\u0010\u0010O\u001a\u0004\u0018\u00010\u000f2\u0006\u0010/\u001a\u00020 J\u0010\u0010P\u001a\u00020\u00042\u0006\u0010A\u001a\u00020\u0004H&J1\u0010Q\u001a\u00020\u001c2\u0006\u0010R\u001a\u00020 2\b\b\u0002\u0010A\u001a\u00020\u00042\f\u0010@\u001a\b\u0012\u0004\u0012\u00020\u000f0SH\u0080\bø\u0001\u0000¢\u0006\u0002\bTJ\u000e\u0010U\u001a\u00020\u001c2\u0006\u0010V\u001a\u00020 J\b\u0010W\u001a\u00020\u0004H\u0016J\u0018\u0010X\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020\u0004H\u0016J\b\u0010Z\u001a\u00020\u000fH\u0002J\b\u0010[\u001a\u00020\u000fH\u0016J\b\u0010\\\u001a\u00020 H&J\u0010\u0010]\u001a\u00020 2\b\b\u0002\u0010^\u001a\u00020 J\u0010\u0010_\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020*H\u0004J\b\u0010`\u001a\u00020 H\u0002J\"\u0010a\u001a\u0002Hb\"\u0004\b\u0000\u0010b2\f\u0010c\u001a\b\u0012\u0004\u0012\u0002Hb0SH\u0082\b¢\u0006\u0002\u0010dJC\u0010e\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010f\u001a\u00020 2!\u00100\u001a\u001d\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(4\u0012\u0004\u0012\u00020\u001c01H\u0002R\u0012\u0010\u0003\u001a\u00020\u00048\u0004@\u0004X\u0085\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0010\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u0011X¤\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006g"}, d2 = {"Lkotlinx/serialization/json/internal/AbstractJsonLexer;", "", "()V", "currentPosition", "", "escapedString", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "getEscapedString", "()Ljava/lang/StringBuilder;", "setEscapedString", "(Ljava/lang/StringBuilder;)V", "path", "Lkotlinx/serialization/json/internal/JsonPath;", "peekedString", "", "source", "", "getSource", "()Ljava/lang/CharSequence;", "appendEsc", "startPosition", "appendEscape", "lastPosition", "current", "appendHex", "startPos", "appendRange", "", "fromIndex", "toIndex", "canConsumeValue", "", "consumeBoolean", "start", "consumeBooleanLenient", "consumeBooleanLiteral", "literalSuffix", "consumeKeyString", "consumeNextToken", "", "expected", "", "consumeNumericLiteral", "", "consumeString", "consumeStringChunked", "isLenient", "consumeChunk", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "stringChunk", "consumeStringLenient", "consumeStringLenientNotNull", "decodedString", "discardPeeked", "ensureHaveChars", "expectEof", "fail", "", "expectedToken", "wasConsumed", "fail$kotlinx_serialization_json", "message", "position", "hint", "failOnUnknownKey", "key", "fromHexChar", "indexOf", "char", "insideString", "isNotEof", "isValidValueStart", "c", "peekLeadingMatchingValue", "keyToMatch", "peekNextToken", "peekString", "prefetchOrEof", "require", "condition", "Lkotlin/Function0;", "require$kotlinx_serialization_json", "skipElement", "allowLenientStrings", "skipWhitespaces", "substring", "endPos", "takePeeked", "toString", "tryConsumeComma", "tryConsumeNull", "doConsume", "unexpectedToken", "wasUnquotedString", "withPositionRollback", "T", "action", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "writeRange", "currentChunkHasEscape", "kotlinx-serialization-json"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* renamed from: kotlinx.serialization.json.internal.AbstractJsonLexer, reason: from toString */
/* loaded from: C:\Users\Administrator\WorkBuddy\20260410212817\PandaTurbo\app\src\main\assets\lspoed\classes17.dex */
public abstract class JsonReader {
    protected int currentPosition;
    private String peekedString;
    public final JsonPath path = new JsonPath();
    private StringBuilder escapedString = new StringBuilder();

    public abstract boolean canConsumeValue();

    public abstract String consumeKeyString();

    public abstract byte consumeNextToken();

    protected abstract CharSequence getSource();

    public abstract String peekLeadingMatchingValue(String keyToMatch, boolean isLenient);

    public abstract int prefetchOrEof(int position);

    public abstract boolean tryConsumeComma();

    public void ensureHaveChars() {
    }

    public final boolean isNotEof() {
        return peekNextToken() != 10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isValidValueStart(char c) {
        return !(((c == '}' || c == ']') || c == ':') || c == ',');
    }

    public final void expectEof() {
        byte nextToken = consumeNextToken();
        if (nextToken != 10) {
            fail$default(this, "Expected EOF after parsing, but had " + getSource().charAt(this.currentPosition - 1) + " instead", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final StringBuilder getEscapedString() {
        return this.escapedString;
    }

    protected final void setEscapedString(StringBuilder sb) {
        Intrinsics.checkNotNullParameter(sb, "<set-?>");
        this.escapedString = sb;
    }

    public final byte consumeNextToken(byte expected) {
        byte token = consumeNextToken();
        if (token != expected) {
            fail$kotlinx_serialization_json$default(this, expected, false, 2, null);
            throw new KotlinNothingValueException();
        }
        return token;
    }

    public void consumeNextToken(char expected) {
        ensureHaveChars();
        CharSequence source = getSource();
        int cpos = this.currentPosition;
        while (true) {
            int cpos2 = prefetchOrEof(cpos);
            if (cpos2 != -1) {
                int cpos3 = cpos2 + 1;
                char c = source.charAt(cpos2);
                if (c != ' ' && c != '\n' && c != '\r' && c != '\t') {
                    this.currentPosition = cpos3;
                    if (c == expected) {
                        return;
                    } else {
                        unexpectedToken(expected);
                    }
                }
                cpos = cpos3;
            } else {
                this.currentPosition = cpos2;
                unexpectedToken(expected);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void unexpectedToken(char expected) {
        int i = this.currentPosition;
        if (i > 0 && expected == '\"') {
            int snapshot$iv = this.currentPosition;
            try {
                this.currentPosition = i - 1;
                String inputLiteral = consumeStringLenient();
                this.currentPosition = snapshot$iv;
                if (Intrinsics.areEqual(inputLiteral, AbstractJsonLexerKt.NULL)) {
                    fail("Expected string literal but 'null' literal was found", this.currentPosition - 1, AbstractJsonLexerKt.coerceInputValuesHint);
                    throw new KotlinNothingValueException();
                }
            } catch (Throwable th) {
                this.currentPosition = snapshot$iv;
                throw th;
            }
        }
        fail$kotlinx_serialization_json$default(this, AbstractJsonLexerKt.charToTokenClass(expected), false, 2, null);
        throw new KotlinNothingValueException();
    }

    public static /* synthetic */ Void fail$kotlinx_serialization_json$default(JsonReader jsonReader, byte b, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fail");
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return jsonReader.fail$kotlinx_serialization_json(b, z);
    }

    public final Void fail$kotlinx_serialization_json(byte expectedToken, boolean wasConsumed) {
        String expected = AbstractJsonLexerKt.tokenDescription(expectedToken);
        int position = this.currentPosition;
        if (wasConsumed) {
            position--;
        }
        String s = (this.currentPosition == getSource().length() || position < 0) ? "EOF" : String.valueOf(getSource().charAt(position));
        fail$default(this, "Expected " + expected + ", but had '" + s + "' instead", position, null, 4, null);
        throw new KotlinNothingValueException();
    }

    public final byte peekNextToken() {
        CharSequence source = getSource();
        int cpos = this.currentPosition;
        while (true) {
            int cpos2 = prefetchOrEof(cpos);
            if (cpos2 != -1) {
                char ch = source.charAt(cpos2);
                if (ch == ' ' || ch == '\n' || ch == '\r' || ch == '\t') {
                    cpos = cpos2 + 1;
                } else {
                    this.currentPosition = cpos2;
                    return AbstractJsonLexerKt.charToTokenClass(ch);
                }
            } else {
                this.currentPosition = cpos2;
                return (byte) 10;
            }
        }
    }

    public static /* synthetic */ boolean tryConsumeNull$default(JsonReader jsonReader, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryConsumeNull");
        }
        if ((i & 1) != 0) {
            z = true;
        }
        return jsonReader.tryConsumeNull(z);
    }

    public final boolean tryConsumeNull(boolean doConsume) {
        int current = prefetchOrEof(skipWhitespaces());
        int len = getSource().length() - current;
        if (len < 4 || current == -1) {
            return false;
        }
        for (int i = 0; i < 4; i++) {
            if (AbstractJsonLexerKt.NULL.charAt(i) != getSource().charAt(current + i)) {
                return false;
            }
        }
        if (len > 4 && AbstractJsonLexerKt.charToTokenClass(getSource().charAt(current + 4)) == 0) {
            return false;
        }
        if (doConsume) {
            this.currentPosition = current + 4;
            return true;
        }
        return true;
    }

    public int skipWhitespaces() {
        int current;
        char c;
        int current2 = this.currentPosition;
        while (true) {
            current = prefetchOrEof(current2);
            if (current == -1 || !((c = getSource().charAt(current)) == ' ' || c == '\n' || c == '\r' || c == '\t')) {
                break;
            }
            current2 = current + 1;
        }
        this.currentPosition = current;
        return current;
    }

    public final String peekString(boolean isLenient) {
        String string;
        byte token = peekNextToken();
        if (isLenient) {
            if (token != 1 && token != 0) {
                return null;
            }
            string = consumeStringLenient();
        } else {
            if (token != 1) {
                return null;
            }
            string = consumeString();
        }
        this.peekedString = string;
        return string;
    }

    public final void discardPeeked() {
        this.peekedString = null;
    }

    public int indexOf(char r7, int startPos) {
        return StringsKt.indexOf$default(getSource(), r7, startPos, false, 4, (Object) null);
    }

    public String substring(int startPos, int endPos) {
        return getSource().subSequence(startPos, endPos).toString();
    }

    private final boolean insideString(boolean isLenient, char r5) {
        return isLenient ? AbstractJsonLexerKt.charToTokenClass(r5) == 0 : r5 != '\"';
    }

    public void consumeStringChunked(boolean isLenient, Function1<? super String, Unit> consumeChunk) {
        Intrinsics.checkNotNullParameter(consumeChunk, "consumeChunk");
        byte nextToken = peekNextToken();
        if (!isLenient || nextToken == 0) {
            if (!isLenient) {
                consumeNextToken('\"');
            }
            int currentPosition = this.currentPosition;
            int lastPosition = currentPosition;
            char charAt = getSource().charAt(currentPosition);
            boolean usedAppend = false;
            while (insideString(isLenient, charAt)) {
                if (!isLenient && charAt == '\\') {
                    usedAppend = true;
                    currentPosition = prefetchOrEof(appendEscape(lastPosition, currentPosition));
                    lastPosition = currentPosition;
                } else {
                    currentPosition++;
                }
                if (currentPosition >= getSource().length()) {
                    writeRange(lastPosition, currentPosition, usedAppend, consumeChunk);
                    usedAppend = false;
                    currentPosition = prefetchOrEof(currentPosition);
                    if (currentPosition == -1) {
                        fail$default(this, "EOF", currentPosition, null, 4, null);
                        throw new KotlinNothingValueException();
                    }
                    lastPosition = currentPosition;
                }
                charAt = getSource().charAt(currentPosition);
            }
            writeRange(lastPosition, currentPosition, usedAppend, consumeChunk);
            this.currentPosition = currentPosition;
            if (!isLenient) {
                consumeNextToken('\"');
            }
        }
    }

    private final void writeRange(int fromIndex, int toIndex, boolean currentChunkHasEscape, Function1<? super String, Unit> consumeChunk) {
        if (currentChunkHasEscape) {
            consumeChunk.invoke(decodedString(fromIndex, toIndex));
        } else {
            consumeChunk.invoke(substring(fromIndex, toIndex));
        }
    }

    public final String consumeString() {
        if (this.peekedString != null) {
            return takePeeked();
        }
        return consumeKeyString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String consumeString(CharSequence source, int startPosition, int current) {
        String string;
        Intrinsics.checkNotNullParameter(source, "source");
        int currentPosition = current;
        int lastPosition = startPosition;
        char charAt = source.charAt(currentPosition);
        boolean usedAppend = false;
        while (charAt != '\"') {
            if (charAt == '\\') {
                usedAppend = true;
                currentPosition = prefetchOrEof(appendEscape(lastPosition, currentPosition));
                if (currentPosition == -1) {
                    fail$default(this, "Unexpected EOF", currentPosition, null, 4, null);
                    throw new KotlinNothingValueException();
                }
                lastPosition = currentPosition;
            } else {
                currentPosition++;
                if (currentPosition >= source.length()) {
                    usedAppend = true;
                    appendRange(lastPosition, currentPosition);
                    currentPosition = prefetchOrEof(currentPosition);
                    if (currentPosition == -1) {
                        fail$default(this, "Unexpected EOF", currentPosition, null, 4, null);
                        throw new KotlinNothingValueException();
                    }
                    lastPosition = currentPosition;
                } else {
                    continue;
                }
            }
            charAt = source.charAt(currentPosition);
        }
        if (!usedAppend) {
            string = substring(lastPosition, currentPosition);
        } else {
            string = decodedString(lastPosition, currentPosition);
        }
        this.currentPosition = currentPosition + 1;
        return string;
    }

    private final int appendEscape(int lastPosition, int current) {
        appendRange(lastPosition, current);
        return appendEsc(current + 1);
    }

    private final String decodedString(int lastPosition, int currentPosition) {
        appendRange(lastPosition, currentPosition);
        String result = this.escapedString.toString();
        Intrinsics.checkNotNullExpressionValue(result, "toString(...)");
        this.escapedString.setLength(0);
        return result;
    }

    private final String takePeeked() {
        String str = this.peekedString;
        Intrinsics.checkNotNull(str);
        this.peekedString = null;
        return str;
    }

    public final String consumeStringLenientNotNull() {
        String result = consumeStringLenient();
        if (Intrinsics.areEqual(result, AbstractJsonLexerKt.NULL) && wasUnquotedString()) {
            fail$default(this, "Unexpected 'null' value instead of string literal", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        return result;
    }

    private final boolean wasUnquotedString() {
        return getSource().charAt(this.currentPosition - 1) != '\"';
    }

    public final String consumeStringLenient() {
        String result;
        if (this.peekedString != null) {
            return takePeeked();
        }
        int current = skipWhitespaces();
        if (current >= getSource().length() || current == -1) {
            fail$default(this, "EOF", current, null, 4, null);
            throw new KotlinNothingValueException();
        }
        byte token = AbstractJsonLexerKt.charToTokenClass(getSource().charAt(current));
        if (token == 1) {
            return consumeString();
        }
        if (token != 0) {
            fail$default(this, "Expected beginning of the string, but got " + getSource().charAt(current), 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        boolean usedAppend = false;
        while (AbstractJsonLexerKt.charToTokenClass(getSource().charAt(current)) == 0) {
            current++;
            if (current >= getSource().length()) {
                usedAppend = true;
                appendRange(this.currentPosition, current);
                int eof = prefetchOrEof(current);
                if (eof == -1) {
                    this.currentPosition = current;
                    return decodedString(0, 0);
                }
                current = eof;
            }
        }
        if (!usedAppend) {
            result = substring(this.currentPosition, current);
        } else {
            result = decodedString(this.currentPosition, current);
        }
        this.currentPosition = current;
        return result;
    }

    protected void appendRange(int fromIndex, int toIndex) {
        this.escapedString.append(getSource(), fromIndex, toIndex);
    }

    private final int appendEsc(int startPosition) {
        int currentPosition = prefetchOrEof(startPosition);
        if (currentPosition == -1) {
            fail$default(this, "Expected escape sequence to continue, got EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int currentPosition2 = currentPosition + 1;
        char currentChar = getSource().charAt(currentPosition);
        if (currentChar == 'u') {
            return appendHex(getSource(), currentPosition2);
        }
        char c = AbstractJsonLexerKt.escapeToChar(currentChar);
        if (c == 0) {
            fail$default(this, "Invalid escaped char '" + currentChar + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        this.escapedString.append(c);
        return currentPosition2;
    }

    private final int appendHex(CharSequence source, int startPos) {
        if (startPos + 4 < source.length()) {
            this.escapedString.append((char) ((fromHexChar(source, startPos) << 12) + (fromHexChar(source, startPos + 1) << 8) + (fromHexChar(source, startPos + 2) << 4) + fromHexChar(source, startPos + 3)));
            return startPos + 4;
        }
        this.currentPosition = startPos;
        ensureHaveChars();
        if (this.currentPosition + 4 < source.length()) {
            return appendHex(source, this.currentPosition);
        }
        fail$default(this, "Unexpected EOF during unicode escape", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public static /* synthetic */ void require$kotlinx_serialization_json$default(JsonReader $this, boolean condition, int position, Function0 message, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: require");
        }
        if ((i & 2) != 0) {
            position = $this.currentPosition;
        }
        Intrinsics.checkNotNullParameter(message, "message");
        if (!condition) {
            fail$default($this, (String) message.invoke(), position, null, 4, null);
            throw new KotlinNothingValueException();
        }
    }

    public final void require$kotlinx_serialization_json(boolean condition, int position, Function0<String> message) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (!condition) {
            fail$default(this, message.invoke(), position, null, 4, null);
            throw new KotlinNothingValueException();
        }
    }

    private final int fromHexChar(CharSequence source, int currentPosition) {
        char character = source.charAt(currentPosition);
        if ('0' <= character && character < ':') {
            return character - '0';
        }
        if ('a' <= character && character < 'g') {
            return (character - 'a') + 10;
        }
        if ('A' <= character && character < 'G') {
            return (character - 'A') + 10;
        }
        fail$default(this, "Invalid toHexChar char '" + character + "' in unicode escape", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    public final void skipElement(boolean allowLenientStrings) {
        List tokenStack = new ArrayList();
        byte lastToken = peekNextToken();
        if (lastToken != 8 && lastToken != 6) {
            consumeStringLenient();
            return;
        }
        while (true) {
            byte lastToken2 = peekNextToken();
            boolean z = true;
            if (lastToken2 == 1) {
                if (allowLenientStrings) {
                    consumeStringLenient();
                } else {
                    consumeKeyString();
                }
            } else {
                if (lastToken2 != 8 && lastToken2 != 6) {
                    z = false;
                }
                if (z) {
                    tokenStack.add(Byte.valueOf(lastToken2));
                } else if (lastToken2 == 9) {
                    if (((Number) CollectionsKt.last(tokenStack)).byteValue() != 8) {
                        throw JsonExceptionsKt.JsonDecodingException(this.currentPosition, "found ] instead of } at path: " + this.path, getSource());
                    }
                    CollectionsKt.removeLast(tokenStack);
                } else if (lastToken2 == 7) {
                    if (((Number) CollectionsKt.last(tokenStack)).byteValue() != 6) {
                        throw JsonExceptionsKt.JsonDecodingException(this.currentPosition, "found } instead of ] at path: " + this.path, getSource());
                    }
                    CollectionsKt.removeLast(tokenStack);
                } else if (lastToken2 == 10) {
                    fail$default(this, "Unexpected end of input due to malformed JSON during ignoring unknown keys", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
                consumeNextToken();
                if (tokenStack.size() == 0) {
                    return;
                }
            }
        }
    }

    public String toString() {
        return "JsonReader(source='" + ((Object) getSource()) + "', currentPosition=" + this.currentPosition + ')';
    }

    public final void failOnUnknownKey(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        String processed = substring(0, this.currentPosition);
        int lastIndexOf = StringsKt.lastIndexOf$default((CharSequence) processed, key, 0, false, 6, (Object) null);
        fail("Encountered an unknown key '" + key + '\'', lastIndexOf, AbstractJsonLexerKt.ignoreUnknownKeysHint);
        throw new KotlinNothingValueException();
    }

    public static /* synthetic */ Void fail$default(JsonReader jsonReader, String str, int i, String str2, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fail");
        }
        if ((i2 & 2) != 0) {
            i = jsonReader.currentPosition;
        }
        if ((i2 & 4) != 0) {
            str2 = "";
        }
        return jsonReader.fail(str, i, str2);
    }

    public final Void fail(String message, int position, String hint) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(hint, "hint");
        String hintMessage = hint.length() == 0 ? "" : '\n' + hint;
        throw JsonExceptionsKt.JsonDecodingException(position, message + " at path: " + this.path.getPath() + hintMessage, getSource());
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x0186, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0182, code lost:
    
        if (r11 == r13) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0184, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0187, code lost:
    
        r12 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0188, code lost:
    
        if (r13 == r11) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x018a, code lost:
    
        if (r7 == 0) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x018e, code lost:
    
        if (r13 == (r11 - 1)) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0268, code lost:
    
        fail$default(r23, "Expected numeric literal", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0278, code lost:
    
        throw new kotlin.KotlinNothingValueException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0197, code lost:
    
        if (r8 == false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0199, code lost:
    
        if (r12 == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01a3, code lost:
    
        if (getSource().charAt(r11) != '\"') goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01a5, code lost:
    
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01a8, code lost:
    
        fail$default(r23, "Expected closing quotation mark", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01b8, code lost:
    
        throw new kotlin.KotlinNothingValueException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01b9, code lost:
    
        fail$default(r23, "EOF", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01c9, code lost:
    
        throw new kotlin.KotlinNothingValueException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ca, code lost:
    
        r23.currentPosition = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01cc, code lost:
    
        if (r16 == false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01ce, code lost:
    
        r0 = r9 * consumeNumericLiteral$calculateExponent(r20, r18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01dd, code lost:
    
        if (r0 > 9.223372036854776E18d) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01e3, code lost:
    
        if (r0 < (-9.223372036854776E18d)) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01eb, code lost:
    
        if (java.lang.Math.floor(r0) != r0) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01ed, code lost:
    
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01f2, code lost:
    
        if (r19 == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01f4, code lost:
    
        r9 = (long) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0247, code lost:
    
        if (r7 == 0) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:?, code lost:
    
        return r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x024f, code lost:
    
        if (r9 == Long.MIN_VALUE) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0252, code lost:
    
        return -r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0253, code lost:
    
        fail$default(r23, "Numeric value overflow", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0263, code lost:
    
        throw new kotlin.KotlinNothingValueException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01f8, code lost:
    
        fail$default(r23, "Can't convert " + r0 + " to Long", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x022c, code lost:
    
        throw new kotlin.KotlinNothingValueException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01f0, code lost:
    
        r19 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x022d, code lost:
    
        fail$default(r23, "Numeric value overflow", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0241, code lost:
    
        throw new kotlin.KotlinNothingValueException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long consumeNumericLiteral() {
        /*
            Method dump skipped, instructions count: 650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.JsonReader.consumeNumericLiteral():long");
    }

    private static final double consumeNumericLiteral$calculateExponent(long exponentAccumulator, boolean isExponentPositive) {
        if (!isExponentPositive) {
            return Math.pow(10.0d, -exponentAccumulator);
        }
        if (isExponentPositive) {
            return Math.pow(10.0d, exponentAccumulator);
        }
        throw new NoWhenBranchMatchedException();
    }

    public final boolean consumeBoolean() {
        return consumeBoolean(skipWhitespaces());
    }

    public final boolean consumeBooleanLenient() {
        boolean hasQuotation;
        int current = skipWhitespaces();
        if (current == getSource().length()) {
            fail$default(this, "EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        if (getSource().charAt(current) == '\"') {
            current++;
            hasQuotation = true;
        } else {
            hasQuotation = false;
        }
        boolean result = consumeBoolean(current);
        if (hasQuotation) {
            if (this.currentPosition == getSource().length()) {
                fail$default(this, "EOF", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            if (getSource().charAt(this.currentPosition) != '\"') {
                fail$default(this, "Expected closing quotation mark", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            this.currentPosition++;
        }
        return result;
    }

    private final boolean consumeBoolean(int start) {
        int current = prefetchOrEof(start);
        if (current >= getSource().length() || current == -1) {
            fail$default(this, "EOF", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int current2 = current + 1;
        switch (getSource().charAt(current) | 32) {
            case LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY /* 102 */:
                consumeBooleanLiteral("alse", current2);
                return false;
            case 116:
                consumeBooleanLiteral("rue", current2);
                return true;
            default:
                fail$default(this, "Expected valid boolean literal prefix, but had '" + consumeStringLenient() + '\'', 0, null, 6, null);
                throw new KotlinNothingValueException();
        }
    }

    private final void consumeBooleanLiteral(String literalSuffix, int current) {
        if (getSource().length() - current < literalSuffix.length()) {
            fail$default(this, "Unexpected end of boolean literal", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int length = literalSuffix.length();
        for (int i = 0; i < length; i++) {
            char expected = literalSuffix.charAt(i);
            char actual = getSource().charAt(current + i);
            if (expected != (actual | ' ')) {
                fail$default(this, "Expected valid boolean literal prefix, but had '" + consumeStringLenient() + '\'', 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
        }
        int i2 = literalSuffix.length();
        this.currentPosition = i2 + current;
    }

    private final <T> T withPositionRollback(Function0<? extends T> action) {
        int snapshot = this.currentPosition;
        try {
            return action.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            this.currentPosition = snapshot;
            InlineMarker.finallyEnd(1);
        }
    }
}
