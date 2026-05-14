.class public Lcom/std/dev/TpmsDataSrcUsb;
.super Lcom/std/dev/TpmsDataSrc;
.source "TpmsDataSrcUsb.java"


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "com.android.cz.USB_PERMISSION"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field mIsStart:Z

.field private final mListener:Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;

.field mMainHander:Landroid/os/Handler;

.field mPermissionIntent:Landroid/app/PendingIntent;

.field mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

.field mSerialIoManager:Lcom/hoho/android/usbserial/util/SerialInputOutputManager;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "app"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0, p1}, Lcom/std/dev/TpmsDataSrc;-><init>(Landroid/content/Context;)V

    .line 61
    const-string v0, "TpmsDataSrcUsb"

    iput-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 64
    iput-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mEntries:Ljava/util/List;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mIsStart:Z

    .line 213
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 311
    new-instance v0, Lcom/std/dev/TpmsDataSrcUsb$2;

    invoke-direct {v0, p0}, Lcom/std/dev/TpmsDataSrcUsb$2;-><init>(Lcom/std/dev/TpmsDataSrcUsb;)V

    iput-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mListener:Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;

    .line 338
    new-instance v0, Lcom/std/dev/TpmsDataSrcUsb$3;

    invoke-direct {v0, p0}, Lcom/std/dev/TpmsDataSrcUsb$3;-><init>(Lcom/std/dev/TpmsDataSrcUsb;)V

    iput-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mMainHander:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/std/dev/TpmsDataSrcUsb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/std/dev/TpmsDataSrcUsb;

    .line 58
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/std/dev/TpmsDataSrcUsb;J)V
    .locals 0
    .param p0, "x0"    # Lcom/std/dev/TpmsDataSrcUsb;
    .param p1, "x1"    # J

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/std/dev/TpmsDataSrcUsb;->sleep(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/std/dev/TpmsDataSrcUsb;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/std/dev/TpmsDataSrcUsb;

    .line 58
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/std/dev/TpmsDataSrcUsb;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/std/dev/TpmsDataSrcUsb;

    .line 58
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/std/dev/TpmsDataSrcUsb;Lcom/hoho/android/usbserial/driver/UsbSerialPort;)V
    .locals 0
    .param p0, "x0"    # Lcom/std/dev/TpmsDataSrcUsb;
    .param p1, "x1"    # Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    .line 58
    invoke-direct {p0, p1}, Lcom/std/dev/TpmsDataSrcUsb;->openUsbPort(Lcom/hoho/android/usbserial/driver/UsbSerialPort;)V

    return-void
.end method

.method static synthetic access$500(Lcom/std/dev/TpmsDataSrcUsb;)V
    .locals 0
    .param p0, "x0"    # Lcom/std/dev/TpmsDataSrcUsb;

    .line 58
    invoke-direct {p0}, Lcom/std/dev/TpmsDataSrcUsb;->onStartUsbConnent()V

    return-void
.end method

.method private onDeviceStateChange()V
    .locals 0

    .line 300
    invoke-direct {p0}, Lcom/std/dev/TpmsDataSrcUsb;->stopIoManager()V

    .line 301
    invoke-direct {p0}, Lcom/std/dev/TpmsDataSrcUsb;->startIoManager()V

    .line 302
    return-void
.end method

.method private onStartUsbConnent()V
    .locals 4

    .line 150
    new-instance v0, Lcom/std/dev/TpmsDataSrcUsb$1;

    invoke-direct {v0, p0}, Lcom/std/dev/TpmsDataSrcUsb$1;-><init>(Lcom/std/dev/TpmsDataSrcUsb;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Void;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 209
    invoke-virtual {v0, v1}, Lcom/std/dev/TpmsDataSrcUsb$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 211
    return-void
.end method

.method private openUsbPort(Lcom/hoho/android/usbserial/driver/UsbSerialPort;)V
    .locals 8
    .param p1, "Port"    # Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, "mInterface":Landroid/hardware/usb/UsbInterface;
    iput-object p1, p0, Lcom/std/dev/TpmsDataSrcUsb;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    .line 238
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 239
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Lcom/tpms/modle/DeviceOpenEvent;

    invoke-direct {v3, v1}, Lcom/tpms/modle/DeviceOpenEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 240
    return-void

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/std/dev/TpmsDataSrcUsb;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interfacecount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/std/dev/TpmsDataSrcUsb;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-interface {v4}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    move-result-object v4

    invoke-interface {v4}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/std/dev/TpmsDataSrcUsb;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-interface {v3}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    move-result-object v3

    invoke-interface {v3}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 249
    iget-object v3, p0, Lcom/std/dev/TpmsDataSrcUsb;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-interface {v3}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    move-result-object v3

    invoke-interface {v3}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    .line 250
    .local v3, "usbInterface":Landroid/hardware/usb/UsbInterface;
    move-object v0, v3

    .line 254
    .end local v2    # "i":I
    .end local v3    # "usbInterface":Landroid/hardware/usb/UsbInterface;
    :cond_1
    if-nez v0, :cond_2

    .line 255
    iget-object v2, p0, Lcom/std/dev/TpmsDataSrcUsb;->TAG:Ljava/lang/String;

    const-string v3, "USB device NO  Interface"

    invoke-static {v2, v3}, Lcom/tpms/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Lcom/tpms/modle/DeviceOpenEvent;

    invoke-direct {v3, v1}, Lcom/tpms/modle/DeviceOpenEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 258
    return-void

    .line 261
    :cond_2
    iget-object v2, p0, Lcom/std/dev/TpmsDataSrcUsb;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-interface {v2}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    move-result-object v2

    invoke-interface {v2}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v2

    .line 262
    .local v2, "dev":Landroid/hardware/usb/UsbDevice;
    invoke-direct {p0, v2}, Lcom/std/dev/TpmsDataSrcUsb;->sysSetPerMission(Landroid/hardware/usb/UsbDevice;)Z

    .line 264
    iget-object v3, p0, Lcom/std/dev/TpmsDataSrcUsb;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, v2}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 265
    iget-object v3, p0, Lcom/std/dev/TpmsDataSrcUsb;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v4, p0, Lcom/std/dev/TpmsDataSrcUsb;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-interface {v4}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    move-result-object v4

    invoke-interface {v4}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v3

    .line 266
    .local v3, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    if-nez v3, :cond_3

    .line 267
    iget-object v4, p0, Lcom/std/dev/TpmsDataSrcUsb;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error openDevice:  connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tpms/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    new-instance v5, Lcom/tpms/modle/DeviceOpenEvent;

    invoke-direct {v5, v1}, Lcom/tpms/modle/DeviceOpenEvent;-><init>(Z)V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 269
    return-void

    .line 273
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/std/dev/TpmsDataSrcUsb;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-interface {v4, v3}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->open(Landroid/hardware/usb/UsbDeviceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 278
    nop

    .line 281
    :try_start_1
    iget-object v4, p0, Lcom/std/dev/TpmsDataSrcUsb;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    const/16 v5, 0x4b00

    const/16 v6, 0x8

    const/4 v7, 0x1

    invoke-interface {v4, v5, v6, v7, v1}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->setParameters(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    nop

    .line 288
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v4, Lcom/tpms/modle/DeviceOpenEvent;

    invoke-direct {v4, v7}, Lcom/tpms/modle/DeviceOpenEvent;-><init>(Z)V

    invoke-virtual {v1, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 289
    iget-object v1, p0, Lcom/std/dev/TpmsDataSrcUsb;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "port name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/std/dev/TpmsDataSrcUsb;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-direct {p0}, Lcom/std/dev/TpmsDataSrcUsb;->onDeviceStateChange()V

    .line 292
    .end local v3    # "connection":Landroid/hardware/usb/UsbDeviceConnection;
    goto :goto_0

    .line 282
    .restart local v3    # "connection":Landroid/hardware/usb/UsbDeviceConnection;
    :catch_0
    move-exception v4

    .line 283
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/std/dev/TpmsDataSrcUsb;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error setting up device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tpms/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v5

    new-instance v6, Lcom/tpms/modle/DeviceOpenEvent;

    invoke-direct {v6, v1}, Lcom/tpms/modle/DeviceOpenEvent;-><init>(Z)V

    invoke-virtual {v5, v6}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 285
    return-void

    .line 274
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 275
    .local v4, "e2":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/std/dev/TpmsDataSrcUsb;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " usb open device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tpms/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v5

    new-instance v6, Lcom/tpms/modle/DeviceOpenEvent;

    invoke-direct {v6, v1}, Lcom/tpms/modle/DeviceOpenEvent;-><init>(Z)V

    invoke-virtual {v5, v6}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 277
    return-void

    .line 293
    .end local v3    # "connection":Landroid/hardware/usb/UsbDeviceConnection;
    .end local v4    # "e2":Ljava/lang/Exception;
    :cond_4
    iget-object v1, p0, Lcom/std/dev/TpmsDataSrcUsb;->TAG:Ljava/lang/String;

    const-string v3, "permission denied for device else"

    invoke-static {v1, v3}, Lcom/tpms/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/std/dev/TpmsDataSrcUsb;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/std/dev/TpmsDataSrcUsb;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-interface {v3}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    move-result-object v3

    invoke-interface {v3}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/std/dev/TpmsDataSrcUsb;->mPermissionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3, v4}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 297
    :goto_0
    return-void
.end method

.method private sleep(J)V
    .locals 2
    .param p1, "ms"    # J

    .line 306
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 309
    :goto_0
    return-void
.end method

.method private startIoManager()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->TAG:Ljava/lang/String;

    const-string v1, "Starting io manager .."

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v0, Lcom/hoho/android/usbserial/util/SerialInputOutputManager;

    iget-object v1, p0, Lcom/std/dev/TpmsDataSrcUsb;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    iget-object v2, p0, Lcom/std/dev/TpmsDataSrcUsb;->mListener:Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;

    invoke-direct {v0, v1, v2}, Lcom/hoho/android/usbserial/util/SerialInputOutputManager;-><init>(Lcom/hoho/android/usbserial/driver/UsbSerialPort;Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;)V

    iput-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mSerialIoManager:Lcom/hoho/android/usbserial/util/SerialInputOutputManager;

    .line 219
    iget-object v1, p0, Lcom/std/dev/TpmsDataSrcUsb;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 221
    :cond_0
    return-void
.end method

.method private startReadThread()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    if-nez v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/std/dev/TpmsDataSrcUsb;->onStartUsbConnent()V

    .line 144
    :cond_0
    return-void
.end method

.method private stopIoManager()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mSerialIoManager:Lcom/hoho/android/usbserial/util/SerialInputOutputManager;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->TAG:Ljava/lang/String;

    const-string v1, "Stopping io manager .."

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mSerialIoManager:Lcom/hoho/android/usbserial/util/SerialInputOutputManager;

    invoke-virtual {v0}, Lcom/hoho/android/usbserial/util/SerialInputOutputManager;->stop()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mSerialIoManager:Lcom/hoho/android/usbserial/util/SerialInputOutputManager;

    .line 229
    :cond_0
    return-void
.end method

.method private sysSetPerMission(Landroid/hardware/usb/UsbDevice;)Z
    .locals 2
    .param p1, "dev"    # Landroid/hardware/usb/UsbDevice;

    .line 388
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/std/dev/TpmsDataSrcUsb;->sleep(J)V

    .line 390
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getDevName()Ljava/lang/String;
    .locals 2

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    invoke-interface {v0}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    move-result-object v0

    invoke-interface {v0}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    return-object v1
.end method

.method public init()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->theapp:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mEntries:Ljava/util/List;

    .line 85
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->theapp:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.cz.USB_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mPermissionIntent:Landroid/app/PendingIntent;

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "filter1":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/std/dev/TpmsDataSrcUsb;->theapp:Landroid/content/Context;

    iget-object v2, p0, Lcom/std/dev/TpmsDataSrcUsb;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public onEventMainThread(Lcom/tpms/modle/DeviceOpenEvent;)V
    .locals 1
    .param p1, "open"    # Lcom/tpms/modle/DeviceOpenEvent;

    .line 366
    iget-boolean v0, p1, Lcom/tpms/modle/DeviceOpenEvent;->mOpen:Z

    if-nez v0, :cond_0

    .line 367
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->stopTpms()V

    .line 371
    :cond_0
    return-void
.end method

.method public setBufferFrame(Lcom/tpms/decode/PackBufferFrame;)V
    .locals 0
    .param p1, "frame"    # Lcom/tpms/decode/PackBufferFrame;

    .line 94
    iput-object p1, p0, Lcom/std/dev/TpmsDataSrcUsb;->BufferFrame:Lcom/tpms/decode/PackBufferFrame;

    .line 95
    return-void
.end method

.method public start()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start mIsStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/std/dev/TpmsDataSrcUsb;->mIsStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-boolean v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mIsStart:Z

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/std/dev/TpmsDataSrcUsb;->startReadThread()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mIsStart:Z

    .line 117
    return-void
.end method

.method public stop()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop mIsStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/std/dev/TpmsDataSrcUsb;->mIsStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-boolean v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mIsStart:Z

    if-nez v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/std/dev/TpmsDataSrcUsb;->stopIoManager()V

    .line 128
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    if-eqz v0, :cond_1

    .line 130
    :try_start_0
    invoke-interface {v0}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mPort:Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    .line 137
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mIsStart:Z

    .line 138
    return-void
.end method

.method public writeData([B)V
    .locals 3
    .param p1, "databuf"    # [B

    .line 98
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->mSerialIoManager:Lcom/hoho/android/usbserial/util/SerialInputOutputManager;

    if-eqz v0, :cond_0

    .line 100
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/hoho/android/usbserial/util/SerialInputOutputManager;->writeAsync([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " usb writeAsync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/hoho/android/usbserial/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb;->TAG:Ljava/lang/String;

    const-string v1, " usb writeAsync mSerialIoManager =null "

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_1
    return-void
.end method
