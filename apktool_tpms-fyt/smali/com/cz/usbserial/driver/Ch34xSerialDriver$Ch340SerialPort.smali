.class public Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;
.super Lcom/cz/usbserial/driver/CommonUsbSerialPort;
.source "Ch34xSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cz/usbserial/driver/Ch34xSerialDriver;
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

.field final synthetic this$0:Lcom/cz/usbserial/driver/Ch34xSerialDriver;


# direct methods
.method public constructor <init>(Lcom/cz/usbserial/driver/Ch34xSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0
    .param p2, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "portNumber"    # I

    .line 76
    iput-object p1, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->this$0:Lcom/cz/usbserial/driver/Ch34xSerialDriver;

    .line 77
    invoke-direct {p0, p2, p3}, Lcom/cz/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    .line 68
    const/16 p1, 0x2580

    iput p1, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->DEFAULT_BAUD_RATE:I

    .line 70
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    .line 71
    iput-boolean p1, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    .line 78
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

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "ret":I
    array-length v1, p4

    new-array v1, v1, [B

    .line 224
    .local v1, "buffer":[B
    const/4 v2, 0x0

    invoke-direct {p0, p2, p3, v2, v1}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlIn(III[B)I

    move-result v0

    .line 228
    const-string v2, "]"

    if-ltz v0, :cond_4

    .line 232
    array-length v3, p4

    const-string v4, " ["

    if-ne v0, v3, :cond_3

    .line 237
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p4

    if-lt v3, v5, :cond_0

    .line 250
    .end local v3    # "i":I
    return-void

    .line 238
    .restart local v3    # "i":I
    :cond_0
    aget v5, p4, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 239
    goto :goto_1

    .line 242
    :cond_1
    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    .line 243
    .local v5, "current":I
    aget v6, p4, v3

    if-ne v6, v5, :cond_2

    .line 237
    .end local v5    # "current":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    .restart local v5    # "current":I
    :cond_2
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Expected 0x"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    aget v8, p4, v3

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v8, " bytes, but get 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-direct {v6, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 233
    .end local v3    # "i":I
    .end local v5    # "current":I
    :cond_3
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Expected "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    const-string v6, " bytes, but get "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 229
    :cond_4
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Faild send cmd ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 212
    const/16 v0, 0xc0

    .line 214
    .local v0, "REQTYPE_HOST_TO_DEVICE":I
    iget-object v1, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 215
    array-length v7, p4

    .line 214
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

    .line 206
    const/16 v0, 0x41

    .line 207
    .local v0, "REQTYPE_HOST_TO_DEVICE":I
    iget-object v1, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 208
    nop

    .line 207
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

    .line 259
    nop

    .line 260
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 259
    const-string v4, "init #1"

    const/16 v5, 0x5f

    invoke-direct {p0, v4, v5, v3, v1}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    .line 262
    const/16 v1, 0xa1

    invoke-direct {p0, v1, v3, v3}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v4

    if-ltz v4, :cond_2

    .line 266
    const/16 v4, 0x2580

    invoke-direct {p0, v4}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    .line 268
    new-array v5, v0, [I

    aput v2, v5, v3

    const/16 v2, 0x2518

    const/16 v3, 0x95

    const-string v6, "init #4"

    invoke-direct {p0, v6, v3, v2, v5}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    .line 271
    const/16 v5, 0x9a

    const/16 v6, 0x50

    invoke-direct {p0, v5, v2, v6}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v2

    if-ltz v2, :cond_1

    .line 275
    new-array v2, v0, [I

    fill-array-data v2, :array_0

    const/16 v5, 0x706

    const-string v6, "init #6"

    invoke-direct {p0, v6, v3, v5, v2}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    .line 277
    const/16 v2, 0x501f

    const v6, 0xd90a

    invoke-direct {p0, v1, v2, v6}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v1

    if-ltz v1, :cond_0

    .line 281
    invoke-direct {p0, v4}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    .line 283
    invoke-direct {p0}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->writeHandshakeByte()V

    .line 285
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 286
    nop

    .line 285
    const-string v1, "init #10"

    invoke-direct {p0, v1, v3, v5, v0}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->checkState(Ljava/lang/String;II[I)V

    .line 287
    return-void

    .line 278
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "init failed! #7"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "init failed! #5"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "init failed! #2"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0xff
        0xee
    .end array-data

    :array_1
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

    .line 290
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 291
    nop

    .line 292
    nop

    .line 290
    nop

    .line 294
    .local v0, "baud":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_3

    .line 295
    mul-int/lit8 v2, v1, 0x3

    aget v2, v0, v2

    if-ne v2, p1, :cond_2

    .line 296
    const/16 v2, 0x1312

    mul-int/lit8 v3, v1, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v3, v0, v3

    const/16 v4, 0x9a

    invoke-direct {p0, v4, v2, v3}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v2

    .line 297
    .local v2, "ret":I
    const-string v3, "Error setting baud rate. #1"

    if-ltz v2, :cond_1

    .line 300
    const/16 v5, 0xf2c

    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x2

    aget v6, v0, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v2

    .line 301
    if-ltz v2, :cond_0

    .line 305
    return-void

    .line 302
    :cond_0
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 298
    :cond_1
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 294
    .end local v2    # "ret":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "i":I
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Baud rate "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    const-string v3, " currently not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 309
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

    .line 253
    iget-boolean v0, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x40

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v0, v2

    xor-int/lit8 v0, v0, -0x1

    const/16 v2, 0xa4

    invoke-direct {p0, v2, v0, v1}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->controlOut(III)I

    move-result v0

    if-ltz v0, :cond_2

    .line 256
    return-void

    .line 254
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

    .line 133
    iget-object v0, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    nop

    .line 142
    iput-object v0, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 144
    return-void

    .line 141
    :catchall_0
    move-exception v1

    .line 142
    iput-object v0, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 143
    throw v1

    .line 134
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

    .line 323
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

    .line 328
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

    .line 333
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

    .line 338
    iget-boolean v0, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    return v0
.end method

.method public getDriver()Lcom/cz/usbserial/driver/UsbSerialDriver;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->this$0:Lcom/cz/usbserial/driver/Ch34xSerialDriver;

    return-object v0
.end method

.method public bridge synthetic getPortNumber()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->getPortNumber()I

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

    .line 349
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

    .line 354
    iget-boolean v0, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    return v0
.end method

.method public bridge synthetic getSerial()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->getSerial()Ljava/lang/String;

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

    .line 87
    iget-object v0, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_7

    .line 91
    iput-object p1, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "opened":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v1, v2, :cond_4

    .line 103
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v2, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 104
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    sub-int/2addr v2, v3

    .line 103
    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    .line 105
    .local v1, "dataIface":Landroid/hardware/usb/UsbInterface;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 116
    .end local v2    # "i":I
    invoke-direct {p0}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->initialize()V

    .line 117
    const/16 v2, 0x2580

    invoke-direct {p0, v2}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    const/4 v0, 0x1

    .line 120
    .end local v1    # "dataIface":Landroid/hardware/usb/UsbInterface;
    nop

    .line 121
    if-nez v0, :cond_0

    .line 123
    :try_start_1
    invoke-virtual {p0}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    .line 129
    :cond_0
    :goto_3
    return-void

    .line 106
    .restart local v1    # "dataIface":Landroid/hardware/usb/UsbInterface;
    .restart local v2    # "i":I
    :cond_1
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    .line 107
    .local v3, "ep":Landroid/hardware/usb/UsbEndpoint;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 108
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_2

    .line 109
    iput-object v3, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 110
    goto :goto_4

    .line 111
    :cond_2
    iput-object v3, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 105
    .end local v3    # "ep":Landroid/hardware/usb/UsbEndpoint;
    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 95
    .end local v2    # "i":I
    .local v1, "i":I
    :cond_4
    iget-object v2, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 96
    .local v2, "usbIface":Landroid/hardware/usb/UsbInterface;
    iget-object v4, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v4, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, "claimInterface "

    if-eqz v3, :cond_5

    .line 97
    :try_start_3
    invoke-static {}, Lcom/cz/usbserial/driver/Ch34xSerialDriver;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " SUCCESS"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    goto :goto_5

    .line 99
    :cond_5
    invoke-static {}, Lcom/cz/usbserial/driver/Ch34xSerialDriver;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " FAIL"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    .end local v2    # "usbIface":Landroid/hardware/usb/UsbInterface;
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 120
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    .line 121
    if-nez v0, :cond_6

    .line 123
    :try_start_4
    invoke-virtual {p0}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 124
    :goto_6
    goto :goto_7

    :catch_1
    move-exception v2

    goto :goto_6

    .line 128
    :cond_6
    :goto_7
    throw v1

    .line 88
    .end local v0    # "opened":Z
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already opened."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
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

    .line 366
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

    .line 149
    iget-object v0, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mReadBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    array-length v1, p1

    iget-object v2, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mReadBuffer:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 151
    .local v1, "readAmt":I
    iget-object v2, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 152
    iget-object v4, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mReadBuffer:[B

    .line 151
    invoke-virtual {v2, v3, v4, v1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v2

    .line 153
    .local v2, "numBytesRead":I
    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 160
    monitor-exit v0

    return v3

    .line 162
    :cond_0
    iget-object v4, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mReadBuffer:[B

    invoke-static {v4, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    .end local v1    # "readAmt":I
    monitor-exit v0

    .line 164
    return v2

    .line 149
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

    .line 343
    iput-boolean p1, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->dtr:Z

    .line 344
    invoke-direct {p0}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->writeHandshakeByte()V

    .line 345
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

    .line 316
    invoke-direct {p0, p1}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->setBaudRate(I)V

    .line 319
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

    .line 359
    iput-boolean p1, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->rts:Z

    .line 360
    invoke-direct {p0}, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->writeHandshakeByte()V

    .line 361
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->toString()Ljava/lang/String;

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

    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "offset":I
    nop

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 202
    return v0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    array-length v2, p1

    sub-int/2addr v2, v0

    .line 179
    iget-object v3, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mWriteBuffer:[B

    array-length v3, v3

    .line 178
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 180
    .local v2, "writeLength":I
    if-nez v0, :cond_1

    .line 181
    move-object v3, p1

    .line 182
    .local v3, "writeBuffer":[B
    goto :goto_1

    .line 184
    .end local v3    # "writeBuffer":[B
    :cond_1
    iget-object v3, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mWriteBuffer:[B

    const/4 v4, 0x0

    .line 185
    nop

    .line 184
    invoke-static {p1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    iget-object v3, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mWriteBuffer:[B

    .line 189
    .restart local v3    # "writeBuffer":[B
    :goto_1
    iget-object v4, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v5, p0, Lcom/cz/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 190
    nop

    .line 189
    invoke-virtual {v4, v5, v3, v2, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v4

    move v3, v4

    .line 175
    .local v3, "amtWritten":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    if-lez v3, :cond_2

    .line 198
    invoke-static {}, Lcom/cz/usbserial/driver/Ch34xSerialDriver;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Wrote amt="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " attempted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    add-int/2addr v0, v3

    goto :goto_0

    .line 193
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error writing "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    const-string v5, " bytes at offset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
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
