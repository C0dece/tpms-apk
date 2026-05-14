.class public Lcom/ta/utdid2/b/a/g;
.super Ljava/lang/Object;
.source "PhoneInfoUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 29
    nop

    .line 30
    if-eqz p0, :cond_0

    .line 32
    nop

    .line 33
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 32
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 34
    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    :catch_0
    move-exception p0

    .line 41
    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-static {}, Lcom/ta/utdid2/b/a/g;->c()Ljava/lang/String;

    move-result-object p0

    .line 44
    :cond_1
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 48
    nop

    .line 49
    if-eqz p0, :cond_0

    .line 51
    nop

    .line 52
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 51
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 53
    if-eqz p0, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {}, Lcom/ta/utdid2/b/a/g;->c()Ljava/lang/String;

    move-result-object p0

    .line 63
    :cond_1
    return-object p0
.end method

.method public static final c()Ljava/lang/String;
    .locals 7

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-int v0, v2

    .line 14
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 15
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 16
    invoke-static {v1}, Lcom/ta/utdid2/b/a/e;->getBytes(I)[B

    move-result-object v1

    .line 17
    invoke-static {v0}, Lcom/ta/utdid2/b/a/e;->getBytes(I)[B

    move-result-object v0

    .line 18
    invoke-static {v2}, Lcom/ta/utdid2/b/a/e;->getBytes(I)[B

    move-result-object v2

    .line 19
    invoke-static {v3}, Lcom/ta/utdid2/b/a/e;->getBytes(I)[B

    move-result-object v3

    .line 20
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 21
    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    invoke-static {v0, v6, v4, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    const/16 v0, 0x8

    invoke-static {v2, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    const/16 v0, 0xc

    invoke-static {v3, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    const/4 v0, 0x2

    invoke-static {v4, v0}, Lcom/ta/utdid2/b/a/b;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
