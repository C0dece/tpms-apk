.class abstract Lcom/cz/usbserial/driver/CommonUsbSerialPort;
.super Ljava/lang/Object;
.source "CommonUsbSerialPort.java"

# interfaces
.implements Lcom/cz/usbserial/driver/UsbSerialPort;


# static fields
.field public static final DEFAULT_READ_BUFFER_SIZE:I = 0x4000

.field public static final DEFAULT_WRITE_BUFFER_SIZE:I = 0x4000


# instance fields
.field protected mConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field protected final mDevice:Landroid/hardware/usb/UsbDevice;

.field protected final mPortNumber:I

.field protected mReadBuffer:[B

.field protected final mReadBufferLock:Ljava/lang/Object;

.field protected mWriteBuffer:[B

.field protected final mWriteBufferLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;I)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "portNumber"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mReadBufferLock:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 56
    iput p2, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 58
    const/16 v0, 0x4000

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mReadBuffer:[B

    .line 59
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    .line 60
    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCD()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCTS()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDSR()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDTR()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public getPortNumber()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    return v0
.end method

.method public abstract getRI()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getRTS()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract open(Landroid/hardware/usb/UsbDeviceConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public purgeHwBuffers(ZZ)Z
    .locals 1
    .param p1, "flushReadBuffers"    # Z
    .param p2, "flushWriteBuffers"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract read([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setDTR(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setParameters(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setRTS(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setReadBufferSize(I)V
    .locals 2
    .param p1, "bufferSize"    # I

    .line 101
    iget-object v0, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mReadBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mReadBuffer:[B

    array-length v1, v1

    if-ne p1, v1, :cond_0

    .line 103
    monitor-exit v0

    return-void

    .line 105
    :cond_0
    new-array v1, p1, [B

    iput-object v1, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mReadBuffer:[B

    .line 101
    monitor-exit v0

    .line 107
    return-void

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final setWriteBufferSize(I)V
    .locals 2
    .param p1, "bufferSize"    # I

    .line 117
    iget-object v0, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    array-length v1, v1

    if-ne p1, v1, :cond_0

    .line 119
    monitor-exit v0

    return-void

    .line 121
    :cond_0
    new-array v1, p1, [B

    iput-object v1, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mWriteBuffer:[B

    .line 117
    monitor-exit v0

    .line 123
    return-void

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 66
    iget-object v1, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/cz/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 64
    const-string v1, "<%s device_name=%s device_id=%s port_number=%s>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract write([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
