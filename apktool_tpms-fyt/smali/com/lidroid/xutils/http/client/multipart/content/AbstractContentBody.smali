.class public abstract Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;
.super Ljava/lang/Object;
.source "AbstractContentBody.java"

# interfaces
.implements Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;


# instance fields
.field protected callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

.field private final mediaType:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private final subType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->DEFAULT:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    .line 31
    if-eqz p1, :cond_1

    .line 34
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;->mimeType:Ljava/lang/String;

    .line 35
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 36
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 37
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;->mediaType:Ljava/lang/String;

    .line 38
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;->subType:Ljava/lang/String;

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;->mediaType:Ljava/lang/String;

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;->subType:Ljava/lang/String;

    .line 43
    :goto_0
    return-void

    .line 32
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MIME type may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMediaType()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public setCallBackInfo(Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;)V
    .locals 0
    .param p1, "callBackInfo"    # Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    .line 61
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    .line 62
    return-void
.end method
