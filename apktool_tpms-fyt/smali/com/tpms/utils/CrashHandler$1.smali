.class Lcom/tpms/utils/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/utils/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/utils/CrashHandler;


# direct methods
.method constructor <init>(Lcom/tpms/utils/CrashHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/utils/CrashHandler;

    .line 167
    iput-object p1, p0, Lcom/tpms/utils/CrashHandler$1;->this$0:Lcom/tpms/utils/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 170
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 171
    iget-object v0, p0, Lcom/tpms/utils/CrashHandler$1;->this$0:Lcom/tpms/utils/CrashHandler;

    invoke-static {v0}, Lcom/tpms/utils/CrashHandler;->access$000(Lcom/tpms/utils/CrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f88\u62b1\u6b49,\u7a0b\u5e8f\u51fa\u73b0\u5f02\u5e38,\u5373\u5c06\u9000\u51fa."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 173
    return-void
.end method
