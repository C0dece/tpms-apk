.class public Lcom/tpms/widget/CDialog;
.super Landroid/app/Dialog;
.source "CDialog.java"


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layid"    # I

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tpms/widget/CDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/tpms/widget/CDialog;->inflater:Landroid/view/LayoutInflater;

    .line 56
    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/tpms/widget/CDialog;->initView(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .line 24
    const v0, 0x7f0c0003

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tpms/widget/CDialog;->inflater:Landroid/view/LayoutInflater;

    .line 27
    invoke-direct {p0, p2}, Lcom/tpms/widget/CDialog;->initView(Landroid/view/View;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tpms/widget/CDialog;->setCancelable(Z)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/tpms/widget/CDialog;->setCanceledOnTouchOutside(Z)V

    .line 31
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 34
    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/tpms/widget/CDialog;->mView:Landroid/view/View;

    .line 37
    const v0, 0x7f06004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "btn":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/tpms/widget/CDialog;->setContentView(Landroid/view/View;)V

    .line 40
    if-nez v0, :cond_1

    return-void

    .line 42
    :cond_1
    new-instance v1, Lcom/tpms/widget/CDialog$1;

    invoke-direct {v1, p0}, Lcom/tpms/widget/CDialog$1;-><init>(Lcom/tpms/widget/CDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method public show(Ljava/lang/String;)V
    .locals 2
    .param p1, "txt"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/tpms/widget/CDialog;->mView:Landroid/view/View;

    const v1, 0x7f0600bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 64
    return-void
.end method
