.class public Lcom/cz/usbserial/driver/Cp21xxSerialDriver;
.super Ljava/lang/Object;
.source "Cp21xxSerialDriver.java"

# interfaces
.implements Lcom/cz/usbserial/driver/UsbSerialDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cz/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private final mPort:Lcom/cz/usbserial/driver/UsbSerialPort;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/cz/usbserial/driver/Cp21xxSerialDriver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cz/usbserial/driver/Cp21xxSerialDriver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/cz/usbserial/driver/Cp21xxSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 46
    new-instance v0, Lcom/cz/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/cz/usbserial/driver/Cp21xxSerialDriver$Cp21xxSerialPort;-><init>(Lcom/cz/usbserial/driver/Cp21xxSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    iput-object v0, p0, Lcom/cz/usbserial/driver/Cp21xxSerialDriver;->mPort:Lcom/cz/usbserial/driver/UsbSerialPort;

    .line 47
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/cz/usbserial/driver/Cp21xxSerialDriver;->TAG:Ljava/lang/String;

    return-object v0
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

    .line 354
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 355
    .local v0, "supportedDevices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/16 v1, 0x10c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 356
    nop

    .line 357
    nop

    .line 355
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    return-object v0

    nop

    :array_0
    .array-data 4
        0xea60
        0xea70
        0xea71
        0xea80
    .end array-data
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/cz/usbserial/driver/Cp21xxSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

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

    .line 56
    iget-object v0, p0, Lcom/cz/usbserial/driver/Cp21xxSerialDriver;->mPort:Lcom/cz/usbserial/driver/UsbSerialPort;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
