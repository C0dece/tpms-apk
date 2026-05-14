.class Lcom/umeng/commonsdk/internal/utils/c$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/internal/utils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/internal/utils/c;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/internal/utils/c;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/umeng/commonsdk/internal/utils/c$1;->a:Lcom/umeng/commonsdk/internal/utils/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 81
    const-string v0, "ts"

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 82
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 83
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 85
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    const-string v4, "le"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    goto :goto_0

    .line 88
    :catch_0
    move-exception v2

    .line 91
    :goto_0
    :try_start_2
    const-string v2, "voltage"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :try_start_3
    const-string v4, "vol"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    goto :goto_1

    .line 94
    :catch_1
    move-exception v2

    .line 98
    :goto_1
    :try_start_4
    const-string v2, "temperature"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 100
    :try_start_5
    const-string v4, "temp"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 104
    goto :goto_2

    .line 102
    :catch_2
    move-exception v2

    .line 106
    :goto_2
    :try_start_6
    const-string v2, "status"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 107
    nop

    .line 108
    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    const/4 v7, 0x4

    if-eq v2, v7, :cond_1

    const/4 v7, 0x5

    if-eq v2, v7, :cond_0

    goto :goto_3

    .line 131
    :cond_0
    const/4 v4, 0x2

    goto :goto_3

    .line 126
    :cond_1
    nop

    .line 127
    const/4 v4, 0x0

    goto :goto_3

    .line 117
    :cond_2
    nop

    .line 118
    const/4 v4, 0x1

    goto :goto_3

    .line 112
    :cond_3
    nop

    .line 113
    nop

    .line 135
    :goto_3
    :try_start_7
    const-string v2, "st"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 138
    goto :goto_4

    .line 136
    :catch_3
    move-exception v2

    .line 140
    :goto_4
    :try_start_8
    const-string v2, "plugged"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 141
    nop

    .line 142
    if-eq p2, v6, :cond_5

    if-eq p2, v5, :cond_4

    const/4 v5, 0x0

    goto :goto_5

    .line 149
    :cond_4
    goto :goto_5

    .line 145
    :cond_5
    nop

    .line 146
    const/4 v5, 0x1

    .line 153
    :goto_5
    :try_start_9
    const-string p2, "ct"

    invoke-virtual {v1, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 158
    goto :goto_6

    .line 156
    :catch_4
    move-exception p2

    .line 161
    :goto_6
    :try_start_a
    const-string p2, "BatteryUtils"

    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    const p2, 0x8003

    .line 164
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/c;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 166
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/utils/c$1;->a:Lcom/umeng/commonsdk/internal/utils/c;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/internal/utils/c;->c()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 171
    :cond_6
    goto :goto_7

    .line 169
    :catchall_0
    move-exception p1

    .line 170
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/c;->d()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 173
    :goto_7
    return-void
.end method
