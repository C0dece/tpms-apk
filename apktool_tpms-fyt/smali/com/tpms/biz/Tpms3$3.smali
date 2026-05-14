.class Lcom/tpms/biz/Tpms3$3;
.super Ljava/lang/Object;
.source "Tpms3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/biz/Tpms3;->showErrorToast()V
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

    .line 763
    iput-object p1, p0, Lcom/tpms/biz/Tpms3$3;->this$0:Lcom/tpms/biz/Tpms3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 766
    iget-object v0, p0, Lcom/tpms/biz/Tpms3$3;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v0, v0, Lcom/tpms/biz/Tpms3;->mErrorToast:Lcom/tpms/widget/ClickToast;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/tpms/biz/Tpms3$3;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v0, v0, Lcom/tpms/biz/Tpms3;->mErrorToast:Lcom/tpms/widget/ClickToast;

    invoke-virtual {v0}, Lcom/tpms/widget/ClickToast;->hideCustomToast()V

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/tpms/biz/Tpms3$3;->this$0:Lcom/tpms/biz/Tpms3;

    invoke-static {v0}, Lcom/tpms/biz/Tpms3;->access$200(Lcom/tpms/biz/Tpms3;)V

    .line 770
    return-void
.end method
