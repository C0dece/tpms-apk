.class public Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;
.super Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;
.source "Ch34xSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ch340SerialPort"
.end annotation


# static fields
.field private static final USB_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private final DEFAULT_BAUD_RATE:I

.field private dtr:Z

.field private mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private rts:Z

.field final synthetic this$0:Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;
    .param p2, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "portNumber"    # I

    .line 78
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->this$0:Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;

    .line 79
    invoke-direct {p0, p2, p3}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    .line 70
    const/16 v0, 0x2580

    iput v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->DEFAULT_BAUD_RATE:I

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    .line 73
    iput-boolean v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    .line 80
    return-void
.end method

.method private checkState(Ljava/lang/String;II[I)V
    .locals 9
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "request"    # I
    .param p3, "value"    # I
    .param p4, "expected"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    array-length v0, p4

    new-array v0, v0, [B

    .line 218
    .local v0, "buffer":[B
    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlIn(III[B)I

    move-result v1

    .line 220
    .local v1, "ret":I
    const-string v2, "]"

    if-ltz v1, :cond_4

    .line 224
    array-length v3, p4

    const-string v4, " ["

    if-ne v1, v3, :cond_3

    .line 228
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p4

    if-ge v3, v5, :cond_2

    .line 229
    aget v5, p4, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 230
    goto :goto_1

    .line 233
    :cond_0
    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    .line 234
    .local v5, "current":I
    aget v6, p4, v3

    if-ne v6, v5, :cond_1

    .line 228
    .end local v5    # "current":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    .restart local v5    # "current":I
    :cond_1
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, p4, v3

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " bytes, but get 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 238
    .end local v3    # "i":I
    .end local v5    # "current":I
    :cond_2
    return-void

    .line 225
    :cond_3
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes, but get "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 221
    :cond_4
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Faild send cmd ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v3

    :goto_3
    goto :goto_2
.end method

.method private controlIn(III[B)I
    .locals 9
    .param p1, "request"    # I
    .param p2, "value"    # I
    .param p3, "index"    # I
    .param p4, "buffer"    # [B

    .line 210
    const/16 v0, 0xc0

    .line 211
    .local v0, "REQTYPE_HOST_TO_DEVICE":I
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    array-length v7, p4

    const/16 v2, 0xc0

    const/16 v8, 0x1388

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    return v1
.end method

.method private controlOut(III)I
    .locals 9
    .param p1, "request"    # I
    .param p2, "value"    # I
    .param p3, "index"    # I

    .line 203
    const/16 v0, 0x41

    .line 204
    .local v0, "REQTYPE_HOST_TO_DEVICE":I
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0x41

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1388

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    return v1
.end method

.method private initialize()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const-string v3, "init #1"

    const/16 v4, 0x5f

    invoke-direct {p0, v3, v4, v2, v1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    .line 249
    const/16 v1, 0xa1

    invoke-direct {p0, v1, v2, v2}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v2

    if-ltz v2, :cond_2

    .line 253
    const/16 v2, 0x2580

    invoke-direct {p0, v2}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    .line 255
    new-array v3, v0, [I

    fill-array-data v3, :array_1

    const/16 v4, 0x2518

    const/16 v5, 0x95

    const-string v6, "init #4"

    invoke-direct {p0, v6, v5, v4, v3}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    .line 257
    const/16 v3, 0x9a

    const/16 v6, 0x50

    invoke-direct {p0, v3, v4, v6}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v3

    if-ltz v3, :cond_1

    .line 261
    new-array v3, v0, [I

    fill-array-data v3, :array_2

    const/16 v4, 0x706

    const-string v6, "init #6"

    invoke-direct {p0, v6, v5, v4, v3}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    .line 263
    const/16 v3, 0x501f

    const v6, 0xd90a

    invoke-direct {p0, v1, v3, v6}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v1

    if-ltz v1, :cond_0

    .line 267
    invoke-direct {p0, v2}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    .line 269
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->writeHandshakeByte()V

    .line 271
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    const-string v1, "init #10"

    invoke-direct {p0, v1, v5, v4, v0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    .line 272
    return-void

    .line 264
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "init failed! #7"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "init failed! #5"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "init failed! #2"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xff
        0xee
    .end array-data

    :array_3
    .array-data 4
        -0x1
        0xee
    .end array-data
.end method

.method private setBaudRate(I)V
    .locals 7
    .param p1, "baudRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 280
    .local v0, "baud":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_3

    .line 281
    mul-int/lit8 v2, v1, 0x3

    aget v2, v0, v2

    if-ne v2, p1, :cond_2

    .line 282
    const/16 v2, 0x1312

    mul-int/lit8 v3, v1, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v3, v0, v3

    const/16 v4, 0x9a

    invoke-direct {p0, v4, v2, v3}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v2

    .line 283
    .local v2, "ret":I
    const-string v3, "Error setting baud rate. #1"

    if-ltz v2, :cond_1

    .line 286
    const/16 v5, 0xf2c

    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x2

    aget v6, v0, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v2

    .line 287
    if-ltz v2, :cond_0

    .line 291
    return-void

    .line 288
    :cond_0
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 284
    :cond_1
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 280
    .end local v2    # "ret":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "i":I
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Baud rate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " currently not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x960
        0xd901
        0x38
        0x12c0
        0x6402
        0x1f
        0x2580
        0xb202
        0x13
        0x4b00
        0xd902
        0xd
        0x9600
        0x6403
        0xa
        0x1c200
        0xcc03
        0x8
    .end array-data
.end method

.method private writeHandshakeByte()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x40

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v0, v2

    xor-int/lit8 v0, v0, -0x1

    const/16 v2, 0xa4

    invoke-direct {p0, v2, v0, v1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v0

    if-ltz v0, :cond_2

    .line 244
    return-void

    .line 242
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Faild to set handshake byte"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 145
    nop

    .line 146
    return-void

    .line 144
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 145
    throw v1

    .line 136
    :cond_0
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

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public getCTS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public getDSR()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public getDTR()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    return v0
.end method

.method public getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->this$0:Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;

    return-object v0
.end method

.method public bridge synthetic getPortNumber()I
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->getPortNumber()I

    move-result v0

    return v0
.end method

.method public getRI()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public getRTS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    return v0
.end method

.method public bridge synthetic getSerial()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 6
    .param p1, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_7

    .line 93
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "opened":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 98
    .local v2, "usbIface":Landroid/hardware/usb/UsbInterface;
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v4, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "claimInterface "

    if-eqz v3, :cond_0

    .line 99
    :try_start_1
    invoke-static {}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " SUCCESS"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tpms/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_0
    invoke-static {}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " FAIL"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tpms/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v2    # "usbIface":Landroid/hardware/usb/UsbInterface;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    .line 106
    .local v1, "dataIface":Landroid/hardware/usb/UsbInterface;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 107
    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    .line 108
    .local v3, "ep":Landroid/hardware/usb/UsbEndpoint;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 109
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_2

    .line 110
    iput-object v3, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_3

    .line 112
    :cond_2
    iput-object v3, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 106
    .end local v3    # "ep":Landroid/hardware/usb/UsbEndpoint;
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 118
    .end local v2    # "i":I
    :cond_4
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->initialize()V

    .line 119
    const/16 v2, 0x2580

    invoke-direct {p0, v2}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    const/4 v0, 0x1

    .line 123
    .end local v1    # "dataIface":Landroid/hardware/usb/UsbInterface;
    if-nez v0, :cond_5

    .line 125
    :try_start_2
    invoke-virtual {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    :goto_4
    goto :goto_5

    .line 126
    :catch_0
    move-exception v1

    goto :goto_4

    .line 131
    :cond_5
    :goto_5
    return-void

    .line 123
    :catchall_0
    move-exception v1

    if-nez v0, :cond_6

    .line 125
    :try_start_3
    invoke-virtual {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 128
    goto :goto_6

    .line 126
    :catch_1
    move-exception v2

    .line 130
    :cond_6
    :goto_6
    throw v1

    .line 90
    .end local v0    # "opened":Z
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already opened."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method public purgeHwBuffers(ZZ)Z
    .locals 1
    .param p1, "purgeReadBuffers"    # Z
    .param p2, "purgeWriteBuffers"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
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

    .line 152
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mReadBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    array-length v1, p1

    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mReadBuffer:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 154
    .local v1, "readAmt":I
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mReadBuffer:[B

    invoke-virtual {v2, v3, v4, v1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v2

    .line 156
    .local v2, "numBytesRead":I
    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 161
    monitor-exit v0

    return v3

    .line 163
    :cond_0
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mReadBuffer:[B

    invoke-static {v4, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    .end local v1    # "readAmt":I
    monitor-exit v0

    .line 165
    return v2

    .line 164
    .end local v2    # "numBytesRead":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDTR(Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    .line 331
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->writeHandshakeByte()V

    .line 332
    return-void
.end method

.method public setParameters(IIII)V
    .locals 0
    .param p1, "baudRate"    # I
    .param p2, "dataBits"    # I
    .param p3, "stopBits"    # I
    .param p4, "parity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-direct {p0, p1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    .line 306
    return-void
.end method

.method public setRTS(Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    .line 347
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->writeHandshakeByte()V

    .line 348
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, "offset":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    array-length v2, p1

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mWriteBuffer:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 180
    .local v2, "writeLength":I
    if-nez v0, :cond_0

    .line 181
    move-object v3, p1

    .local v3, "writeBuffer":[B
    goto :goto_1

    .line 184
    .end local v3    # "writeBuffer":[B
    :cond_0
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mWriteBuffer:[B

    const/4 v4, 0x0

    invoke-static {p1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mWriteBuffer:[B

    .line 188
    .restart local v3    # "writeBuffer":[B
    :goto_1
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v5, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v4, v5, v3, v2, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v4

    move v3, v4

    .line 190
    .local v3, "amtWritten":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    if-lez v3, :cond_1

    .line 196
    invoke-static {}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrote amt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " attempted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tpms/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    add-int/2addr v0, v3

    .line 198
    .end local v2    # "writeLength":I
    .end local v3    # "amtWritten":I
    goto :goto_0

    .line 192
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

    .line 190
    .end local v2    # "writeLength":I
    .end local v3    # "amtWritten":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 199
    :cond_2
    return v0
.end method
