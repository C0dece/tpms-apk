.class public final Lcom/tencent/bugly/proguard/s;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static b:Lcom/tencent/bugly/proguard/s;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/s;->a:Ljava/util/Map;

    .line 52
    iput-object p1, p0, Lcom/tencent/bugly/proguard/s;->c:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/s;
    .locals 1

    .line 62
    sget-object v0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/s;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/tencent/bugly/proguard/s;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/s;

    .line 65
    :cond_0
    sget-object p0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/s;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 291
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->b()Ljava/net/Proxy;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 295
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->b()Ljava/net/Proxy;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 296
    :cond_0
    if-eqz p0, :cond_1

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "wap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 297
    const-string p0, "http.proxyHost"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 298
    const-string p1, "http.proxyPort"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 299
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 301
    new-instance p0, Ljava/net/Proxy;

    sget-object p1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, p1, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 302
    invoke-virtual {v0, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 303
    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 306
    :goto_0
    const/16 p1, 0x7530

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 307
    const/16 p1, 0x2710

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 308
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 309
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 310
    const-string p1, "POST"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 311
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 313
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    return-object p0

    .line 316
    :catchall_0
    move-exception p0

    .line 317
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 318
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 321
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .line 238
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 239
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "destUrl is null."

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 240
    return-object v0

    .line 243
    :cond_0
    invoke-static {p3, p1}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 244
    if-nez p1, :cond_1

    .line 245
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Failed to get HttpURLConnection object."

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 246
    return-object v0

    .line 251
    :cond_1
    :try_start_0
    const-string v2, "wup_version"

    const-string v3, "3.0"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    const-string v2, "utf-8"

    if-eqz p4, :cond_2

    :try_start_1
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 253
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 255
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    goto :goto_0

    .line 259
    :cond_2
    const-string p4, "A37"

    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string p4, "A38"

    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p4, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    .line 267
    if-nez p2, :cond_3

    .line 268
    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 270
    :cond_3
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    :goto_1
    return-object p1

    .line 273
    :catchall_0
    move-exception p1

    .line 274
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 275
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 277
    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Failed to upload, please check your network."

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 279
    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    .line 178
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 183
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 184
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 186
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_1
    goto :goto_0

    .line 189
    :cond_2
    return-object v0

    .line 179
    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/net/HttpURLConnection;)[B
    .locals 5

    .line 199
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 200
    return-object v0

    .line 202
    :cond_0
    nop

    .line 204
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 205
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 206
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 208
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    .line 209
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 212
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 219
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    goto :goto_1

    .line 222
    :catchall_0
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 224
    :goto_1
    return-object p0

    .line 213
    :catchall_1
    move-exception p0

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v1, v0

    .line 214
    :goto_2
    :try_start_3
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 215
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 219
    :cond_2
    if-eqz v1, :cond_3

    .line 220
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    .line 222
    :catchall_3
    move-exception p0

    .line 223
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    goto :goto_4

    .line 224
    :cond_3
    :goto_3
    nop

    .line 226
    :goto_4
    return-object v0

    .line 218
    :catchall_4
    move-exception p0

    .line 219
    if-eqz v1, :cond_4

    .line 220
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    .line 222
    :catchall_5
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 224
    :cond_4
    :goto_5
    nop

    :goto_6
    goto :goto_8

    :goto_7
    throw p0

    :goto_8
    goto :goto_7
.end method


# virtual methods
.method public final a(Ljava/lang/String;[BLcom/tencent/bugly/proguard/v;Ljava/util/Map;)[B
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/tencent/bugly/proguard/v;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 78
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_0

    .line 79
    new-array v0, v5, [Ljava/lang/Object;

    const-string v2, "Failed for no URL."

    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 80
    return-object v4

    .line 82
    :cond_0
    nop

    .line 83
    nop

    .line 84
    if-nez v2, :cond_1

    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_1
    array-length v0, v2

    int-to-long v8, v0

    .line 86
    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v0, v11

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v0, v12

    const/4 v10, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v0, v10

    const-string v10, "request: %s, send: %d (pid=%d | tid=%d)"

    invoke-static {v10, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 90
    move-object/from16 v10, p1

    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 91
    :goto_1
    if-gtz v0, :cond_12

    if-gtz v13, :cond_12

    .line 93
    if-eqz v14, :cond_2

    .line 94
    move v6, v0

    const/4 v14, 0x0

    goto :goto_2

    .line 96
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 97
    if-le v0, v11, :cond_3

    .line 98
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v6, "try time: "

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 100
    new-instance v6, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v6, v11, v12}, Ljava/util/Random;-><init>(J)V

    const/16 v11, 0x2710

    invoke-virtual {v6, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-long v11, v6

    const-wide/16 v18, 0x2710

    add-long v11, v11, v18

    .line 103
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 107
    :cond_3
    move v6, v0

    :goto_2
    iget-object v0, v1, Lcom/tencent/bugly/proguard/s;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/common/info/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 108
    if-nez v0, :cond_4

    .line 109
    new-array v0, v5, [Ljava/lang/Object;

    const-string v11, "Failed to request for network not avail"

    invoke-static {v11, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 110
    move v0, v6

    const/4 v11, 0x1

    const/4 v12, 0x2

    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {v3, v8, v9}, Lcom/tencent/bugly/proguard/v;->a(J)V

    .line 115
    move-object/from16 v11, p4

    invoke-direct {v1, v10, v2, v0, v11}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v12

    .line 117
    if-eqz v12, :cond_11

    .line 119
    :try_start_0
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 120
    const/16 v7, 0xc8

    if-ne v0, v7, :cond_7

    .line 122
    invoke-static {v12}, Lcom/tencent/bugly/proguard/s;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/proguard/s;->a:Ljava/util/Map;

    .line 124
    invoke-static {v12}, Lcom/tencent/bugly/proguard/s;->b(Ljava/net/HttpURLConnection;)[B

    move-result-object v7

    .line 125
    if-nez v7, :cond_5

    const-wide/16 v4, 0x0

    goto :goto_3

    :cond_5
    array-length v0, v7

    int-to-long v4, v0

    :goto_3
    invoke-virtual {v3, v4, v5}, Lcom/tencent/bugly/proguard/v;->b(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 126
    nop

    .line 153
    :try_start_1
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    goto :goto_4

    .line 154
    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 155
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 156
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    :cond_6
    :goto_4
    return-object v7

    .line 127
    :cond_7
    const/16 v4, 0x12d

    if-eq v0, v4, :cond_9

    const/16 v4, 0x12e

    if-eq v0, v4, :cond_9

    const/16 v4, 0x12f

    if-eq v0, v4, :cond_9

    const/16 v4, 0x133

    if-ne v0, v4, :cond_8

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_c

    .line 128
    nop

    .line 129
    :try_start_2
    const-string v4, "Location"

    invoke-virtual {v12, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 130
    if-nez v4, :cond_b

    .line 132
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to redirect: %d"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 133
    :try_start_4
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 158
    goto :goto_7

    .line 154
    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 155
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 156
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    :cond_a
    :goto_7
    const/4 v2, 0x0

    return-object v2

    .line 147
    :catch_0
    move-exception v0

    const/4 v7, 0x2

    const/4 v14, 0x1

    goto/16 :goto_c

    .line 136
    :cond_b
    add-int/lit8 v13, v13, 0x1

    .line 137
    nop

    .line 138
    nop

    .line 139
    :try_start_5
    const-string v5, "redirect code: %d ,to:%s"
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v7, 0x2

    :try_start_6
    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v14, 0x0

    aput-object v10, v6, v14
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v15, 0x1

    :try_start_7
    aput-object v4, v6, v15

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v10, v4

    const/4 v6, 0x0

    const/4 v14, 0x1

    goto :goto_b

    .line 147
    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    const/4 v7, 0x2

    :goto_8
    const/4 v15, 0x1

    :goto_9
    move-object v10, v4

    const/4 v6, 0x0

    goto :goto_a

    :catch_4
    move-exception v0

    const/4 v7, 0x2

    const/4 v15, 0x1

    :goto_a
    const/4 v14, 0x1

    goto :goto_d

    .line 127
    :cond_c
    const/4 v7, 0x2

    const/4 v15, 0x1

    .line 142
    :goto_b
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "response code "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v4, v0

    .line 145
    const-wide/16 v16, 0x0

    cmp-long v0, v4, v16

    if-gez v0, :cond_d

    const-wide/16 v4, 0x0

    .line 146
    :cond_d
    invoke-virtual {v3, v4, v5}, Lcom/tencent/bugly/proguard/v;->b(J)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 153
    :try_start_9
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_e

    .line 154
    :catchall_2
    move-exception v0

    move-object v4, v0

    .line 155
    invoke-static {v4}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 156
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f

    .line 147
    :catch_5
    move-exception v0

    goto :goto_d

    .line 152
    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_11

    .line 147
    :catch_6
    move-exception v0

    const/4 v7, 0x2

    :goto_c
    const/4 v15, 0x1

    .line 148
    :goto_d
    :try_start_a
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 149
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 153
    :cond_e
    :try_start_b
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 158
    :goto_e
    goto :goto_10

    .line 154
    :catchall_4
    move-exception v0

    move-object v4, v0

    .line 155
    invoke-static {v4}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 156
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    :cond_f
    :goto_f
    nop

    .line 165
    :goto_10
    move v0, v6

    const-wide/16 v4, 0x0

    goto :goto_13

    .line 153
    :goto_11
    :try_start_c
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 158
    goto :goto_12

    .line 154
    :catchall_5
    move-exception v0

    move-object v3, v0

    .line 155
    invoke-static {v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 156
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    :cond_10
    :goto_12
    throw v2

    .line 161
    :cond_11
    const/4 v7, 0x2

    const/4 v15, 0x1

    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v5, "Failed to execute post."

    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 163
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/tencent/bugly/proguard/v;->b(J)V

    move v0, v6

    .line 165
    :goto_13
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    goto/16 :goto_1

    .line 167
    :cond_12
    const/4 v2, 0x0

    return-object v2
.end method
