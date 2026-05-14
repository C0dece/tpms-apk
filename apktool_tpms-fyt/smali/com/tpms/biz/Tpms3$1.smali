.class Lcom/tpms/biz/Tpms3$1;
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

    .line 129
    iput-object p1, p0, Lcom/tpms/biz/Tpms3$1;->this$0:Lcom/tpms/biz/Tpms3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 135
    .local v0, "CurTime":J
    iget-object v2, p0, Lcom/tpms/biz/Tpms3$1;->this$0:Lcom/tpms/biz/Tpms3;

    iget-wide v2, v2, Lcom/tpms/biz/Tpms3;->startDataTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 136
    .local v2, "datTime":J
    iget-object v4, p0, Lcom/tpms/biz/Tpms3$1;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v4, v4, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDataCheckTimer startDataTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/tpms/biz/Tpms3$1;->this$0:Lcom/tpms/biz/Tpms3;

    iget-wide v6, v6, Lcom/tpms/biz/Tpms3;->startDataTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ";datTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v4, p0, Lcom/tpms/biz/Tpms3$1;->this$0:Lcom/tpms/biz/Tpms3;

    iget-wide v4, v4, Lcom/tpms/biz/Tpms3;->startDataTime:J

    const-wide/16 v6, 0xbb8

    const-wide/16 v8, -0x1

    cmp-long v10, v4, v8

    if-eqz v10, :cond_0

    const-wide/16 v4, 0x78

    cmp-long v10, v2, v4

    if-lez v10, :cond_0

    .line 140
    iget-object v4, p0, Lcom/tpms/biz/Tpms3$1;->this$0:Lcom/tpms/biz/Tpms3;

    invoke-static {v4}, Lcom/tpms/biz/Tpms3;->access$000(Lcom/tpms/biz/Tpms3;)V

    .line 141
    iget-object v4, p0, Lcom/tpms/biz/Tpms3$1;->this$0:Lcom/tpms/biz/Tpms3;

    invoke-virtual {v4}, Lcom/tpms/biz/Tpms3;->showErrorNotifMsg()V

    .line 143
    iget-object v4, p0, Lcom/tpms/biz/Tpms3$1;->this$0:Lcom/tpms/biz/Tpms3;

    iput-wide v8, v4, Lcom/tpms/biz/Tpms3;->startDataTime:J

    .line 144
    iget-object v4, p0, Lcom/tpms/biz/Tpms3$1;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v4, v4, Lcom/tpms/biz/Tpms3;->mDataCheckHander:Landroid/os/Handler;

    iget-object v5, p0, Lcom/tpms/biz/Tpms3$1;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v5, v5, Lcom/tpms/biz/Tpms3;->mDataCheckTimer:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 146
    :cond_0
    iget-object v4, p0, Lcom/tpms/biz/Tpms3$1;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v4, v4, Lcom/tpms/biz/Tpms3;->mDataCheckHander:Landroid/os/Handler;

    iget-object v5, p0, Lcom/tpms/biz/Tpms3$1;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v5, v5, Lcom/tpms/biz/Tpms3;->mDataCheckTimer:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    :goto_0
    return-void
.end method
