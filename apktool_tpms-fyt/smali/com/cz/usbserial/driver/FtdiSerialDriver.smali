.class public Lcom/cz/usbserial/driver/FtdiSerialDriver;
.super Ljava/lang/Object;
.source "FtdiSerialDriver.java"

# interfaces
.implements Lcom/cz/usbserial/driver/UsbSerialDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;,
        Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;
    }
.end annotation


# instance fields
.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private final mPort:Lcom/cz/usbserial/driver/UsbSerialPort;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 112
    new-instance v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/cz/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;-><init>(Lcom/cz/usbserial/driver/FtdiSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    iput-object v0, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver;->mPort:Lcom/cz/usbserial/driver/UsbSerialPort;

    .line 113
    return-void
.end method

.method public static getSupportedDevices()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .line 611
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 612
    .local v0, "supportedDevices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/16 v1, 0x403

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 613
    nop

    .line 612
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    return-object v0

    :array_0
    .array-data 4
        0x6001
        0x6015
    .end array-data
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public getPorts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cz/usbserial/driver/UsbSerialPort;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/cz/usbserial/driver/FtdiSerialDriver;->mPort:Lcom/cz/usbserial/driver/UsbSerialPort;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
