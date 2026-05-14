.class public Lcom/tpms/decode/FrameDecode3;
.super Lcom/tpms/decode/FrameDecode;
.source "FrameDecode3.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "FrameDecode3"

    sput-object v0, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/tpms/decode/FrameDecode;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public decodeAlarmAgrsProc(BBB)V
    .locals 2
    .param p1, "b1"    # B
    .param p2, "b2"    # B
    .param p3, "b3"    # B

    .line 280
    new-instance v0, Lcom/tpms/modle/AlarmAgrs;

    invoke-direct {v0}, Lcom/tpms/modle/AlarmAgrs;-><init>()V

    .line 281
    .local v0, "alargs":Lcom/tpms/modle/AlarmAgrs;
    and-int/lit16 v1, p1, 0xff

    mul-int/lit8 v1, v1, 0xa

    iput v1, v0, Lcom/tpms/modle/AlarmAgrs;->AirPressureHi:I

    .line 282
    and-int/lit16 v1, p2, 0xff

    mul-int/lit8 v1, v1, 0xa

    iput v1, v0, Lcom/tpms/modle/AlarmAgrs;->AirPressureLo:I

    .line 283
    and-int/lit16 v1, p3, 0xff

    iput v1, v0, Lcom/tpms/modle/AlarmAgrs;->Temperature:I

    .line 284
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 40
    invoke-super {p0, p1}, Lcom/tpms/decode/FrameDecode;->init(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lcom/tpms/decode/PackBufferFrame3;

    invoke-direct {v0}, Lcom/tpms/decode/PackBufferFrame3;-><init>()V

    iput-object v0, p0, Lcom/tpms/decode/FrameDecode3;->mPackBufferFrame:Lcom/tpms/decode/PackBufferFrame;

    .line 42
    return-void
.end method

.method public onEventMainThread(Ljava/nio/ByteBuffer;)V
    .locals 14
    .param p1, "frameBuf"    # Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 50
    .local v0, "frame":[B
    const/4 v1, 0x2

    aget-byte v2, v0, v1

    .line 52
    .local v2, "cmd":B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5b8c\u6574V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    array-length v4, v0

    invoke-static {v3, v0, v4}, Lcom/tpms/utils/SLOG;->LogByteArr(Ljava/lang/String;[BI)Ljava/lang/String;

    .line 53
    sget-object v3, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x11

    const/4 v6, 0x6

    const/16 v7, 0x10

    const/4 v8, 0x1

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-ne v2, v3, :cond_8

    .line 57
    sget-object v12, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v13, "\u8f6e\u80ce\u72b6\u6001,4\u79d2\u4e0a\u62a5\u4e00\u6b21"

    invoke-static {v12, v13}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v12, Lcom/tpms/modle/TiresStateEvent;

    invoke-direct {v12}, Lcom/tpms/modle/TiresStateEvent;-><init>()V

    .line 60
    .local v12, "event":Lcom/tpms/modle/TiresStateEvent;
    aget-byte v13, v0, v11

    if-nez v13, :cond_0

    .line 61
    sget-object v1, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v4, "\u5de6\u524d"

    invoke-static {v1, v4}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput v8, v12, Lcom/tpms/modle/TiresStateEvent;->tires:I

    goto :goto_0

    .line 63
    :cond_0
    aget-byte v13, v0, v11

    if-ne v13, v8, :cond_1

    .line 64
    sget-object v4, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v5, "\u53f3\u524d"

    invoke-static {v4, v5}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput v1, v12, Lcom/tpms/modle/TiresStateEvent;->tires:I

    goto :goto_0

    .line 66
    :cond_1
    aget-byte v1, v0, v11

    if-ne v1, v7, :cond_2

    .line 67
    sget-object v1, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v5, "\u5de6\u540e"

    invoke-static {v1, v5}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput v4, v12, Lcom/tpms/modle/TiresStateEvent;->tires:I

    goto :goto_0

    .line 69
    :cond_2
    aget-byte v1, v0, v11

    if-ne v1, v5, :cond_3

    .line 70
    sget-object v1, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v4, "\u53f3\u540e"

    invoke-static {v1, v4}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iput v11, v12, Lcom/tpms/modle/TiresStateEvent;->tires:I

    goto :goto_0

    .line 72
    :cond_3
    aget-byte v1, v0, v11

    if-ne v1, v9, :cond_7

    .line 73
    iput v9, v12, Lcom/tpms/modle/TiresStateEvent;->tires:I

    .line 78
    :goto_0
    iget-object v1, v12, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    aget-byte v4, v0, v10

    and-int/lit16 v4, v4, 0xff

    int-to-double v4, v4

    const-wide v10, 0x400b851eb851eb85L    # 3.44

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v10

    double-to-int v4, v4

    iput v4, v1, Lcom/tpms/modle/TiresState;->AirPressure:I

    .line 91
    iget-object v1, v12, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    aget-byte v4, v0, v9

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x32

    iput v4, v1, Lcom/tpms/modle/TiresState;->Temperature:I

    .line 92
    sget-object v1, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6c14\u538b\u53c2\u6570:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v12, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget v5, v5, Lcom/tpms/modle/TiresState;->AirPressure:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";\u6e29\u5ea6:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v12, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget v5, v5, Lcom/tpms/modle/TiresState;->Temperature:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    aget-byte v1, v0, v6

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    .line 94
    sget-object v1, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v4, "\u4fe1\u53f7\u4e22\u5931\u4e86"

    invoke-static {v1, v4}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v1, v12, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iput-boolean v8, v1, Lcom/tpms/modle/TiresState;->NoSignal:Z

    .line 100
    :cond_4
    iget v1, v12, Lcom/tpms/modle/TiresStateEvent;->tires:I

    .line 105
    aget-byte v1, v0, v6

    and-int/2addr v1, v3

    if-eqz v1, :cond_5

    .line 106
    iget-object v1, v12, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iput-boolean v8, v1, Lcom/tpms/modle/TiresState;->Leakage:Z

    .line 107
    sget-object v1, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v3, "\u6f0f\u6c14"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_5
    aget-byte v1, v0, v6

    and-int/2addr v1, v7

    if-eqz v1, :cond_6

    .line 111
    iget-object v1, v12, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iput-boolean v8, v1, Lcom/tpms/modle/TiresState;->LowPower:Z

    .line 112
    sget-object v1, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v3, "\u4f4e\u7535"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_6
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v12}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 116
    .end local v12    # "event":Lcom/tpms/modle/TiresStateEvent;
    goto/16 :goto_6

    .line 75
    .restart local v12    # "event":Lcom/tpms/modle/TiresStateEvent;
    :cond_7
    return-void

    .line 116
    .end local v12    # "event":Lcom/tpms/modle/TiresStateEvent;
    :cond_8
    if-ne v2, v6, :cond_11

    .line 118
    aget-byte v3, v0, v11

    const/16 v6, 0x18

    if-ne v3, v6, :cond_e

    .line 120
    new-instance v3, Lcom/tpms/modle/PaireIDOkEvent;

    invoke-direct {v3}, Lcom/tpms/modle/PaireIDOkEvent;-><init>()V

    .line 122
    .local v3, "paire":Lcom/tpms/modle/PaireIDOkEvent;
    aget-byte v6, v0, v10

    if-nez v6, :cond_9

    .line 124
    sget-object v1, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v4, "\u914d\u5bf9\u5b66\u4e60\u6210\u529f \u5de6\u524d"

    invoke-static {v1, v4}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iput v8, v3, Lcom/tpms/modle/PaireIDOkEvent;->tires:I

    goto :goto_1

    .line 126
    :cond_9
    aget-byte v6, v0, v10

    if-ne v6, v8, :cond_a

    .line 128
    sget-object v4, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v5, "\u914d\u5bf9\u5b66\u4e60\u6210\u529f \u53f3\u524d"

    invoke-static {v4, v5}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iput v1, v3, Lcom/tpms/modle/PaireIDOkEvent;->tires:I

    goto :goto_1

    .line 130
    :cond_a
    aget-byte v1, v0, v10

    if-ne v1, v7, :cond_b

    .line 132
    sget-object v1, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v5, "\u914d\u5bf9\u5b66\u4e60\u6210\u529f \u5de6\u540e"

    invoke-static {v1, v5}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iput v4, v3, Lcom/tpms/modle/PaireIDOkEvent;->tires:I

    goto :goto_1

    .line 134
    :cond_b
    aget-byte v1, v0, v10

    if-ne v1, v5, :cond_c

    .line 136
    sget-object v1, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v4, "\u914d\u5bf9\u5b66\u4e60\u6210\u529f \u53f3\u540e"

    invoke-static {v1, v4}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iput v11, v3, Lcom/tpms/modle/PaireIDOkEvent;->tires:I

    goto :goto_1

    .line 138
    :cond_c
    aget-byte v1, v0, v10

    if-ne v1, v9, :cond_d

    .line 140
    iput v9, v3, Lcom/tpms/modle/PaireIDOkEvent;->tires:I

    .line 144
    :goto_1
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .end local v3    # "paire":Lcom/tpms/modle/PaireIDOkEvent;
    goto :goto_2

    .line 142
    .restart local v3    # "paire":Lcom/tpms/modle/PaireIDOkEvent;
    :cond_d
    return-void

    .line 145
    .end local v3    # "paire":Lcom/tpms/modle/PaireIDOkEvent;
    :cond_e
    aget-byte v1, v0, v11

    const/16 v3, 0x16

    if-ne v1, v3, :cond_f

    :goto_2
    goto/16 :goto_6

    .line 148
    :cond_f
    aget-byte v1, v0, v11

    if-nez v1, :cond_10

    aget-byte v1, v0, v10

    const/16 v3, -0x78

    if-ne v1, v3, :cond_10

    .line 149
    sget-object v1, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v3, "\u662f\u63e1\u624b\u4e86,\u4e5f\u53eb\u5fc3\u8df3,\u6700\u65b0\u7248\u672c \u4e0d\u652f\u6301\u4e86"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v3, Lcom/tpms/modle/HeartbeatEvent;

    invoke-direct {v3, v4}, Lcom/tpms/modle/HeartbeatEvent;-><init>(I)V

    invoke-virtual {v1, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 153
    :cond_10
    aget-byte v1, v0, v11

    const/16 v3, -0x4b

    if-ne v1, v3, :cond_20

    .line 155
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v3, Lcom/tpms/modle/TimeSeedEvent;

    aget-byte v4, v0, v10

    invoke-direct {v3, v4}, Lcom/tpms/modle/TimeSeedEvent;-><init>(I)V

    invoke-virtual {v1, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 157
    :cond_11
    const/16 v3, 0x9

    const/4 v12, 0x7

    if-ne v2, v3, :cond_16

    .line 160
    array-length v3, v0

    const-string v5, "find"

    invoke-static {v5, v0, v3}, Lcom/tpms/utils/SLOG;->LogByteArr(Ljava/lang/String;[BI)Ljava/lang/String;

    .line 161
    new-instance v3, Lcom/tpms/modle/QueryIDOkEvent;

    invoke-direct {v3}, Lcom/tpms/modle/QueryIDOkEvent;-><init>()V

    .line 163
    .local v3, "paire":Lcom/tpms/modle/QueryIDOkEvent;
    const-string v5, ""

    .line 164
    .local v5, "log":Ljava/lang/String;
    aget-byte v7, v0, v11

    if-ne v7, v8, :cond_12

    .line 165
    const-string v1, "\u5de6\u524d"

    .line 166
    .end local v5    # "log":Ljava/lang/String;
    .local v1, "log":Ljava/lang/String;
    iput v8, v3, Lcom/tpms/modle/QueryIDOkEvent;->tires:I

    goto :goto_3

    .line 167
    .end local v1    # "log":Ljava/lang/String;
    .restart local v5    # "log":Ljava/lang/String;
    :cond_12
    aget-byte v7, v0, v11

    if-ne v7, v1, :cond_13

    .line 168
    const-string v4, "\u53f3\u524d"

    .line 169
    .end local v5    # "log":Ljava/lang/String;
    .local v4, "log":Ljava/lang/String;
    iput v1, v3, Lcom/tpms/modle/QueryIDOkEvent;->tires:I

    move-object v1, v4

    goto :goto_3

    .line 170
    .end local v4    # "log":Ljava/lang/String;
    .restart local v5    # "log":Ljava/lang/String;
    :cond_13
    aget-byte v1, v0, v11

    if-ne v1, v11, :cond_14

    .line 171
    const-string v1, "\u5de6\u540e"

    .line 172
    .end local v5    # "log":Ljava/lang/String;
    .restart local v1    # "log":Ljava/lang/String;
    iput v4, v3, Lcom/tpms/modle/QueryIDOkEvent;->tires:I

    goto :goto_3

    .line 173
    .end local v1    # "log":Ljava/lang/String;
    .restart local v5    # "log":Ljava/lang/String;
    :cond_14
    aget-byte v1, v0, v11

    if-ne v1, v10, :cond_15

    .line 174
    const-string v1, "\u53f3\u540e"

    .line 175
    .end local v5    # "log":Ljava/lang/String;
    .restart local v1    # "log":Ljava/lang/String;
    iput v11, v3, Lcom/tpms/modle/QueryIDOkEvent;->tires:I

    goto :goto_3

    .line 179
    .end local v1    # "log":Ljava/lang/String;
    .restart local v5    # "log":Ljava/lang/String;
    :cond_15
    const-string v1, "\u5907\u80ce"

    .line 180
    .end local v5    # "log":Ljava/lang/String;
    .restart local v1    # "log":Ljava/lang/String;
    iput v9, v3, Lcom/tpms/modle/QueryIDOkEvent;->tires:I

    .line 184
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v5, v0, v10

    invoke-static {v5}, Lcom/tpms/decode/Util;->byteToUpperString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v5, v0, v9

    invoke-static {v5}, Lcom/tpms/decode/Util;->byteToUpperString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v5, v0, v6

    invoke-static {v5}, Lcom/tpms/decode/Util;->byteToUpperString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v5, v0, v12

    invoke-static {v5}, Lcom/tpms/decode/Util;->byteToUpperString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    .line 186
    sget-object v4, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u67e5\u5bfb\u53cd\u56de\u7684id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    invoke-virtual {v4, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .end local v1    # "log":Ljava/lang/String;
    .end local v3    # "paire":Lcom/tpms/modle/QueryIDOkEvent;
    goto :goto_4

    .line 188
    :cond_16
    const/16 v1, 0xa

    if-ne v2, v1, :cond_17

    :goto_4
    goto/16 :goto_6

    .line 191
    :cond_17
    if-ne v2, v12, :cond_20

    .line 192
    aget-byte v1, v0, v11

    const/16 v3, 0x30

    if-ne v1, v3, :cond_20

    .line 194
    new-instance v1, Lcom/tpms/modle/TiresExchangeEvent;

    const-string v3, "\u5de6\u524d\u53f3\u524d"

    invoke-direct {v1, v3}, Lcom/tpms/modle/TiresExchangeEvent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "event":Lcom/tpms/modle/TiresExchangeEvent;
    aget-byte v4, v0, v10

    if-nez v4, :cond_18

    aget-byte v4, v0, v9

    if-ne v4, v8, :cond_18

    .line 196
    sget-object v4, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v5, "\u5de6\u524d\u53f3\u524d \u8c03\u6362"

    invoke-static {v4, v5}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v4, Lcom/tpms/modle/TiresExchangeEvent;

    invoke-direct {v4, v3}, Lcom/tpms/modle/TiresExchangeEvent;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    goto/16 :goto_5

    .line 198
    :cond_18
    aget-byte v3, v0, v10

    if-nez v3, :cond_19

    aget-byte v3, v0, v9

    if-ne v3, v7, :cond_19

    .line 199
    sget-object v3, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v4, "\u5de6\u524d\u5de6\u540e \u8c03\u6362"

    invoke-static {v3, v4}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v3, Lcom/tpms/modle/TiresExchangeEvent;

    const-string v4, "\u5de6\u524d\u5de6\u540e"

    invoke-direct {v3, v4}, Lcom/tpms/modle/TiresExchangeEvent;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto/16 :goto_5

    .line 201
    :cond_19
    aget-byte v3, v0, v10

    if-nez v3, :cond_1a

    aget-byte v3, v0, v9

    if-ne v3, v5, :cond_1a

    .line 202
    sget-object v3, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v4, "\u5de6\u524d\u53f3\u540e \u8c03\u6362"

    invoke-static {v3, v4}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v3, Lcom/tpms/modle/TiresExchangeEvent;

    const-string v4, "\u5de6\u524d\u53f3\u540e"

    invoke-direct {v3, v4}, Lcom/tpms/modle/TiresExchangeEvent;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_5

    .line 204
    :cond_1a
    aget-byte v3, v0, v10

    if-ne v3, v8, :cond_1b

    aget-byte v3, v0, v9

    if-ne v3, v7, :cond_1b

    .line 205
    sget-object v3, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v4, "\u53f3\u524d\u5de6\u540e \u8c03\u6362"

    invoke-static {v3, v4}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v3, Lcom/tpms/modle/TiresExchangeEvent;

    const-string v4, "\u53f3\u524d\u5de6\u540e"

    invoke-direct {v3, v4}, Lcom/tpms/modle/TiresExchangeEvent;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_5

    .line 207
    :cond_1b
    aget-byte v3, v0, v10

    if-ne v3, v8, :cond_1c

    aget-byte v3, v0, v9

    if-ne v3, v5, :cond_1c

    .line 208
    sget-object v3, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v4, "\u53f3\u524d\u53f3\u540e \u8c03\u6362"

    invoke-static {v3, v4}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v3, Lcom/tpms/modle/TiresExchangeEvent;

    const-string v4, "\u53f3\u524d\u53f3\u540e"

    invoke-direct {v3, v4}, Lcom/tpms/modle/TiresExchangeEvent;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_5

    .line 210
    :cond_1c
    aget-byte v3, v0, v10

    if-ne v3, v7, :cond_1d

    aget-byte v3, v0, v9

    if-ne v3, v5, :cond_1d

    .line 211
    sget-object v3, Lcom/tpms/decode/FrameDecode3;->TAG:Ljava/lang/String;

    const-string v4, "\u5de6\u540e\u53f3\u540e \u8c03\u6362"

    invoke-static {v3, v4}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v3, Lcom/tpms/modle/TiresExchangeEvent;

    const-string v4, "\u5de6\u540e\u53f3\u540e"

    invoke-direct {v3, v4}, Lcom/tpms/modle/TiresExchangeEvent;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_5

    .line 213
    :cond_1d
    aget-byte v3, v0, v10

    if-eq v3, v7, :cond_1e

    aget-byte v3, v0, v9

    if-ne v3, v9, :cond_1f

    .line 215
    :cond_1e
    new-instance v3, Lcom/tpms/modle/TiresExchangeEvent;

    const-string v4, "\u5907\u80ce\u4ea4\u6362"

    invoke-direct {v3, v4}, Lcom/tpms/modle/TiresExchangeEvent;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 218
    :cond_1f
    :goto_5
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    invoke-virtual {v3, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 223
    .end local v1    # "event":Lcom/tpms/modle/TiresExchangeEvent;
    :cond_20
    :goto_6
    return-void
.end method
