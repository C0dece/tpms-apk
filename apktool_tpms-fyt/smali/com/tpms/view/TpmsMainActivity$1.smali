.class Lcom/tpms/view/TpmsMainActivity$1;
.super Ljava/lang/Object;
.source "TpmsMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tpms/view/TpmsMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/view/TpmsMainActivity;


# direct methods
.method constructor <init>(Lcom/tpms/view/TpmsMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/view/TpmsMainActivity;

    .line 294
    iput-object p1, p0, Lcom/tpms/view/TpmsMainActivity$1;->this$0:Lcom/tpms/view/TpmsMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/tpms/view/TpmsMainActivity$1;->this$0:Lcom/tpms/view/TpmsMainActivity;

    iget-object v0, v0, Lcom/tpms/view/TpmsMainActivity;->mPDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tpms/view/TpmsMainActivity$1;->this$0:Lcom/tpms/view/TpmsMainActivity;

    iget-object v0, v0, Lcom/tpms/view/TpmsMainActivity;->mPDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/tpms/view/TpmsMainActivity$1;->this$0:Lcom/tpms/view/TpmsMainActivity;

    iget-object v0, v0, Lcom/tpms/view/TpmsMainActivity;->mPDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 299
    iget-object v0, p0, Lcom/tpms/view/TpmsMainActivity$1;->this$0:Lcom/tpms/view/TpmsMainActivity;

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Lcom/tpms/view/TpmsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 301
    :cond_0
    return-void
.end method
