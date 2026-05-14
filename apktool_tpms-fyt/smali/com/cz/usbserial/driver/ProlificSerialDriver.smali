.class public Lcom/cz/usbserial/driver/ProlificSerialDriver;
.super Ljava/lang/Object;
.source "ProlificSerialDriver.java"

# interfaces
.implements Lcom/cz/usbserial/driver/UsbSerialDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private final mPort:Lcom/cz/usbserial/driver/UsbSerialPort;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-class v0, Lcom/cz/usbserial/driver/ProlificSerialDriver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver;->TAG:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 53
    new-instance v0, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/cz/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;-><init>(Lcom/cz/usbserial/driver/ProlificSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    iput-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver;->mPort:Lcom/cz/usbserial/driver/UsbSerialPort;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/cz/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static getSupportedDevices()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .line 568
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 569
    .local v0, "supportedDevices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/16 v1, 0x67b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 570
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x2303

    aput v4, v2, v3

    .line 569
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    return-object v0
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

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

    .line 58
    iget-object v0, p0, Lcom/cz/usbserial/driver/ProlificSerialDriver;->mPort:Lcom/cz/usbserial/driver/UsbSerialPort;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
