.class final Lcom/umeng/commonsdk/framework/b$1;
.super Landroid/content/BroadcastReceiver;
.source "UMNetWorkSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/framework/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 168
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 169
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object p2

    .line 170
    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->a(Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 172
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->f()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 173
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->f()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->a(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 174
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->g()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->g()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const-string v0, "--->>> network isAvailable, check if there are any files to send."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->a(Z)Z

    .line 177
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->h()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 178
    :try_start_1
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->i()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 179
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->i()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 180
    if-lez v3, :cond_0

    .line 181
    nop

    :goto_0
    if-ge v1, v3, :cond_0

    .line 182
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->i()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/commonsdk/framework/UMSenderStateNotify;

    invoke-interface {v4}, Lcom/umeng/commonsdk/framework/UMSenderStateNotify;->onConnectionAvailable()V

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    const/16 v1, 0x111

    :try_start_2
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/b;->a(I)V

    .line 188
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->g()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p2, v0, :cond_3

    .line 190
    if-eqz p1, :cond_1

    .line 191
    const p2, 0x8006

    :try_start_3
    invoke-static {p2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->eventHasExist(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    nop

    .line 194
    invoke-static {p1}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v0

    const/4 v1, 0x0

    .line 193
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 197
    :catchall_0
    move-exception p1

    .line 198
    :cond_1
    :goto_1
    goto :goto_2

    .line 186
    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1

    .line 201
    :cond_2
    const-string p1, "--->>> network disconnected."

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 202
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/b;->a(Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 207
    :cond_3
    :goto_2
    goto :goto_3

    .line 205
    :catchall_2
    move-exception p1

    .line 206
    invoke-static {p2, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 209
    :cond_4
    :goto_3
    return-void
.end method
