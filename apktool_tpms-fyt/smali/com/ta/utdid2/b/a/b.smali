.class public Lcom/ta/utdid2/b/a/b;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/b/a/b$a;,
        Lcom/ta/utdid2/b/a/b$b;,
        Lcom/ta/utdid2/b/a/b$c;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/ta/utdid2/b/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/ta/utdid2/b/a/b;->a:Z

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ta/utdid2/b/a/b;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .line 142
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/ta/utdid2/b/a/b;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 4
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .line 169
    new-instance v0, Lcom/ta/utdid2/b/a/b$b;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Lcom/ta/utdid2/b/a/b$b;-><init>(I[B)V

    .line 171
    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/ta/utdid2/b/a/b$b;->a([BIIZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget v1, v0, Lcom/ta/utdid2/b/a/b$b;->a:I

    iget-object v2, v0, Lcom/ta/utdid2/b/a/b$b;->b:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 177
    iget-object v0, v0, Lcom/ta/utdid2/b/a/b$b;->b:[B

    return-object v0

    .line 182
    :cond_0
    iget v1, v0, Lcom/ta/utdid2/b/a/b$b;->a:I

    new-array v1, v1, [B

    .line 183
    iget-object v2, v0, Lcom/ta/utdid2/b/a/b$b;->b:[B

    iget v0, v0, Lcom/ta/utdid2/b/a/b$b;->a:I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    return-object v1

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode([BI)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .line 507
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/ta/utdid2/b/a/b;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .locals 6
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .line 525
    new-instance v0, Lcom/ta/utdid2/b/a/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/ta/utdid2/b/a/b$c;-><init>(I[B)V

    .line 528
    div-int/lit8 v1, p2, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 531
    iget-boolean v2, v0, Lcom/ta/utdid2/b/a/b$c;->b:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 532
    rem-int/lit8 v2, p2, 0x3

    if-lez v2, :cond_3

    .line 533
    add-int/lit8 v1, v1, 0x4

    .line 535
    goto :goto_0

    .line 536
    :cond_0
    rem-int/lit8 v2, p2, 0x3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 543
    :cond_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 540
    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 541
    nop

    .line 545
    :cond_3
    :goto_0
    nop

    .line 549
    iget-boolean v2, v0, Lcom/ta/utdid2/b/a/b$c;->c:Z

    if-eqz v2, :cond_5

    if-lez p2, :cond_5

    .line 550
    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x39

    add-int/2addr v2, v4

    .line 551
    iget-boolean v5, v0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    :goto_1
    mul-int v2, v2, v3

    add-int/2addr v1, v2

    .line 554
    :cond_5
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/ta/utdid2/b/a/b$c;->b:[B

    .line 555
    invoke-virtual {v0, p0, p1, p2, v4}, Lcom/ta/utdid2/b/a/b$c;->a([BIIZ)Z

    .line 557
    sget-boolean v2, Lcom/ta/utdid2/b/a/b;->a:Z

    if-nez v2, :cond_7

    iget v2, v0, Lcom/ta/utdid2/b/a/b$c;->a:I

    if-ne v2, v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 559
    :cond_7
    :goto_2
    iget-object v0, v0, Lcom/ta/utdid2/b/a/b$c;->b:[B

    return-object v0
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .line 465
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/ta/utdid2/b/a/b;->encode([BI)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 466
    :catch_0
    move-exception v0

    .line 468
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
