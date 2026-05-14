.class Lcom/umeng/commonsdk/framework/b$2;
.super Landroid/os/Handler;
.source "UMNetWorkSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/framework/b;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/framework/b;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/framework/b;Landroid/os/Looper;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/umeng/commonsdk/framework/b$2;->a:Lcom/umeng/commonsdk/framework/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 246
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x111

    if-eq p1, v0, :cond_2

    const/16 v0, 0x112

    if-eq p1, v0, :cond_1

    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->k()V

    .line 255
    goto :goto_0

    .line 257
    :cond_1
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->l()V

    .line 259
    goto :goto_0

    .line 248
    :cond_2
    const-string p1, "--->>> handleMessage: recv MSG_PROCESS_NEXT msg."

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->j()V

    .line 251
    nop

    .line 264
    :goto_0
    return-void
.end method
