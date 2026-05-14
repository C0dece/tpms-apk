.class public Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "InputStreamUploadEntity.java"

# interfaces
.implements Lcom/lidroid/xutils/http/client/entity/UploadEntity;


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

.field private final content:Ljava/io/InputStream;

.field private final length:J

.field private uploadedSize:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "length"    # J

    .line 41
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    .line 42
    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    .line 46
    iput-wide p2, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    .line 47
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 121
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V
    .locals 0
    .param p1, "callBackHandler"    # Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    .line 127
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    .line 128
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 22
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_9

    .line 67
    iget-object v3, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    .line 69
    .local v3, "inStream":Ljava/io/InputStream;
    const/16 v0, 0x800

    :try_start_0
    new-array v0, v0, [B

    .line 71
    .local v0, "buffer":[B
    iget-wide v4, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "cancel"

    const/4 v7, -0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    cmp-long v11, v4, v8

    if-gez v11, :cond_3

    .line 73
    nop

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "l":I
    if-ne v4, v7, :cond_1

    .line 82
    goto :goto_2

    .line 74
    :cond_1
    invoke-virtual {v2, v0, v10, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 75
    iget-wide v8, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    int-to-long v11, v5

    add-long/2addr v8, v11

    iput-wide v8, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    .line 76
    iget-object v4, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v4, :cond_0

    .line 77
    iget-object v13, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    const-wide/16 v11, 0x1

    add-long v14, v8, v11

    const/16 v18, 0x0

    move-wide/from16 v16, v8

    invoke-interface/range {v13 .. v18}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 78
    :cond_2
    new-instance v4, Ljava/io/InterruptedIOException;

    invoke-direct {v4, v6}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local p1    # "outStream":Ljava/io/OutputStream;
    throw v4

    .line 84
    .end local v5    # "l":I
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local p1    # "outStream":Ljava/io/OutputStream;
    :cond_3
    iget-wide v4, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    .line 85
    .local v4, "remaining":J
    nop

    :goto_1
    cmp-long v11, v4, v8

    if-gtz v11, :cond_4

    goto :goto_2

    .line 86
    :cond_4
    const-wide/16 v11, 0x800

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v12, v11

    invoke-virtual {v3, v0, v10, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    .line 87
    .local v11, "l":I
    if-ne v11, v7, :cond_6

    .line 88
    nop

    .line 100
    .end local v4    # "remaining":J
    .end local v11    # "l":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 101
    iget-object v4, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v4, :cond_5

    .line 102
    iget-object v5, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v6, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    iget-wide v8, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const/4 v10, 0x1

    invoke-interface/range {v5 .. v10}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    nop

    .line 105
    .end local v0    # "buffer":[B
    :cond_5
    invoke-static {v3}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 107
    return-void

    .line 90
    .restart local v0    # "buffer":[B
    .restart local v4    # "remaining":J
    .restart local v11    # "l":I
    :cond_6
    :try_start_2
    invoke-virtual {v2, v0, v10, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 91
    int-to-long v12, v11

    sub-long/2addr v4, v12

    .line 92
    iget-wide v12, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    int-to-long v14, v11

    add-long/2addr v12, v14

    iput-wide v12, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    .line 93
    iget-object v14, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v14, :cond_8

    .line 94
    iget-object v14, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v7, v1, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    const/16 v21, 0x0

    move-object/from16 v16, v14

    move-wide/from16 v17, v7

    move-wide/from16 v19, v12

    invoke-interface/range {v16 .. v21}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    .line 95
    :cond_7
    new-instance v7, Ljava/io/InterruptedIOException;

    invoke-direct {v7, v6}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local p1    # "outStream":Ljava/io/OutputStream;
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .end local v11    # "l":I
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local p1    # "outStream":Ljava/io/OutputStream;
    :cond_8
    :goto_3
    const/4 v7, -0x1

    const-wide/16 v8, 0x0

    goto :goto_1

    .line 104
    .end local v0    # "buffer":[B
    .end local v4    # "remaining":J
    :catchall_0
    move-exception v0

    .line 105
    invoke-static {v3}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 106
    throw v0

    .line 65
    .end local v3    # "inStream":Ljava/io/InputStream;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Output stream may not be null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
