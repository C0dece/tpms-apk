.class Lcom/tpms/view/TestActivity$4;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/view/TestActivity;->showTimeDialog_x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/view/TestActivity;

.field final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tpms/view/TestActivity;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/view/TestActivity;

    .line 272
    iput-object p1, p0, Lcom/tpms/view/TestActivity$4;->this$0:Lcom/tpms/view/TestActivity;

    iput-object p2, p0, Lcom/tpms/view/TestActivity$4;->val$items:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 275
    iget-object v0, p0, Lcom/tpms/view/TestActivity$4;->this$0:Lcom/tpms/view/TestActivity;

    iget-object v1, p0, Lcom/tpms/view/TestActivity$4;->val$items:[Ljava/lang/String;

    aget-object v1, v1, p2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 276
    return-void
.end method
