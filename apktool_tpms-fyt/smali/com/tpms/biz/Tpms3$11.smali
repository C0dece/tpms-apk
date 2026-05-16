.class Lcom/tpms/biz/Tpms3$11;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "Tpms3.java"

# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tpms/biz/Tpms3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/biz/Tpms3;


# direct methods
.method constructor <init>(Lcom/tpms/biz/Tpms3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/biz/Tpms3;

    iput-object p1, p0, Lcom/tpms/biz/Tpms3$11;->this$0:Lcom/tpms/biz/Tpms3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tpms/biz/Tpms3$11;->this$0:Lcom/tpms/biz/Tpms3;

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->isAllTiresOk()Z

    move-result v1

    if-eqz v1, :retry

    return-void

    :retry
    iget v1, v0, Lcom/tpms/biz/Tpms3;->mRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tpms/biz/Tpms3;->mRetryCount:I

    const/16 v2, 0x14

    if-gt v1, v2, :give_up

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms;->stopTpms()V

    iget-object v1, v0, Lcom/tpms/biz/Tpms;->datasrc:Lcom/std/dev/TpmsDataSrc;

    invoke-virtual {v1}, Lcom/std/dev/TpmsDataSrc;->start()V

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms;->initShakeHand()V

    iget-object v1, v0, Lcom/tpms/biz/Tpms;->mHeader:Landroid/os/Handler;

    iget-object v2, v0, Lcom/tpms/biz/Tpms3;->mRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :give_up
    return-void
.end method
