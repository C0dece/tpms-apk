.class Lcom/tpms/widget/CDialog2$1;
.super Ljava/lang/Object;
.source "CDialog2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/widget/CDialog2;->initToast(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/widget/CDialog2;


# direct methods
.method constructor <init>(Lcom/tpms/widget/CDialog2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/widget/CDialog2;

    .line 70
    iput-object p1, p0, Lcom/tpms/widget/CDialog2$1;->this$0:Lcom/tpms/widget/CDialog2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/tpms/widget/CDialog2$1;->this$0:Lcom/tpms/widget/CDialog2;

    invoke-virtual {v0}, Lcom/tpms/widget/CDialog2;->hideCustomToast()V

    .line 74
    return-void
.end method
