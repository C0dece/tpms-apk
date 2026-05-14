.class Lcom/ta/utdid2/a/b$a;
.super Ljava/lang/Thread;
.source "AidRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/ut/device/a;

.field a:Ljava/lang/String;

.field a:Lorg/apache/http/client/methods/HttpPost;

.field final synthetic b:Lcom/ta/utdid2/a/b;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ta/utdid2/a/b;Lorg/apache/http/client/methods/HttpPost;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/ta/utdid2/a/b$a;->b:Lcom/ta/utdid2/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 71
    const-string p1, ""

    iput-object p1, p0, Lcom/ta/utdid2/a/b$a;->a:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/ta/utdid2/a/b$a;->d:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/ta/utdid2/a/b$a;->a:Lorg/apache/http/client/methods/HttpPost;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/ta/utdid2/a/b;Lorg/apache/http/client/methods/HttpPost;Lcom/ut/device/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/ta/utdid2/a/b$a;->b:Lcom/ta/utdid2/a/b;

    .line 79
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 71
    const-string p1, ""

    iput-object p1, p0, Lcom/ta/utdid2/a/b$a;->a:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/ta/utdid2/a/b$a;->d:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/ta/utdid2/a/b$a;->a:Lorg/apache/http/client/methods/HttpPost;

    .line 82
    iput-object p3, p0, Lcom/ta/utdid2/a/b$a;->a:Lcom/ut/device/a;

    .line 83
    iput-object p4, p0, Lcom/ta/utdid2/a/b$a;->b:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lcom/ta/utdid2/a/b$a;->c:Ljava/lang/String;

    .line 85
    iput-object p6, p0, Lcom/ta/utdid2/a/b$a;->d:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/ta/utdid2/a/b$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 6

    .line 89
    iget-object v0, p0, Lcom/ta/utdid2/a/b$a;->a:Lcom/ut/device/a;

    if-eqz v0, :cond_0

    .line 90
    const/16 v1, 0x3e8

    iget-object v2, p0, Lcom/ta/utdid2/a/b$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ut/device/a;->a(ILjava/lang/String;)V

    .line 93
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 94
    nop

    .line 96
    const/4 v1, 0x0

    const/16 v2, 0x3ea

    :try_start_0
    iget-object v3, p0, Lcom/ta/utdid2/a/b$a;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    iget-object v3, p0, Lcom/ta/utdid2/a/b$a;->a:Lcom/ut/device/a;

    if-eqz v3, :cond_1

    .line 99
    iget-object v4, p0, Lcom/ta/utdid2/a/b$a;->b:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lcom/ut/device/a;->a(ILjava/lang/String;)V

    .line 101
    :cond_1
    invoke-static {}, Lcom/ta/utdid2/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 104
    :goto_0
    nop

    .line 106
    if-eqz v0, :cond_2

    .line 107
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    .line 108
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 107
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 109
    move-object v1, v3

    goto :goto_1

    .line 110
    :cond_2
    invoke-static {}, Lcom/ta/utdid2/a/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "response is null!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    goto :goto_1

    :catch_1
    move-exception v0

    .line 113
    iget-object v3, p0, Lcom/ta/utdid2/a/b$a;->a:Lcom/ut/device/a;

    if-eqz v3, :cond_3

    .line 114
    iget-object v4, p0, Lcom/ta/utdid2/a/b$a;->b:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lcom/ut/device/a;->a(ILjava/lang/String;)V

    .line 116
    :cond_3
    invoke-static {}, Lcom/ta/utdid2/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_1
    nop

    .line 121
    if-eqz v1, :cond_6

    .line 122
    nop

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 128
    goto :goto_3

    .line 123
    :cond_4
    sget-boolean v3, Lcom/ta/utdid2/b/a/d;->e:Z

    if-eqz v3, :cond_5

    .line 124
    invoke-static {}, Lcom/ta/utdid2/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_5
    iput-object v0, p0, Lcom/ta/utdid2/a/b$a;->a:Ljava/lang/String;

    goto :goto_2

    .line 129
    :cond_6
    invoke-static {}, Lcom/ta/utdid2/a/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BufferredReader is null!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 131
    goto :goto_3

    :catch_2
    move-exception v0

    .line 132
    iget-object v3, p0, Lcom/ta/utdid2/a/b$a;->a:Lcom/ut/device/a;

    if-eqz v3, :cond_7

    .line 133
    iget-object v4, p0, Lcom/ta/utdid2/a/b$a;->b:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lcom/ut/device/a;->a(ILjava/lang/String;)V

    .line 135
    :cond_7
    invoke-static {}, Lcom/ta/utdid2/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_3
    if-eqz v1, :cond_8

    .line 140
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 141
    sget-boolean v0, Lcom/ta/utdid2/b/a/d;->e:Z

    if-eqz v0, :cond_8

    .line 142
    invoke-static {}, Lcom/ta/utdid2/a/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "close the bufferreader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 144
    goto :goto_4

    :catch_3
    move-exception v0

    .line 145
    invoke-static {}, Lcom/ta/utdid2/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/ta/utdid2/a/b$a;->a:Lcom/ut/device/a;

    if-nez v0, :cond_9

    .line 151
    iget-object v0, p0, Lcom/ta/utdid2/a/b$a;->b:Lcom/ta/utdid2/a/b;

    invoke-static {v0}, Lcom/ta/utdid2/a/b;->a(Lcom/ta/utdid2/a/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 152
    :try_start_4
    iget-object v1, p0, Lcom/ta/utdid2/a/b$a;->b:Lcom/ta/utdid2/a/b;

    invoke-static {v1}, Lcom/ta/utdid2/a/b;->a(Lcom/ta/utdid2/a/b;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 151
    monitor-exit v0

    goto :goto_5

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 156
    :cond_9
    iget-object v0, p0, Lcom/ta/utdid2/a/b$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ta/utdid2/a/b$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ta/utdid2/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/ta/utdid2/a/b$a;->a:Lcom/ut/device/a;

    const/16 v2, 0x3e9

    invoke-interface {v1, v2, v0}, Lcom/ut/device/a;->a(ILjava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/ta/utdid2/a/b$a;->b:Lcom/ta/utdid2/a/b;

    invoke-static {v1}, Lcom/ta/utdid2/a/b;->a(Lcom/ta/utdid2/a/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ta/utdid2/a/b$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ta/utdid2/a/b$a;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/ta/utdid2/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :goto_5
    return-void
.end method
