.class public Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;
.super Ljava/lang/Object;
.source "Ch34xSerialDriver.java"

# interfaces
.implements Lcom/hoho/android/usbserial/driver/UsbSerialDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private final mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 53
    new-instance v0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver$Ch340SerialPort;-><init>(Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    .line 54
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;->TAG:Ljava/lang/String;

    return-object v0
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

    .line 358
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 359
    .local v0, "supportedDevices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/16 v1, 0x1a86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x7523

    aput v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    return-object v0
.end method


# virtual methods
.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;->mDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public getPorts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
