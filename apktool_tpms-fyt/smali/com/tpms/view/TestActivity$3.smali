.class Lcom/tpms/view/TestActivity$3;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/view/TestActivity;->showTimeDialog()V
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

    .line 251
    iput-object p1, p0, Lcom/tpms/view/TestActivity$3;->this$0:Lcom/tpms/view/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .line 255
    iget-object v0, p0, Lcom/tpms/view/TestActivity$3;->this$0:Lcom/tpms/view/TestActivity;

    invoke-static {v0}, Lcom/tpms/view/TestActivity;->access$100(Lcom/tpms/view/TestActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showTimeDialog...:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/tpms/view/TestActivity$3;->this$0:Lcom/tpms/view/TestActivity;

    iget-object v0, v0, Lcom/tpms/view/TestActivity;->mdlg:Lcom/tpms/widget/CDialog;

    invoke-virtual {v0}, Lcom/tpms/widget/CDialog;->dismiss()V

    .line 258
    iget-object v0, p0, Lcom/tpms/view/TestActivity$3;->this$0:Lcom/tpms/view/TestActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tpms/view/TestActivity;->ctotast:Lcom/tpms/widget/ClickToast;

    .line 259
    return-void
.end method
