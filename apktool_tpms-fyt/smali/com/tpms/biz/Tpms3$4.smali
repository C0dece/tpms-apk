.class Lcom/tpms/biz/Tpms3$4;
.super Ljava/lang/Object;
.source "Tpms3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/biz/Tpms3;->showErrorDlg()V
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

    .line 791
    iput-object p1, p0, Lcom/tpms/biz/Tpms3$4;->this$0:Lcom/tpms/biz/Tpms3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 795
    iget-object v0, p0, Lcom/tpms/biz/Tpms3$4;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v0, v0, Lcom/tpms/biz/Tpms3;->mErrorDlg:Lcom/tpms/widget/CDialog2;

    invoke-virtual {v0}, Lcom/tpms/widget/CDialog2;->hideCustomToast()V

    .line 796
    iget-object v0, p0, Lcom/tpms/biz/Tpms3$4;->this$0:Lcom/tpms/biz/Tpms3;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tpms/biz/Tpms3;->mErrorDlg:Lcom/tpms/widget/CDialog2;

    .line 797
    return-void
.end method
