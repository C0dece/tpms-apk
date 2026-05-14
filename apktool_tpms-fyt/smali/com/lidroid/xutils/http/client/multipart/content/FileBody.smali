.class public Lcom/lidroid/xutils/http/client/multipart/content/FileBody;
.super Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;
.source "FileBody.java"


# instance fields
.field private final charset:Ljava/lang/String;

.field private final file:Ljava/io/File;

.field private final filename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 66
    const/4 v0, 0x0

    const-string v1, "application/octet-stream"

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p3}, Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    .line 40
    if-eqz p1, :cond_1

    .line 43
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->file:Ljava/io/File;

    .line 44
    if-eqz p2, :cond_0

    .line 45
    iput-object p2, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->filename:Ljava/lang/String;

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->filename:Ljava/lang/String;

    .line 49
    :goto_0
    iput-object p4, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->charset:Ljava/lang/String;

    .line 50
    return-void

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    if-eqz p1, :cond_2

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 80
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 82
    .local v1, "tmp":[B
    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "l":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 89
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v1    # "tmp":[B
    .end local v3    # "l":I
    nop

    .line 91
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    return-void

    .line 83
    .restart local v1    # "tmp":[B
    .restart local v3    # "l":I
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 84
    iget-object v4, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    iget-wide v5, v4, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 85
    iget-object v4, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-virtual {v4, v2}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->doCallBack(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v4, "cancel"

    invoke-direct {v2, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .end local p1    # "out":Ljava/io/OutputStream;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .end local v1    # "tmp":[B
    .end local v3    # "l":I
    .restart local v0    # "in":Ljava/io/BufferedInputStream;
    .restart local p1    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    .line 91
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 92
    throw v1

    .line 75
    .end local v0    # "in":Ljava/io/BufferedInputStream;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
