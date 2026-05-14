.class public Lcom/tpms/encode/PackBufferFrameEn;
.super Ljava/lang/Object;
.source "PackBufferFrameEn.java"


# instance fields
.field TAG:Ljava/lang/String;

.field theApp:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "app"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v0, Lcom/tpms/encode/PackBufferFrameEn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tpms/encode/PackBufferFrameEn;->TAG:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/tpms/encode/PackBufferFrameEn;->theApp:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method protected calcCC([B)B
    .locals 7
    .param p1, "buf"    # [B

    .line 39
    const/4 v0, 0x3

    aget-byte v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 41
    .local v1, "datalen":I
    aget-byte v0, p1, v0

    .line 42
    .local v0, "cmd":B
    const/4 v2, 0x0

    .line 43
    .local v2, "calc":B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_0

    .line 44
    aget-byte v4, p1, v3

    add-int/2addr v4, v2

    int-to-byte v2, v4

    .line 43
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    .end local v3    # "i":I
    :cond_0
    move v3, v2

    .line 48
    .local v3, "cc":B
    iget-object v4, p0, Lcom/tpms/encode/PackBufferFrameEn;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return v3
.end method

.method public send([B)V
    .locals 3
    .param p1, "frame"    # [B

    .line 31
    invoke-virtual {p0, p1}, Lcom/tpms/encode/PackBufferFrameEn;->calcCC([B)B

    move-result v0

    .line 32
    .local v0, "cc":B
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput-byte v0, p1, v1

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tpms/encode/PackBufferFrameEn;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "write"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v2, p1

    invoke-static {v1, p1, v2}, Lcom/tpms/utils/SLOG;->LogByteArr(Ljava/lang/String;[BI)Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms3;->getDatasrc()Lcom/std/dev/TpmsDataSrc;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/std/dev/TpmsDataSrc;->writeData([B)V

    .line 36
    return-void
.end method
