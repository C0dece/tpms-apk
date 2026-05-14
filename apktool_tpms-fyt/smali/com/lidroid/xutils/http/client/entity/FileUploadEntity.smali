.class public Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;
.super Lorg/apache/http/entity/FileEntity;
.source "FileUploadEntity.java"

# interfaces
.implements Lcom/lidroid/xutils/http/client/entity/UploadEntity;


# instance fields
.field private callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

.field private fileSize:J

.field private uploadedSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1, p2}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    .line 34
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->fileSize:J

    .line 35
    return-void
.end method


# virtual methods
.method public setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V
    .locals 0
    .param p1, "callBackHandler"    # Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    .line 72
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    .line 73
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

    .line 42
    if-eqz p1, :cond_4

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "inStream":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 48
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 50
    .local v1, "tmp":[B
    nop

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "len":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 59
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 60
    iget-object v2, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v2, :cond_1

    .line 61
    iget-object v4, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v5, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->fileSize:J

    iget-wide v7, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    const/4 v9, 0x1

    invoke-interface/range {v4 .. v9}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    nop

    .line 64
    .end local v1    # "tmp":[B
    .end local v3    # "len":I
    :cond_1
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    return-void

    .line 51
    .restart local v1    # "tmp":[B
    .restart local v3    # "len":I
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 52
    iget-wide v4, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    int-to-long v6, v3

    add-long v11, v4, v6

    iput-wide v11, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    .line 53
    iget-object v2, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v2, :cond_0

    .line 54
    iget-object v8, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v9, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->fileSize:J

    const/4 v13, 0x0

    invoke-interface/range {v8 .. v13}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 55
    :cond_3
    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v4, "cancel"

    invoke-direct {v2, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "inStream":Ljava/io/BufferedInputStream;
    .end local p1    # "outStream":Ljava/io/OutputStream;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .end local v1    # "tmp":[B
    .end local v3    # "len":I
    .restart local v0    # "inStream":Ljava/io/BufferedInputStream;
    .restart local p1    # "outStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    .line 64
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 65
    throw v1

    .line 43
    .end local v0    # "inStream":Ljava/io/BufferedInputStream;
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
