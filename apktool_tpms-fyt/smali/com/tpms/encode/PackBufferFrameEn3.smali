.class public Lcom/tpms/encode/PackBufferFrameEn3;
.super Lcom/tpms/encode/PackBufferFrameEn;
.source "PackBufferFrameEn3.java"


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "app"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0, p1}, Lcom/tpms/encode/PackBufferFrameEn;-><init>(Landroid/content/Context;)V

    .line 20
    const-class v0, Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tpms/encode/PackBufferFrameEn3;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected calcCC([B)B
    .locals 6
    .param p1, "buf"    # [B

    .line 28
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    .line 30
    .local v0, "datalen":I
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    .line 31
    .local v1, "calc":B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_0

    .line 32
    aget-byte v3, p1, v2

    xor-int/2addr v3, v1

    int-to-byte v1, v3

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    .end local v2    # "i":I
    :cond_0
    move v2, v1

    .line 37
    .local v2, "cc":B
    iget-object v3, p0, Lcom/tpms/encode/PackBufferFrameEn3;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/tpms/utils/SLOG;->byteToHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return v2
.end method
