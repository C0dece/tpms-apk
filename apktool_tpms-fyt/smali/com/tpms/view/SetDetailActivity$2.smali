.class Lcom/tpms/view/SetDetailActivity$2;
.super Ljava/lang/Object;
.source "SetDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/view/SetDetailActivity;->tv_pressoffset_click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/view/SetDetailActivity;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/tpms/view/SetDetailActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"
    .param p2, "val$et"

    iput-object p1, p0, Lcom/tpms/view/SetDetailActivity$2;->this$0:Lcom/tpms/view/SetDetailActivity;
    iput-object p2, p0, Lcom/tpms/view/SetDetailActivity$2;->val$et:Landroid/widget/EditText;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"
    .param p2, "which"

    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity$2;->val$et:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0

    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity$2;->this$0:Lcom/tpms/view/SetDetailActivity;
    iget-object v2, v1, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2, v0}, Lcom/tpms/biz/Tpms;->setPressOffsetFromString(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/tpms/view/SetDetailActivity;->tv_pressoffset:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getPressOffsetString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    return-void
.end method
