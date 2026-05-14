.class Lcom/tpms/view/PaireIDActivity$1;
.super Ljava/lang/Object;
.source "PaireIDActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tpms/view/PaireIDActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/view/PaireIDActivity;


# direct methods
.method constructor <init>(Lcom/tpms/view/PaireIDActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/view/PaireIDActivity;

    .line 241
    iput-object p1, p0, Lcom/tpms/view/PaireIDActivity$1;->this$0:Lcom/tpms/view/PaireIDActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 246
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity$1;->this$0:Lcom/tpms/view/PaireIDActivity;

    iget v0, v0, Lcom/tpms/view/PaireIDActivity;->mTimeOut:I

    if-gtz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity$1;->this$0:Lcom/tpms/view/PaireIDActivity;

    iget-object v0, v0, Lcom/tpms/view/PaireIDActivity;->timeOut:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tpms/view/PaireIDActivity$1;->this$0:Lcom/tpms/view/PaireIDActivity;

    iget-object v1, v1, Lcom/tpms/view/PaireIDActivity;->timeOutCnt:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity$1;->this$0:Lcom/tpms/view/PaireIDActivity;

    iget-object v1, v0, Lcom/tpms/view/PaireIDActivity;->btn_paire_canel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/tpms/view/PaireIDActivity;->btn_paire_canel(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity$1;->this$0:Lcom/tpms/view/PaireIDActivity;

    iget-object v0, v0, Lcom/tpms/view/PaireIDActivity;->btn_paire_start:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity$1;->this$0:Lcom/tpms/view/PaireIDActivity;

    iget-object v0, v0, Lcom/tpms/view/PaireIDActivity;->tv_title_state:Landroid/widget/TextView;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 252
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity$1;->this$0:Lcom/tpms/view/PaireIDActivity;

    iget-object v0, v0, Lcom/tpms/view/PaireIDActivity;->tv_title_state:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tpms/view/PaireIDActivity$1;->this$0:Lcom/tpms/view/PaireIDActivity;

    const v3, 0x7f0b0036

    invoke-virtual {v2, v3}, Lcom/tpms/view/PaireIDActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tpms/view/PaireIDActivity$1;->this$0:Lcom/tpms/view/PaireIDActivity;

    iget v3, v2, Lcom/tpms/view/PaireIDActivity;->mTimeOut:I

    add-int/lit8 v4, v3, -0x1

    iput v4, v2, Lcom/tpms/view/PaireIDActivity;->mTimeOut:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity$1;->this$0:Lcom/tpms/view/PaireIDActivity;

    iget-object v0, v0, Lcom/tpms/view/PaireIDActivity;->timeOut:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tpms/view/PaireIDActivity$1;->this$0:Lcom/tpms/view/PaireIDActivity;

    iget-object v1, v1, Lcom/tpms/view/PaireIDActivity;->timeOutCnt:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    return-void
.end method
