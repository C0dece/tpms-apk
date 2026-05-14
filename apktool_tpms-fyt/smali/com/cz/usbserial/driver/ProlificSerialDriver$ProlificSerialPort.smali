.class Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;
.super Lcom/cz/usbserial/driver/CommonUsbSerialPort;
.source "ProlificSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cz/usbserial/driver/ProlificSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProlificSerialPort"
.end annotation


# static fields
.field private static final CONTROL_DTR:I = 0x1

.field private static final CONTROL_RTS:I = 0x2

.field private static final DEVICE_TYPE_0:I = 0x1

.field private static final DEVICE_TYPE_1:I = 0x2

.field private static final DEVICE_TYPE_HX:I = 0x0

.field private static final FLUSH_RX_REQUEST:I = 0x8

.field private static final FLUSH_TX_REQUEST:I = 0x9

.field private static final INTERRUPT_ENDPOINT:I = 0x81

.field private static final PROLIFIC_CTRL_OUT_REQTYPE:I = 0x21

.field private static final PROLIFIC_VENDOR_IN_REQTYPE:I = 0xc0

.field private static final PROLIFIC_VENDOR_OUT_REQTYPE:I = 0x40

.field private static final PROLIFIC_VENDOR_READ_REQUEST:I = 0x1

.field private static final PROLIFIC_VENDOR_WRITE_REQUEST:I = 0x1

.field private static final READ_ENDPOINT:I = 0x83

.field private static final SET_CONTROL_REQUEST:I = 0x22

.field private static final SET_LINE_REQUEST:I = 0x20

.field private static final STATUS_BUFFER_SIZE:I = 0xa

.field private static final STATUS_BYTE_IDX:I = 0x8

.field private static final STATUS_FLAG_CD:I = 0x1

.field private static final STATUS_FLAG_CTS:I = 0x80

.field private static final STATUS_FLAG_DSR:I = 0x2

.field private static final STATUS_FLAG_RI:I = 0x8

.field private static final USB_READ_TIMEOUT_MILLIS:I = 0x3e8

.field private static final USB_RECIP_INTERFACE:I = 0x1

.field private static final USB_WRITE_TIMEOUT_MILLIS:I = 0x1388

.field private static final WRITE_ENDPOINT:I = 0x2


# instance fields
.field private mBaudRate:I

.field private mControlLinesValue:I

.field private mDataBits:I

.field private mDeviceType:I

.field private mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mParity:I

.field private mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mReadStatusException:Ljava/io/IOException;

.field private volatile mReadStatusThread:Ljava/lang/Thread;

.field private final mReadStatusThreadLock:Ljava/lang/Object;

.field private mStatus:I

.field private mStopBits:I

.field mStopReadStatusThread:Z

.field private mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field final synthetic this$0:Lcom/cz/usbserial/driver/ProlificSerialDriver;


# direct methods
.method public constructor <init>(Lcom/cz/usbserial/driver/ProlificSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 2
    .param p2, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "portNumber"    # I

    .line 127
    iput-object p1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/cz/usbserial/driver/ProlificSerialDriver;

    .line 128
    invoke-direct {p0, p2, p3}, Lcom/cz/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    .line 110
    const/4 p1, 0x0

    iput p1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    .line 116
    iput p1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mBaudRate:I

    iput v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDataBits:I

    iput v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopBits:I

    .line 119
    iput v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mParity:I

    .line 121
    iput p1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    .line 123
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThreadLock:Ljava/lang/Object;

    .line 124
    iput-boolean p1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    .line 125
    iput-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    .line 129
    return-void
.end method

.method static synthetic access$0(Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->readStatusThreadFunction()V

    return-void
.end method

.method private final ctrlOut(III[B)V
    .locals 6
    .param p1, "request"    # I
    .param p2, "value"    # I
    .param p3, "index"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    nop

    .line 180
    nop

    .line 179
    const/16 v1, 0x21

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->outControlTransfer(IIII[B)V

    .line 181
    return-void
.end method

.method private doBlackMagic()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    const v0, 0x8484

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 185
    const/16 v3, 0x404

    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 186
    invoke-direct {p0, v0, v2, v1}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 187
    const v5, 0x8383

    invoke-direct {p0, v5, v2, v1}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 188
    invoke-direct {p0, v0, v2, v1}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 189
    invoke-direct {p0, v3, v1, v4}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 190
    invoke-direct {p0, v0, v2, v1}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 191
    invoke-direct {p0, v5, v2, v1}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 192
    invoke-direct {p0, v2, v1, v4}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 193
    invoke-direct {p0, v1, v2, v4}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 194
    iget v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    if-nez v0, :cond_0

    const/16 v0, 0x44

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, v4}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 195
    return-void
.end method

.method private final getStatus()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 230
    const/16 v1, 0xa

    new-array v2, v1, [B

    .line 231
    .local v2, "buffer":[B
    iget-object v3, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 232
    iget-object v4, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 233
    const/16 v5, 0x64

    .line 231
    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v3

    .line 234
    .local v3, "readBytes":I
    if-eq v3, v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/cz/usbserial/driver/ProlificSerialDriver;

    invoke-static {v1}, Lcom/cz/usbserial/driver/ProlificSerialDriver;->access$0(Lcom/cz/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v1

    .line 236
    const-string v4, "Could not read initial CTS / DSR / CD / RI status"

    .line 235
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    goto :goto_0

    .line 238
    :cond_0
    const/16 v1, 0x8

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    .line 241
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort$1;

    invoke-direct {v4, p0}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort$1;-><init>(Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    .line 247
    iget-object v1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 248
    iget-object v1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 228
    .end local v2    # "buffer":[B
    .end local v3    # "readBytes":I
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 257
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    .line 258
    .local v0, "readStatusException":Ljava/io/IOException;
    iget-object v1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    if-nez v1, :cond_3

    .line 263
    iget v1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    return v1

    .line 259
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    .line 260
    throw v0
.end method

.method private final inControlTransfer(IIIII)[B
    .locals 9
    .param p1, "requestType"    # I
    .param p2, "request"    # I
    .param p3, "value"    # I
    .param p4, "index"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    new-array v8, p5, [B

    .line 139
    .local v8, "buffer":[B
    iget-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 140
    nop

    .line 139
    const/16 v7, 0x3e8

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v8

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    .line 141
    .local v0, "result":I
    if-ne v0, p5, :cond_0

    .line 146
    return-object v8

    .line 142
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 143
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 142
    const-string v3, "ControlTransfer with value 0x%x failed: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final outControlTransfer(IIII[B)V
    .locals 10
    .param p1, "requestType"    # I
    .param p2, "request"    # I
    .param p3, "value"    # I
    .param p4, "index"    # I
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    if-nez p5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p5

    .line 152
    .local v1, "length":I
    :goto_0
    iget-object v2, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 153
    const/16 v9, 0x1388

    .line 152
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move v8, v1

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v2

    .line 154
    .local v2, "result":I
    if-ne v2, v1, :cond_1

    .line 159
    return-void

    .line 155
    :cond_1
    new-instance v3, Ljava/io/IOException;

    .line 156
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    .line 157
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 155
    const-string v0, "ControlTransfer with value 0x%x failed: %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private final readStatusThreadFunction()V
    .locals 7

    .line 205
    nop

    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    if-eqz v0, :cond_1

    .line 221
    goto :goto_1

    .line 206
    :cond_1
    const/16 v0, 0xa

    new-array v1, v0, [B

    .line 207
    .local v1, "buffer":[B
    iget-object v2, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 208
    iget-object v3, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 209
    const/16 v4, 0x1f4

    .line 208
    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v2

    .line 207
    nop

    .line 210
    .local v2, "readBytesCount":I
    if-lez v2, :cond_0

    .line 211
    if-ne v2, v0, :cond_2

    .line 212
    const/16 v0, 0x8

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    .line 213
    goto :goto_0

    .line 214
    :cond_2
    new-instance v3, Ljava/io/IOException;

    .line 216
    const-string v4, "Invalid CTS / DSR / CD / RI status buffer received, expected %d bytes, but received %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    .line 215
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v1    # "buffer":[B
    .end local v2    # "readBytesCount":I
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    .line 224
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private resetDevice()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->purgeHwBuffers(ZZ)Z

    .line 175
    return-void
.end method

.method private setControlLines(I)V
    .locals 3
    .param p1, "newControlLinesValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    const/16 v0, 0x22

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->ctrlOut(III[B)V

    .line 200
    iput p1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    .line 201
    return-void
.end method

.method private final testStatusFlag(I)Z
    .locals 1
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->getStatus()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final vendorIn(III)[B
    .locals 6
    .param p1, "value"    # I
    .param p2, "index"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    nop

    .line 164
    nop

    .line 163
    const/16 v1, 0xc0

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->inControlTransfer(IIIII)[B

    move-result-object v0

    return-object v0
.end method

.method private final vendorOut(II[B)V
    .locals 6
    .param p1, "value"    # I
    .param p2, "index"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    nop

    .line 170
    nop

    .line 169
    const/16 v1, 0x40

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->outControlTransfer(IIII[B)V

    .line 171
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_1

    .line 354
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    .line 355
    iget-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThreadLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 356
    :try_start_1
    iget-object v3, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    .line 358
    :try_start_2
    iget-object v3, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 359
    goto :goto_0

    :catch_0
    move-exception v3

    .line 360
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v4, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/cz/usbserial/driver/ProlificSerialDriver;

    invoke-static {v4}, Lcom/cz/usbserial/driver/ProlificSerialDriver;->access$0(Lcom/cz/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v4

    .line 361
    const-string v5, "An error occured while waiting for status read thread"

    .line 362
    nop

    .line 360
    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 366
    :try_start_4
    invoke-direct {p0}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->resetDevice()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 367
    nop

    .line 369
    :try_start_5
    iget-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 370
    nop

    .line 371
    iput-object v2, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 374
    return-void

    .line 370
    :catchall_0
    move-exception v0

    .line 371
    iput-object v2, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 372
    throw v0

    .line 355
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 367
    :catchall_2
    move-exception v0

    .line 369
    :try_start_8
    iget-object v3, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 370
    nop

    .line 371
    iput-object v2, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 373
    throw v0

    .line 370
    :catchall_3
    move-exception v0

    .line 371
    iput-object v2, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 372
    throw v0

    .line 351
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCD()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public getCTS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public getDSR()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public getDTR()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    iget v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDriver()Lcom/cz/usbserial/driver/UsbSerialDriver;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/cz/usbserial/driver/ProlificSerialDriver;

    return-object v0
.end method

.method public getRI()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public getRTS()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    iget v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 10
    .param p1, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_b

    .line 276
    iget-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    .line 278
    .local v0, "usbInterface":Landroid/hardware/usb/UsbInterface;
    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 282
    iput-object p1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 283
    const/4 v3, 0x0

    .line 285
    .local v3, "opened":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v6

    const/4 v7, 0x2

    if-lt v4, v6, :cond_5

    .line 303
    .end local v4    # "i":I
    iget-object v4, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 304
    iput v2, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    goto :goto_2

    .line 307
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 308
    const-string v4, "getRawDescriptors"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 307
    nop

    .line 309
    .local v2, "getRawDescriptorsMethod":Ljava/lang/reflect/Method;
    nop

    .line 310
    iget-object v4, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 309
    check-cast v4, [B

    .line 311
    .local v4, "rawDescriptors":[B
    const/4 v6, 0x7

    aget-byte v6, v4, v6

    .line 312
    .local v6, "maxPacketSize0":B
    const/16 v8, 0x40

    if-ne v6, v8, :cond_1

    .line 313
    iput v1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    .line 314
    goto :goto_2

    :cond_1
    iget-object v8, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v8

    if-eqz v8, :cond_3

    .line 315
    iget-object v8, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v8

    const/16 v9, 0xff

    if-ne v8, v9, :cond_2

    goto :goto_1

    .line 318
    :cond_2
    iget-object v7, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/cz/usbserial/driver/ProlificSerialDriver;

    invoke-static {v7}, Lcom/cz/usbserial/driver/ProlificSerialDriver;->access$0(Lcom/cz/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Could not detect PL2303 subtype, Assuming that it is a HX device"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iput v1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    .line 322
    .end local v2    # "getRawDescriptorsMethod":Ljava/lang/reflect/Method;
    .end local v4    # "rawDescriptors":[B
    .end local v6    # "maxPacketSize0":B
    goto :goto_2

    .line 316
    .restart local v2    # "getRawDescriptorsMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "rawDescriptors":[B
    .restart local v6    # "maxPacketSize0":B
    :cond_3
    :goto_1
    iput v7, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    goto :goto_2

    .line 328
    .end local v2    # "getRawDescriptorsMethod":Ljava/lang/reflect/Method;
    .end local v4    # "rawDescriptors":[B
    .end local v6    # "maxPacketSize0":B
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/cz/usbserial/driver/ProlificSerialDriver;

    invoke-static {v2}, Lcom/cz/usbserial/driver/ProlificSerialDriver;->access$0(Lcom/cz/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v2

    .line 330
    const-string v4, "An unexpected exception occured while trying to detect PL2303 subtype"

    .line 331
    nop

    .line 329
    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 322
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 323
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    iget-object v4, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/cz/usbserial/driver/ProlificSerialDriver;

    invoke-static {v4}, Lcom/cz/usbserial/driver/ProlificSerialDriver;->access$0(Lcom/cz/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v4

    .line 324
    const-string v6, "Method UsbDeviceConnection.getRawDescriptors, required for PL2303 subtype detection, not available! Assuming that it is a HX device"

    .line 323
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iput v1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    .line 335
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_2
    iget v1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    invoke-direct {p0, v1}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->setControlLines(I)V

    .line 336
    invoke-direct {p0}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->resetDevice()V

    .line 338
    invoke-direct {p0}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->doBlackMagic()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    const/4 v1, 0x1

    .line 340
    .end local v3    # "opened":Z
    .local v1, "opened":Z
    nop

    .line 341
    if-nez v1, :cond_4

    .line 342
    iput-object v5, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 343
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 346
    :cond_4
    return-void

    .line 286
    .end local v1    # "opened":Z
    .restart local v3    # "opened":Z
    .local v4, "i":I
    :cond_5
    :try_start_3
    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v6

    .line 288
    .local v6, "currentEndpoint":Landroid/hardware/usb/UsbEndpoint;
    invoke-virtual {v6}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v8

    if-eq v8, v7, :cond_8

    const/16 v7, 0x81

    if-eq v8, v7, :cond_7

    const/16 v7, 0x83

    if-eq v8, v7, :cond_6

    goto :goto_3

    .line 290
    :cond_6
    iput-object v6, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 291
    goto :goto_3

    .line 298
    :cond_7
    iput-object v6, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_3

    .line 294
    :cond_8
    iput-object v6, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    nop

    .line 285
    .end local v6    # "currentEndpoint":Landroid/hardware/usb/UsbEndpoint;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 340
    .end local v4    # "i":I
    :catchall_0
    move-exception v1

    .line 341
    if-nez v3, :cond_9

    .line 342
    iput-object v5, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 343
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 345
    :cond_9
    throw v1

    .line 279
    .end local v3    # "opened":Z
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error claiming Prolific interface 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    .end local v0    # "usbInterface":Landroid/hardware/usb/UsbInterface;
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public purgeHwBuffers(ZZ)Z
    .locals 3
    .param p1, "purgeReadBuffers"    # Z
    .param p2, "purgeWriteBuffers"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 556
    const/16 v2, 0x8

    invoke-direct {p0, v2, v1, v0}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 559
    :cond_0
    if-eqz p2, :cond_1

    .line 560
    const/16 v2, 0x9

    invoke-direct {p0, v2, v1, v0}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 563
    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public read([BI)I
    .locals 5
    .param p1, "dest"    # [B
    .param p2, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_0
    array-length v1, p1

    iget-object v2, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadBuffer:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 380
    .local v1, "readAmt":I
    iget-object v2, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 381
    iget-object v4, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadBuffer:[B

    .line 380
    invoke-virtual {v2, v3, v4, v1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v2

    .line 382
    .local v2, "numBytesRead":I
    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 383
    monitor-exit v0

    return v3

    .line 385
    :cond_0
    iget-object v4, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadBuffer:[B

    invoke-static {v4, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    monitor-exit v0

    return v2

    .line 378
    .end local v1    # "readAmt":I
    .end local v2    # "numBytesRead":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDTR(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    if-eqz p1, :cond_0

    .line 524
    iget v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    or-int/lit8 v0, v0, 0x1

    .line 525
    .local v0, "newControlLinesValue":I
    goto :goto_0

    .line 526
    .end local v0    # "newControlLinesValue":I
    :cond_0
    iget v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 v0, v0, -0x2

    .line 528
    .restart local v0    # "newControlLinesValue":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->setControlLines(I)V

    .line 529
    return-void
.end method

.method public setParameters(IIII)V
    .locals 7
    .param p1, "baudRate"    # I
    .param p2, "dataBits"    # I
    .param p3, "stopBits"    # I
    .param p4, "parity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    iget v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mBaudRate:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDataBits:I

    if-ne v0, p2, :cond_0

    .line 431
    iget v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopBits:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mParity:I

    if-ne v0, p4, :cond_0

    .line 434
    return-void

    .line 437
    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 439
    .local v0, "lineRequestData":[B
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 440
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 441
    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    .line 442
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v5, 0x3

    aput-byte v1, v0, v5

    .line 444
    const/4 v1, 0x4

    if-eq p3, v3, :cond_3

    if-eq p3, v4, :cond_2

    if-ne p3, v5, :cond_1

    .line 450
    aput-byte v3, v0, v1

    .line 451
    goto :goto_0

    .line 458
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown stopBits value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :cond_2
    aput-byte v4, v0, v1

    .line 455
    goto :goto_0

    .line 446
    :cond_3
    aput-byte v2, v0, v1

    .line 447
    nop

    .line 462
    :goto_0
    const/4 v6, 0x5

    if-eqz p4, :cond_8

    if-eq p4, v3, :cond_7

    if-eq p4, v4, :cond_6

    if-eq p4, v5, :cond_5

    if-ne p4, v1, :cond_4

    .line 480
    aput-byte v1, v0, v6

    .line 481
    goto :goto_1

    .line 484
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown parity value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    :cond_5
    aput-byte v5, v0, v6

    .line 477
    goto :goto_1

    .line 472
    :cond_6
    aput-byte v4, v0, v6

    .line 473
    goto :goto_1

    .line 468
    :cond_7
    aput-byte v3, v0, v6

    .line 469
    goto :goto_1

    .line 464
    :cond_8
    aput-byte v2, v0, v6

    .line 465
    nop

    .line 488
    :goto_1
    const/4 v1, 0x6

    int-to-byte v3, p2

    aput-byte v3, v0, v1

    .line 490
    const/16 v1, 0x20

    invoke-direct {p0, v1, v2, v2, v0}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->ctrlOut(III[B)V

    .line 492
    invoke-direct {p0}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->resetDevice()V

    .line 494
    iput p1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mBaudRate:I

    .line 495
    iput p2, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDataBits:I

    .line 496
    iput p3, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopBits:I

    .line 497
    iput p4, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mParity:I

    .line 498
    return-void
.end method

.method public setRTS(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    if-eqz p1, :cond_0

    .line 545
    iget v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    or-int/lit8 v0, v0, 0x2

    .line 546
    .local v0, "newControlLinesValue":I
    goto :goto_0

    .line 547
    .end local v0    # "newControlLinesValue":I
    :cond_0
    iget v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 v0, v0, -0x3

    .line 549
    .restart local v0    # "newControlLinesValue":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->setControlLines(I)V

    .line 550
    return-void
.end method

.method public write([BI)I
    .locals 6
    .param p1, "src"    # [B
    .param p2, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    const/4 v0, 0x0

    .line 394
    .local v0, "offset":I
    nop

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 424
    return v0

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    :try_start_0
    array-length v2, p1

    sub-int/2addr v2, v0

    .line 402
    iget-object v3, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mWriteBuffer:[B

    array-length v3, v3

    .line 401
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 403
    .local v2, "writeLength":I
    if-nez v0, :cond_1

    .line 404
    move-object v3, p1

    .line 405
    .local v3, "writeBuffer":[B
    goto :goto_1

    .line 407
    .end local v3    # "writeBuffer":[B
    :cond_1
    iget-object v3, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mWriteBuffer:[B

    const/4 v4, 0x0

    .line 408
    nop

    .line 407
    invoke-static {p1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    iget-object v3, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mWriteBuffer:[B

    .line 412
    .restart local v3    # "writeBuffer":[B
    :goto_1
    iget-object v4, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v5, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 413
    nop

    .line 412
    invoke-virtual {v4, v5, v3, v2, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v4

    move v3, v4

    .line 398
    .local v3, "amtWritten":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    if-lez v3, :cond_2

    .line 422
    add-int/2addr v0, v3

    goto :goto_0

    .line 417
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error writing "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    const-string v5, " bytes at offset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 417
    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 398
    .end local v2    # "writeLength":I
    .end local v3    # "amtWritten":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method
