.class Lcom/tpms/widget/ClickToast$1;
.super Ljava/lang/Object;
.source "ClickToast.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/widget/ClickToast;->initToast(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/widget/ClickToast;


# direct methods
.method constructor <init>(Lcom/tpms/widget/ClickToast;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/widget/ClickToast;

    .line 76
    iput-object p1, p0, Lcom/tpms/widget/ClickToast$1;->this$0:Lcom/tpms/widget/ClickToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/tpms/widget/ClickToast$1;->this$0:Lcom/tpms/widget/ClickToast;

    invoke-virtual {v0}, Lcom/tpms/widget/ClickToast;->hideCustomToast()V

    .line 80
    return-void
.end method
