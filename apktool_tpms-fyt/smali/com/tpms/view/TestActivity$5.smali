.class Lcom/tpms/view/TestActivity$5;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/view/TestActivity;->btn_reset_data(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/view/TestActivity;


# direct methods
.method constructor <init>(Lcom/tpms/view/TestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/view/TestActivity;

    .line 321
    iput-object p1, p0, Lcom/tpms/view/TestActivity$5;->this$0:Lcom/tpms/view/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 326
    iget-object v0, p0, Lcom/tpms/view/TestActivity$5;->this$0:Lcom/tpms/view/TestActivity;

    iget-object v0, v0, Lcom/tpms/view/TestActivity;->resetDlg:Lcom/tpms/widget/CDialog;

    invoke-virtual {v0}, Lcom/tpms/widget/CDialog;->dismiss()V

    .line 327
    iget-object v0, p0, Lcom/tpms/view/TestActivity$5;->this$0:Lcom/tpms/view/TestActivity;

    const-string v1, "\u70b9\u51fb\u4e86\u5173\u95ed"

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 328
    return-void
.end method
