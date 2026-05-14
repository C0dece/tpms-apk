.class Lcom/tpms/view/SetExchangeActivity$2;
.super Ljava/lang/Object;
.source "SetExchangeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tpms/view/SetExchangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/view/SetExchangeActivity;


# direct methods
.method constructor <init>(Lcom/tpms/view/SetExchangeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/view/SetExchangeActivity;

    .line 377
    iput-object p1, p0, Lcom/tpms/view/SetExchangeActivity$2;->this$0:Lcom/tpms/view/SetExchangeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity$2;->this$0:Lcom/tpms/view/SetExchangeActivity;

    iget-object v0, v0, Lcom/tpms/view/SetExchangeActivity;->mExChangeFailed:Lcom/tpms/widget/CDialog;

    invoke-virtual {v0}, Lcom/tpms/widget/CDialog;->show()V

    .line 382
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity$2;->this$0:Lcom/tpms/view/SetExchangeActivity;

    iget-object v0, v0, Lcom/tpms/view/SetExchangeActivity;->mPDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity$2;->this$0:Lcom/tpms/view/SetExchangeActivity;

    iget-object v0, v0, Lcom/tpms/view/SetExchangeActivity;->mPDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 384
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity$2;->this$0:Lcom/tpms/view/SetExchangeActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tpms/view/SetExchangeActivity;->mPDlg:Landroid/app/AlertDialog;

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity$2;->this$0:Lcom/tpms/view/SetExchangeActivity;

    iget-object v1, v0, Lcom/tpms/view/SetExchangeActivity;->btn_cannel_exchange:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/tpms/view/SetExchangeActivity;->btn_cannel_exchange(Landroid/view/View;)V

    .line 387
    return-void
.end method
