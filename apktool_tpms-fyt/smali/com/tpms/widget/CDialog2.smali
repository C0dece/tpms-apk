.class public Lcom/tpms/widget/CDialog2;
.super Ljava/lang/Object;
.source "CDialog2.java"


# instance fields
.field private closeBtnEvent:Z

.field private mContext:Landroid/content/Context;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mStartX:I

.field private mStartY:I

.field private mTvAddress:Landroid/widget/Button;

.field private mView:Landroid/view/View;

.field private mWM:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tpms/widget/CDialog2;->closeBtnEvent:Z

    return-void
.end method

.method public static makeToast(Landroid/content/Context;ILjava/lang/String;)Lcom/tpms/widget/CDialog2;
    .locals 3
    .param p0, "cont"    # Landroid/content/Context;
    .param p1, "layoutid"    # I
    .param p2, "txt"    # Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/tpms/widget/CDialog2;

    invoke-direct {v0}, Lcom/tpms/widget/CDialog2;-><init>()V

    .line 120
    .local v0, "toast":Lcom/tpms/widget/CDialog2;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tpms/widget/CDialog2;->closeBtnEvent:Z

    .line 121
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 122
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v0, p0, v1, p2}, Lcom/tpms/widget/CDialog2;->initToast(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 124
    return-object v0
.end method

.method public static makeToast(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)Lcom/tpms/widget/CDialog2;
    .locals 1
    .param p0, "cont"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "txt"    # Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/tpms/widget/CDialog2;

    invoke-direct {v0}, Lcom/tpms/widget/CDialog2;-><init>()V

    .line 113
    .local v0, "toast":Lcom/tpms/widget/CDialog2;
    invoke-virtual {v0, p0, p1, p2}, Lcom/tpms/widget/CDialog2;->initToast(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 115
    return-object v0
.end method


# virtual methods
.method public hideCustomToast()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/tpms/widget/CDialog2;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/tpms/widget/CDialog2;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tpms/widget/CDialog2;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 151
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/widget/CDialog2;->mView:Landroid/view/View;

    .line 153
    :cond_1
    return-void
.end method

.method public initToast(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupview"    # Landroid/view/View;
    .param p3, "txt"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/tpms/widget/CDialog2;->mContext:Landroid/content/Context;

    .line 43
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tpms/widget/CDialog2;->mWM:Landroid/view/WindowManager;

    .line 44
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/tpms/widget/CDialog2;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 45
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 47
    iget-object v0, p0, Lcom/tpms/widget/CDialog2;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 50
    iget-object v0, p0, Lcom/tpms/widget/CDialog2;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/tpms/widget/CDialog2;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/tpms/widget/CDialog2;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/tpms/widget/CDialog2;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x88

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 67
    iput-object p2, p0, Lcom/tpms/widget/CDialog2;->mView:Landroid/view/View;

    .line 69
    iget-boolean v0, p0, Lcom/tpms/widget/CDialog2;->closeBtnEvent:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 70
    const v0, 0x7f06004f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tpms/widget/CDialog2$1;

    invoke-direct {v1, p0}, Lcom/tpms/widget/CDialog2$1;-><init>(Lcom/tpms/widget/CDialog2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/tpms/widget/CDialog2;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/tpms/widget/CDialog2;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    return-void
.end method

.method public show()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/tpms/widget/CDialog2;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tpms/widget/CDialog2;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/tpms/widget/CDialog2;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    return-void
.end method
