.class final Lcom/tpms/biz/Tpms3$8;
.super Landroid/content/BroadcastReceiver;
.source "Tpms3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tpms/biz/Tpms3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

.field final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 934
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 935
    const-string v0, "reason"

    iput-object v0, p0, Lcom/tpms/biz/Tpms3$8;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    .line 937
    const-string v0, "homekey"

    iput-object v0, p0, Lcom/tpms/biz/Tpms3$8;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 941
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 945
    .local v1, "reason":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reason..:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "test"

    invoke-static {v3, v2}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    if-eqz v1, :cond_0

    const-string v2, "homekey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 950
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    return-void
.end method
