.class Lcom/tpms/view/SetActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tpms/view/SetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/view/SetActivity;


# direct methods
.method constructor <init>(Lcom/tpms/view/SetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/view/SetActivity;

    .line 101
    iput-object p1, p0, Lcom/tpms/view/SetActivity$1;->this$0:Lcom/tpms/view/SetActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "homekey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/tpms/view/SetActivity$1;->this$0:Lcom/tpms/view/SetActivity;

    invoke-virtual {v2}, Lcom/tpms/view/SetActivity;->finish()V

    .line 112
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    return-void
.end method
