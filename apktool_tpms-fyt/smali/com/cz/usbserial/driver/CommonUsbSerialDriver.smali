.class abstract Lcom/cz/usbserial/driver/CommonUsbSerialDriver;
.super Ljava/lang/Object;
.source "CommonUsbSerialDriver.java"

# interfaces
.implements Lcom/cz/usbserial/driver/UsbSerialDriver;


# static fields
.field public static final DEFAULT_READ_BUFFER_SIZE:I = 0x4000

.field public static final DEFAULT_WRITE_BUFFER_SIZE:I = 0x4000


# instance fields
.field protected final mConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field protected final mDevice:Landroid/hardware/usb/UsbDevice;

.field protected mReadBuffer:[B

.field protected final mReadBufferLock:Ljava/lang/Object;

.field protected mWriteBuffer:[B

.field protected final mWriteBufferLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cz/usbserial/driver/CommonUsbSerialDriver;->mReadBufferLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cz/usbserial/driver/CommonUsbSerialDriver;->mWriteBufferLock:Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Lcom/cz/usbserial/driver/CommonUsbSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 53
    iput-object p2, p0, Lcom/cz/usbserial/driver/CommonUsbSerialDriver;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 55
    const/16 v0, 0x4000

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/cz/usbserial/driver/CommonUsbSerialDriver;->mReadBuffer:[B

    .line 56
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/cz/usbserial/driver/CommonUsbSerialDriver;->mWriteBuffer:[B

    .line 57
    return-void
.end method


# virtual methods
.method public final getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/cz/usbserial/driver/CommonUsbSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public final setReadBufferSize(I)V
    .locals 2
    .param p1, "bufferSize"    # I

    .line 76
    iget-object v0, p0, Lcom/cz/usbserial/driver/CommonUsbSerialDriver;->mReadBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/cz/usbserial/driver/CommonUsbSerialDriver;->mReadBuffer:[B

    array-length v1, v1

    if-ne p1, v1, :cond_0

    .line 78
    monitor-exit v0

    return-void

    .line 80
    :cond_0
    new-array v1, p1, [B

    iput-object v1, p0, Lcom/cz/usbserial/driver/CommonUsbSerialDriver;->mReadBuffer:[B

    .line 76
    monitor-exit v0

    .line 82
    return-void

    .line 76
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

    .line 92
    iget-object v0, p0, Lcom/cz/usbserial/driver/CommonUsbSerialDriver;->mWriteBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/cz/usbserial/driver/CommonUsbSerialDriver;->mWriteBuffer:[B

    array-length v1, v1

    if-ne p1, v1, :cond_0

    .line 94
    monitor-exit v0

    return-void

    .line 96
    :cond_0
    new-array v1, p1, [B

    iput-object v1, p0, Lcom/cz/usbserial/driver/CommonUsbSerialDriver;->mWriteBuffer:[B

    .line 92
    monitor-exit v0

    .line 98
    return-void

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
