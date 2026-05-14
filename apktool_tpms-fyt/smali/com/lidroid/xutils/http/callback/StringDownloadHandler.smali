.class public Lcom/lidroid/xutils/http/callback/StringDownloadHandler;
.super Ljava/lang/Object;
.source "StringDownloadHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEntity(Lorg/apache/http/HttpEntity;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "callBackHandler"    # Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    move-object/from16 v7, p3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 32
    :cond_0
    const-wide/16 v8, 0x0

    .line 33
    .local v8, "current":J
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    .line 35
    .local v10, "total":J
    if-eqz p2, :cond_1

    const/4 v6, 0x1

    move-object/from16 v1, p2

    move-wide v2, v10

    move-wide v4, v8

    invoke-interface/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 36
    return-object v0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v0

    .line 42
    .local v12, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v13, v0

    .line 43
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .local v13, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v13, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 44
    .local v0, "reader":Ljava/io/BufferedReader;
    const-string v1, ""

    .line 45
    .local v1, "line":Ljava/lang/String;
    nop

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    .end local v1    # "line":Ljava/lang/String;
    .local v14, "line":Ljava/lang/String;
    if-nez v2, :cond_2

    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {v14, v7}, Lcom/lidroid/xutils/util/OtherUtils;->sizeOfString(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    add-long/2addr v8, v1

    .line 48
    if-eqz p2, :cond_4

    .line 49
    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-wide v2, v10

    move-wide v4, v8

    invoke-interface/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v1

    if-nez v1, :cond_4

    .line 50
    nop

    .line 54
    :goto_1
    if-eqz p2, :cond_3

    .line 55
    const/4 v6, 0x1

    move-object/from16 v1, p2

    move-wide v2, v10

    move-wide v4, v8

    invoke-interface/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    nop

    .line 58
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v14    # "line":Ljava/lang/String;
    :cond_3
    invoke-static {v13}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 60
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 45
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    :cond_4
    move-object v1, v14

    goto :goto_0

    .line 57
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v14    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v1, v13

    goto :goto_2

    .end local v13    # "inputStream":Ljava/io/InputStream;
    .local v1, "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v0

    .line 58
    :goto_2
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 59
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
