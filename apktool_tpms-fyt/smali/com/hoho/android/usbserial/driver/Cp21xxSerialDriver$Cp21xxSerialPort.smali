.class public Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;
.super Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;
.source "Cp21xxSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cp21xxSerialPort"
.end annotation


# static fields
.field private static final BAUD_RATE_GEN_FREQ:I = 0x384000

.field private static final CONTROL_WRITE_DTR:I = 0x100

.field private static final CONTROL_WRITE_RTS:I = 0x200

.field private static final DEFAULT_BAUD_RATE:I = 0x2580

.field private static final FLUSH_READ_CODE:I = 0xa

.field private static final FLUSH_WRITE_CODE:I = 0x5

.field private static final MCR_ALL:I = 0x3

.field private static final MCR_DTR:I = 0x1

.field private static final MCR_RTS:I = 0x2

.field private static final REQTYPE_HOST_TO_DEVICE:I = 0x41

.field private static final SILABSER_FLUSH_REQUEST_CODE:I = 0x12

.field private static final SILABSER_IFC_ENABLE_REQUEST_CODE:I = 0x0

.field private static final SILABSER_SET_BAUDDIV_REQUEST_CODE:I = 0x1

.field private static final SILABSER_SET_BAUDRATE:I = 0x1e

.field private static final SILABSER_SET_LINE_CTL_REQUEST_CODE:I = 0x3

.field private static final SILABSER_SET_MHS_REQUEST_CODE:I = 0x7

.field private static final UART_DISABLE:I = 0x0

.field private static final UART_ENABLE:I = 0x1

.field private static final USB_WRITE_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field final synthetic this$0:Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;
    .param p2, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "portNumber"    # I

    .line 109
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;

    .line 110
    invoke-direct {p0, p2, p3}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    .line 111
    return-void
.end method

.method private setBaudRate(I)V
    .locals 9
    .param p1, "baudRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    const/4 v0, 0x4

    new-array v6, v0, [B

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v6, v1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, v6, v1

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, v6, v1

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, v6, v1

    .line 242
    .local v6, "data":[B
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0x41

    const/16 v3, 0x1e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/16 v8, 0x1388

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    .line 244
    .local v0, "ret":I
    if-ltz v0, :cond_0

    .line 247
    return-void

    .line 245
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error setting baud rate."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setConfigSingle(II)I
    .locals 8
    .param p1, "request"    # I
    .param p2, "value"    # I

    .line 119
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x41

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1388

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1, v1}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)I

    .line 176
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 179
    nop

    .line 180
    return-void

    .line 178
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 179
    throw v1

    .line 172
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

    .line 295
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

    .line 300
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

    .line 305
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

    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method public getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;

    return-object v0
.end method

.method public bridge synthetic getPortNumber()I
    .locals 1

    .line 61
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

    .line 319
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

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getSerial()Ljava/lang/String;
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 7
    .param p1, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_7

    .line 129
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, "opened":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 134
    .local v2, "usbIface":Landroid/hardware/usb/UsbInterface;
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v4, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "claimInterface "

    if-eqz v3, :cond_0

    .line 135
    :try_start_1
    invoke-static {}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;->access$000()Ljava/lang/String;

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

    .line 137
    :cond_0
    invoke-static {}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;->access$000()Ljava/lang/String;

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

    .line 132
    .end local v2    # "usbIface":Landroid/hardware/usb/UsbInterface;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    .line 142
    .local v1, "dataIface":Landroid/hardware/usb/UsbInterface;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 143
    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v4

    .line 144
    .local v4, "ep":Landroid/hardware/usb/UsbEndpoint;
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 145
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_2

    .line 146
    iput-object v4, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_3

    .line 148
    :cond_2
    iput-object v4, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 142
    .end local v4    # "ep":Landroid/hardware/usb/UsbEndpoint;
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 153
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)I

    .line 154
    const/4 v2, 0x7

    const/16 v4, 0x303

    invoke-direct {p0, v2, v4}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)I

    .line 155
    const/16 v2, 0x180

    invoke-direct {p0, v3, v2}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    const/4 v0, 0x1

    .line 159
    .end local v1    # "dataIface":Landroid/hardware/usb/UsbInterface;
    if-nez v0, :cond_5

    .line 161
    :try_start_2
    invoke-virtual {p0}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    :goto_4
    goto :goto_5

    .line 162
    :catch_0
    move-exception v1

    goto :goto_4

    .line 167
    :cond_5
    :goto_5
    return-void

    .line 159
    :catchall_0
    move-exception v1

    if-nez v0, :cond_6

    .line 161
    :try_start_3
    invoke-virtual {p0}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 164
    goto :goto_6

    .line 162
    :catch_1
    move-exception v2

    .line 166
    :cond_6
    :goto_6
    throw v1

    .line 126
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
    .locals 2
    .param p1, "purgeReadBuffers"    # Z
    .param p2, "purgeWriteBuffers"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x5

    :cond_1
    or-int/2addr v0, v1

    .line 337
    .local v0, "value":I
    if-eqz v0, :cond_2

    .line 338
    const/16 v1, 0x12

    invoke-direct {p0, v1, v0}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)I

    .line 341
    :cond_2
    const/4 v1, 0x1

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

    .line 185
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mReadBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    array-length v1, p1

    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mReadBuffer:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 187
    .local v1, "readAmt":I
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mReadBuffer:[B

    invoke-virtual {v2, v3, v4, v1, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v2

    .line 189
    .local v2, "numBytesRead":I
    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 194
    monitor-exit v0

    return v3

    .line 196
    :cond_0
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mReadBuffer:[B

    invoke-static {v4, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    .end local v1    # "readAmt":I
    monitor-exit v0

    .line 198
    return v2

    .line 197
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

    .line 315
    return-void
.end method

.method public setParameters(IIII)V
    .locals 3
    .param p1, "baudRate"    # I
    .param p2, "dataBits"    # I
    .param p3, "stopBits"    # I
    .param p4, "parity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-direct {p0, p1}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setBaudRate(I)V

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "configDataBits":I
    const/4 v1, 0x5

    if-eq p2, v1, :cond_3

    const/4 v1, 0x6

    if-eq p2, v1, :cond_2

    const/4 v1, 0x7

    if-eq p2, v1, :cond_1

    const/16 v1, 0x8

    if-eq p2, v1, :cond_0

    .line 269
    or-int/lit16 v0, v0, 0x800

    goto :goto_0

    .line 266
    :cond_0
    or-int/lit16 v0, v0, 0x800

    .line 267
    goto :goto_0

    .line 263
    :cond_1
    or-int/lit16 v0, v0, 0x700

    .line 264
    goto :goto_0

    .line 260
    :cond_2
    or-int/lit16 v0, v0, 0x600

    .line 261
    goto :goto_0

    .line 257
    :cond_3
    or-int/lit16 v0, v0, 0x500

    .line 258
    nop

    .line 273
    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p4, v1, :cond_5

    if-eq p4, v2, :cond_4

    goto :goto_1

    .line 278
    :cond_4
    or-int/lit8 v0, v0, 0x20

    goto :goto_1

    .line 275
    :cond_5
    or-int/lit8 v0, v0, 0x10

    .line 276
    nop

    .line 282
    :goto_1
    if-eq p3, v1, :cond_7

    if-eq p3, v2, :cond_6

    goto :goto_2

    .line 287
    :cond_6
    or-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 284
    :cond_7
    or-int/lit8 v0, v0, 0x0

    .line 285
    nop

    .line 290
    :goto_2
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->setConfigSingle(II)I

    .line 291
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

    .line 329
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 61
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

    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, "offset":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    array-length v2, p1

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mWriteBuffer:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 213
    .local v2, "writeLength":I
    if-nez v0, :cond_0

    .line 214
    move-object v3, p1

    .local v3, "writeBuffer":[B
    goto :goto_1

    .line 217
    .end local v3    # "writeBuffer":[B
    :cond_0
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mWriteBuffer:[B

    const/4 v4, 0x0

    invoke-static {p1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mWriteBuffer:[B

    .line 221
    .restart local v3    # "writeBuffer":[B
    :goto_1
    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v5, p0, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v4, v5, v3, v2, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v4

    move v3, v4

    .line 223
    .local v3, "amtWritten":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    if-lez v3, :cond_1

    .line 229
    invoke-static {}, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;->access$000()Ljava/lang/String;

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

    .line 230
    add-int/2addr v0, v3

    .line 231
    .end local v2    # "writeLength":I
    .end local v3    # "amtWritten":I
    goto :goto_0

    .line 225
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

    .line 223
    .end local v2    # "writeLength":I
    .end local v3    # "amtWritten":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 232
    :cond_2
    return v0
.end method
