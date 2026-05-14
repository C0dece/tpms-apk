.class public Lcom/lidroid/xutils/http/callback/DefaultHttpRedirectHandler;
.super Ljava/lang/Object;
.source "DefaultHttpRedirectHandler.java"

# interfaces
.implements Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirectRequest(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 4
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .line 31
    const-string v0, "Location"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "location":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "request":Lorg/apache/http/client/methods/HttpGet;
    const-string v2, "Set-Cookie"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "cookie":Ljava/lang/String;
    const-string v3, "Cookie"

    invoke-virtual {v1, v3, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .end local v2    # "cookie":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 40
    .end local v0    # "location":Ljava/lang/String;
    .end local v1    # "request":Lorg/apache/http/client/methods/HttpGet;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
