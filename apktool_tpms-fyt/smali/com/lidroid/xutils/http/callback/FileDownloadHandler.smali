.class public Lcom/lidroid/xutils/http/callback/FileDownloadHandler;
.super Ljava/lang/Object;
.source "FileDownloadHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEntity(Lorg/apache/http/HttpEntity;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;
    .locals 18
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "callBackHandler"    # Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "isResume"    # Z
    .param p5, "responseFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    move-object/from16 v7, p3

    move-object/from16 v8, p5

    if-eqz p1, :cond_b

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 35
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 37
    .local v9, "targetFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 39
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 44
    .end local v0    # "dir":Ljava/io/File;
    :cond_2
    const-wide/16 v1, 0x0

    .line 45
    .local v1, "current":J
    const/4 v3, 0x0

    .line 46
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 48
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    const/4 v0, 0x0

    .line 49
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    if-eqz p4, :cond_3

    .line 50
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v5

    move-wide v1, v5

    .line 51
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v5, v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v0, v5

    .line 52
    move-wide v10, v1

    goto :goto_0

    .line 53
    :cond_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v0, v5

    move-wide v10, v1

    .line 55
    .end local v1    # "current":J
    .local v10, "current":J
    :goto_0
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    add-long v12, v1, v10

    .line 56
    .local v12, "total":J
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v14, v1

    .line 57
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v14, "bis":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v15, v1

    .line 59
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .local v15, "bos":Ljava/io/BufferedOutputStream;
    if-eqz p2, :cond_4

    const/4 v6, 0x1

    move-object/from16 v1, p2

    move-wide v2, v12

    move-wide v4, v10

    :try_start_3
    invoke-interface/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_4

    .line 60
    nop

    .line 79
    invoke-static {v14}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v15}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 60
    return-object v9

    .line 63
    :cond_4
    const/16 v1, 0x1000

    :try_start_4
    new-array v1, v1, [B

    move-object v6, v1

    .line 65
    .local v6, "tmp":[B
    nop

    :goto_1
    invoke-virtual {v14, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    move v4, v1

    .local v4, "len":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    .line 74
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->flush()V

    .line 75
    if-eqz p2, :cond_5

    .line 76
    const/16 v16, 0x1

    move-object/from16 v1, p2

    move-wide v2, v12

    move-object/from16 v17, v0

    move v0, v4

    .end local v4    # "len":I
    .local v0, "len":I
    .local v17, "fileOutputStream":Ljava/io/FileOutputStream;
    move-wide v4, v10

    move-object v7, v6

    .end local v6    # "tmp":[B
    .local v7, "tmp":[B
    move/from16 v6, v16

    invoke-interface/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    nop

    .end local v0    # "len":I
    .end local v7    # "tmp":[B
    .end local v12    # "total":J
    .end local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 75
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "len":I
    .restart local v6    # "tmp":[B
    .restart local v12    # "total":J
    :cond_5
    move-object/from16 v17, v0

    move v0, v4

    move-object v7, v6

    .line 79
    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "len":I
    .end local v6    # "tmp":[B
    .end local v12    # "total":J
    :goto_2
    invoke-static {v14}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v15}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v0, "newFile":Ljava/io/File;
    nop

    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7

    .line 88
    invoke-virtual {v9, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v0

    goto :goto_4

    :cond_6
    move-object v1, v9

    :goto_4
    return-object v1

    .line 86
    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3

    .line 90
    .end local v0    # "newFile":Ljava/io/File;
    :cond_8
    return-object v9

    .line 66
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "len":I
    .restart local v6    # "tmp":[B
    .restart local v12    # "total":J
    :cond_9
    move-object/from16 v17, v0

    move v0, v4

    move-object v7, v6

    .end local v4    # "len":I
    .end local v6    # "tmp":[B
    .local v0, "len":I
    .restart local v7    # "tmp":[B
    .restart local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v15, v7, v1, v0}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 67
    int-to-long v1, v0

    add-long/2addr v10, v1

    .line 68
    if-eqz p2, :cond_a

    .line 69
    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-wide v2, v12

    move-wide v4, v10

    invoke-interface/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_a

    .line 70
    nop

    .line 79
    invoke-static {v14}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v15}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 70
    return-object v9

    .line 65
    .end local v0    # "len":I
    :cond_a
    move-object v6, v7

    move-object/from16 v0, v17

    move-object/from16 v7, p3

    goto/16 :goto_1

    .line 78
    .end local v7    # "tmp":[B
    .end local v12    # "total":J
    .end local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move-wide v1, v10

    move-object v3, v14

    move-object v4, v15

    goto :goto_5

    .end local v15    # "bos":Ljava/io/BufferedOutputStream;
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v0

    move-wide v1, v10

    move-object v3, v14

    goto :goto_5

    .end local v14    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v0

    move-wide v1, v10

    goto :goto_5

    .end local v10    # "current":J
    .restart local v1    # "current":J
    :catchall_3
    move-exception v0

    .line 79
    :goto_5
    invoke-static {v3}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v4}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 81
    throw v0

    .line 32
    .end local v1    # "current":J
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "targetFile":Ljava/io/File;
    :cond_b
    :goto_6
    const/4 v0, 0x0

    return-object v0
.end method
