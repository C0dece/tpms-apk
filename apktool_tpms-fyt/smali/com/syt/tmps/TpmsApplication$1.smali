.class Lcom/syt/tmps/TpmsApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "TpmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syt/tmps/TpmsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syt/tmps/TpmsApplication;


# direct methods
.method constructor <init>(Lcom/syt/tmps/TpmsApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/syt/tmps/TpmsApplication;

    .line 174
    iput-object p1, p0, Lcom/syt/tmps/TpmsApplication$1;->this$0:Lcom/syt/tmps/TpmsApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    nop

    .line 182
    const-string v1, "device"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 183
    .local v1, "device":Landroid/hardware/usb/UsbDevice;
    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v3

    .line 187
    .local v3, "did":I
    iget-object v4, p0, Lcom/syt/tmps/TpmsApplication$1;->this$0:Lcom/syt/tmps/TpmsApplication;

    iget-object v4, v4, Lcom/syt/tmps/TpmsApplication;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==================================name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";did:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v4, p0, Lcom/syt/tmps/TpmsApplication$1;->this$0:Lcom/syt/tmps/TpmsApplication;

    iget-object v4, v4, Lcom/syt/tmps/TpmsApplication;->datasrc:Lcom/std/dev/TpmsDataSrc;

    if-nez v4, :cond_0

    .line 190
    iget-object v4, p0, Lcom/syt/tmps/TpmsApplication$1;->this$0:Lcom/syt/tmps/TpmsApplication;

    iget-object v4, v4, Lcom/syt/tmps/TpmsApplication;->TAG:Ljava/lang/String;

    const-string v5, "datasrc==null"

    invoke-static {v4, v5}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void

    .line 194
    :cond_0
    iget-object v4, p0, Lcom/syt/tmps/TpmsApplication$1;->this$0:Lcom/syt/tmps/TpmsApplication;

    iget-object v4, v4, Lcom/syt/tmps/TpmsApplication;->datasrc:Lcom/std/dev/TpmsDataSrc;

    invoke-virtual {v4}, Lcom/std/dev/TpmsDataSrc;->getDevName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 195
    iget-object v4, p0, Lcom/syt/tmps/TpmsApplication$1;->this$0:Lcom/syt/tmps/TpmsApplication;

    iget-object v4, v4, Lcom/syt/tmps/TpmsApplication;->TAG:Ljava/lang/String;

    const-string v5, "kill safe"

    invoke-static {v4, v5}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 197
    .local v4, "id":I
    nop

    .line 201
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tpms/biz/Tpms3;->stopTpms()V

    goto :goto_0

    .line 207
    .end local v1    # "device":Landroid/hardware/usb/UsbDevice;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "did":I
    .end local v4    # "id":I
    :cond_1
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/syt/tmps/TpmsApplication$1;->this$0:Lcom/syt/tmps/TpmsApplication;

    iget-object v1, v1, Lcom/syt/tmps/TpmsApplication;->TAG:Ljava/lang/String;

    const-string v2, " ACTION_USB_ACCESSORY_ATTACHED usb \u63d2\u5165"

    invoke-static {v1, v2}, Lcom/tpms/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms3;->startTpms()V

    goto :goto_1

    .line 207
    :cond_2
    :goto_0
    nop

    .line 212
    :goto_1
    return-void
.end method
