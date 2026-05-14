.class public Lcom/lidroid/xutils/http/SyncHttpHandler;
.super Ljava/lang/Object;
.source "SyncHttpHandler.java"


# instance fields
.field private charset:Ljava/lang/String;

.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private expiry:J

.field private httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

.field private requestMethod:Ljava/lang/String;

.field private requestUrl:Ljava/lang/String;

.field private retriedTimes:I


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)V
    .locals 2
    .param p1, "client"    # Lorg/apache/http/impl/client/AbstractHttpClient;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "charset"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->retriedTimes:I

    .line 56
    invoke-static {}, Lcom/lidroid/xutils/http/HttpCache;->getDefaultExpiryTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->expiry:J

    .line 50
    iput-object p1, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 51
    iput-object p2, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    .line 52
    iput-object p3, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->charset:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private handleResponse(Lorg/apache/http/HttpResponse;)Lcom/lidroid/xutils/http/ResponseStream;
    .locals 9
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    if-eqz p1, :cond_6

    .line 107
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 108
    .local v0, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 109
    .local v1, "statusCode":I
    const/16 v2, 0x12c

    if-ge v1, v2, :cond_0

    .line 110
    new-instance v2, Lcom/lidroid/xutils/http/ResponseStream;

    iget-object v5, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->charset:Ljava/lang/String;

    iget-object v6, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->requestUrl:Ljava/lang/String;

    iget-wide v7, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->expiry:J

    move-object v3, v2

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/lidroid/xutils/http/ResponseStream;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;J)V

    .line 111
    .local v2, "responseStream":Lcom/lidroid/xutils/http/ResponseStream;
    iget-object v3, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lidroid/xutils/http/ResponseStream;->setRequestMethod(Ljava/lang/String;)V

    .line 112
    return-object v2

    .line 113
    .end local v2    # "responseStream":Lcom/lidroid/xutils/http/ResponseStream;
    :cond_0
    const/16 v2, 0x12d

    if-eq v1, v2, :cond_3

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    const/16 v2, 0x1a0

    if-ne v1, v2, :cond_2

    .line 122
    new-instance v2, Lcom/lidroid/xutils/exception/HttpException;

    const-string v3, "maybe the file has downloaded completely"

    invoke-direct {v2, v1, v3}, Lcom/lidroid/xutils/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 124
    :cond_2
    new-instance v2, Lcom/lidroid/xutils/exception/HttpException;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/lidroid/xutils/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 114
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    if-nez v2, :cond_4

    .line 115
    new-instance v2, Lcom/lidroid/xutils/http/callback/DefaultHttpRedirectHandler;

    invoke-direct {v2}, Lcom/lidroid/xutils/http/callback/DefaultHttpRedirectHandler;-><init>()V

    iput-object v2, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    .line 117
    :cond_4
    iget-object v2, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    invoke-interface {v2, p1}, Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;->getDirectRequest(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v2

    .line 118
    .local v2, "request":Lorg/apache/http/client/methods/HttpRequestBase;
    if-eqz v2, :cond_5

    .line 119
    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/http/SyncHttpHandler;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseStream;

    move-result-object v3

    return-object v3

    .line 126
    .end local v2    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_5
    const/4 v2, 0x0

    return-object v2

    .line 105
    .end local v0    # "status":Lorg/apache/http/StatusLine;
    .end local v1    # "statusCode":I
    :cond_6
    new-instance v0, Lcom/lidroid/xutils/exception/HttpException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/exception/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseStream;
    .locals 6
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/HttpException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v0

    .line 66
    .local v0, "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    :goto_0
    const/4 v1, 0x1

    .line 67
    .local v1, "retry":Z
    const/4 v2, 0x0

    .line 69
    .local v2, "exception":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->requestUrl:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->requestMethod:Ljava/lang/String;

    .line 71
    sget-object v3, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v4, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lidroid/xutils/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    sget-object v3, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v4, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->requestUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lidroid/xutils/http/HttpCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 74
    new-instance v4, Lcom/lidroid/xutils/http/ResponseStream;

    invoke-direct {v4, v3}, Lcom/lidroid/xutils/http/ResponseStream;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 78
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v4, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v3, p1, v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 79
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v3}, Lcom/lidroid/xutils/http/SyncHttpHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/lidroid/xutils/http/ResponseStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lidroid/xutils/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 92
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v3

    .line 93
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 94
    invoke-virtual {v2, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 95
    iget v4, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->retriedTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->retriedTimes:I

    iget-object v5, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v4, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_1

    .line 90
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v3

    .line 91
    .local v3, "e":Lcom/lidroid/xutils/exception/HttpException;
    throw v3

    .line 86
    .end local v3    # "e":Lcom/lidroid/xutils/exception/HttpException;
    :catch_1
    move-exception v3

    .line 87
    .local v3, "e":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 88
    invoke-virtual {v2, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 89
    iget v4, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->retriedTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->retriedTimes:I

    iget-object v5, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v4, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    .end local v3    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 83
    :catch_2
    move-exception v3

    .line 84
    .local v3, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 85
    iget v4, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->retriedTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->retriedTimes:I

    iget-object v5, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v4, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 80
    :catch_3
    move-exception v3

    .line 81
    .local v3, "e":Ljava/net/UnknownHostException;
    move-object v2, v3

    .line 82
    iget v4, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->retriedTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->retriedTimes:I

    iget-object v5, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v4, v5}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    .line 97
    .end local v3    # "e":Ljava/net/UnknownHostException;
    :goto_1
    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 98
    :cond_1
    new-instance v3, Lcom/lidroid/xutils/exception/HttpException;

    invoke-direct {v3, v2}, Lcom/lidroid/xutils/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v3

    :goto_3
    goto :goto_2
.end method

.method public setExpiry(J)V
    .locals 0
    .param p1, "expiry"    # J

    .line 59
    iput-wide p1, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->expiry:J

    .line 60
    return-void
.end method

.method public setHttpRedirectHandler(Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;)V
    .locals 0
    .param p1, "httpRedirectHandler"    # Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    .line 40
    iput-object p1, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    .line 41
    return-void
.end method
