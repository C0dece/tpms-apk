.class Lcom/tpms/view/SetDetailActivity$1;
.super Ljava/lang/Object;
.source "SetDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/view/SetDetailActivity;->tv_reset_all(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/view/SetDetailActivity;


# direct methods
.method constructor <init>(Lcom/tpms/view/SetDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/view/SetDetailActivity;

    .line 352
    iput-object p1, p0, Lcom/tpms/view/SetDetailActivity$1;->this$0:Lcom/tpms/view/SetDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 356
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity$1;->this$0:Lcom/tpms/view/SetDetailActivity;

    invoke-static {v0}, Lcom/tpms/view/SetDetailActivity;->access$000(Lcom/tpms/view/SetDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u70b9\u51fb\u4e86\u786e\u5b9a \u6062\u590d\u6240\u6709"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity$1;->this$0:Lcom/tpms/view/SetDetailActivity;

    iget-object v0, v0, Lcom/tpms/view/SetDetailActivity;->resetDlg:Lcom/tpms/widget/CDialog;

    invoke-virtual {v0}, Lcom/tpms/widget/CDialog;->dismiss()V

    .line 358
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity$1;->this$0:Lcom/tpms/view/SetDetailActivity;

    iget-object v0, v0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms;->resetAll()V

    .line 359
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity$1;->this$0:Lcom/tpms/view/SetDetailActivity;

    invoke-virtual {v0}, Lcom/tpms/view/SetDetailActivity;->initView()V

    .line 361
    return-void
.end method
