.class public Lcom/umeng/commonsdk/statistics/proto/b;
.super Ljava/lang/Object;
.source "IdSnapshot.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/j;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/proto/b$c;,
        Lcom/umeng/commonsdk/statistics/proto/b$d;,
        Lcom/umeng/commonsdk/statistics/proto/b$a;,
        Lcom/umeng/commonsdk/statistics/proto/b$b;,
        Lcom/umeng/commonsdk/statistics/proto/b$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/commonsdk/proguard/j<",
        "Lcom/umeng/commonsdk/statistics/proto/b;",
        "Lcom/umeng/commonsdk/statistics/proto/b$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/commonsdk/statistics/proto/b$e;",
            "Lcom/umeng/commonsdk/proguard/v;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:J = -0x5a285711b2a57f6bL

.field private static final f:Lcom/umeng/commonsdk/proguard/an;

.field private static final g:Lcom/umeng/commonsdk/proguard/ad;

.field private static final h:Lcom/umeng/commonsdk/proguard/ad;

.field private static final i:Lcom/umeng/commonsdk/proguard/ad;

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/commonsdk/proguard/aq;",
            ">;",
            "Lcom/umeng/commonsdk/proguard/ar;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:I = 0x0

.field private static final l:I = 0x1


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field private m:B


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 40
    new-instance v0, Lcom/umeng/commonsdk/proguard/an;

    const-string v1, "IdSnapshot"

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/an;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->f:Lcom/umeng/commonsdk/proguard/an;

    .line 43
    new-instance v0, Lcom/umeng/commonsdk/proguard/ad;

    const/16 v1, 0xb

    const-string v2, "identity"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->g:Lcom/umeng/commonsdk/proguard/ad;

    .line 45
    new-instance v0, Lcom/umeng/commonsdk/proguard/ad;

    const/16 v4, 0xa

    const-string v5, "ts"

    const/4 v6, 0x2

    invoke-direct {v0, v5, v4, v6}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->h:Lcom/umeng/commonsdk/proguard/ad;

    .line 47
    new-instance v0, Lcom/umeng/commonsdk/proguard/ad;

    const/16 v6, 0x8

    const-string v7, "version"

    const/4 v8, 0x3

    invoke-direct {v0, v7, v6, v8}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->i:Lcom/umeng/commonsdk/proguard/ad;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->j:Ljava/util/Map;

    .line 54
    const-class v8, Lcom/umeng/commonsdk/proguard/as;

    new-instance v9, Lcom/umeng/commonsdk/statistics/proto/b$b;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/umeng/commonsdk/statistics/proto/b$b;-><init>(Lcom/umeng/commonsdk/statistics/proto/b$1;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->j:Ljava/util/Map;

    const-class v8, Lcom/umeng/commonsdk/proguard/at;

    new-instance v9, Lcom/umeng/commonsdk/statistics/proto/b$d;

    invoke-direct {v9, v10}, Lcom/umeng/commonsdk/statistics/proto/b$d;-><init>(Lcom/umeng/commonsdk/statistics/proto/b$1;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Ljava/util/EnumMap;

    const-class v8, Lcom/umeng/commonsdk/statistics/proto/b$e;

    invoke-direct {v0, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 139
    sget-object v8, Lcom/umeng/commonsdk/statistics/proto/b$e;->a:Lcom/umeng/commonsdk/statistics/proto/b$e;

    new-instance v9, Lcom/umeng/commonsdk/proguard/v;

    new-instance v10, Lcom/umeng/commonsdk/proguard/w;

    invoke-direct {v10, v1}, Lcom/umeng/commonsdk/proguard/w;-><init>(B)V

    invoke-direct {v9, v2, v3, v10}, Lcom/umeng/commonsdk/proguard/v;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/w;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/b$e;->b:Lcom/umeng/commonsdk/statistics/proto/b$e;

    new-instance v2, Lcom/umeng/commonsdk/proguard/v;

    new-instance v8, Lcom/umeng/commonsdk/proguard/w;

    invoke-direct {v8, v4}, Lcom/umeng/commonsdk/proguard/w;-><init>(B)V

    invoke-direct {v2, v5, v3, v8}, Lcom/umeng/commonsdk/proguard/v;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/w;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/b$e;->c:Lcom/umeng/commonsdk/statistics/proto/b$e;

    new-instance v2, Lcom/umeng/commonsdk/proguard/v;

    new-instance v4, Lcom/umeng/commonsdk/proguard/w;

    invoke-direct {v4, v6}, Lcom/umeng/commonsdk/proguard/w;-><init>(B)V

    invoke-direct {v2, v7, v3, v4}, Lcom/umeng/commonsdk/proguard/v;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/w;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->d:Ljava/util/Map;

    .line 151
    const-class v1, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/v;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 152
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/statistics/proto/b;)V
    .locals 2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    .line 170
    iget-byte v0, p1, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    .line 171
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    .line 174
    :cond_0
    iget-wide v0, p1, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    .line 175
    iget p1, p1, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    iput p1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/b;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    .line 160
    iput-wide p2, p0, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    .line 161
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->b(Z)V

    .line 162
    iput p4, p0, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    .line 163
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->c(Z)V

    .line 164
    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 336
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    .line 337
    new-instance v0, Lcom/umeng/commonsdk/proguard/ac;

    new-instance v1, Lcom/umeng/commonsdk/proguard/au;

    invoke-direct {v1, p1}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ac;-><init>(Lcom/umeng/commonsdk/proguard/aw;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/b;->read(Lcom/umeng/commonsdk/proguard/ai;)V
    :try_end_0
    .catch Lcom/umeng/commonsdk/proguard/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    nop

    .line 342
    return-void

    .line 339
    :catch_0
    move-exception p1

    .line 340
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/p;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    :try_start_0
    new-instance v0, Lcom/umeng/commonsdk/proguard/ac;

    new-instance v1, Lcom/umeng/commonsdk/proguard/au;

    invoke-direct {v1, p1}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ac;-><init>(Lcom/umeng/commonsdk/proguard/aw;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/b;->write(Lcom/umeng/commonsdk/proguard/ai;)V
    :try_end_0
    .catch Lcom/umeng/commonsdk/proguard/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    nop

    .line 330
    return-void

    .line 327
    :catch_0
    move-exception p1

    .line 328
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/p;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic l()Lcom/umeng/commonsdk/proguard/an;
    .locals 1

    .line 36
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->f:Lcom/umeng/commonsdk/proguard/an;

    return-object v0
.end method

.method static synthetic m()Lcom/umeng/commonsdk/proguard/ad;
    .locals 1

    .line 36
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->g:Lcom/umeng/commonsdk/proguard/ad;

    return-object v0
.end method

.method static synthetic n()Lcom/umeng/commonsdk/proguard/ad;
    .locals 1

    .line 36
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->h:Lcom/umeng/commonsdk/proguard/ad;

    return-object v0
.end method

.method static synthetic o()Lcom/umeng/commonsdk/proguard/ad;
    .locals 1

    .line 36
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->i:Lcom/umeng/commonsdk/proguard/ad;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/commonsdk/statistics/proto/b;
    .locals 1

    .line 179
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/proto/b;-><init>(Lcom/umeng/commonsdk/statistics/proto/b;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/commonsdk/statistics/proto/b;
    .locals 0

    .line 249
    iput p1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    .line 250
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->c(Z)V

    .line 251
    return-object p0
.end method

.method public a(J)Lcom/umeng/commonsdk/statistics/proto/b;
    .locals 0

    .line 223
    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    .line 224
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->b(Z)V

    .line 225
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/b;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public a(Z)V
    .locals 0

    .line 213
    if-nez p1, :cond_0

    .line 214
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    .line 216
    :cond_0
    return-void
.end method

.method public b(I)Lcom/umeng/commonsdk/statistics/proto/b$e;
    .locals 0

    .line 271
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/proto/b$e;->a(I)Lcom/umeng/commonsdk/statistics/proto/b$e;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .locals 2

    .line 241
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/g;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    .line 242
    return-void
.end method

.method public c()V
    .locals 1

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 267
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/g;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    .line 268
    return-void
.end method

.method public clear()V
    .locals 3

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/b;->b(Z)V

    .line 186
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    .line 187
    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/b;->c(Z)V

    .line 188
    iput v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    .line 189
    return-void
.end method

.method public d()Z
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic deepCopy()Lcom/umeng/commonsdk/proguard/j;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/b;->a()Lcom/umeng/commonsdk/statistics/proto/b;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .locals 2

    .line 219
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    return-wide v0
.end method

.method public f()V
    .locals 2

    .line 229
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/g;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    .line 230
    return-void
.end method

.method public synthetic fieldForId(I)Lcom/umeng/commonsdk/proguard/q;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->b(I)Lcom/umeng/commonsdk/statistics/proto/b$e;

    move-result-object p1

    return-object p1
.end method

.method public g()Z
    .locals 2

    .line 237
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/g;->a(BI)Z

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    return v0
.end method

.method public i()V
    .locals 2

    .line 255
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/g;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    .line 256
    return-void
.end method

.method public j()Z
    .locals 2

    .line 263
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/g;->a(BI)Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 321
    return-void

    .line 313
    :cond_0
    new-instance v0, Lcom/umeng/commonsdk/proguard/aj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'identity\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/aj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Lcom/umeng/commonsdk/proguard/ai;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/ar;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/ar;->b()Lcom/umeng/commonsdk/proguard/aq;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/aq;->b(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/j;)V

    .line 277
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdSnapshot("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    nop

    .line 289
    const-string v1, "identity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 291
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :goto_0
    nop

    .line 296
    nop

    .line 297
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v2, "ts:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 300
    nop

    .line 301
    nop

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget v1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    nop

    .line 306
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/umeng/commonsdk/proguard/ai;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 281
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/ar;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/ar;->b()Lcom/umeng/commonsdk/proguard/aq;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/aq;->a(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/j;)V

    .line 282
    return-void
.end method
