.class Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;
.super Lcom/cz/usbserial/driver/CommonUsbSerialPort;
.source "FtdiSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cz/usbserial/driver/FtdiSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FtdiSerialPort"
.end annotation


# static fields
.field private static final ENABLE_ASYNC_READS:Z = false

.field public static final FTDI_DEVICE_IN_REQTYPE:I = 0xc0

.field public static final FTDI_DEVICE_OUT_REQTYPE:I = 0x40

.field private static final MODEM_STATUS_HEADER_LENGTH:I = 0x2

.field private static final SIO_MODEM_CTRL_REQUEST:I = 0x1

.field private static final SIO_RESET_PURGE_RX:I = 0x1

.field private static final SIO_RESET_PURGE_TX:I = 0x2

.field private static final SIO_RESET_REQUEST:I = 0x0

.field private static final SIO_RESET_SIO:I = 0x0

.field private static final SIO_SET_BAUD_RATE_REQUEST:I = 0x3

.field private static final SIO_SET_DATA_REQUEST:I = 0x4

.field private static final SIO_SET_FLOW_CTRL_REQUEST:I = 0x2

.field public static final USB_ENDPOINT_IN:I = 0x80

.field public static final USB_ENDPOINT_OUT:I = 0x0

.field public static final USB_READ_TIMEOUT_MILLIS:I = 0x1388

.field public static final USB_RECIP_DEVICE:I = 0x0

.field public static final USB_RECIP_ENDPOINT:I = 0x2

.field public static final USB_RECIP_INTERFACE:I = 0x1

.field public static final USB_RECIP_OTHER:I = 0x3

.field public static final USB_TYPE_CLASS:I = 0x0

.field public static final USB_TYPE_RESERVED:I = 0x0

.field public static final USB_TYPE_STANDARD:I = 0x0

.field public static final USB_TYPE_VENDOR:I = 0x0

.field public static final USB_WRITE_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mInterface:I

.field private mMaxPacketSize:I

.field private mType:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

.field final synthetic this$0:Lcom/cz/usbserial/driver/FtdiSerialDriver;


# direct methods
.method public constructor <init>(Lcom/cz/usbserial/driver/FtdiSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0
    .param p2, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "portNumber"    # I

    .line 199
    iput-object p1, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->this$0:Lcom/cz/usbserial/driver/FtdiSerialDriver;

    .line 200
    invoke-direct {p0, p2, p3}, Lcom/cz/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    .line 184
    const-class p1, Lcom/cz/usbserial/driver/FtdiSerialDriver;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->TAG:Ljava/lang/String;

    .line 188
    const/4 p1, 0x0

    iput p1, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mInterface:I

    .line 190
    const/16 p1, 0x40

    iput p1, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mMaxPacketSize:I

    .line 201
    return-void
.end method

.method private convertBaudrate(I)[J
    .locals 20
    .param p1, "baudrate"    # I

    .line 462
    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, 0x16e3600

    div-int v3, v2, v1

    .line 463
    .local v3, "divisor":I
    const/4 v4, 0x0

    .line 464
    .local v4, "bestDivisor":I
    const/4 v5, 0x0

    .line 465
    .local v5, "bestBaud":I
    const/4 v6, 0x0

    .line 466
    .local v6, "bestBaudDiff":I
    const/16 v7, 0x8

    new-array v8, v7, [I

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v9, v8, v10

    const/4 v11, 0x2

    aput v11, v8, v11

    const/4 v12, 0x4

    aput v12, v8, v9

    aput v10, v8, v12

    const/4 v12, 0x5

    aput v12, v8, v12

    const/4 v12, 0x6

    aput v12, v8, v12

    const/4 v12, 0x7

    aput v12, v8, v12

    .line 468
    .local v8, "fracCode":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/16 v13, 0x10

    if-lt v12, v11, :cond_0

    goto :goto_4

    .line 469
    :cond_0
    add-int v14, v3, v12

    .line 473
    .local v14, "tryDivisor":I
    if-gt v14, v7, :cond_1

    .line 475
    const/16 v14, 0x8

    .line 476
    goto :goto_1

    :cond_1
    iget-object v15, v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mType:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    sget-object v11, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_AM:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    if-eq v15, v11, :cond_2

    const/16 v11, 0xc

    if-ge v14, v11, :cond_2

    .line 478
    const/16 v14, 0xc

    .line 479
    goto :goto_1

    :cond_2
    if-ge v3, v13, :cond_3

    .line 481
    const/16 v14, 0x10

    .line 482
    goto :goto_1

    .line 483
    :cond_3
    iget-object v11, v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mType:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    sget-object v15, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_AM:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    if-eq v11, v15, :cond_4

    .line 486
    const v11, 0x1ffff

    if-le v14, v11, :cond_4

    .line 490
    const v14, 0x1ffff

    .line 496
    :cond_4
    :goto_1
    div-int/lit8 v11, v14, 0x2

    add-int/2addr v11, v2

    div-int/2addr v11, v14

    .line 499
    .local v11, "baudEstimate":I
    if-ge v11, v1, :cond_5

    .line 500
    sub-int v15, v1, v11

    .line 501
    .local v15, "baudDiff":I
    goto :goto_2

    .line 502
    .end local v15    # "baudDiff":I
    :cond_5
    sub-int v15, v11, v1

    .line 505
    .restart local v15    # "baudDiff":I
    :goto_2
    if-eqz v12, :cond_7

    if-ge v15, v6, :cond_6

    goto :goto_3

    :cond_6
    const/4 v13, 0x2

    goto :goto_9

    .line 507
    :cond_7
    :goto_3
    move v4, v14

    .line 508
    move v5, v11

    .line 509
    move v6, v15

    .line 510
    if-nez v15, :cond_c

    .line 512
    nop

    .line 518
    .end local v11    # "baudEstimate":I
    .end local v12    # "i":I
    .end local v14    # "tryDivisor":I
    .end local v15    # "baudDiff":I
    :goto_4
    shr-int/lit8 v2, v4, 0x3

    .line 519
    and-int/lit8 v11, v4, 0x7

    aget v11, v8, v11

    shl-int/lit8 v11, v11, 0xe

    .line 518
    or-int/2addr v2, v11

    int-to-long v11, v2

    .line 521
    .local v11, "encodedDivisor":J
    const-wide/16 v14, 0x1

    cmp-long v2, v11, v14

    if-nez v2, :cond_8

    .line 522
    const-wide/16 v11, 0x0

    goto :goto_5

    .line 523
    :cond_8
    const-wide/16 v14, 0x4001

    cmp-long v2, v11, v14

    if-nez v2, :cond_9

    .line 524
    const-wide/16 v11, 0x1

    goto :goto_6

    .line 523
    :cond_9
    :goto_5
    nop

    .line 528
    :goto_6
    const-wide/32 v14, 0xffff

    and-long v16, v11, v14

    .line 530
    .local v16, "value":J
    iget-object v2, v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mType:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    sget-object v10, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_2232C:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    if-eq v2, v10, :cond_b

    .line 531
    iget-object v2, v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mType:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    sget-object v10, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_2232H:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    if-eq v2, v10, :cond_b

    .line 532
    iget-object v2, v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mType:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    sget-object v10, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_4232H:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    if-ne v2, v10, :cond_a

    goto :goto_7

    .line 537
    :cond_a
    shr-long v18, v11, v13

    and-long v14, v18, v14

    .local v14, "index":J
    goto :goto_8

    .line 533
    .end local v14    # "index":J
    :cond_b
    :goto_7
    shr-long v18, v11, v7

    and-long v14, v18, v14

    .line 534
    .restart local v14    # "index":J
    const-wide/32 v18, 0xff00

    and-long v14, v14, v18

    .line 535
    const-wide/16 v18, 0x0

    or-long v14, v14, v18

    .line 536
    nop

    .line 541
    :goto_8
    new-array v2, v9, [J

    const/4 v7, 0x0

    int-to-long v9, v5

    aput-wide v9, v2, v7

    const/4 v10, 0x1

    aput-wide v14, v2, v10

    const/4 v13, 0x2

    aput-wide v16, v2, v13

    return-object v2

    .line 510
    .end local v16    # "value":J
    .local v11, "baudEstimate":I
    .restart local v12    # "i":I
    .local v14, "tryDivisor":I
    .restart local v15    # "baudDiff":I
    :cond_c
    const/4 v13, 0x2

    .line 468
    .end local v11    # "baudEstimate":I
    .end local v14    # "tryDivisor":I
    .end local v15    # "baudDiff":I
    :goto_9
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x2

    goto/16 :goto_0
.end method

.method private final filterStatusBytes([B[BII)I
    .locals 5
    .param p1, "src"    # [B
    .param p2, "dest"    # [B
    .param p3, "totalBytesRead"    # I
    .param p4, "maxPacketSize"    # I

    .line 224
    div-int v0, p3, p4

    .line 225
    rem-int v1, p3, p4

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 224
    :goto_0
    add-int/2addr v0, v1

    .line 226
    .local v0, "packetsCount":I
    const/4 v1, 0x0

    .local v1, "packetIdx":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 238
    .end local v1    # "packetIdx":I
    mul-int/lit8 v1, v0, 0x2

    sub-int v1, p3, v1

    return v1

    .line 227
    .restart local v1    # "packetIdx":I
    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_2

    rem-int v2, p3, p4

    .line 228
    add-int/lit8 v2, v2, -0x2

    goto :goto_2

    .line 229
    :cond_2
    add-int/lit8 v2, p4, -0x2

    .line 227
    :goto_2
    nop

    .line 230
    .local v2, "count":I
    if-lez v2, :cond_3

    .line 231
    mul-int v3, v1, p4

    .line 232
    add-int/lit8 v3, v3, 0x2

    .line 233
    add-int/lit8 v4, p4, -0x2

    mul-int v4, v4, v1

    .line 234
    nop

    .line 231
    invoke-static {p1, v3, p2, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    .end local v2    # "count":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setBaudRate(I)I
    .locals 16
    .param p1, "baudRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    invoke-direct/range {p0 .. p1}, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->convertBaudrate(I)[J

    move-result-object v0

    .line 394
    .local v0, "vals":[J
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    .line 395
    .local v1, "actualBaudrate":J
    const/4 v3, 0x1

    aget-wide v3, v0, v3

    .line 396
    .local v3, "index":J
    const/4 v5, 0x2

    aget-wide v5, v0, v5

    .line 397
    .local v5, "value":J
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 398
    long-to-int v11, v5

    long-to-int v12, v3

    .line 399
    nop

    .line 397
    const/16 v9, 0x40

    const/4 v10, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1388

    invoke-virtual/range {v8 .. v15}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v8

    .line 400
    .local v8, "result":I
    if-nez v8, :cond_0

    .line 404
    long-to-int v9, v1

    return v9

    .line 401
    :cond_0
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Setting baudrate failed: result="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 401
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    nop

    .line 288
    iput-object v0, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 290
    return-void

    .line 287
    :catchall_0
    move-exception v1

    .line 288
    iput-object v0, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 289
    throw v1

    .line 283
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

    .line 546
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

    .line 551
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

    .line 556
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

    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public getDriver()Lcom/cz/usbserial/driver/UsbSerialDriver;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->this$0:Lcom/cz/usbserial/driver/FtdiSerialDriver;

    return-object v0
.end method

.method public getRI()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
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

    .line 575
    const/4 v0, 0x0

    return v0
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 6
    .param p1, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_4

    .line 258
    iput-object p1, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 260
    const/4 v0, 0x0

    .line 262
    .local v0, "opened":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 270
    .end local v1    # "i":I
    invoke-virtual {p0}, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    const/4 v0, 0x1

    .line 272
    nop

    .line 273
    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->close()V

    .line 275
    iput-object v2, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 278
    :cond_0
    return-void

    .line 263
    .restart local v1    # "i":I
    :cond_1
    nop

    .line 264
    :try_start_1
    iget-object v3, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    iget-object v3, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "claimInterface "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    nop

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    :cond_2
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error claiming interface "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "opened":Z
    .end local p1    # "connection":Landroid/hardware/usb/UsbDeviceConnection;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    .end local v1    # "i":I
    .restart local v0    # "opened":Z
    .restart local p1    # "connection":Landroid/hardware/usb/UsbDeviceConnection;
    :catchall_0
    move-exception v1

    .line 273
    if-nez v0, :cond_3

    .line 274
    invoke-virtual {p0}, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->close()V

    .line 275
    iput-object v2, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 277
    :cond_3
    throw v1

    .line 256
    .end local v0    # "opened":Z
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public purgeHwBuffers(ZZ)Z
    .locals 11
    .param p1, "purgeReadBuffers"    # Z
    .param p2, "purgeWriteBuffers"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    const-string v0, "Flushing RX failed: result="

    if-eqz p1, :cond_1

    .line 586
    iget-object v1, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 587
    const/16 v2, 0x40

    const/4 v3, 0x0

    .line 588
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 589
    const/16 v8, 0x1388

    .line 586
    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    .line 590
    .local v1, "result":I
    if-nez v1, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 596
    .end local v1    # "result":I
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 597
    iget-object v3, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 598
    const/16 v4, 0x40

    const/4 v5, 0x0

    .line 599
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 600
    const/16 v10, 0x1388

    .line 597
    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    .line 601
    .restart local v1    # "result":I
    if-nez v1, :cond_2

    goto :goto_1

    .line 602
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 606
    .end local v1    # "result":I
    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public read([BI)I
    .locals 6
    .param p1, "dest"    # [B
    .param p2, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    .line 329
    .local v0, "endpoint":Landroid/hardware/usb/UsbEndpoint;
    iget-object v1, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mReadBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    array-length v2, p1

    .line 331
    iget-object v3, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mReadBuffer:[B

    array-length v3, v3

    .line 330
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 333
    .local v2, "readAmt":I
    iget-object v3, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 334
    iget-object v4, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mReadBuffer:[B

    .line 333
    invoke-virtual {v3, v0, v4, v2, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v3

    .line 336
    .local v3, "totalBytesRead":I
    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 345
    iget-object v4, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mReadBuffer:[B

    .line 346
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v5

    .line 345
    invoke-direct {p0, v4, p1, v3, v5}, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->filterStatusBytes([B[BII)I

    move-result v4

    monitor-exit v1

    return v4

    .line 337
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Expected at least 2 bytes"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "endpoint":Landroid/hardware/usb/UsbEndpoint;
    .end local p1    # "dest":[B
    .end local p2    # "timeoutMillis":I
    throw v4

    .line 329
    .end local v2    # "readAmt":I
    .end local v3    # "totalBytesRead":I
    .restart local v0    # "endpoint":Landroid/hardware/usb/UsbEndpoint;
    .restart local p1    # "dest":[B
    .restart local p2    # "timeoutMillis":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public reset()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 243
    nop

    .line 244
    nop

    .line 242
    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    .line 245
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 250
    sget-object v1, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_R:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    iput-object v1, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mType:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    .line 251
    return-void

    .line 246
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reset failed: result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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

    .line 566
    return-void
.end method

.method public setParameters(IIII)V
    .locals 9
    .param p1, "baudRate"    # I
    .param p2, "dataBits"    # I
    .param p3, "stopBits"    # I
    .param p4, "parity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    invoke-direct {p0, p1}, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->setBaudRate(I)I

    .line 412
    move v0, p2

    .line 414
    .local v0, "config":I
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p4, :cond_4

    if-eq p4, v3, :cond_3

    if-eq p4, v2, :cond_2

    if-eq p4, v1, :cond_1

    const/4 v4, 0x4

    if-ne p4, v4, :cond_0

    .line 428
    or-int/lit16 v0, v0, 0x400

    .line 429
    goto :goto_0

    .line 431
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown parity value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    :cond_1
    or-int/lit16 v0, v0, 0x300

    .line 426
    goto :goto_0

    .line 422
    :cond_2
    or-int/lit16 v0, v0, 0x200

    .line 423
    goto :goto_0

    .line 419
    :cond_3
    or-int/lit16 v0, v0, 0x100

    .line 420
    goto :goto_0

    .line 416
    :cond_4
    or-int/lit8 v0, v0, 0x0

    .line 417
    nop

    .line 435
    :goto_0
    if-eq p3, v3, :cond_7

    if-eq p3, v2, :cond_6

    if-ne p3, v1, :cond_5

    .line 440
    or-int/lit16 v0, v0, 0x800

    .line 441
    goto :goto_1

    .line 446
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown stopBits value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 446
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_6
    or-int/lit16 v0, v0, 0x1000

    .line 444
    goto :goto_1

    .line 437
    :cond_7
    or-int/lit8 v0, v0, 0x0

    .line 438
    nop

    .line 450
    :goto_1
    iget-object v1, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0x40

    .line 451
    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 452
    const/16 v8, 0x1388

    .line 450
    move v4, v0

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v1

    .line 453
    .local v1, "result":I
    if-nez v1, :cond_8

    .line 457
    return-void

    .line 454
    :cond_8
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting parameters failed: result="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setRTS(Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    return-void
.end method

.method public write([BI)I
    .locals 7
    .param p1, "src"    # [B
    .param p2, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    .line 354
    .local v0, "endpoint":Landroid/hardware/usb/UsbEndpoint;
    const/4 v2, 0x0

    .line 356
    .local v2, "offset":I
    nop

    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_0

    .line 389
    return v2

    .line 360
    :cond_0
    iget-object v3, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v3

    .line 363
    :try_start_0
    array-length v4, p1

    sub-int/2addr v4, v2

    .line 364
    iget-object v5, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mWriteBuffer:[B

    array-length v5, v5

    .line 363
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 365
    .local v4, "writeLength":I
    if-nez v2, :cond_1

    .line 366
    move-object v5, p1

    .line 367
    .local v5, "writeBuffer":[B
    goto :goto_1

    .line 369
    .end local v5    # "writeBuffer":[B
    :cond_1
    iget-object v5, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mWriteBuffer:[B

    .line 370
    nop

    .line 369
    invoke-static {p1, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    iget-object v5, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mWriteBuffer:[B

    .line 374
    .restart local v5    # "writeBuffer":[B
    :goto_1
    iget-object v6, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 375
    nop

    .line 374
    invoke-virtual {v6, v0, v5, v4, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v6

    move v5, v6

    .line 360
    .local v5, "amtWritten":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    if-lez v5, :cond_2

    .line 387
    add-int/2addr v2, v5

    goto :goto_0

    .line 379
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Error writing "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    const-string v6, " bytes at offset "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " length="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    array-length v6, p1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    .end local v4    # "writeLength":I
    .end local v5    # "amtWritten":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
