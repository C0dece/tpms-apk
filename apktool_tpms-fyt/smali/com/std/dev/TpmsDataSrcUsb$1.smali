.class Lcom/std/dev/TpmsDataSrcUsb$1;
.super Landroid/os/AsyncTask;
.source "TpmsDataSrcUsb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/std/dev/TpmsDataSrcUsb;->onStartUsbConnent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/hoho/android/usbserial/driver/UsbSerialPort;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/std/dev/TpmsDataSrcUsb;


# direct methods
.method constructor <init>(Lcom/std/dev/TpmsDataSrcUsb;)V
    .locals 0
    .param p1, "this$0"    # Lcom/std/dev/TpmsDataSrcUsb;

    .line 150
    iput-object p1, p0, Lcom/std/dev/TpmsDataSrcUsb$1;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 150
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/std/dev/TpmsDataSrcUsb$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb$1;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-static {v0}, Lcom/std/dev/TpmsDataSrcUsb;->access$000(Lcom/std/dev/TpmsDataSrcUsb;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Refreshing device list \u5237\u65b0\u8bbe\u5907\u5217\u8868 ..."

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb$1;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/std/dev/TpmsDataSrcUsb;->access$100(Lcom/std/dev/TpmsDataSrcUsb;J)V

    .line 157
    invoke-static {}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->getDefaultProber()Lcom/hoho/android/usbserial/driver/UsbSerialProber;

    move-result-object v0

    iget-object v1, p0, Lcom/std/dev/TpmsDataSrcUsb$1;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-static {v1}, Lcom/std/dev/TpmsDataSrcUsb;->access$200(Lcom/std/dev/TpmsDataSrcUsb;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hoho/android/usbserial/driver/UsbSerialProber;->findAllDrivers(Landroid/hardware/usb/UsbManager;)Ljava/util/List;

    move-result-object v0

    .line 158
    .local v0, "drivers":Ljava/util/List;, "Ljava/util/List<Lcom/hoho/android/usbserial/driver/UsbSerialDriver;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/hoho/android/usbserial/driver/UsbSerialPort;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    .line 160
    .local v3, "driver":Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    invoke-interface {v3}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getPorts()Ljava/util/List;

    move-result-object v4

    .line 161
    .local v4, "ports":Ljava/util/List;, "Ljava/util/List<Lcom/hoho/android/usbserial/driver/UsbSerialPort;>;"
    iget-object v5, p0, Lcom/std/dev/TpmsDataSrcUsb$1;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-static {v5}, Lcom/std/dev/TpmsDataSrcUsb;->access$000(Lcom/std/dev/TpmsDataSrcUsb;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v8, :cond_0

    const-string v8, ""

    goto :goto_1

    :cond_0
    const-string v8, "s"

    :goto_1
    aput-object v8, v6, v7

    const-string v7, "+ %s: %s port%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tpms/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    .end local v3    # "driver":Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .end local v4    # "ports":Ljava/util/List;, "Ljava/util/List<Lcom/hoho/android/usbserial/driver/UsbSerialPort;>;"
    goto :goto_0

    .line 164
    :cond_1
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 150
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/std/dev/TpmsDataSrcUsb$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort;",
            ">;)V"
        }
    .end annotation

    .line 169
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/hoho/android/usbserial/driver/UsbSerialPort;>;"
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb$1;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-static {v0}, Lcom/std/dev/TpmsDataSrcUsb;->access$300(Lcom/std/dev/TpmsDataSrcUsb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb$1;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-static {v0}, Lcom/std/dev/TpmsDataSrcUsb;->access$300(Lcom/std/dev/TpmsDataSrcUsb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb$1;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-static {v0}, Lcom/std/dev/TpmsDataSrcUsb;->access$000(Lcom/std/dev/TpmsDataSrcUsb;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done refreshing, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/std/dev/TpmsDataSrcUsb$1;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-static {v2}, Lcom/std/dev/TpmsDataSrcUsb;->access$300(Lcom/std/dev/TpmsDataSrcUsb;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " entries found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb$1;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-static {v0}, Lcom/std/dev/TpmsDataSrcUsb;->access$300(Lcom/std/dev/TpmsDataSrcUsb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/tpms/modle/DeviceOpenEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tpms/modle/DeviceOpenEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 176
    :cond_0
    const/4 v0, 0x0

    .line 178
    .local v0, "port":Lcom/hoho/android/usbserial/driver/UsbSerialPort;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/std/dev/TpmsDataSrcUsb$1;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-static {v2}, Lcom/std/dev/TpmsDataSrcUsb;->access$300(Lcom/std/dev/TpmsDataSrcUsb;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 179
    iget-object v2, p0, Lcom/std/dev/TpmsDataSrcUsb$1;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-static {v2}, Lcom/std/dev/TpmsDataSrcUsb;->access$300(Lcom/std/dev/TpmsDataSrcUsb;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort;

    .line 187
    if-eqz v0, :cond_3

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    move-result-object v3

    invoke-interface {v3}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-interface {v0}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    move-result-object v4

    invoke-interface {v4}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    const-string v4, "1027_24577"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/std/dev/TpmsDataSrcUsb$1;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-static {v2, v0}, Lcom/std/dev/TpmsDataSrcUsb;->access$400(Lcom/std/dev/TpmsDataSrcUsb;Lcom/hoho/android/usbserial/driver/UsbSerialPort;)V

    .line 191
    iget-object v2, p0, Lcom/std/dev/TpmsDataSrcUsb$1;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-static {v2}, Lcom/std/dev/TpmsDataSrcUsb;->access$000(Lcom/std/dev/TpmsDataSrcUsb;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onPostExecute 1027_24577"

    invoke-static {v2, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    move-result-object v4

    invoke-interface {v4}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-interface {v0}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    move-result-object v4

    invoke-interface {v4}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    const-string v4, "1027_24597"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    iget-object v2, p0, Lcom/std/dev/TpmsDataSrcUsb$1;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-static {v2, v0}, Lcom/std/dev/TpmsDataSrcUsb;->access$400(Lcom/std/dev/TpmsDataSrcUsb;Lcom/hoho/android/usbserial/driver/UsbSerialPort;)V

    .line 196
    iget-object v2, p0, Lcom/std/dev/TpmsDataSrcUsb$1;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-static {v2}, Lcom/std/dev/TpmsDataSrcUsb;->access$000(Lcom/std/dev/TpmsDataSrcUsb;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onPostExecute 1027_24597"

    invoke-static {v2, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    move-result-object v4

    invoke-interface {v4}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-interface {v0}, Lcom/hoho/android/usbserial/driver/UsbSerialPort;->getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;

    move-result-object v3

    invoke-interface {v3}, Lcom/hoho/android/usbserial/driver/UsbSerialDriver;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    const-string v3, "6790_29987"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    iget-object v2, p0, Lcom/std/dev/TpmsDataSrcUsb$1;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-static {v2, v0}, Lcom/std/dev/TpmsDataSrcUsb;->access$400(Lcom/std/dev/TpmsDataSrcUsb;Lcom/hoho/android/usbserial/driver/UsbSerialPort;)V

    .line 201
    iget-object v2, p0, Lcom/std/dev/TpmsDataSrcUsb$1;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-static {v2}, Lcom/std/dev/TpmsDataSrcUsb;->access$000(Lcom/std/dev/TpmsDataSrcUsb;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onPostExecute 6790_29987"

    invoke-static {v2, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 207
    .end local v1    # "i":I
    :cond_4
    return-void
.end method
