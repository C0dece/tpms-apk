.class Lcom/tpms/biz/Tpms3$10;
.super Ljava/lang/Object;
.source "Tpms3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tpms/biz/Tpms3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/biz/Tpms3;


# direct methods
.method constructor <init>(Lcom/tpms/biz/Tpms3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/biz/Tpms3;

    .line 1088
    iput-object p1, p0, Lcom/tpms/biz/Tpms3$10;->this$0:Lcom/tpms/biz/Tpms3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1093
    iget-object v0, p0, Lcom/tpms/biz/Tpms3$10;->this$0:Lcom/tpms/biz/Tpms3;

    iget-boolean v0, v0, Lcom/tpms/biz/Tpms3;->mIsSeedAckOk:Z

    if-nez v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/tpms/biz/Tpms3$10;->this$0:Lcom/tpms/biz/Tpms3;

    iget-object v0, v0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "CheckEncryptionTime"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/tpms/biz/Tpms3$10;->this$0:Lcom/tpms/biz/Tpms3;

    invoke-static {v0}, Lcom/tpms/biz/Tpms3;->access$400(Lcom/tpms/biz/Tpms3;)V

    .line 1097
    :cond_0
    return-void
.end method
