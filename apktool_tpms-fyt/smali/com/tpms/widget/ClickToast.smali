.class public Lcom/tpms/widget/ClickToast;
.super Ljava/lang/Object;
.source "ClickToast.java"


# instance fields
.field private closeBtnEvent:Z

.field private guid:Ljava/lang/String;

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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tpms/widget/ClickToast;->closeBtnEvent:Z

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/tpms/widget/ClickToast;->guid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tpms/widget/ClickToast;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/tpms/widget/ClickToast;

    .line 22
    iget-object v0, p0, Lcom/tpms/widget/ClickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tpms/widget/ClickToast;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tpms/widget/ClickToast;

    .line 22
    iget-object v0, p0, Lcom/tpms/widget/ClickToast;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tpms/widget/ClickToast;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/tpms/widget/ClickToast;

    .line 22
    iget-object v0, p0, Lcom/tpms/widget/ClickToast;->mWM:Landroid/view/WindowManager;

    return-object v0
.end method

.method public static makeToast(Landroid/content/Context;ILjava/lang/String;)Lcom/tpms/widget/ClickToast;
    .locals 3
    .param p0, "cont"    # Landroid/content/Context;
    .param p1, "layoutid"    # I
    .param p2, "txt"    # Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/tpms/widget/ClickToast;

    invoke-direct {v0}, Lcom/tpms/widget/ClickToast;-><init>()V

    .line 126
    .local v0, "toast":Lcom/tpms/widget/ClickToast;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tpms/widget/ClickToast;->closeBtnEvent:Z

    .line 127
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 128
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v0, p0, v1, p2}, Lcom/tpms/widget/ClickToast;->initToast(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 130
    return-object v0
.end method

.method public static makeToast(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)Lcom/tpms/widget/ClickToast;
    .locals 1
    .param p0, "cont"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "txt"    # Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/tpms/widget/ClickToast;

    invoke-direct {v0}, Lcom/tpms/widget/ClickToast;-><init>()V

    .line 119
    .local v0, "toast":Lcom/tpms/widget/ClickToast;
    invoke-virtual {v0, p0, p1, p2}, Lcom/tpms/widget/ClickToast;->initToast(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 121
    return-object v0
.end method


# virtual methods
.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/tpms/widget/ClickToast;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public hideCustomToast()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/tpms/widget/ClickToast;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/tpms/widget/ClickToast;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tpms/widget/ClickToast;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 157
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/widget/ClickToast;->mView:Landroid/view/View;

    .line 159
    :cond_1
    return-void
.end method

.method public initToast(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupview"    # Landroid/view/View;
    .param p3, "txt"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/tpms/widget/ClickToast;->mContext:Landroid/content/Context;

    .line 49
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tpms/widget/ClickToast;->mWM:Landroid/view/WindowManager;

    .line 50
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/tpms/widget/ClickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 51
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 53
    iget-object v0, p0, Lcom/tpms/widget/ClickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 54
    iget-object v0, p0, Lcom/tpms/widget/ClickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 55
    iget-object v0, p0, Lcom/tpms/widget/ClickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 56
    iget-object v0, p0, Lcom/tpms/widget/ClickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/tpms/widget/ClickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/tpms/widget/ClickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/tpms/widget/ClickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x88

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 66
    iget-object v0, p0, Lcom/tpms/widget/ClickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 73
    iput-object p2, p0, Lcom/tpms/widget/ClickToast;->mView:Landroid/view/View;

    .line 75
    iget-boolean v0, p0, Lcom/tpms/widget/ClickToast;->closeBtnEvent:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 76
    const v0, 0x7f06004f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tpms/widget/ClickToast$1;

    invoke-direct {v1, p0}, Lcom/tpms/widget/ClickToast$1;-><init>(Lcom/tpms/widget/ClickToast;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/tpms/widget/ClickToast;->mView:Landroid/view/View;

    const v1, 0x7f0600bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/tpms/widget/ClickToast;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/tpms/widget/ClickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v1, p0, Lcom/tpms/widget/ClickToast;->mView:Landroid/view/View;

    new-instance v2, Lcom/tpms/widget/ClickToast$2;

    invoke-direct {v2, p0}, Lcom/tpms/widget/ClickToast$2;-><init>(Lcom/tpms/widget/ClickToast;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/tpms/widget/ClickToast;->guid:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public show()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/tpms/widget/ClickToast;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tpms/widget/ClickToast;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/tpms/widget/ClickToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    return-void
.end method
