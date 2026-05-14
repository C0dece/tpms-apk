.class abstract Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "DecompressingEntity.java"

# interfaces
.implements Lcom/lidroid/xutils/http/client/entity/UploadEntity;


# instance fields
.field private callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

.field private content:Ljava/io/InputStream;

.field private uncompressedLength:J

.field private uploadedSize:J


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 2
    .param p1, "wrapped"    # Lorg/apache/http/HttpEntity;

    .line 47
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uploadedSize:J

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    .line 48
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uncompressedLength:J

    .line 49
    return-void
.end method

.method private getDecompressingStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 57
    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->decorate(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "ex":Ljava/io/IOException;
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 60
    throw v1
.end method


# virtual methods
.method abstract decorate(Ljava/io/InputStream;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->getDecompressingStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    return-object v0

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->getDecompressingStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 84
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V
    .locals 0
    .param p1, "callBackHandler"    # Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    .line 125
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    .line 126
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 14
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    if-eqz p1, :cond_4

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "inStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 101
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 103
    .local v1, "tmp":[B
    nop

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "len":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 112
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 113
    iget-object v2, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v2, :cond_1

    .line 114
    iget-object v4, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v5, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uncompressedLength:J

    iget-wide v7, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uploadedSize:J

    const/4 v9, 0x1

    invoke-interface/range {v4 .. v9}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    nop

    .line 117
    .end local v1    # "tmp":[B
    .end local v3    # "len":I
    :cond_1
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 119
    return-void

    .line 104
    .restart local v1    # "tmp":[B
    .restart local v3    # "len":I
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 105
    iget-wide v4, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uploadedSize:J

    int-to-long v6, v3

    add-long v11, v4, v6

    iput-wide v11, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uploadedSize:J

    .line 106
    iget-object v2, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v2, :cond_0

    .line 107
    iget-object v8, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v9, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uncompressedLength:J

    const/4 v13, 0x0

    invoke-interface/range {v8 .. v13}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 108
    :cond_3
    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v4, "cancel"

    invoke-direct {v2, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "inStream":Ljava/io/InputStream;
    .end local p1    # "outStream":Ljava/io/OutputStream;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .end local v1    # "tmp":[B
    .end local v3    # "len":I
    .restart local v0    # "inStream":Ljava/io/InputStream;
    .restart local p1    # "outStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    .line 117
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 118
    throw v1

    .line 95
    .end local v0    # "inStream":Ljava/io/InputStream;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
