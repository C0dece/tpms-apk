.class Lcom/lidroid/xutils/HttpUtils$2;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/xutils/HttpUtils;-><init>(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/xutils/HttpUtils;


# direct methods
.method constructor <init>(Lcom/lidroid/xutils/HttpUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lidroid/xutils/HttpUtils$2;->this$0:Lcom/lidroid/xutils/HttpUtils;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 113
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-nez v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 117
    .local v1, "encoding":Lorg/apache/http/Header;
    if-eqz v1, :cond_3

    .line 118
    invoke-interface {v1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v5, v2, v4

    .line 119
    .local v5, "element":Lorg/apache/http/HeaderElement;
    invoke-interface {v5}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gzip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 120
    new-instance v2, Lcom/lidroid/xutils/http/client/entity/GZipDecompressingEntity;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lidroid/xutils/http/client/entity/GZipDecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 121
    return-void

    .line 118
    .end local v5    # "element":Lorg/apache/http/HeaderElement;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    :cond_3
    :goto_1
    return-void
.end method
