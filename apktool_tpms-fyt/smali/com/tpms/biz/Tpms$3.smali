.class Lcom/tpms/biz/Tpms$3;
.super Ljava/lang/Object;
.source "Tpms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/biz/Tpms;->onEventMainThread(Lcom/tpms/modle/ShakeHands;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/biz/Tpms;


# direct methods
.method constructor <init>(Lcom/tpms/biz/Tpms;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/biz/Tpms;

    .line 600
    iput-object p1, p0, Lcom/tpms/biz/Tpms$3;->this$0:Lcom/tpms/biz/Tpms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/tpms/biz/Tpms$3;->this$0:Lcom/tpms/biz/Tpms;

    invoke-static {v0}, Lcom/tpms/biz/Tpms;->access$000(Lcom/tpms/biz/Tpms;)V

    .line 605
    return-void
.end method
