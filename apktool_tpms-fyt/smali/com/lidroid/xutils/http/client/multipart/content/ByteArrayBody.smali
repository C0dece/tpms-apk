.class public Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;
.super Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;
.source "ByteArrayBody.java"


# instance fields
.field private final data:[B

.field private final filename:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "filename"    # Ljava/lang/String;

    .line 63
    const-string v0, "application/octet-stream"

    invoke-direct {p0, p1, v0, p2}, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    .line 49
    if-eqz p1, :cond_0

    .line 52
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->data:[B

    .line 53
    iput-object p3, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->filename:Ljava/lang/String;

    .line 54
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte[] may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 72
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    iget-wide v1, v0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    iget-object v3, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->data:[B

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 73
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->doCallBack(Z)Z

    .line 74
    return-void
.end method
