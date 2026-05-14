.class public Lcom/hoho/android/usbserial/driver/UsbSerialProber;
.super Ljava/lang/Object;
.source "UsbSerialProber.java"


# instance fields
.field private final mProbeTable:Lcom/hoho/android/usbserial/driver/ProbeTable;


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/driver/ProbeTable;)V
    .locals 0
    .param p1, "probeTable"    # Lcom/hoho/android/usbserial/driver/ProbeTable;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->mProbeTable:Lcom/hoho/android/usbserial/driver/ProbeTable;

    .line 41
    return-void
.end method

.method public static getDefaultProbeTable()Lcom/hoho/android/usbserial/driver/ProbeTable;
    .locals 2

    .line 48
    new-instance v0, Lcom/hoho/android/usbserial/driver/ProbeTable;

    invoke-direct {v0}, Lcom/hoho/android/usbserial/driver/ProbeTable;-><init>()V

    .line 49
    .local v0, "probeTable":Lcom/hoho/android/usbserial/driver/ProbeTable;
    const-class v1, Lcom/hoho/android/usbserial/driver/CdcAcmSerialDriver;

    invoke-virtual {v0, v1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)Lcom/hoho/android/usbserial/driver/ProbeTable;

    .line 50
    const-class v1, Lcom/hoho/android/usbserial/driver/Cp21xxSerialDriver;

    invoke-virtual {v0, v1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)Lcom/hoho/android/usbserial/driver/ProbeTable;

    .line 51
    const-class v1, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;

    invoke-virtual {v0, v1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)Lcom/hoho/android/usbserial/driver/ProbeTable;

    .line 52
    const-class v1, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    invoke-virtual {v0, v1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)Lcom/hoho/android/usbserial/driver/ProbeTable;

    .line 53
    const-class v1, Lcom/hoho/android/usbserial/driver/Ch34xSerialDriver;

    invoke-virtual {v0, v1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->addDriver(Ljava/lang/Class;)Lcom/hoho/android/usbserial/driver/ProbeTable;

    .line 54
    return-object v0
.end method

.method public static getDefaultProber()Lcom/hoho/android/usbserial/driver/UsbSerialProber;
    .locals 2

    .line 44
    new-instance v0, Lcom/hoho/android/usbserial/driver/UsbSerialProber;

    invoke-static {}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->getDefaultProbeTable()Lcom/hoho/android/usbserial/driver/ProbeTable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;-><init>(Lcom/hoho/android/usbserial/driver/ProbeTable;)V

    return-object v0
.end method


# virtual methods
.method public findAllDrivers(Landroid/hardware/usb/UsbManager;)Ljava/util/List;
    .locals 4
    .param p1, "usbManager"    # Landroid/hardware/usb/UsbManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialDriver;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/hoho/android/usbserial/driver/UsbSerialDriver;>;"
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 70
    .local v2, "usbDevice":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {p0, v2}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->probeDevice(Landroid/hardware/usb/UsbDevice;)Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    move-result-object v3

    .line 71
    .local v3, "driver":Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    if-eqz v3, :cond_0

    .line 72
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v2    # "usbDevice":Landroid/hardware/usb/UsbDevice;
    .end local v3    # "driver":Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    :cond_0
    goto :goto_0

    .line 75
    :cond_1
    return-object v0
.end method

.method public probeDevice(Landroid/hardware/usb/UsbDevice;)Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .locals 7
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;

    .line 86
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    .line 87
    .local v0, "vendorId":I
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    .line 89
    .local v1, "productId":I
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->mProbeTable:Lcom/hoho/android/usbserial/driver/ProbeTable;

    .line 90
    invoke-virtual {v2, v0, v1}, Lcom/hoho/android/usbserial/driver/ProbeTable;->findDriver(II)Ljava/lang/Class;

    move-result-object v2

    .line 91
    .local v2, "driverClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/hoho/android/usbserial/driver/UsbSerialDriver;>;"
    if-eqz v2, :cond_0

    .line 94
    const/4 v3, 0x1

    :try_start_0
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/hardware/usb/UsbDevice;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 95
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 96
    .local v4, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/hoho/android/usbserial/driver/UsbSerialDriver;>;"
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v4    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/hoho/android/usbserial/driver/UsbSerialDriver;>;"
    .local v3, "driver":Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    nop

    .line 108
    return-object v3

    .line 105
    .end local v3    # "driver":Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    :catch_0
    move-exception v3

    .line 106
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 103
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v3

    .line 104
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 101
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 102
    .local v3, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 99
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v3

    .line 100
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 97
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v3

    .line 98
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 110
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method
