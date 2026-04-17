.class final Lretrofit2/HttpServiceMethod$SuspendForBody;
.super Lretrofit2/HttpServiceMethod;
.source "HttpServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/HttpServiceMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SuspendForBody"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/HttpServiceMethod<",
        "TResponseT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final callAdapter:Lretrofit2/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/CallAdapter<",
            "TResponseT;",
            "Lretrofit2/Call<",
            "TResponseT;>;>;"
        }
    .end annotation
.end field

.field private final isNullable:Z


# direct methods
.method constructor <init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;Z)V
    .registers 6
    .param p1, "requestFactory"    # Lretrofit2/RequestFactory;
    .param p2, "callFactory"    # Lokhttp3/Call$Factory;
    .param p5, "isNullable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/RequestFactory;",
            "Lokhttp3/Call$Factory;",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;",
            "Lretrofit2/CallAdapter<",
            "TResponseT;",
            "Lretrofit2/Call<",
            "TResponseT;>;>;Z)V"
        }
    .end annotation

    .line 208
    .local p0, "this":Lretrofit2/HttpServiceMethod$SuspendForBody;, "Lretrofit2/HttpServiceMethod$SuspendForBody<TResponseT;>;"
    .local p3, "responseConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<Lokhttp3/ResponseBody;TResponseT;>;"
    .local p4, "callAdapter":Lretrofit2/CallAdapter;, "Lretrofit2/CallAdapter<TResponseT;Lretrofit2/Call<TResponseT;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lretrofit2/HttpServiceMethod;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V

    .line 209
    iput-object p4, p0, Lretrofit2/HttpServiceMethod$SuspendForBody;->callAdapter:Lretrofit2/CallAdapter;

    .line 210
    iput-boolean p5, p0, Lretrofit2/HttpServiceMethod$SuspendForBody;->isNullable:Z

    .line 211
    return-void
.end method


# virtual methods
.method protected adapt(Lretrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 215
    .local p0, "this":Lretrofit2/HttpServiceMethod$SuspendForBody;, "Lretrofit2/HttpServiceMethod$SuspendForBody<TResponseT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TResponseT;>;"
    iget-object v0, p0, Lretrofit2/HttpServiceMethod$SuspendForBody;->callAdapter:Lretrofit2/CallAdapter;

    invoke-interface {v0, p1}, Lretrofit2/CallAdapter;->adapt(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lretrofit2/Call;

    .line 218
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    check-cast v0, Lkotlin/coroutines/Continuation;

    .line 229
    .local v0, "continuation":Lkotlin/coroutines/Continuation;, "Lkotlin/coroutines/Continuation<TResponseT;>;"
    :try_start_10
    iget-boolean v1, p0, Lretrofit2/HttpServiceMethod$SuspendForBody;->isNullable:Z

    if-eqz v1, :cond_19

    .line 230
    invoke-static {p1, v0}, Lretrofit2/KotlinExtensions;->awaitNullable(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1d

    .line 231
    :cond_19
    invoke-static {p1, v0}, Lretrofit2/KotlinExtensions;->await(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_1e

    .line 229
    :goto_1d
    return-object v1

    .line 232
    :catch_1e
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Lretrofit2/KotlinExtensions;->suspendAndThrow(Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
