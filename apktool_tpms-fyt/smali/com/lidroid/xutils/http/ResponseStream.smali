.class public Lcom/lidroid/xutils/http/ResponseStream;
.super Ljava/io/InputStream;
.source "ResponseStream.java"


# instance fields
.field private _directResult:Ljava/lang/String;

.field private baseResponse:Lorg/apache/http/HttpResponse;

.field private baseStream:Ljava/io/InputStream;

.field private charset:Ljava/lang/String;

.field private expiry:J

.field private requestMethod:Ljava/lang/String;

.field private requestUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 61
    if-eqz p1, :cond_0

    .line 65
    iput-object p1, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;

    .line 66
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "result may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;J)V
    .locals 6
    .param p1, "baseResponse"    # Lorg/apache/http/HttpResponse;
    .param p2, "requestUrl"    # Ljava/lang/String;
    .param p3, "expiry"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    const-string v2, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lidroid/xutils/http/ResponseStream;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;J)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "baseResponse"    # Lorg/apache/http/HttpResponse;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "requestUrl"    # Ljava/lang/String;
    .param p4, "expiry"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 47
    if-eqz p1, :cond_0

    .line 51
    iput-object p1, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseResponse:Lorg/apache/http/HttpResponse;

    .line 52
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    .line 53
    iput-object p2, p0, Lcom/lidroid/xutils/http/ResponseStream;->charset:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/lidroid/xutils/http/ResponseStream;->requestUrl:Ljava/lang/String;

    .line 55
    iput-wide p4, p0, Lcom/lidroid/xutils/http/ResponseStream;->expiry:J

    .line 56
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseResponse may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 151
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 158
    return-void
.end method

.method public getBaseResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseResponse:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public getBaseStream()Ljava/io/InputStream;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->requestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readLimit"    # I

    .line 162
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 164
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 169
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 175
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 181
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public readFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "savePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    return-void

    .line 126
    :cond_1
    const/4 v0, 0x0

    .line 128
    .local v0, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 129
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 130
    .local v1, "ins":Ljava/io/BufferedInputStream;
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 131
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 132
    .local v3, "len":I
    nop

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    move v3, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 135
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v1    # "ins":Ljava/io/BufferedInputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "len":I
    nop

    .line 137
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 138
    iget-object v1, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 140
    return-void

    .line 133
    .restart local v1    # "ins":Ljava/io/BufferedInputStream;
    .restart local v2    # "buffer":[B
    .restart local v3    # "len":I
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    .end local v1    # "ins":Ljava/io/BufferedInputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "len":I
    :catchall_0
    move-exception v1

    .line 137
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 138
    iget-object v2, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 139
    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public readString()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/lidroid/xutils/http/ResponseStream;->charset:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 108
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, ""

    .line 110
    .local v2, "line":Ljava/lang/String;
    nop

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-nez v3, :cond_3

    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;

    .line 114
    iget-object v3, p0, Lcom/lidroid/xutils/http/ResponseStream;->requestUrl:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v4, p0, Lcom/lidroid/xutils/http/ResponseStream;->requestMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lidroid/xutils/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    sget-object v3, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v4, p0, Lcom/lidroid/xutils/http/ResponseStream;->requestUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;

    iget-wide v6, p0, Lcom/lidroid/xutils/http/ResponseStream;->expiry:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/lidroid/xutils/http/HttpCache;->put(Ljava/lang/String;Ljava/lang/String;J)V

    .line 117
    :cond_2
    iget-object v3, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v4, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 117
    return-object v3

    .line 111
    :cond_3
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 119
    iget-object v1, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 120
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 187
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 185
    .end local p0    # "this":Lcom/lidroid/xutils/http/ResponseStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setRequestMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestMethod"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/lidroid/xutils/http/ResponseStream;->requestMethod:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public skip(J)J
    .locals 2
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 193
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
