.class Lcom/tpms/widget/ClickToast$2;
.super Ljava/lang/Object;
.source "ClickToast.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/widget/ClickToast;->initToast(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastX:I

.field lastY:I

.field paramX:I

.field paramY:I

.field final synthetic this$0:Lcom/tpms/widget/ClickToast;


# direct methods
.method constructor <init>(Lcom/tpms/widget/ClickToast;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/widget/ClickToast;

    .line 89
    iput-object p1, p0, Lcom/tpms/widget/ClickToast$2;->this$0:Lcom/tpms/widget/ClickToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 94
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/tpms/widget/ClickToast$2;->lastX:I

    sub-int/2addr v0, v1

    .line 103
    .local v0, "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/tpms/widget/ClickToast$2;->lastY:I

    sub-int/2addr v1, v2

    .line 104
    .local v1, "dy":I
    iget-object v2, p0, Lcom/tpms/widget/ClickToast$2;->this$0:Lcom/tpms/widget/ClickToast;

    invoke-static {v2}, Lcom/tpms/widget/ClickToast;->access$000(Lcom/tpms/widget/ClickToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/tpms/widget/ClickToast$2;->paramX:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 105
    iget-object v2, p0, Lcom/tpms/widget/ClickToast$2;->this$0:Lcom/tpms/widget/ClickToast;

    invoke-static {v2}, Lcom/tpms/widget/ClickToast;->access$000(Lcom/tpms/widget/ClickToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/tpms/widget/ClickToast$2;->paramY:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 107
    iget-object v2, p0, Lcom/tpms/widget/ClickToast$2;->this$0:Lcom/tpms/widget/ClickToast;

    invoke-static {v2}, Lcom/tpms/widget/ClickToast;->access$200(Lcom/tpms/widget/ClickToast;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/tpms/widget/ClickToast$2;->this$0:Lcom/tpms/widget/ClickToast;

    invoke-static {v3}, Lcom/tpms/widget/ClickToast;->access$100(Lcom/tpms/widget/ClickToast;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/tpms/widget/ClickToast$2;->this$0:Lcom/tpms/widget/ClickToast;

    invoke-static {v4}, Lcom/tpms/widget/ClickToast;->access$000(Lcom/tpms/widget/ClickToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 96
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tpms/widget/ClickToast$2;->lastX:I

    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tpms/widget/ClickToast$2;->lastY:I

    .line 98
    iget-object v0, p0, Lcom/tpms/widget/ClickToast$2;->this$0:Lcom/tpms/widget/ClickToast;

    invoke-static {v0}, Lcom/tpms/widget/ClickToast;->access$000(Lcom/tpms/widget/ClickToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/tpms/widget/ClickToast$2;->paramX:I

    .line 99
    iget-object v0, p0, Lcom/tpms/widget/ClickToast$2;->this$0:Lcom/tpms/widget/ClickToast;

    invoke-static {v0}, Lcom/tpms/widget/ClickToast;->access$000(Lcom/tpms/widget/ClickToast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/tpms/widget/ClickToast$2;->paramY:I

    .line 100
    nop

    .line 110
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
