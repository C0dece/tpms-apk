.class Lcom/tpms/biz/Tpms3$7;
.super Ljava/lang/Object;
.source "Tpms3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 905
    iput-object p1, p0, Lcom/tpms/biz/Tpms3$7;->this$0:Lcom/tpms/biz/Tpms3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .line 911
    iget-object v0, p0, Lcom/tpms/biz/Tpms3$7;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v0, v0, Lcom/tpms/biz/Tpms3;->mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tpms/modle/AlarmCntrol;->mTimeInterval:J

    .line 912
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 913
    .local v0, "time2":J
    iget-object v2, p0, Lcom/tpms/biz/Tpms3$7;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v2, v2, Lcom/tpms/biz/Tpms3;->mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

    iput-wide v0, v2, Lcom/tpms/modle/AlarmCntrol;->mTimeStamp:J

    .line 915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showTimeDialog...mTimeInterval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tpms/biz/Tpms3$7;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v3, v3, Lcom/tpms/biz/Tpms3;->mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

    iget-wide v3, v3, Lcom/tpms/modle/AlarmCntrol;->mTimeInterval:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ttimeout"

    invoke-static {v3, v2}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    iget-object v2, p0, Lcom/tpms/biz/Tpms3$7;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v2, v2, Lcom/tpms/biz/Tpms3;->mTimedlg:Lcom/tpms/widget/CDialog2;

    invoke-virtual {v2}, Lcom/tpms/widget/CDialog2;->hideCustomToast()V

    .line 917
    iget-object v2, p0, Lcom/tpms/biz/Tpms3$7;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v3, v2, Lcom/tpms/biz/Tpms3;->mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

    iget-object v3, v3, Lcom/tpms/modle/AlarmCntrol;->mErrorKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tpms/biz/Tpms3;->StopSound(Ljava/lang/String;)V

    .line 918
    iget-object v2, p0, Lcom/tpms/biz/Tpms3$7;->this$0:Lcom/tpms/biz/Tpms3;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/tpms/biz/Tpms3;->mErrorToast:Lcom/tpms/widget/ClickToast;

    .line 919
    iget-object v2, p0, Lcom/tpms/biz/Tpms3$7;->this$0:Lcom/tpms/biz/Tpms3;

    iput-object v3, v2, Lcom/tpms/biz/Tpms3;->mTimedlg:Lcom/tpms/widget/CDialog2;

    .line 921
    invoke-static {}, Lcom/tpms/biz/Tpms3;->access$300()Landroid/content/BroadcastReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 923
    :try_start_0
    iget-object v2, p0, Lcom/tpms/biz/Tpms3$7;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v2, v2, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-static {}, Lcom/tpms/biz/Tpms3;->access$300()Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    goto :goto_0

    .line 924
    :catch_0
    move-exception v2

    .line 925
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 930
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
