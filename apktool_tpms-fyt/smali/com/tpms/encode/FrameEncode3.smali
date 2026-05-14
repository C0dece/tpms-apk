.class public Lcom/tpms/encode/FrameEncode3;
.super Lcom/tpms/encode/FrameEncode;
.source "FrameEncode3.java"


# static fields
.field private static final activityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

.field private TAG:Ljava/lang/String;

.field mOldHintTxt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tpms/encode/FrameEncode3;->activityMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "_app"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Lcom/tpms/encode/FrameEncode;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tpms/encode/FrameEncode3;->mOldHintTxt:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    .line 26
    const-string v0, "FrameEncode3"

    iput-object v0, p0, Lcom/tpms/encode/FrameEncode3;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private sleep(J)V
    .locals 1
    .param p1, "ms"    # J

    .line 51
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 56
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method


# virtual methods
.method public HeartbeatEventAck()V
    .locals 2

    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 60
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 61
    return-void

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x6t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public SendEncryption(B)V
    .locals 4
    .param p1, "seed"    # B

    .line 70
    const/4 v0, 0x6

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x55

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, -0x56

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    aput-byte v0, v1, v2

    const/4 v0, 0x3

    const/16 v2, 0x5b

    aput-byte v2, v1, v0

    const/4 v0, 0x4

    aput-byte p1, v1, v0

    const/4 v0, 0x5

    const/16 v2, -0x20

    aput-byte v2, v1, v0

    move-object v0, v1

    .line 72
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 73
    return-void
.end method

.method public SendHeartbeat()V
    .locals 2

    .line 64
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 65
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 66
    return-void

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x6t
        0x19t
        0x0t
        -0x20t
    .end array-data
.end method

.method public exchangeLeftBackRightBack()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode3;->TAG:Ljava/lang/String;

    const-string v1, "exchangeLeftBackRightBack"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 158
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 159
    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x7t
        0x3t
        0x10t
        0x11t
        0x0t
    .end array-data
.end method

.method public exchangeLeftFrontLeftBack()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode3;->TAG:Ljava/lang/String;

    const-string v1, "exchangeLeftFrontLeftBack"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 129
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 130
    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x7t
        0x3t
        0x0t
        0x10t
        0x0t
    .end array-data
.end method

.method public exchangeLeftFrontRightBack()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode3;->TAG:Ljava/lang/String;

    const-string v1, "exchangeLeftFrontRightBack"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 136
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 138
    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x7t
        0x3t
        0x0t
        0x11t
        0x0t
    .end array-data
.end method

.method public exchangeLeftFrontRightFront()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode3;->TAG:Ljava/lang/String;

    const-string v1, "exchangeLeftFrontRightFront"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 122
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 123
    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x7t
        0x3t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public exchangeRightFrontLeftBack()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode3;->TAG:Ljava/lang/String;

    const-string v1, "exchangeRightFrontLeftBack"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 144
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 145
    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x7t
        0x3t
        0x1t
        0x10t
        0x0t
    .end array-data
.end method

.method public exchangeRightFrontRightBack()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode3;->TAG:Ljava/lang/String;

    const-string v1, "exchangeRightFrontRightBack"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 151
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 152
    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x7t
        0x3t
        0x1t
        0x11t
        0x0t
    .end array-data
.end method

.method public exchange_sp_bl()V
    .locals 2

    .line 173
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 174
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 175
    return-void

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x7t
        0x3t
        0x10t
        0x5t
        0x0t
    .end array-data
.end method

.method public exchange_sp_br()V
    .locals 2

    .line 178
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 179
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 180
    return-void

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x7t
        0x3t
        0x11t
        0x5t
        0x0t
    .end array-data
.end method

.method public exchange_sp_fl()V
    .locals 2

    .line 163
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 164
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 165
    return-void

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x7t
        0x3t
        0x0t
        0x5t
        0x0t
    .end array-data
.end method

.method public exchange_sp_fr()V
    .locals 2

    .line 168
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 169
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 170
    return-void

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x7t
        0x3t
        0x1t
        0x5t
        0x0t
    .end array-data
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 33
    invoke-super {p0, p1}, Lcom/tpms/encode/FrameEncode;->init(Landroid/content/Context;)V

    .line 35
    new-instance v0, Lcom/tpms/encode/PackBufferFrameEn3;

    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->theApp:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tpms/encode/PackBufferFrameEn3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    .line 37
    return-void
.end method

.method public paireBackLeft()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode3;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u540e\u5de6\u8f6eID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 78
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 79
    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x6t
        0x1t
        0x10t
        0x0t
    .end array-data
.end method

.method public paireBackRight()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode3;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u53f3\u540e\u8f6eID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 84
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 85
    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x6t
        0x1t
        0x11t
        0x0t
    .end array-data
.end method

.method public paireFrontLeft()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode3;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u524d\u5de6\u8f6eID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 90
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 91
    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x6t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public paireFrontRight()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode3;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u524d\u53f3ID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 96
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 97
    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x6t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public paireSpTired()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode3;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u5907\u80ceID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 102
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 103
    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x6t
        0x1t
        0x5t
        0x0t
    .end array-data
.end method

.method public querySensorID()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode3;->TAG:Ljava/lang/String;

    const-string v1, "querySensorID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 108
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 109
    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x6t
        0x7t
        0x0t
        0x0t
    .end array-data
.end method

.method public reset_dev()V
    .locals 2

    .line 183
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 184
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 185
    return-void

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x6t
        0x58t
        0x55t
        -0x20t
    .end array-data
.end method

.method protected send(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 41
    return-void
.end method

.method public send([B)V
    .locals 2
    .param p1, "frame"    # [B

    .line 45
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v0, p1}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 46
    const-wide/16 v0, 0x3c

    invoke-direct {p0, v0, v1}, Lcom/tpms/encode/FrameEncode3;->sleep(J)V

    .line 47
    return-void
.end method

.method public stopPaire()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode3;->TAG:Ljava/lang/String;

    const-string v1, "stopPaire"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 114
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/encode/FrameEncode3;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn3;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/PackBufferFrameEn3;->send([B)V

    .line 115
    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x6t
        0x6t
        0x0t
        0x0t
    .end array-data
.end method
