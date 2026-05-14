.class public Lcom/cz/usbserial/driver/SerialInputOutputManager;
.super Ljava/lang/Object;
.source "SerialInputOutputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;,
        Lcom/cz/usbserial/driver/SerialInputOutputManager$State;
    }
.end annotation


# static fields
.field private static final BUFSIZ:I = 0x1000

.field private static final DEBUG:Z = true

.field private static final READ_WAIT_MILLIS:I = 0xc8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDriver:Lcom/cz/usbserial/driver/UsbSerialPort;

.field private mListener:Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;

.field private final mReadBuffer:Ljava/nio/ByteBuffer;

.field private mState:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

.field private final mWriteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/cz/usbserial/driver/SerialInputOutputManager;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 39
    sput-object v0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->TAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/cz/usbserial/driver/UsbSerialPort;)V
    .locals 1
    .param p1, "driver"    # Lcom/cz/usbserial/driver/UsbSerialPort;

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cz/usbserial/driver/SerialInputOutputManager;-><init>(Lcom/cz/usbserial/driver/UsbSerialPort;Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/cz/usbserial/driver/UsbSerialPort;Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;)V
    .locals 2
    .param p1, "driver"    # Lcom/cz/usbserial/driver/UsbSerialPort;
    .param p2, "listener"    # Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 51
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    .line 58
    sget-object v0, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;->STOPPED:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    iput-object v0, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mState:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    .line 87
    iput-object p1, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mDriver:Lcom/cz/usbserial/driver/UsbSerialPort;

    .line 88
    iput-object p2, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mListener:Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;

    .line 89
    return-void
.end method

.method private declared-synchronized getState()Lcom/cz/usbserial/driver/SerialInputOutputManager$State;
    .locals 1

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mState:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/cz/usbserial/driver/SerialInputOutputManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private step()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mDriver:Lcom/cz/usbserial/driver/UsbSerialPort;

    iget-object v1, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/16 v2, 0xc8

    invoke-interface {v0, v1, v2}, Lcom/cz/usbserial/driver/UsbSerialPort;->read([BI)I

    move-result v0

    .line 160
    .local v0, "len":I
    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 163
    sget-object v3, Lcom/cz/usbserial/driver/SerialInputOutputManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Read data len="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Lcom/cz/usbserial/driver/SerialInputOutputManager;->getListener()Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;

    move-result-object v3

    .line 166
    .local v3, "listener":Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;
    if-eqz v3, :cond_0

    .line 167
    new-array v4, v0, [B

    .line 168
    .local v4, "data":[B
    iget-object v5, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 169
    invoke-interface {v3, v4}, Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;->onNewData([B)V

    .line 171
    .end local v4    # "data":[B
    :cond_0
    iget-object v4, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 177
    .end local v3    # "listener":Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;
    :cond_1
    const/4 v3, 0x0

    .line 178
    .local v3, "outBuff":[B
    iget-object v4, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    monitor-enter v4

    .line 179
    :try_start_0
    iget-object v5, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    move v0, v5

    .line 180
    if-lez v0, :cond_2

    .line 181
    new-array v5, v0, [B

    move-object v3, v5

    .line 182
    iget-object v5, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 183
    iget-object v5, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 184
    iget-object v1, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 178
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    if-eqz v3, :cond_3

    .line 189
    sget-object v1, Lcom/cz/usbserial/driver/SerialInputOutputManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Writing data len="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mDriver:Lcom/cz/usbserial/driver/UsbSerialPort;

    invoke-interface {v1, v3, v2}, Lcom/cz/usbserial/driver/UsbSerialPort;->write([BI)I

    .line 193
    :cond_3
    return-void

    .line 178
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getListener()Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mListener:Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/cz/usbserial/driver/SerialInputOutputManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    invoke-direct {p0}, Lcom/cz/usbserial/driver/SerialInputOutputManager;->getState()Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    move-result-object v0

    sget-object v1, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;->STOPPED:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    if-ne v0, v1, :cond_2

    .line 129
    sget-object v0, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;->RUNNING:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    iput-object v0, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mState:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    .line 125
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 132
    sget-object v0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->TAG:Ljava/lang/String;

    const-string v1, "Running .."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/cz/usbserial/driver/SerialInputOutputManager;->getState()Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    move-result-object v0

    sget-object v1, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;->RUNNING:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    if-eq v0, v1, :cond_0

    .line 136
    sget-object v0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stopping mState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cz/usbserial/driver/SerialInputOutputManager;->getState()Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    nop

    .line 148
    monitor-enter p0

    .line 149
    :try_start_2
    sget-object v0, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;->STOPPED:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    iput-object v0, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mState:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    .line 150
    sget-object v0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->TAG:Ljava/lang/String;

    const-string v1, "Stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 139
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/cz/usbserial/driver/SerialInputOutputManager;->step()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    goto :goto_0

    .line 147
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v1, Lcom/cz/usbserial/driver/SerialInputOutputManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Run ending due to exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    invoke-virtual {p0}, Lcom/cz/usbserial/driver/SerialInputOutputManager;->getListener()Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;

    move-result-object v1

    .line 144
    .local v1, "listener":Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;
    if-eqz v1, :cond_1

    .line 145
    invoke-interface {v1, v0}, Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;->onRunError(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;
    :cond_1
    monitor-enter p0

    .line 149
    :try_start_5
    sget-object v0, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;->STOPPED:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    iput-object v0, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mState:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    .line 150
    sget-object v0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->TAG:Ljava/lang/String;

    const-string v1, "Stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    monitor-exit p0

    .line 153
    :goto_1
    return-void

    .line 148
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :goto_2
    monitor-enter p0

    .line 149
    :try_start_6
    sget-object v1, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;->STOPPED:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    iput-object v1, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mState:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    .line 150
    sget-object v1, Lcom/cz/usbserial/driver/SerialInputOutputManager;->TAG:Ljava/lang/String;

    const-string v2, "Stopped."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 152
    throw v0

    .line 148
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 127
    :cond_2
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized setListener(Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;

    monitor-enter p0

    .line 92
    :try_start_0
    iput-object p1, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mListener:Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 91
    .end local p0    # "this":Lcom/cz/usbserial/driver/SerialInputOutputManager;
    .end local p1    # "listener":Lcom/cz/usbserial/driver/SerialInputOutputManager$Listener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/cz/usbserial/driver/SerialInputOutputManager;->getState()Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    move-result-object v0

    sget-object v1, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;->RUNNING:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    if-ne v0, v1, :cond_0

    .line 107
    sget-object v0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->TAG:Ljava/lang/String;

    const-string v1, "Stop requested"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v0, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;->STOPPING:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    iput-object v0, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mState:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local p0    # "this":Lcom/cz/usbserial/driver/SerialInputOutputManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeAsync([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 100
    iget-object v0, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/cz/usbserial/driver/SerialInputOutputManager;->mWriteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 100
    monitor-exit v0

    .line 103
    return-void

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
