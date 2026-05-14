.class Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;
.super Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;
.source "ProlificSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;
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

.field final synthetic this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;
    .param p2, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "portNumber"    # I

    .line 129
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    .line 130
    invoke-direct {p0, p2, p3}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    .line 118
    iput v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    .line 120
    const/4 v1, -0x1

    iput v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mBaudRate:I

    iput v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDataBits:I

    iput v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopBits:I

    iput v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mParity:I

    .line 122
    iput v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    .line 124
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThreadLock:Ljava/lang/Object;

    .line 125
    iput-boolean v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    .line 126
    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    .line 131
    return-void
.end method

.method static synthetic access$100(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;)V
    .locals 0
    .param p0, "x0"    # Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;

    .line 68
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->readStatusThreadFunction()V

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

    .line 181
    const/16 v1, 0x21

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->outControlTransfer(IIII[B)V

    .line 183
    return-void
.end method

.method private doBlackMagic()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    const v0, 0x8484

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 187
    const/16 v3, 0x404

    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 188
    invoke-direct {p0, v0, v2, v1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 189
    const v5, 0x8383

    invoke-direct {p0, v5, v2, v1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 190
    invoke-direct {p0, v0, v2, v1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 191
    invoke-direct {p0, v3, v1, v4}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 192
    invoke-direct {p0, v0, v2, v1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 193
    invoke-direct {p0, v5, v2, v1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    .line 194
    invoke-direct {p0, v2, v1, v4}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 195
    invoke-direct {p0, v1, v2, v4}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 196
    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    if-nez v0, :cond_0

    const/16 v0, 0x44

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, v4}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 197
    return-void
.end method

.method private final getStatus()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 232
    const/16 v1, 0xa

    new-array v2, v1, [B

    .line 233
    .local v2, "buffer":[B
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v3

    .line 237
    .local v3, "readBytes":I
    if-eq v3, v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    invoke-static {v1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Could not read initial CTS / DSR / CD / RI status"

    invoke-static {v1, v4}, Lcom/tpms/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_0
    const/16 v1, 0x8

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    .line 243
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort$1;

    invoke-direct {v4, p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort$1;-><init>(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    .line 249
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 250
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 252
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

    .line 256
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    .line 257
    .local v0, "readStatusException":Ljava/io/IOException;
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    if-nez v1, :cond_3

    .line 262
    iget v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    return v1

    .line 258
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    .line 259
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

    .line 140
    new-array v8, p5, [B

    .line 141
    .local v8, "buffer":[B
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v7, 0x3e8

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v8

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    .line 143
    .local v0, "result":I
    if-ne v0, p5, :cond_0

    .line 148
    return-object v8

    .line 144
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 146
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 145
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

    .line 153
    const/4 v0, 0x0

    if-nez p5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p5

    .line 154
    .local v1, "length":I
    :goto_0
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v9, 0x1388

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move v8, v1

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v2

    .line 156
    .local v2, "result":I
    if-ne v2, v1, :cond_1

    .line 161
    return-void

    .line 157
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 159
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 158
    const-string v0, "ControlTransfer with value 0x%x failed: %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private final readStatusThreadFunction()V
    .locals 7

    .line 206
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    if-nez v0, :cond_2

    .line 207
    const/16 v0, 0xa

    new-array v1, v0, [B

    .line 208
    .local v1, "buffer":[B
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const/16 v4, 0x1f4

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v2

    .line 212
    .local v2, "readBytesCount":I
    if-lez v2, :cond_1

    .line 213
    if-ne v2, v0, :cond_0

    .line 214
    const/16 v0, 0x8

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    goto :goto_1

    .line 216
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid CTS / DSR / CD / RI status buffer received, expected %d bytes, but received %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 218
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    .line 219
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    .line 217
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v1    # "buffer":[B
    .end local v2    # "readBytesCount":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 225
    :cond_2
    goto :goto_2

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    .line 226
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method private resetDevice()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->purgeHwBuffers(ZZ)Z

    .line 177
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

    .line 200
    const/16 v0, 0x22

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->ctrlOut(III[B)V

    .line 201
    iput p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    .line 202
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

    .line 266
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->getStatus()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .line 165
    const/16 v1, 0xc0

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->inControlTransfer(IIIII)[B

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

    .line 171
    const/16 v1, 0x40

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->outControlTransfer(IIII[B)V

    .line 173
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

    .line 347
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_1

    .line 351
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    .line 352
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThreadLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 353
    :try_start_1
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    .line 355
    :try_start_2
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 358
    goto :goto_0

    .line 356
    :catch_0
    move-exception v3

    .line 357
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    invoke-static {v4}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "An error occured while waiting for status read thread"

    invoke-static {v4, v5}, Lcom/tpms/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 361
    :try_start_4
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->resetDevice()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 364
    :try_start_5
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 366
    iput-object v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 367
    nop

    .line 368
    nop

    .line 369
    return-void

    .line 366
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 367
    throw v0

    .line 360
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

    .line 363
    :catchall_2
    move-exception v0

    .line 364
    :try_start_8
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 366
    iput-object v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 367
    nop

    .line 368
    throw v0

    .line 366
    :catchall_3
    move-exception v0

    iput-object v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 367
    throw v0

    .line 348
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

    .line 492
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

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

    .line 497
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

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

    .line 502
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

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

    .line 507
    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    return-object v0
.end method

.method public getRI()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

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

    .line 528
    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .line 271
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_b

    .line 275
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    .line 277
    .local v0, "usbInterface":Landroid/hardware/usb/UsbInterface;
    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 281
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 282
    const/4 v3, 0x0

    .line 284
    .local v3, "opened":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v6

    const/4 v7, 0x2

    if-ge v4, v6, :cond_3

    .line 285
    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v6

    .line 287
    .local v6, "currentEndpoint":Landroid/hardware/usb/UsbEndpoint;
    invoke-virtual {v6}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v8

    if-eq v8, v7, :cond_2

    const/16 v7, 0x81

    if-eq v8, v7, :cond_1

    const/16 v7, 0x83

    if-eq v8, v7, :cond_0

    goto :goto_1

    .line 289
    :cond_0
    iput-object v6, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 290
    goto :goto_1

    .line 297
    :cond_1
    iput-object v6, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 293
    :cond_2
    iput-object v6, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 294
    nop

    .line 284
    .end local v6    # "currentEndpoint":Landroid/hardware/usb/UsbEndpoint;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 302
    .end local v4    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 303
    iput v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 306
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 307
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getRawDescriptors"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 308
    .local v2, "getRawDescriptorsMethod":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    new-array v6, v1, [Ljava/lang/Object;

    .line 309
    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    .line 310
    .local v4, "rawDescriptors":[B
    const/4 v6, 0x7

    aget-byte v6, v4, v6

    .line 311
    .local v6, "maxPacketSize0":B
    const/16 v8, 0x40

    if-ne v6, v8, :cond_5

    .line 312
    iput v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    goto :goto_3

    .line 313
    :cond_5
    iget-object v8, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 314
    invoke-virtual {v8}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v8

    const/16 v9, 0xff

    if-ne v8, v9, :cond_6

    goto :goto_2

    .line 317
    :cond_6
    iget-object v7, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    invoke-static {v7}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Could not detect PL2303 subtype, Assuming that it is a HX device"

    invoke-static {v7, v8}, Lcom/tpms/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iput v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    goto :goto_3

    .line 315
    :cond_7
    :goto_2
    iput v7, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 326
    .end local v2    # "getRawDescriptorsMethod":Ljava/lang/reflect/Method;
    .end local v4    # "rawDescriptors":[B
    .end local v6    # "maxPacketSize0":B
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    invoke-static {v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "An unexpected exception occured while trying to detect PL2303 subtype"

    invoke-static {v2, v4}, Lcom/tpms/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 321
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 322
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    invoke-static {v4}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "Method UsbDeviceConnection.getRawDescriptors, required for PL2303 subtype detection, not available! Assuming that it is a HX device"

    invoke-static {v4, v6}, Lcom/tpms/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iput v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:I

    .line 329
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_3
    nop

    .line 332
    :goto_4
    iget v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    invoke-direct {p0, v1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->setControlLines(I)V

    .line 333
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->resetDevice()V

    .line 335
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->doBlackMagic()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    const/4 v1, 0x1

    .line 338
    .end local v3    # "opened":Z
    .local v1, "opened":Z
    if-nez v1, :cond_8

    .line 339
    iput-object v5, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 340
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 343
    :cond_8
    return-void

    .line 338
    .end local v1    # "opened":Z
    .restart local v3    # "opened":Z
    :catchall_0
    move-exception v1

    if-nez v3, :cond_9

    .line 339
    iput-object v5, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 340
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 342
    :cond_9
    throw v1

    .line 278
    .end local v3    # "opened":Z
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error claiming Prolific interface 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    .end local v0    # "usbInterface":Landroid/hardware/usb/UsbInterface;
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
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

    .line 544
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 545
    const/16 v2, 0x8

    invoke-direct {p0, v2, v1, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 548
    :cond_0
    if-eqz p2, :cond_1

    .line 549
    const/16 v2, 0x9

    invoke-direct {p0, v2, v1, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    .line 552
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
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

    .line 373
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_0
    array-length v1, p1

    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadBuffer:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 375
    .local v1, "readAmt":I
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadBuffer:[B

    invoke-virtual {v2, v3, v4, v1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v2

    .line 377
    .local v2, "numBytesRead":I
    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 378
    monitor-exit v0

    return v3

    .line 380
    :cond_0
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadBuffer:[B

    invoke-static {v4, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    monitor-exit v0

    return v2

    .line 382
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

    .line 513
    if-eqz p1, :cond_0

    .line 514
    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    or-int/lit8 v0, v0, 0x1

    .local v0, "newControlLinesValue":I
    goto :goto_0

    .line 516
    .end local v0    # "newControlLinesValue":I
    :cond_0
    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 v0, v0, -0x2

    .line 518
    .restart local v0    # "newControlLinesValue":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->setControlLines(I)V

    .line 519
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

    .line 423
    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mBaudRate:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDataBits:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopBits:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mParity:I

    if-ne v0, p4, :cond_0

    .line 426
    return-void

    .line 429
    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 431
    .local v0, "lineRequestData":[B
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 432
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 433
    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    .line 434
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v5, 0x3

    aput-byte v1, v0, v5

    .line 436
    const/4 v1, 0x4

    if-eq p3, v3, :cond_3

    if-eq p3, v4, :cond_2

    if-ne p3, v5, :cond_1

    .line 442
    aput-byte v3, v0, v1

    .line 443
    goto :goto_0

    .line 450
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown stopBits value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_2
    aput-byte v4, v0, v1

    .line 447
    goto :goto_0

    .line 438
    :cond_3
    aput-byte v2, v0, v1

    .line 439
    nop

    .line 453
    :goto_0
    const/4 v6, 0x5

    if-eqz p4, :cond_8

    if-eq p4, v3, :cond_7

    if-eq p4, v4, :cond_6

    if-eq p4, v5, :cond_5

    if-ne p4, v1, :cond_4

    .line 471
    aput-byte v1, v0, v6

    .line 472
    goto :goto_1

    .line 475
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown parity value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    :cond_5
    aput-byte v5, v0, v6

    .line 468
    goto :goto_1

    .line 463
    :cond_6
    aput-byte v4, v0, v6

    .line 464
    goto :goto_1

    .line 459
    :cond_7
    aput-byte v3, v0, v6

    .line 460
    goto :goto_1

    .line 455
    :cond_8
    aput-byte v2, v0, v6

    .line 456
    nop

    .line 478
    :goto_1
    const/4 v1, 0x6

    int-to-byte v3, p2

    aput-byte v3, v0, v1

    .line 480
    const/16 v1, 0x20

    invoke-direct {p0, v1, v2, v2, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->ctrlOut(III[B)V

    .line 482
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->resetDevice()V

    .line 484
    iput p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mBaudRate:I

    .line 485
    iput p2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDataBits:I

    .line 486
    iput p3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopBits:I

    .line 487
    iput p4, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mParity:I

    .line 488
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

    .line 534
    if-eqz p1, :cond_0

    .line 535
    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    or-int/lit8 v0, v0, 0x2

    .local v0, "newControlLinesValue":I
    goto :goto_0

    .line 537
    .end local v0    # "newControlLinesValue":I
    :cond_0
    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 v0, v0, -0x3

    .line 539
    .restart local v0    # "newControlLinesValue":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->setControlLines(I)V

    .line 540
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

    .line 387
    const/4 v0, 0x0

    .line 389
    .local v0, "offset":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 393
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 396
    :try_start_0
    array-length v2, p1

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mWriteBuffer:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 397
    .local v2, "writeLength":I
    if-nez v0, :cond_0

    .line 398
    move-object v3, p1

    .local v3, "writeBuffer":[B
    goto :goto_1

    .line 401
    .end local v3    # "writeBuffer":[B
    :cond_0
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mWriteBuffer:[B

    const/4 v4, 0x0

    invoke-static {p1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mWriteBuffer:[B

    .line 405
    .restart local v3    # "writeBuffer":[B
    :goto_1
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v5, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v4, v5, v3, v2, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v4

    move v3, v4

    .line 407
    .local v3, "amtWritten":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    if-lez v3, :cond_1

    .line 415
    add-int/2addr v0, v3

    .line 416
    .end local v2    # "writeLength":I
    .end local v3    # "amtWritten":I
    goto :goto_0

    .line 410
    .restart local v2    # "writeLength":I
    .restart local v3    # "amtWritten":I
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes at offset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    .end local v2    # "writeLength":I
    .end local v3    # "amtWritten":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 417
    :cond_2
    return v0
.end method
