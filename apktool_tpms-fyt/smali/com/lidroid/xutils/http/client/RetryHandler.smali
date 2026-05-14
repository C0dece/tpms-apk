.class public Lcom/lidroid/xutils/http/client/RetryHandler;
.super Ljava/lang/Object;
.source "RetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# static fields
.field private static final RETRY_SLEEP_INTERVAL:I = 0x1f4

.field private static exceptionBlackList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static exceptionWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final maxRetries:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionBlackList:Ljava/util/HashSet;

    .line 43
    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    const-class v1, Lorg/apache/http/NoHttpResponseException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionBlackList:Ljava/util/HashSet;

    const-class v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionBlackList:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxRetries"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/lidroid/xutils/http/client/RetryHandler;->maxRetries:I

    .line 55
    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 7
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "retriedTimes"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 59
    const/4 v0, 0x1

    .line 61
    .local v0, "retry":Z
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    if-nez p3, :cond_0

    goto/16 :goto_4

    .line 65
    :cond_0
    const-string v2, "http.request_sent"

    invoke-interface {p3, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 66
    .local v2, "isReqSent":Ljava/lang/Object;
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 68
    .local v1, "sent":Z
    :goto_0
    iget v3, p0, Lcom/lidroid/xutils/http/client/RetryHandler;->maxRetries:I

    if-le p2, v3, :cond_2

    .line 69
    const/4 v0, 0x0

    .line 70
    goto :goto_2

    :cond_2
    sget-object v3, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionBlackList:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    const/4 v0, 0x0

    .line 72
    goto :goto_2

    :cond_3
    sget-object v3, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 73
    const/4 v0, 0x1

    goto :goto_1

    .line 74
    :cond_4
    if-nez v1, :cond_5

    .line 75
    const/4 v0, 0x1

    goto :goto_2

    .line 74
    :cond_5
    :goto_1
    nop

    .line 78
    :goto_2
    if-eqz v0, :cond_9

    .line 80
    :try_start_0
    const-string v3, "http.request"

    invoke-interface {p3, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 81
    .local v3, "currRequest":Ljava/lang/Object;
    if-eqz v3, :cond_8

    .line 82
    instance-of v4, v3, Lorg/apache/http/client/methods/HttpRequestBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "GET"

    if-eqz v4, :cond_7

    .line 83
    :try_start_1
    move-object v4, v3

    check-cast v4, Lorg/apache/http/client/methods/HttpRequestBase;

    .line 84
    .local v4, "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    .line 85
    .end local v4    # "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_6
    goto :goto_3

    :cond_7
    instance-of v4, v3, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v4, :cond_6

    .line 86
    move-object v4, v3

    check-cast v4, Lorg/apache/http/impl/client/RequestWrapper;

    .line 87
    .local v4, "requestWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v4}, Lorg/apache/http/impl/client/RequestWrapper;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v0, v5

    .line 89
    .end local v4    # "requestWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    goto :goto_3

    .line 90
    :cond_8
    const/4 v0, 0x0

    .line 91
    const-string v4, "retry error, curr request is null"

    invoke-static {v4}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .end local v3    # "currRequest":Ljava/lang/Object;
    goto :goto_3

    :catchall_0
    move-exception v3

    .line 94
    .local v3, "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 95
    const-string v4, "retry error"

    invoke-static {v4, v3}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    .line 100
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 103
    :cond_a
    return v0

    .line 62
    .end local v1    # "sent":Z
    .end local v2    # "isReqSent":Ljava/lang/Object;
    :cond_b
    :goto_4
    return v1
.end method
