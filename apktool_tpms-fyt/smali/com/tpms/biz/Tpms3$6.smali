.class Lcom/tpms/biz/Tpms3$6;
.super Ljava/lang/Object;
.source "Tpms3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/biz/Tpms3;->showTimeDialog()V
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

    .line 861
    iput-object p1, p0, Lcom/tpms/biz/Tpms3$6;->this$0:Lcom/tpms/biz/Tpms3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 865
    iget-object v0, p0, Lcom/tpms/biz/Tpms3$6;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v0, v0, Lcom/tpms/biz/Tpms3;->mTimedlg:Lcom/tpms/widget/CDialog2;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/tpms/biz/Tpms3$6;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v0, v0, Lcom/tpms/biz/Tpms3;->mTimedlg:Lcom/tpms/widget/CDialog2;

    invoke-virtual {v0}, Lcom/tpms/widget/CDialog2;->hideCustomToast()V

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/tpms/biz/Tpms3$6;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v0, v0, Lcom/tpms/biz/Tpms3;->mErrorToast:Lcom/tpms/widget/ClickToast;

    invoke-virtual {v0}, Lcom/tpms/widget/ClickToast;->hideCustomToast()V

    .line 870
    iget-object v0, p0, Lcom/tpms/biz/Tpms3$6;->this$0:Lcom/tpms/biz/Tpms3;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tpms/biz/Tpms3;->mErrorToast:Lcom/tpms/widget/ClickToast;

    .line 871
    iget-object v0, p0, Lcom/tpms/biz/Tpms3$6;->this$0:Lcom/tpms/biz/Tpms3;

    iput-object v1, v0, Lcom/tpms/biz/Tpms3;->mTimedlg:Lcom/tpms/widget/CDialog2;

    .line 873
    invoke-static {}, Lcom/tpms/biz/Tpms3;->access$300()Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 875
    :try_start_0
    iget-object v0, p0, Lcom/tpms/biz/Tpms3$6;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v0, v0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-static {}, Lcom/tpms/biz/Tpms3;->access$300()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    goto :goto_0

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 880
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
