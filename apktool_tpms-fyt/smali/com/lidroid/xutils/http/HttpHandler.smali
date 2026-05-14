.class public Lcom/lidroid/xutils/http/HttpHandler;
.super Lcom/lidroid/xutils/task/PriorityAsyncTask;
.source "HttpHandler.java"

# interfaces
.implements Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;,
        Lcom/lidroid/xutils/http/HttpHandler$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lidroid/xutils/task/PriorityAsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;"
    }
.end annotation


# static fields
.field private static final UPDATE_FAILURE:I = 0x3

.field private static final UPDATE_LOADING:I = 0x2

.field private static final UPDATE_START:I = 0x1

.field private static final UPDATE_SUCCESS:I = 0x4

.field private static final notUseApacheRedirectHandler:Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;


# instance fields
.field private autoRename:Z

.field private autoResume:Z

.field private callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/http/callback/RequestCallBack<",
            "TT;>;"
        }
    .end annotation
.end field

.field private charset:Ljava/lang/String;

.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private expiry:J

.field private fileSavePath:Ljava/lang/String;

.field private httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

.field private isDownloadingFile:Z

.field private isUploading:Z

.field private lastUpdateTime:J

.field private request:Lorg/apache/http/client/methods/HttpRequestBase;

.field private requestMethod:Ljava/lang/String;

.field private requestUrl:Ljava/lang/String;

.field private retriedCount:I

.field private state:Lcom/lidroid/xutils/http/HttpHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 344
    new-instance v0, Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;-><init>(Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;)V

    sput-object v0, Lcom/lidroid/xutils/http/HttpHandler;->notUseApacheRedirectHandler:Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;Lcom/lidroid/xutils/http/callback/RequestCallBack;)V
    .locals 2
    .param p1, "client"    # Lorg/apache/http/impl/client/AbstractHttpClient;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/client/AbstractHttpClient;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack<",
            "TT;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    .local p4, "callback":Lcom/lidroid/xutils/http/callback/RequestCallBack;, "Lcom/lidroid/xutils/http/callback/RequestCallBack<TT;>;"
    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->isUploading:Z

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    .line 61
    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->isDownloadingFile:Z

    .line 62
    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    .line 63
    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoRename:Z

    .line 74
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->WAITING:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    .line 80
    invoke-static {}, Lcom/lidroid/xutils/http/HttpCache;->getDefaultExpiryTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->expiry:J

    .line 67
    iput-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 68
    iput-object p2, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    .line 69
    iput-object p4, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    .line 70
    iput-object p3, p0, Lcom/lidroid/xutils/http/HttpHandler;->charset:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler;->notUseApacheRedirectHandler:Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 72
    return-void
.end method

.method private handleResponse(Lorg/apache/http/HttpResponse;)Lcom/lidroid/xutils/http/ResponseInfo;
    .locals 12
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Lcom/lidroid/xutils/http/ResponseInfo<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    if-eqz p1, :cond_b

    .line 230
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/HttpHandler;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 232
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 233
    .local v0, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 234
    .local v2, "statusCode":I
    const/16 v3, 0x12c

    if-ge v2, v3, :cond_5

    .line 235
    const/4 v3, 0x0

    .line 236
    .local v3, "result":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 237
    .local v10, "entity":Lorg/apache/http/HttpEntity;
    const/4 v11, 0x0

    if-eqz v10, :cond_4

    .line 238
    iput-boolean v11, p0, Lcom/lidroid/xutils/http/HttpHandler;->isUploading:Z

    .line 239
    iget-boolean v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->isDownloadingFile:Z

    if-eqz v4, :cond_3

    .line 240
    iget-boolean v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/lidroid/xutils/util/OtherUtils;->isSupportRange(Lorg/apache/http/HttpResponse;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    .line 241
    iget-boolean v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoRename:Z

    if-eqz v4, :cond_2

    invoke-static {p1}, Lcom/lidroid/xutils/util/OtherUtils;->getFileNameFromHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v9, v1

    .line 242
    .local v9, "responseFileName":Ljava/lang/String;
    new-instance v4, Lcom/lidroid/xutils/http/callback/FileDownloadHandler;

    invoke-direct {v4}, Lcom/lidroid/xutils/http/callback/FileDownloadHandler;-><init>()V

    .line 243
    .local v4, "downloadHandler":Lcom/lidroid/xutils/http/callback/FileDownloadHandler;
    iget-object v7, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    move-object v5, v10

    move-object v6, p0

    invoke-virtual/range {v4 .. v9}, Lcom/lidroid/xutils/http/callback/FileDownloadHandler;->handleEntity(Lorg/apache/http/HttpEntity;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 244
    .end local v4    # "downloadHandler":Lcom/lidroid/xutils/http/callback/FileDownloadHandler;
    .end local v9    # "responseFileName":Ljava/lang/String;
    goto :goto_1

    .line 245
    :cond_3
    new-instance v1, Lcom/lidroid/xutils/http/callback/StringDownloadHandler;

    invoke-direct {v1}, Lcom/lidroid/xutils/http/callback/StringDownloadHandler;-><init>()V

    .line 246
    .local v1, "downloadHandler":Lcom/lidroid/xutils/http/callback/StringDownloadHandler;
    iget-object v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->charset:Ljava/lang/String;

    invoke-virtual {v1, v10, p0, v4}, Lcom/lidroid/xutils/http/callback/StringDownloadHandler;->handleEntity(Lorg/apache/http/HttpEntity;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    sget-object v4, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v5, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lidroid/xutils/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 248
    sget-object v4, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v5, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestUrl:Ljava/lang/String;

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    iget-wide v7, p0, Lcom/lidroid/xutils/http/HttpHandler;->expiry:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/lidroid/xutils/http/HttpCache;->put(Ljava/lang/String;Ljava/lang/String;J)V

    .line 252
    .end local v1    # "downloadHandler":Lcom/lidroid/xutils/http/callback/StringDownloadHandler;
    :cond_4
    :goto_1
    new-instance v1, Lcom/lidroid/xutils/http/ResponseInfo;

    invoke-direct {v1, p1, v3, v11}, Lcom/lidroid/xutils/http/ResponseInfo;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V

    return-object v1

    .line 253
    .end local v3    # "result":Ljava/lang/Object;
    .end local v10    # "entity":Lorg/apache/http/HttpEntity;
    :cond_5
    const/16 v3, 0x12d

    if-eq v2, v3, :cond_8

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_6

    goto :goto_2

    .line 261
    :cond_6
    const/16 v1, 0x1a0

    if-ne v2, v1, :cond_7

    .line 262
    new-instance v1, Lcom/lidroid/xutils/exception/HttpException;

    const-string v3, "maybe the file has downloaded completely"

    invoke-direct {v1, v2, v3}, Lcom/lidroid/xutils/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 264
    :cond_7
    new-instance v1, Lcom/lidroid/xutils/exception/HttpException;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/lidroid/xutils/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 254
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/lidroid/xutils/http/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    if-nez v3, :cond_9

    .line 255
    new-instance v3, Lcom/lidroid/xutils/http/callback/DefaultHttpRedirectHandler;

    invoke-direct {v3}, Lcom/lidroid/xutils/http/callback/DefaultHttpRedirectHandler;-><init>()V

    iput-object v3, p0, Lcom/lidroid/xutils/http/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    .line 257
    :cond_9
    iget-object v3, p0, Lcom/lidroid/xutils/http/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    invoke-interface {v3, p1}, Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;->getDirectRequest(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v3

    .line 258
    .local v3, "request":Lorg/apache/http/client/methods/HttpRequestBase;
    if-eqz v3, :cond_a

    .line 259
    invoke-direct {p0, v3}, Lcom/lidroid/xutils/http/HttpHandler;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseInfo;

    move-result-object v1

    return-object v1

    .line 266
    .end local v3    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_a
    return-object v1

    .line 228
    .end local v0    # "status":Lorg/apache/http/StatusLine;
    .end local v2    # "statusCode":I
    :cond_b
    new-instance v0, Lcom/lidroid/xutils/exception/HttpException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/exception/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseInfo;
    .locals 7
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            ")",
            "Lcom/lidroid/xutils/http/ResponseInfo<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/HttpException;
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v0

    .line 101
    .local v0, "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    :goto_0
    iget-boolean v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->isDownloadingFile:Z

    if-eqz v1, :cond_1

    .line 102
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, "downloadFile":Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 104
    .local v2, "fileLen":J
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 107
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bytes="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RANGE"

    invoke-virtual {p1, v5, v4}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v1    # "downloadFile":Ljava/io/File;
    .end local v2    # "fileLen":J
    :cond_1
    const/4 v1, 0x1

    .line 113
    .local v1, "retry":Z
    const/4 v2, 0x0

    .line 115
    .local v2, "exception":Ljava/io/IOException;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestMethod:Ljava/lang/String;

    .line 116
    sget-object v4, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v5, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lidroid/xutils/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    sget-object v4, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v5, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lidroid/xutils/http/HttpCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 119
    new-instance v5, Lcom/lidroid/xutils/http/ResponseInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4, v3}, Lcom/lidroid/xutils/http/ResponseInfo;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V

    return-object v5

    .line 123
    .end local v4    # "result":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .line 124
    .local v4, "responseInfo":Lcom/lidroid/xutils/http/ResponseInfo;, "Lcom/lidroid/xutils/http/ResponseInfo<TT;>;"
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/HttpHandler;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 125
    iget-object v5, p0, Lcom/lidroid/xutils/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v6, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v5, p1, v6}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 126
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v5}, Lcom/lidroid/xutils/http/HttpHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/lidroid/xutils/http/ResponseInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lidroid/xutils/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    .line 128
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    return-object v4

    .line 141
    .end local v4    # "responseInfo":Lcom/lidroid/xutils/http/ResponseInfo;, "Lcom/lidroid/xutils/http/ResponseInfo<TT;>;"
    :catchall_0
    move-exception v4

    .line 142
    .local v4, "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 143
    invoke-virtual {v2, v4}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 144
    iget v5, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    iget-object v3, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v5, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_1

    .line 139
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v3

    .line 140
    .local v3, "e":Lcom/lidroid/xutils/exception/HttpException;
    throw v3

    .line 135
    .end local v3    # "e":Lcom/lidroid/xutils/exception/HttpException;
    :catch_1
    move-exception v4

    .line 136
    .local v4, "e":Ljava/lang/NullPointerException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 137
    invoke-virtual {v2, v4}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 138
    iget v5, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    iget-object v3, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v5, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    .end local v4    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 132
    :catch_2
    move-exception v4

    .line 133
    .local v4, "e":Ljava/io/IOException;
    move-object v2, v4

    .line 134
    iget v5, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    iget-object v3, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v5, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 129
    :catch_3
    move-exception v4

    .line 130
    .local v4, "e":Ljava/net/UnknownHostException;
    move-object v2, v4

    .line 131
    iget v5, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    iget-object v3, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v2, v5, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    .line 146
    .end local v4    # "e":Ljava/net/UnknownHostException;
    :goto_1
    if-eqz v1, :cond_4

    goto/16 :goto_0

    .line 147
    :cond_4
    new-instance v3, Lcom/lidroid/xutils/exception/HttpException;

    invoke-direct {v3, v2}, Lcom/lidroid/xutils/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v3

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 274
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    .line 276
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    .line 282
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/HttpHandler;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/HttpHandler;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    :goto_1
    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 289
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {v0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onCancelled()V

    .line 292
    :cond_2
    return-void
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/http/HttpHandler;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Object;

    .line 154
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v1, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 156
    :cond_0
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v0, v3, :cond_2

    .line 157
    aget-object v0, p1, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    .line 158
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->isDownloadingFile:Z

    .line 159
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    .line 160
    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoRename:Z

    .line 164
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v6, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-ne v0, v6, :cond_3

    return-object v2

    .line 166
    :cond_3
    aget-object v0, p1, v4

    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 167
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestUrl:Ljava/lang/String;

    .line 168
    iget-object v6, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    if-eqz v6, :cond_4

    .line 169
    iget-object v6, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    invoke-virtual {v6, v0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->setRequestUrl(Ljava/lang/String;)V

    .line 172
    :cond_4
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lidroid/xutils/http/HttpHandler;->lastUpdateTime:J

    .line 176
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/http/HttpHandler;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseInfo;

    move-result-object v0

    .line 177
    .local v0, "responseInfo":Lcom/lidroid/xutils/http/ResponseInfo;, "Lcom/lidroid/xutils/http/ResponseInfo<TT;>;"
    if-eqz v0, :cond_5

    .line 178
    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v0, v6, v5

    invoke-virtual {p0, v6}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/lidroid/xutils/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    return-object v2

    .line 181
    .end local v0    # "responseInfo":Lcom/lidroid/xutils/http/ResponseInfo;, "Lcom/lidroid/xutils/http/ResponseInfo<TT;>;"
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Lcom/lidroid/xutils/exception/HttpException;
    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    aput-object v0, v6, v5

    invoke-virtual {v0}, Lcom/lidroid/xutils/exception/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-virtual {p0, v6}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 185
    .end local v0    # "e":Lcom/lidroid/xutils/exception/HttpException;
    :cond_5
    return-object v2

    .line 154
    :cond_6
    :goto_1
    return-object v2
.end method

.method public getRequestCallBack()Lcom/lidroid/xutils/http/callback/RequestCallBack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack<",
            "TT;>;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    return-object v0
.end method

.method public getState()Lcom/lidroid/xutils/http/HttpHandler$State;
    .locals 1

    .line 77
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    return-object v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 10
    .param p1, "values"    # [Ljava/lang/Object;

    .line 196
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v1, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-eq v0, v1, :cond_8

    if-eqz p1, :cond_8

    array-length v0, p1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 197
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    array-length v0, p1

    if-eq v0, v3, :cond_2

    return-void

    .line 217
    :cond_2
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->SUCCESS:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    .line 218
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    aget-object v1, p1, v1

    check-cast v1, Lcom/lidroid/xutils/http/ResponseInfo;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V

    .line 219
    goto :goto_0

    .line 211
    :cond_3
    array-length v0, p1

    if-eq v0, v2, :cond_4

    return-void

    .line 212
    :cond_4
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->FAILURE:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    .line 213
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    aget-object v1, p1, v1

    check-cast v1, Lcom/lidroid/xutils/exception/HttpException;

    aget-object v2, p1, v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V

    .line 214
    goto :goto_0

    .line 203
    :cond_5
    array-length v0, p1

    if-eq v0, v2, :cond_6

    return-void

    .line 204
    :cond_6
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->LOADING:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    .line 205
    iget-object v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    .line 206
    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 207
    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 208
    iget-boolean v9, p0, Lcom/lidroid/xutils/http/HttpHandler;->isUploading:Z

    .line 205
    invoke-virtual/range {v4 .. v9}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onLoading(JJZ)V

    .line 209
    goto :goto_0

    .line 199
    :cond_7
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->STARTED:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    .line 200
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    invoke-virtual {v0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onStart()V

    .line 201
    nop

    .line 223
    :goto_0
    return-void

    .line 196
    :cond_8
    :goto_1
    return-void
.end method

.method public setExpiry(J)V
    .locals 0
    .param p1, "expiry"    # J

    .line 83
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    iput-wide p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->expiry:J

    .line 84
    return-void
.end method

.method public setHttpRedirectHandler(Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;)V
    .locals 0
    .param p1, "httpRedirectHandler"    # Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    .line 48
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    if-eqz p1, :cond_0

    .line 49
    iput-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    .line 51
    :cond_0
    return-void
.end method

.method public setRequestCallBack(Lcom/lidroid/xutils/http/callback/RequestCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack<",
            "TT;>;)V"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    .local p1, "callback":Lcom/lidroid/xutils/http/callback/RequestCallBack;, "Lcom/lidroid/xutils/http/callback/RequestCallBack<TT;>;"
    iput-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    .line 88
    return-void
.end method

.method public updateProgress(JJZ)Z
    .locals 12
    .param p1, "total"    # J
    .param p3, "current"    # J
    .param p5, "forceUpdateUI"    # Z

    .line 298
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v4, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-eq v1, v4, :cond_1

    .line 299
    const/4 v1, 0x3

    const/4 v4, 0x2

    if-eqz p5, :cond_0

    .line 300
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v1}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 301
    goto :goto_0

    .line 302
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 303
    .local v5, "currTime":J
    iget-wide v7, v0, Lcom/lidroid/xutils/http/HttpHandler;->lastUpdateTime:J

    sub-long v7, v5, v7

    iget-object v9, v0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    invoke-virtual {v9}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->getRate()I

    move-result v9

    int-to-long v9, v9

    cmp-long v11, v7, v9

    if-ltz v11, :cond_1

    .line 304
    iput-wide v5, v0, Lcom/lidroid/xutils/http/HttpHandler;->lastUpdateTime:J

    .line 305
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v4

    invoke-virtual {p0, v1}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 309
    .end local v5    # "currTime":J
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v4, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-eq v1, v4, :cond_2

    return v2

    :cond_2
    return v3
.end method
