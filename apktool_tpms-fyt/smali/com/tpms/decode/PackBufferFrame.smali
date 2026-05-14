.class public Lcom/tpms/decode/PackBufferFrame;
.super Ljava/lang/Object;
.source "PackBufferFrame.java"


# static fields
.field protected static DEBUG:Z = false

.field protected static final MAX_NETPACKBUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "PackBufferFrame"


# instance fields
.field mRet:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected m_pNetPackBuffer:[B

.field protected m_uCurBufferPosition:I

.field protected mutex:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tpms/decode/PackBufferFrame;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/tpms/decode/PackBufferFrame;->m_uCurBufferPosition:I

    .line 35
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tpms/decode/PackBufferFrame;->mutex:Ljava/lang/Object;

    .line 97
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/tpms/decode/PackBufferFrame;->mRet:Ljava/util/Vector;

    .line 38
    const v1, 0x14000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/tpms/decode/PackBufferFrame;->m_pNetPackBuffer:[B

    .line 39
    iput v0, p0, Lcom/tpms/decode/PackBufferFrame;->m_uCurBufferPosition:I

    .line 42
    return-void
.end method


# virtual methods
.method public addBuffer([BI)Z
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "len"    # I

    .line 176
    iget-object v0, p0, Lcom/tpms/decode/PackBufferFrame;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-gtz p2, :cond_0

    goto :goto_2

    .line 181
    :cond_0
    :try_start_0
    iget v2, p0, Lcom/tpms/decode/PackBufferFrame;->m_uCurBufferPosition:I

    add-int/2addr v2, p2

    const/high16 v3, 0x10000

    if-le v2, v3, :cond_1

    .line 182
    iput v1, p0, Lcom/tpms/decode/PackBufferFrame;->m_uCurBufferPosition:I

    .line 183
    const-string v2, "PackBufferFrame"

    const-string v3, "m_uCurBufferPosition > MAX_NETPACKBUFFER_SIZE"

    invoke-static {v2, v3}, Lcom/tpms/utils/SLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/tpms/decode/PackBufferFrame;->m_pNetPackBuffer:[B

    iget v3, p0, Lcom/tpms/decode/PackBufferFrame;->m_uCurBufferPosition:I

    invoke-static {p1, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    iget v2, p0, Lcom/tpms/decode/PackBufferFrame;->m_uCurBufferPosition:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/tpms/decode/PackBufferFrame;->m_uCurBufferPosition:I

    .line 190
    iget-object v2, p0, Lcom/tpms/decode/PackBufferFrame;->mRet:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 191
    iget-object v2, p0, Lcom/tpms/decode/PackBufferFrame;->m_pNetPackBuffer:[B

    iget v3, p0, Lcom/tpms/decode/PackBufferFrame;->m_uCurBufferPosition:I

    invoke-virtual {p0, v2, v3}, Lcom/tpms/decode/PackBufferFrame;->returnNewBuf([BI)[B

    move-result-object v2

    iget v3, p0, Lcom/tpms/decode/PackBufferFrame;->m_uCurBufferPosition:I

    invoke-virtual {p0, v2, v3}, Lcom/tpms/decode/PackBufferFrame;->protocolFrameFilter2([BI)[B

    move-result-object v2

    .line 192
    .local v2, "retbuf":[B
    if-eqz v2, :cond_2

    .line 193
    iget-object v3, p0, Lcom/tpms/decode/PackBufferFrame;->m_pNetPackBuffer:[B

    array-length v4, v2

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    array-length v1, v2

    iput v1, p0, Lcom/tpms/decode/PackBufferFrame;->m_uCurBufferPosition:I

    goto :goto_0

    .line 196
    :cond_2
    iput v1, p0, Lcom/tpms/decode/PackBufferFrame;->m_uCurBufferPosition:I

    .line 200
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/tpms/decode/PackBufferFrame;->mRet:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 201
    iget-object v3, p0, Lcom/tpms/decode/PackBufferFrame;->mRet:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 204
    .local v3, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    invoke-virtual {v4, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 200
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 207
    .end local v1    # "i":I
    .end local v2    # "retbuf":[B
    :cond_3
    monitor-exit v0

    .line 208
    const/4 v0, 0x1

    return v0

    .line 178
    :cond_4
    :goto_2
    monitor-exit v0

    return v1

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method protected calcCC([B)Z
    .locals 3
    .param p1, "buf"    # [B

    .line 74
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 75
    .local v0, "datalen":I
    invoke-virtual {p0, p1}, Lcom/tpms/decode/PackBufferFrame;->sumCC([B)B

    move-result v1

    .line 77
    .local v1, "cc":B
    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p1, v2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected erase([BII)[B
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "buflen"    # I
    .param p3, "dellen"    # I

    .line 52
    sget-boolean v0, Lcom/tpms/decode/PackBufferFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dellen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackBufferFrame"

    invoke-static {v1, v0}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {v1, p1, p2}, Lcom/tpms/utils/SLOG;->LogByteArr(Ljava/lang/String;[BI)Ljava/lang/String;

    .line 56
    :cond_0
    if-gt p2, p3, :cond_1

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_1
    sub-int v0, p2, p3

    new-array v0, v0, [B

    .line 61
    .local v0, "newbuf":[B
    const/4 v1, 0x0

    sub-int v2, p2, p3

    :try_start_0
    invoke-static {p1, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    nop

    .line 67
    return-object v0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    return-object v0
.end method

.method protected protocolFrameFilter2([BI)[B
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "len"    # I

    .line 104
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 105
    return-object v0

    .line 108
    :cond_0
    const/4 v1, 0x0

    .line 110
    .local v1, "it":I
    const/4 v2, 0x4

    if-lt p2, v2, :cond_9

    .line 111
    const/4 v2, 0x0

    aget-byte v3, p1, v2

    const/16 v4, -0x56

    if-ne v3, v4, :cond_1

    .line 112
    nop

    .line 116
    :cond_1
    const/4 v3, 0x1

    aget-byte v5, p1, v3

    const/16 v6, 0x55

    if-ne v5, v6, :cond_2

    .line 120
    :cond_2
    aget-byte v5, p1, v2

    if-ne v5, v4, :cond_7

    .line 121
    const/4 v4, 0x3

    aget-byte v4, p1, v4

    .line 122
    .local v4, "datalen":I
    move v5, v4

    .line 123
    .local v5, "framelen":I
    if-gt v5, p2, :cond_6

    .line 124
    invoke-virtual {p0, p1}, Lcom/tpms/decode/PackBufferFrame;->calcCC([B)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 125
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 126
    .local v3, "bbuf":Ljava/nio/ByteBuffer;
    iget-object v6, p0, Lcom/tpms/decode/PackBufferFrame;->mRet:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v3, p1, v2, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 129
    invoke-virtual {p0, p1, p2, v5}, Lcom/tpms/decode/PackBufferFrame;->erase([BII)[B

    move-result-object p1

    .line 130
    if-nez p1, :cond_3

    .line 131
    return-object v0

    .line 133
    :cond_3
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/tpms/decode/PackBufferFrame;->protocolFrameFilter2([BI)[B

    move-result-object v0

    return-object v0

    .line 136
    .end local v3    # "bbuf":Ljava/nio/ByteBuffer;
    :cond_4
    invoke-virtual {p0, p1, p2, v3}, Lcom/tpms/decode/PackBufferFrame;->erase([BII)[B

    move-result-object p1

    .line 137
    if-nez p1, :cond_5

    .line 138
    return-object v0

    .line 140
    :cond_5
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/tpms/decode/PackBufferFrame;->protocolFrameFilter2([BI)[B

    move-result-object v0

    return-object v0

    .line 143
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/tpms/decode/PackBufferFrame;->returnNewBuf([BI)[B

    move-result-object v0

    return-object v0

    .line 147
    .end local v4    # "datalen":I
    .end local v5    # "framelen":I
    :cond_7
    invoke-virtual {p0, p1, p2, v3}, Lcom/tpms/decode/PackBufferFrame;->erase([BII)[B

    move-result-object p1

    .line 148
    if-nez p1, :cond_8

    .line 149
    return-object v0

    .line 151
    :cond_8
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/tpms/decode/PackBufferFrame;->protocolFrameFilter2([BI)[B

    move-result-object v0

    return-object v0

    .line 155
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/tpms/decode/PackBufferFrame;->returnNewBuf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public resetBufferPosition()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/tpms/decode/PackBufferFrame;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/tpms/decode/PackBufferFrame;->m_uCurBufferPosition:I

    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method returnNewBuf([BI)[B
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "len"    # I

    .line 160
    new-array v0, p2, [B

    .line 162
    .local v0, "newbuf":[B
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    nop

    .line 168
    return-object v0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    const/4 v2, 0x0

    return-object v2
.end method

.method public sumCC([B)B
    .locals 6
    .param p1, "buf"    # [B

    .line 81
    const/4 v0, 0x3

    aget-byte v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 84
    .local v1, "datalen":I
    aget-byte v0, p1, v0

    .line 85
    .local v0, "cmd":B
    const/4 v2, 0x0

    .line 86
    .local v2, "calc":B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_0

    .line 87
    aget-byte v4, p1, v3

    add-int/2addr v4, v2

    int-to-byte v2, v4

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v3    # "i":I
    :cond_0
    move v3, v2

    .line 92
    .local v3, "cc":B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cc:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/tpms/utils/SLOG;->byteToHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackBufferFrame"

    invoke-static {v5, v4}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return v3
.end method
