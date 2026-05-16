.class Lcom/syt/tmps/TpmsApplication$2;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "TpmsApplication.java"

# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syt/tmps/TpmsApplication;->showNormalNotifMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syt/tmps/TpmsApplication;


# direct methods
.method constructor <init>(Lcom/syt/tmps/TpmsApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/syt/tmps/TpmsApplication;

    iput-object p1, p0, Lcom/syt/tmps/TpmsApplication$2;->this$0:Lcom/syt/tmps/TpmsApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/syt/tmps/TpmsApplication$2;->this$0:Lcom/syt/tmps/TpmsApplication;

    invoke-static {v0}, Lcom/tpms/utils/NotifBar;->hideNormalNotif(Landroid/content/Context;)V

    return-void
.end method
