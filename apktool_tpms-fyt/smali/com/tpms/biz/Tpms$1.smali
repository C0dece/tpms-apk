.class Lcom/tpms/biz/Tpms$1;
.super Ljava/lang/Object;
.source "Tpms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tpms/biz/Tpms;
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

    .line 129
    iput-object p1, p0, Lcom/tpms/biz/Tpms$1;->this$0:Lcom/tpms/biz/Tpms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/tpms/biz/Tpms$1;->this$0:Lcom/tpms/biz/Tpms;

    iget-object v1, v1, Lcom/tpms/biz/Tpms;->getTpmsState:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    return-void
.end method
