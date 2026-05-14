.class public Lcom/tpms/decode/FrameDecode;
.super Ljava/lang/Object;
.source "FrameDecode.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field downtime:J

.field protected mPackBufferFrame:Lcom/tpms/decode/PackBufferFrame;

.field mctx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "FrameDecode"

    sput-object v0, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tpms/decode/FrameDecode;->downtime:J

    .line 35
    return-void
.end method


# virtual methods
.method public decodeAlarmAgrsProc(BBB)V
    .locals 2
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .param p3, "b3"    # B

    .line 210
    new-instance v0, Lcom/tpms/modle/AlarmAgrs;

    invoke-direct {v0}, Lcom/tpms/modle/AlarmAgrs;-><init>()V

    .line 211
    .local v0, "alargs":Lcom/tpms/modle/AlarmAgrs;
    and-int/lit16 v1, p1, 0xff

    mul-int/lit8 v1, v1, 0xa

    iput v1, v0, Lcom/tpms/modle/AlarmAgrs;->AirPressureHi:I

    .line 212
    and-int/lit16 v1, p2, 0xff

    mul-int/lit8 v1, v1, 0xa

    iput v1, v0, Lcom/tpms/modle/AlarmAgrs;->AirPressureLo:I

    .line 213
    and-int/lit16 v1, p3, 0xff

    iput v1, v0, Lcom/tpms/modle/AlarmAgrs;->Temperature:I

    .line 214
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method public getPackBufferFrame()Lcom/tpms/decode/PackBufferFrame;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/tpms/decode/FrameDecode;->mPackBufferFrame:Lcom/tpms/decode/PackBufferFrame;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/tpms/decode/FrameDecode;->mctx:Landroid/content/Context;

    .line 39
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 41
    new-instance v0, Lcom/tpms/decode/PackBufferFrame;

    invoke-direct {v0}, Lcom/tpms/decode/PackBufferFrame;-><init>()V

    iput-object v0, p0, Lcom/tpms/decode/FrameDecode;->mPackBufferFrame:Lcom/tpms/decode/PackBufferFrame;

    .line 42
    return-void
.end method

.method public onEventMainThread(Ljava/nio/ByteBuffer;)V
    .locals 13
    .param p1, "frameBuf"    # Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 53
    .local v0, "frame":[B
    const/4 v1, 0x4

    aget-byte v2, v0, v1

    .line 55
    .local v2, "cmd":B
    sget-object v3, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    array-length v4, v0

    invoke-static {v3, v0, v4}, Lcom/tpms/utils/SLOG;->LogByteArr(Ljava/lang/String;[BI)Ljava/lang/String;

    .line 56
    const/4 v3, 0x6

    const/16 v4, 0x8

    const/4 v5, 0x7

    const-string v6, "find"

    const/16 v7, 0x21

    if-ne v2, v7, :cond_0

    .line 58
    const-string v1, "\u67e5\u5bfb\u53cd\u56de\u57fa\u672c\u53c2\u6570"

    invoke-static {v6, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    array-length v1, v0

    invoke-static {v6, v0, v1}, Lcom/tpms/utils/SLOG;->LogByteArr(Ljava/lang/String;[BI)Ljava/lang/String;

    .line 60
    aget-byte v1, v0, v3

    aget-byte v3, v0, v5

    aget-byte v4, v0, v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/tpms/decode/FrameDecode;->decodeAlarmAgrsProc(BBB)V

    goto/16 :goto_1

    .line 61
    :cond_0
    const/16 v7, 0x11

    if-ne v2, v7, :cond_1

    .line 62
    sget-object v1, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v3, "\u662f\u63e1\u624b\u4e86"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v3, Lcom/tpms/modle/ShakeHands;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/tpms/modle/ShakeHands;-><init>(I)V

    invoke-virtual {v1, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 64
    :cond_1
    const/16 v7, 0x41

    const/4 v8, 0x5

    if-ne v2, v7, :cond_2

    .line 65
    const-string v1, "\u67e5\u5bfb\u53cd\u56de\u7684id"

    invoke-static {v6, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    array-length v1, v0

    invoke-static {v6, v0, v1}, Lcom/tpms/utils/SLOG;->LogByteArr(Ljava/lang/String;[BI)Ljava/lang/String;

    .line 67
    new-instance v1, Lcom/tpms/modle/QueryIDOkEvent;

    invoke-direct {v1}, Lcom/tpms/modle/QueryIDOkEvent;-><init>()V

    .line 68
    .local v1, "paire":Lcom/tpms/modle/QueryIDOkEvent;
    aget-byte v4, v0, v8

    iput v4, v1, Lcom/tpms/modle/QueryIDOkEvent;->tires:I

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v5, v0, v5

    invoke-static {v5}, Lcom/tpms/decode/Util;->byteToUpperString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v0, v3

    invoke-static {v3}, Lcom/tpms/decode/Util;->byteToUpperString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    .line 71
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    invoke-virtual {v3, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 72
    .end local v1    # "paire":Lcom/tpms/modle/QueryIDOkEvent;
    goto/16 :goto_1

    :cond_2
    const/16 v7, 0x61

    if-ne v2, v7, :cond_3

    .line 73
    const-string v1, "\u914d\u5bf9\u53cd\u56de\u7684id"

    invoke-static {v6, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    array-length v1, v0

    invoke-static {v6, v0, v1}, Lcom/tpms/utils/SLOG;->LogByteArr(Ljava/lang/String;[BI)Ljava/lang/String;

    .line 75
    new-instance v1, Lcom/tpms/modle/PaireIDOkEvent;

    invoke-direct {v1}, Lcom/tpms/modle/PaireIDOkEvent;-><init>()V

    .line 76
    .local v1, "paire":Lcom/tpms/modle/PaireIDOkEvent;
    aget-byte v4, v0, v8

    iput v4, v1, Lcom/tpms/modle/PaireIDOkEvent;->tires:I

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v5, v0, v5

    invoke-static {v5}, Lcom/tpms/decode/Util;->byteToUpperString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v0, v3

    invoke-static {v3}, Lcom/tpms/decode/Util;->byteToUpperString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tpms/modle/PaireIDOkEvent;->mID:Ljava/lang/String;

    .line 78
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    invoke-virtual {v3, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 79
    .end local v1    # "paire":Lcom/tpms/modle/PaireIDOkEvent;
    goto/16 :goto_1

    :cond_3
    const/16 v6, 0x71

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/16 v10, 0x9

    if-ne v2, v6, :cond_b

    .line 80
    sget-object v6, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v11, "\u8f6e\u80ce\u72b6\u6001"

    invoke-static {v6, v11}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v6, Lcom/tpms/modle/TiresStateEvent;

    invoke-direct {v6}, Lcom/tpms/modle/TiresStateEvent;-><init>()V

    .line 82
    .local v6, "event":Lcom/tpms/modle/TiresStateEvent;
    aget-byte v8, v0, v8

    iput v8, v6, Lcom/tpms/modle/TiresStateEvent;->tires:I

    .line 83
    iget-object v8, v6, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    aget-byte v11, v0, v3

    and-int/lit16 v11, v11, 0xff

    aget-byte v12, v0, v5

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v4

    add-int/2addr v11, v12

    iput v11, v8, Lcom/tpms/modle/TiresState;->AirPressure:I

    .line 85
    sget-object v8, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u6c14\u538b\u53c2\u6570:low:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";hi:"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v4

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v3, v6, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    iput v5, v3, Lcom/tpms/modle/TiresState;->Temperature:I

    .line 87
    aget-byte v3, v0, v10

    and-int/lit8 v3, v3, -0x80

    if-eqz v3, :cond_4

    .line 88
    sget-object v1, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v3, "\u65e0\u6548\u6570\u636e"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v6}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 90
    return-void

    .line 93
    :cond_4
    aget-byte v3, v0, v10

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_5

    .line 94
    sget-object v1, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v3, "\u65e0\u6548\u62a5\u8b66"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v6}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 96
    return-void

    .line 99
    :cond_5
    aget-byte v3, v0, v10

    and-int/2addr v3, v9

    if-eqz v3, :cond_6

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v6, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v8, v5, Lcom/tpms/modle/TiresState;->error:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \u4f4e\u538b"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/tpms/modle/TiresState;->error:Ljava/lang/String;

    .line 101
    sget-object v3, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v5, "\u4f4e\u538b"

    invoke-static {v3, v5}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_6
    aget-byte v3, v0, v10

    and-int/2addr v3, v7

    if-eqz v3, :cond_7

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v6, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v7, v5, Lcom/tpms/modle/TiresState;->error:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u9ad8\u538b"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/tpms/modle/TiresState;->error:Ljava/lang/String;

    .line 106
    sget-object v3, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v5, "\u9ad8\u538b"

    invoke-static {v3, v5}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_7
    aget-byte v3, v0, v10

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v6, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v5, v3, Lcom/tpms/modle/TiresState;->error:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u9ad8\u6e29"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/tpms/modle/TiresState;->error:Ljava/lang/String;

    .line 111
    sget-object v1, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v3, "\u9ad8\u6e29"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_8
    aget-byte v1, v0, v10

    and-int/2addr v1, v4

    if-eqz v1, :cond_9

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v6, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v4, v3, Lcom/tpms/modle/TiresState;->error:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u6f0f\u6c14"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/tpms/modle/TiresState;->error:Ljava/lang/String;

    .line 116
    sget-object v1, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v3, "\u6f0f\u6c14"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_9
    aget-byte v1, v0, v10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v6, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v4, v3, Lcom/tpms/modle/TiresState;->error:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u4f4e\u7535"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/tpms/modle/TiresState;->error:Ljava/lang/String;

    .line 121
    sget-object v1, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v3, "\u4f4e\u7535"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_a
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v6}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 125
    .end local v6    # "event":Lcom/tpms/modle/TiresStateEvent;
    goto/16 :goto_1

    :cond_b
    const/16 v3, -0x7f

    if-ne v2, v3, :cond_c

    .line 126
    sget-object v1, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v3, "\u534f\u8bae\u7248\u672c\u53f7,\u65e5\u6708,\u5e74,\u7248\u672c\u53f7"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 127
    :cond_c
    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    .line 128
    sget-object v3, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v6, "\u9519\u8bef"

    invoke-static {v3, v6}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    aget-byte v3, v0, v8

    if-ne v3, v9, :cond_d

    .line 131
    sget-object v1, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v3, "\u901a\u4fe1\u9519\u8bef"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_d
    aget-byte v3, v0, v8

    if-ne v3, v7, :cond_e

    .line 133
    sget-object v1, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v3, "\u4e0d\u652f\u6301\u8be5\u529f\u80fd\u53f7"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_e
    aget-byte v3, v0, v8

    const/4 v6, 0x3

    if-ne v3, v6, :cond_f

    .line 135
    sget-object v1, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v3, "\u4e0d\u652f\u6301\u8be5\u5b50\u529f\u80fd\u53f7"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_f
    aget-byte v3, v0, v8

    if-ne v3, v1, :cond_10

    .line 137
    sget-object v1, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v3, "\u5199rom\u5931\u8d25"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_10
    aget-byte v1, v0, v8

    if-ne v1, v8, :cond_11

    .line 139
    sget-object v1, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v3, "\u914d\u5bf9\u8d85\u65f6"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_11
    aget-byte v1, v0, v8

    if-ne v1, v5, :cond_12

    .line 141
    sget-object v1, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v3, "\u63a5\u6536\u673aRF\u9519\u8bef"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_12
    aget-byte v1, v0, v8

    if-ne v1, v4, :cond_13

    .line 143
    sget-object v1, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v3, "\u538b\u529b\u4f20\u611f\u5668\u9519\u8bef"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_13
    aget-byte v1, v0, v8

    if-ne v1, v10, :cond_14

    .line 145
    sget-object v1, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    const-string v3, "\u6e29\u5ea6\u4f20\u611f\u5668\u9519\u8bef"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_14
    :goto_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v3, Lcom/tpms/modle/ShakeHands;

    aget-byte v4, v0, v8

    invoke-direct {v3, v4}, Lcom/tpms/modle/ShakeHands;-><init>(I)V

    invoke-virtual {v1, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 150
    :cond_15
    :goto_1
    sget-object v1, Lcom/tpms/decode/FrameDecode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method
