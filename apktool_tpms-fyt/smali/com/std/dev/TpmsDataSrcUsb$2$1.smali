.class Lcom/std/dev/TpmsDataSrcUsb$2$1;
.super Ljava/lang/Object;
.source "TpmsDataSrcUsb.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/std/dev/TpmsDataSrcUsb$2;->onRunError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/std/dev/TpmsDataSrcUsb$2;


# direct methods
.method constructor <init>(Lcom/std/dev/TpmsDataSrcUsb$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/std/dev/TpmsDataSrcUsb$2;

    .line 316
    iput-object p1, p0, Lcom/std/dev/TpmsDataSrcUsb$2$1;->this$1:Lcom/std/dev/TpmsDataSrcUsb$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 319
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/tpms/modle/DeviceOpenEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tpms/modle/DeviceOpenEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 320
    return-void
.end method
