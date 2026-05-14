.class Lcom/tpms/biz/Tpms3$9;
.super Ljava/lang/Object;
.source "Tpms3.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1062
    iput-object p1, p0, Lcom/tpms/biz/Tpms3$9;->this$0:Lcom/tpms/biz/Tpms3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1067
    iget-object v0, p0, Lcom/tpms/biz/Tpms3$9;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v0, v0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->SendHeartbeat()V

    .line 1069
    iget-object v0, p0, Lcom/tpms/biz/Tpms3$9;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v0, v0, Lcom/tpms/biz/Tpms3;->mHeader:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tpms/biz/Tpms3$9;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v1, v1, Lcom/tpms/biz/Tpms3;->mHeartbeat:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1070
    return-void
.end method
