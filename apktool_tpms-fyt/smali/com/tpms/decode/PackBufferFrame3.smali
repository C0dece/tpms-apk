.class public Lcom/tpms/decode/PackBufferFrame3;
.super Lcom/tpms/decode/PackBufferFrame;
.source "PackBufferFrame3.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackBufferFrame3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/tpms/decode/PackBufferFrame;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method protected calcCC([B)Z
    .locals 4
    .param p1, "buf"    # [B

    .line 37
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    .line 38
    .local v0, "datalen":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 39
    array-length v2, p1

    const-string v3, "PackBufferFrame3ERR"

    invoke-static {v3, p1, v2}, Lcom/tpms/utils/SLOG;->LogByteArr(Ljava/lang/String;[BI)Ljava/lang/String;

    .line 40
    return v1

    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tpms/decode/PackBufferFrame3;->sumCC([B)B

    move-result v2

    .line 45
    .local v2, "cc":B
    add-int/lit8 v3, v0, -0x1

    aget-byte v3, p1, v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected protocolFrameFilter2([BI)[B
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "len"    # I

    .line 67
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 68
    return-object v0

    .line 71
    :cond_0
    const/4 v1, 0x0

    .line 73
    .local v1, "it":I
    const/4 v2, 0x3

    if-lt p2, v2, :cond_7

    .line 75
    const/4 v2, 0x0

    aget-byte v3, p1, v2

    const/16 v4, 0x55

    const/4 v5, 0x1

    if-ne v3, v4, :cond_5

    aget-byte v3, p1, v5

    const/16 v4, -0x56

    if-ne v3, v4, :cond_5

    .line 76
    const/4 v3, 0x2

    aget-byte v3, p1, v3

    .line 77
    .local v3, "datalen":I
    move v4, v3

    .line 78
    .local v4, "framelen":I
    if-gt v4, p2, :cond_4

    .line 79
    invoke-virtual {p0, p1}, Lcom/tpms/decode/PackBufferFrame3;->calcCC([B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 81
    .local v5, "bbuf":Ljava/nio/ByteBuffer;
    iget-object v6, p0, Lcom/tpms/decode/PackBufferFrame3;->mRet:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v5, p1, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {p0, p1, p2, v4}, Lcom/tpms/decode/PackBufferFrame3;->erase([BII)[B

    move-result-object p1

    .line 85
    if-nez p1, :cond_1

    .line 86
    return-object v0

    .line 88
    :cond_1
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/tpms/decode/PackBufferFrame3;->protocolFrameFilter2([BI)[B

    move-result-object v0

    return-object v0

    .line 91
    .end local v5    # "bbuf":Ljava/nio/ByteBuffer;
    :cond_2
    invoke-virtual {p0, p1, p2, v5}, Lcom/tpms/decode/PackBufferFrame3;->erase([BII)[B

    move-result-object p1

    .line 92
    if-nez p1, :cond_3

    .line 93
    return-object v0

    .line 95
    :cond_3
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/tpms/decode/PackBufferFrame3;->protocolFrameFilter2([BI)[B

    move-result-object v0

    return-object v0

    .line 98
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/tpms/decode/PackBufferFrame3;->returnNewBuf([BI)[B

    move-result-object v0

    return-object v0

    .line 102
    .end local v3    # "datalen":I
    .end local v4    # "framelen":I
    :cond_5
    invoke-virtual {p0, p1, p2, v5}, Lcom/tpms/decode/PackBufferFrame3;->erase([BII)[B

    move-result-object p1

    .line 103
    if-nez p1, :cond_6

    .line 104
    return-object v0

    .line 106
    :cond_6
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/tpms/decode/PackBufferFrame3;->protocolFrameFilter2([BI)[B

    move-result-object v0

    return-object v0

    .line 110
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/tpms/decode/PackBufferFrame3;->returnNewBuf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public sumCC([B)B
    .locals 4
    .param p1, "buf"    # [B

    .line 49
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    .line 51
    .local v0, "datalen":I
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    .line 52
    .local v1, "calc":B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_0

    .line 53
    aget-byte v3, p1, v2

    xor-int/2addr v3, v1

    int-to-byte v1, v3

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v2    # "i":I
    :cond_0
    move v2, v1

    .line 59
    .local v2, "cc":B
    return v2
.end method
