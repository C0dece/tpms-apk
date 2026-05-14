.class public interface abstract Lcom/cz/usbserial/driver/UsbSerialDriver;
.super Ljava/lang/Object;
.source "UsbSerialDriver.java"


# virtual methods
.method public abstract getDevice()Landroid/hardware/usb/UsbDevice;
.end method

.method public abstract getPorts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cz/usbserial/driver/UsbSerialPort;",
            ">;"
        }
    .end annotation
.end method
