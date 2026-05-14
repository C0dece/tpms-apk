.class Lcom/tpms/widget/CDialog$1;
.super Ljava/lang/Object;
.source "CDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/widget/CDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/widget/CDialog;


# direct methods
.method constructor <init>(Lcom/tpms/widget/CDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/widget/CDialog;

    .line 42
    iput-object p1, p0, Lcom/tpms/widget/CDialog$1;->this$0:Lcom/tpms/widget/CDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/tpms/widget/CDialog$1;->this$0:Lcom/tpms/widget/CDialog;

    invoke-virtual {v0}, Lcom/tpms/widget/CDialog;->dismiss()V

    .line 46
    return-void
.end method
