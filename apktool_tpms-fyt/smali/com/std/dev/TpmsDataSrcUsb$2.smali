.class Lcom/std/dev/TpmsDataSrcUsb$2;
.super Ljava/lang/Object;
.source "TpmsDataSrcUsb.java"

# interfaces
.implements Lcom/hoho/android/usbserial/util/SerialInputOutputManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/std/dev/TpmsDataSrcUsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/std/dev/TpmsDataSrcUsb;


# direct methods
.method constructor <init>(Lcom/std/dev/TpmsDataSrcUsb;)V
    .locals 0
    .param p1, "this$0"    # Lcom/std/dev/TpmsDataSrcUsb;

    .line 311
    iput-object p1, p0, Lcom/std/dev/TpmsDataSrcUsb$2;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewData([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 328
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb$2;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-static {v0}, Lcom/std/dev/TpmsDataSrcUsb;->access$000(Lcom/std/dev/TpmsDataSrcUsb;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usb read onNewData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/hoho/android/usbserial/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    array-length v0, p1

    new-array v0, v0, [B

    .line 331
    .local v0, "recBytes":[B
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    iget-object v1, p0, Lcom/std/dev/TpmsDataSrcUsb$2;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    iget-object v1, v1, Lcom/std/dev/TpmsDataSrcUsb;->BufferFrame:Lcom/tpms/decode/PackBufferFrame;

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/tpms/decode/PackBufferFrame;->addBuffer([BI)Z

    .line 335
    return-void
.end method

.method public onRunError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 315
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb$2;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    invoke-static {v0}, Lcom/std/dev/TpmsDataSrcUsb;->access$000(Lcom/std/dev/TpmsDataSrcUsb;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Runner stopped. \u8bfb\u53d6\u62a5\u9519\uff0c\u53ef\u80fd\u662f\u65ad\u5f00\u4e86"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrcUsb$2;->this$0:Lcom/std/dev/TpmsDataSrcUsb;

    iget-object v0, v0, Lcom/std/dev/TpmsDataSrcUsb;->mMainHander:Landroid/os/Handler;

    new-instance v1, Lcom/std/dev/TpmsDataSrcUsb$2$1;

    invoke-direct {v1, p0}, Lcom/std/dev/TpmsDataSrcUsb$2$1;-><init>(Lcom/std/dev/TpmsDataSrcUsb$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method
