.class public Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;
.super Lcom/lidroid/xutils/bitmap/download/Downloader;
.source "DefaultDownloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/lidroid/xutils/bitmap/download/Downloader;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)J
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<",
            "*>;)J"
        }
    .end annotation

    .line 40
    .local p3, "task":Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;, "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<*>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    if-eqz v2, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    move-object/from16 v15, p2

    goto/16 :goto_7

    .line 42
    :cond_0
    const/4 v5, 0x0

    .line 43
    .local v5, "urlConnection":Ljava/net/URLConnection;
    const/4 v6, 0x0

    .line 45
    .local v6, "bis":Ljava/io/BufferedInputStream;
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->trustAllHttpsURLConnection()V

    .line 47
    const-wide/16 v7, -0x1

    .line 48
    .local v7, "result":J
    const-wide/16 v9, 0x0

    .line 49
    .local v9, "fileLen":J
    const-wide/16 v11, 0x0

    .line 51
    .local v11, "currCount":J
    :try_start_0
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v13

    int-to-long v9, v13

    .line 54
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-direct {v13, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v13

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultExpiry()J

    move-result-wide v15

    add-long/2addr v13, v15

    .line 56
    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v7    # "result":J
    .local v13, "result":J
    move-wide v7, v13

    goto/16 :goto_1

    .end local v13    # "result":J
    .restart local v7    # "result":J
    :cond_1
    const-string v0, "assets/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v13, 0x7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 58
    .local v0, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v13

    int-to-long v9, v13

    .line 59
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-direct {v13, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v13

    .line 60
    const-wide v7, 0x7fffffffffffffffL

    .line 61
    .end local v0    # "inputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 62
    :cond_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v5, v13

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultConnectTimeout()I

    move-result v13

    invoke-virtual {v5, v13}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultReadTimeout()I

    move-result v13

    invoke-virtual {v5, v13}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 66
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v13

    .line 67
    invoke-virtual {v5}, Ljava/net/URLConnection;->getExpiration()J

    move-result-wide v13

    move-wide v7, v13

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    cmp-long v15, v7, v13

    if-gez v15, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultExpiry()J

    move-result-wide v15

    add-long/2addr v13, v15

    goto :goto_0

    :cond_3
    move-wide v13, v7

    :goto_0
    move-wide v7, v13

    .line 69
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    move-result v13

    int-to-long v9, v13

    .line 72
    .end local v0    # "url":Ljava/net/URL;
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    move-object/from16 v15, p2

    goto :goto_4

    .line 74
    :cond_4
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 75
    .local v0, "buffer":[B
    const/4 v13, 0x0

    .line 76
    .local v13, "len":I
    new-instance v14, Ljava/io/BufferedOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v15, p2

    :try_start_1
    invoke-direct {v14, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    .local v14, "out":Ljava/io/BufferedOutputStream;
    nop

    :goto_2
    invoke-virtual {v6, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    move v13, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 83
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 84
    .end local v0    # "buffer":[B
    .end local v13    # "len":I
    .end local v14    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_6

    .line 78
    .restart local v0    # "buffer":[B
    .restart local v13    # "len":I
    .restart local v14    # "out":Ljava/io/BufferedOutputStream;
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v14, v0, v3, v13}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 79
    int-to-long v3, v13

    add-long/2addr v11, v3

    .line 80
    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_3

    .line 81
    :cond_6
    invoke-virtual {v2, v9, v10, v11, v12}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->updateProgress(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 88
    :cond_7
    :goto_3
    invoke-static {v6}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    const-wide/16 v3, -0x1

    return-wide v3

    .line 84
    .end local v0    # "buffer":[B
    .end local v13    # "len":I
    .end local v14    # "out":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 72
    :cond_8
    move-object/from16 v15, p2

    .line 88
    :goto_4
    invoke-static {v6}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 72
    const-wide/16 v3, -0x1

    return-wide v3

    .line 84
    :catchall_1
    move-exception v0

    move-object/from16 v15, p2

    .line 85
    .local v0, "e":Ljava/lang/Throwable;
    :goto_5
    const-wide/16 v7, -0x1

    .line 86
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 88
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6
    invoke-static {v6}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 90
    return-wide v7

    .line 87
    :catchall_2
    move-exception v0

    .line 88
    invoke-static {v6}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 89
    throw v0

    .line 40
    .end local v5    # "urlConnection":Ljava/net/URLConnection;
    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "result":J
    .end local v9    # "fileLen":J
    .end local v11    # "currCount":J
    :cond_9
    move-object/from16 v15, p2

    :goto_7
    const-wide/16 v3, -0x1

    return-wide v3
.end method
