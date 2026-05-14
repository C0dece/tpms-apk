.class public Lcom/tpms/encode/FrameEncode;
.super Ljava/lang/Object;
.source "FrameEncode.java"


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
.field FrameEn:Lcom/tpms/encode/PackBufferFrameEn;

.field private TAG:Ljava/lang/String;

.field mOldHintTxt:Ljava/lang/String;

.field mctx:Landroid/content/Context;

.field theApp:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tpms/encode/FrameEncode;->activityMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "app"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tpms/encode/FrameEncode;->mOldHintTxt:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/encode/FrameEncode;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn;

    .line 27
    const-string v0, "FrameEncode"

    iput-object v0, p0, Lcom/tpms/encode/FrameEncode;->TAG:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/tpms/encode/FrameEncode;->theApp:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private sleep(J)V
    .locals 1
    .param p1, "ms"    # J

    .line 55
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 60
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method


# virtual methods
.method public HeartbeatEventAck()V
    .locals 0

    .line 64
    return-void
.end method

.method public SendEncryption(B)V
    .locals 0
    .param p1, "seed"    # B

    .line 73
    return-void
.end method

.method public SendHeartbeat()V
    .locals 0

    .line 68
    return-void
.end method

.method public exchangeLeftBackRightBack()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode;->TAG:Ljava/lang/String;

    const-string v1, "exchangeLeftBackRightBack"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public exchangeLeftFrontLeftBack()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode;->TAG:Ljava/lang/String;

    const-string v1, "exchangeLeftFrontLeftBack"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public exchangeLeftFrontRightBack()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode;->TAG:Ljava/lang/String;

    const-string v1, "exchangeLeftFrontRightBack"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public exchangeLeftFrontRightFront()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode;->TAG:Ljava/lang/String;

    const-string v1, "exchangeLeftFrontRightFront"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public exchangeRightFrontLeftBack()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode;->TAG:Ljava/lang/String;

    const-string v1, "exchangeRightFrontLeftBack"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public exchangeRightFrontRightBack()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode;->TAG:Ljava/lang/String;

    const-string v1, "exchangeRightFrontRightBack"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public exchange_sp_bl()V
    .locals 0

    .line 144
    return-void
.end method

.method public exchange_sp_br()V
    .locals 0

    .line 148
    return-void
.end method

.method public exchange_sp_fl()V
    .locals 0

    .line 136
    return-void
.end method

.method public exchange_sp_fr()V
    .locals 0

    .line 140
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/tpms/encode/FrameEncode;->mctx:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/tpms/encode/PackBufferFrameEn;

    iget-object v1, p0, Lcom/tpms/encode/FrameEncode;->theApp:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tpms/encode/PackBufferFrameEn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tpms/encode/FrameEncode;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn;

    .line 40
    return-void
.end method

.method public paireBackLeft()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u53f3\u5de6\u8f6eID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public paireBackRight()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u53f3\u540e\u8f6eID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public paireFrontLeft()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u524d\u5de6\u8f6eID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public paireFrontRight()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u524d\u53f3ID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public paireSpTired()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u5907\u80ceID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public querySensorID()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode;->TAG:Ljava/lang/String;

    const-string v1, "querySensorID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public reset_dev()V
    .locals 0

    .line 153
    return-void
.end method

.method protected send(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 45
    return-void
.end method

.method public send([B)V
    .locals 2
    .param p1, "frame"    # [B

    .line 49
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode;->FrameEn:Lcom/tpms/encode/PackBufferFrameEn;

    invoke-virtual {v0, p1}, Lcom/tpms/encode/PackBufferFrameEn;->send([B)V

    .line 50
    const-wide/16 v0, 0x3c

    invoke-direct {p0, v0, v1}, Lcom/tpms/encode/FrameEncode;->sleep(J)V

    .line 51
    return-void
.end method

.method public stopPaire()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/tpms/encode/FrameEncode;->TAG:Ljava/lang/String;

    const-string v1, "stopPaire"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method
