.class Lcom/tpms/view/GetSreenInfoActivity$1;
.super Ljava/lang/Object;
.source "GetSreenInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/view/GetSreenInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/view/GetSreenInfoActivity;

.field final synthetic val$densityDpiText:Landroid/widget/EditText;

.field final synthetic val$densityText:Landroid/widget/EditText;

.field final synthetic val$heightDipText:Landroid/widget/EditText;

.field final synthetic val$heightPxText:Landroid/widget/EditText;

.field final synthetic val$widthDipText:Landroid/widget/EditText;

.field final synthetic val$widthPxText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/tpms/view/GetSreenInfoActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/view/GetSreenInfoActivity;

    .line 75
    iput-object p1, p0, Lcom/tpms/view/GetSreenInfoActivity$1;->this$0:Lcom/tpms/view/GetSreenInfoActivity;

    iput-object p2, p0, Lcom/tpms/view/GetSreenInfoActivity$1;->val$widthPxText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/tpms/view/GetSreenInfoActivity$1;->val$heightPxText:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/tpms/view/GetSreenInfoActivity$1;->val$densityText:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/tpms/view/GetSreenInfoActivity$1;->val$densityDpiText:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/tpms/view/GetSreenInfoActivity$1;->val$widthDipText:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/tpms/view/GetSreenInfoActivity$1;->val$heightDipText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/tpms/view/GetSreenInfoActivity$1;->this$0:Lcom/tpms/view/GetSreenInfoActivity;

    invoke-virtual {v0}, Lcom/tpms/view/GetSreenInfoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 87
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 88
    .local v1, "widthPx":I
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 90
    .local v2, "heightPx":I
    iget-object v3, p0, Lcom/tpms/view/GetSreenInfoActivity$1;->val$widthPxText:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v3, p0, Lcom/tpms/view/GetSreenInfoActivity$1;->val$heightPxText:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v3, p0, Lcom/tpms/view/GetSreenInfoActivity$1;->this$0:Lcom/tpms/view/GetSreenInfoActivity;

    invoke-virtual {v3}, Lcom/tpms/view/GetSreenInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 96
    .local v3, "density":F
    iget-object v4, p0, Lcom/tpms/view/GetSreenInfoActivity$1;->this$0:Lcom/tpms/view/GetSreenInfoActivity;

    invoke-virtual {v4}, Lcom/tpms/view/GetSreenInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 97
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v4, v4

    .line 98
    .local v4, "densityDpi":F
    iget-object v6, p0, Lcom/tpms/view/GetSreenInfoActivity$1;->val$densityText:Landroid/widget/EditText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v6, p0, Lcom/tpms/view/GetSreenInfoActivity$1;->val$densityDpiText:Landroid/widget/EditText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v6, p0, Lcom/tpms/view/GetSreenInfoActivity$1;->this$0:Lcom/tpms/view/GetSreenInfoActivity;

    int-to-float v7, v1

    invoke-static {v6, v6, v7}, Lcom/tpms/view/GetSreenInfoActivity;->access$000(Lcom/tpms/view/GetSreenInfoActivity;Landroid/content/Context;F)I

    move-result v6

    .line 103
    .local v6, "widthDip":I
    iget-object v7, p0, Lcom/tpms/view/GetSreenInfoActivity$1;->this$0:Lcom/tpms/view/GetSreenInfoActivity;

    int-to-float v8, v2

    invoke-static {v7, v7, v8}, Lcom/tpms/view/GetSreenInfoActivity;->access$000(Lcom/tpms/view/GetSreenInfoActivity;Landroid/content/Context;F)I

    move-result v7

    .line 104
    .local v7, "heightDip":I
    iget-object v8, p0, Lcom/tpms/view/GetSreenInfoActivity$1;->val$widthDipText:Landroid/widget/EditText;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v8, p0, Lcom/tpms/view/GetSreenInfoActivity$1;->val$heightDipText:Landroid/widget/EditText;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method
