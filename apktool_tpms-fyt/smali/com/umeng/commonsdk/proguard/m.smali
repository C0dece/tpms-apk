.class public Lcom/umeng/commonsdk/proguard/m;
.super Ljava/lang/Object;
.source "TDeserializer.java"


# instance fields
.field private final a:Lcom/umeng/commonsdk/proguard/ai;

.field private final b:Lcom/umeng/commonsdk/proguard/av;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/umeng/commonsdk/proguard/ac$a;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/ac$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/m;-><init>(Lcom/umeng/commonsdk/proguard/ak;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/ak;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/umeng/commonsdk/proguard/av;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/av;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/m;->b:Lcom/umeng/commonsdk/proguard/av;

    .line 58
    invoke-interface {p1, v0}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/aw;)Lcom/umeng/commonsdk/proguard/ai;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    .line 59
    return-void
.end method

.method private varargs a(B[BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 241
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/umeng/commonsdk/proguard/m;->j([BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Lcom/umeng/commonsdk/proguard/ad;

    move-result-object p2

    .line 242
    if-eqz p2, :cond_8

    .line 244
    const/4 p3, 0x2

    if-eq p1, p3, :cond_7

    const/4 p3, 0x3

    if-eq p1, p3, :cond_6

    const/4 p3, 0x4

    if-eq p1, p3, :cond_5

    const/4 p3, 0x6

    if-eq p1, p3, :cond_4

    const/16 p3, 0x8

    if-eq p1, p3, :cond_3

    const/16 p3, 0x64

    const/16 p4, 0xb

    if-eq p1, p3, :cond_2

    const/16 p3, 0xa

    if-eq p1, p3, :cond_1

    if-eq p1, p4, :cond_0

    goto/16 :goto_1

    .line 276
    :cond_0
    iget-byte p1, p2, Lcom/umeng/commonsdk/proguard/ad;->b:B

    if-ne p1, p4, :cond_8

    .line 277
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->z()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :goto_0
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/m;->b:Lcom/umeng/commonsdk/proguard/av;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/av;->e()V

    .line 292
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/ai;->B()V

    return-object p1

    .line 271
    :cond_1
    :try_start_1
    iget-byte p1, p2, Lcom/umeng/commonsdk/proguard/ad;->b:B

    if-ne p1, p3, :cond_8

    .line 272
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->x()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 281
    :cond_2
    iget-byte p1, p2, Lcom/umeng/commonsdk/proguard/ad;->b:B

    if-ne p1, p4, :cond_8

    .line 282
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->A()Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    .line 266
    :cond_3
    iget-byte p1, p2, Lcom/umeng/commonsdk/proguard/ad;->b:B

    if-ne p1, p3, :cond_8

    .line 267
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->w()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 261
    :cond_4
    iget-byte p1, p2, Lcom/umeng/commonsdk/proguard/ad;->b:B

    if-ne p1, p3, :cond_8

    .line 262
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->v()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_0

    .line 256
    :cond_5
    iget-byte p1, p2, Lcom/umeng/commonsdk/proguard/ad;->b:B

    if-ne p1, p3, :cond_8

    .line 257
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->y()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 251
    :cond_6
    iget-byte p1, p2, Lcom/umeng/commonsdk/proguard/ad;->b:B

    if-ne p1, p3, :cond_8

    .line 252
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->u()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_0

    .line 246
    :cond_7
    iget-byte p1, p2, Lcom/umeng/commonsdk/proguard/ad;->b:B

    if-ne p1, p3, :cond_8

    .line 247
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->t()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    :cond_8
    :goto_1
    const/4 p1, 0x0

    goto :goto_0

    .line 291
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 288
    :catch_0
    move-exception p1

    .line 289
    :try_start_2
    new-instance p2, Lcom/umeng/commonsdk/proguard/p;

    invoke-direct {p2, p1}, Lcom/umeng/commonsdk/proguard/p;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    :goto_2
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/m;->b:Lcom/umeng/commonsdk/proguard/av;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/av;->e()V

    .line 292
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/ai;->B()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private varargs j([BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Lcom/umeng/commonsdk/proguard/ad;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/m;->b:Lcom/umeng/commonsdk/proguard/av;

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/proguard/av;->a([B)V

    .line 299
    array-length p1, p3

    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [Lcom/umeng/commonsdk/proguard/q;

    .line 300
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 301
    const/4 p2, 0x0

    :goto_0
    array-length v2, p3

    if-ge p2, v2, :cond_0

    .line 302
    add-int/lit8 v2, p2, 0x1

    aget-object p2, p3, p2

    aput-object p2, v0, v2

    .line 301
    move p2, v2

    goto :goto_0

    .line 306
    :cond_0
    nop

    .line 309
    nop

    .line 311
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/ai;->j()Lcom/umeng/commonsdk/proguard/an;

    const/4 p2, 0x0

    move-object p3, p2

    .line 313
    :cond_1
    :goto_1
    if-ge v1, p1, :cond_5

    .line 314
    iget-object p3, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p3}, Lcom/umeng/commonsdk/proguard/ai;->l()Lcom/umeng/commonsdk/proguard/ad;

    move-result-object p3

    .line 318
    iget-byte v2, p3, Lcom/umeng/commonsdk/proguard/ad;->b:B

    if-eqz v2, :cond_4

    iget-short v2, p3, Lcom/umeng/commonsdk/proguard/ad;->c:S

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/umeng/commonsdk/proguard/q;->a()S

    move-result v3

    if-le v2, v3, :cond_2

    goto :goto_2

    .line 322
    :cond_2
    iget-short v2, p3, Lcom/umeng/commonsdk/proguard/ad;->c:S

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/umeng/commonsdk/proguard/q;->a()S

    move-result v3

    if-eq v2, v3, :cond_3

    .line 324
    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    iget-byte v3, p3, Lcom/umeng/commonsdk/proguard/ad;->b:B

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/proguard/al;->a(Lcom/umeng/commonsdk/proguard/ai;B)V

    .line 325
    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/proguard/ai;->m()V

    goto :goto_1

    .line 328
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 329
    if-ge v1, p1, :cond_1

    .line 330
    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/proguard/ai;->j()Lcom/umeng/commonsdk/proguard/an;

    goto :goto_1

    .line 319
    :cond_4
    :goto_2
    return-object p2

    .line 334
    :cond_5
    return-object p3
.end method


# virtual methods
.method public varargs a([BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 127
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/m;->a(B[BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public a(Lcom/umeng/commonsdk/proguard/j;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 345
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/m;->a(Lcom/umeng/commonsdk/proguard/j;[B)V

    .line 346
    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/j;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 87
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/m;->a(Lcom/umeng/commonsdk/proguard/j;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->B()V

    .line 92
    nop

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 88
    :catch_0
    move-exception p1

    .line 89
    :try_start_1
    new-instance p1, Lcom/umeng/commonsdk/proguard/p;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/p;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :goto_0
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/ai;->B()V

    throw p1
.end method

.method public a(Lcom/umeng/commonsdk/proguard/j;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/m;->b:Lcom/umeng/commonsdk/proguard/av;

    invoke-virtual {v0, p2}, Lcom/umeng/commonsdk/proguard/av;->a([B)V

    .line 70
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-interface {p1, p2}, Lcom/umeng/commonsdk/proguard/j;->read(Lcom/umeng/commonsdk/proguard/ai;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/m;->b:Lcom/umeng/commonsdk/proguard/av;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/av;->e()V

    .line 73
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->B()V

    .line 74
    nop

    .line 75
    return-void

    .line 72
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/m;->b:Lcom/umeng/commonsdk/proguard/av;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/av;->e()V

    .line 73
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/ai;->B()V

    throw p1
.end method

.method public varargs a(Lcom/umeng/commonsdk/proguard/j;[BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 106
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/umeng/commonsdk/proguard/m;->j([BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Lcom/umeng/commonsdk/proguard/ad;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 108
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-interface {p1, p2}, Lcom/umeng/commonsdk/proguard/j;->read(Lcom/umeng/commonsdk/proguard/ai;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/m;->b:Lcom/umeng/commonsdk/proguard/av;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/av;->e()V

    .line 114
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->B()V

    .line 115
    nop

    .line 116
    return-void

    .line 113
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 110
    :catch_0
    move-exception p1

    .line 111
    :try_start_1
    new-instance p2, Lcom/umeng/commonsdk/proguard/p;

    invoke-direct {p2, p1}, Lcom/umeng/commonsdk/proguard/p;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :goto_0
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/m;->b:Lcom/umeng/commonsdk/proguard/av;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/av;->e()V

    .line 114
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/ai;->B()V

    throw p1
.end method

.method public varargs b([BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/Byte;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 139
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/m;->a(B[BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1
.end method

.method public varargs c([BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 151
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/m;->a(B[BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public varargs d([BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/Short;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 163
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/m;->a(B[BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method

.method public varargs e([BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 175
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/m;->a(B[BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public varargs f([BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 187
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/m;->a(B[BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public varargs g([BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 199
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/m;->a(B[BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public varargs h([BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 212
    const/16 v0, 0x64

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/m;->a(B[BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public varargs i([BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Ljava/lang/Short;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 225
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/m;->j([BLcom/umeng/commonsdk/proguard/q;[Lcom/umeng/commonsdk/proguard/q;)Lcom/umeng/commonsdk/proguard/ad;

    move-result-object p1

    .line 226
    if-eqz p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->j()Lcom/umeng/commonsdk/proguard/an;

    .line 228
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->l()Lcom/umeng/commonsdk/proguard/ad;

    move-result-object p1

    iget-short p1, p1, Lcom/umeng/commonsdk/proguard/ad;->c:S

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :goto_0
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/m;->b:Lcom/umeng/commonsdk/proguard/av;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/av;->e()V

    .line 235
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/ai;->B()V

    return-object p1

    .line 230
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 231
    :catch_0
    move-exception p1

    .line 232
    :try_start_1
    new-instance p2, Lcom/umeng/commonsdk/proguard/p;

    invoke-direct {p2, p1}, Lcom/umeng/commonsdk/proguard/p;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :goto_1
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/m;->b:Lcom/umeng/commonsdk/proguard/av;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/av;->e()V

    .line 235
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/m;->a:Lcom/umeng/commonsdk/proguard/ai;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/ai;->B()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
