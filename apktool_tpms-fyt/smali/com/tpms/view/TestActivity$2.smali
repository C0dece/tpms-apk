.class Lcom/tpms/view/TestActivity$2;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/view/TestActivity;->btn_click_toast(Landroid/view/View;)V
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

    .line 233
    iput-object p1, p0, Lcom/tpms/view/TestActivity$2;->this$0:Lcom/tpms/view/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/tpms/view/TestActivity$2;->this$0:Lcom/tpms/view/TestActivity;

    iget-object v0, v0, Lcom/tpms/view/TestActivity;->ctotast:Lcom/tpms/widget/ClickToast;

    invoke-virtual {v0}, Lcom/tpms/widget/ClickToast;->hideCustomToast()V

    .line 238
    iget-object v0, p0, Lcom/tpms/view/TestActivity$2;->this$0:Lcom/tpms/view/TestActivity;

    invoke-static {v0}, Lcom/tpms/view/TestActivity;->access$000(Lcom/tpms/view/TestActivity;)V

    .line 239
    return-void
.end method
