.class final Lcom/umeng/commonsdk/proguard/c$1;
.super Ljava/lang/Object;
.source "UMSysLocationCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/proguard/c;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/c$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 61
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/proguard/c;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/c$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/proguard/c;->b(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    .line 66
    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/c;->a(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    return-void

    .line 72
    :cond_0
    nop

    .line 74
    :try_start_2
    const-string v1, "UMSysLocationCache"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location status is ok, time is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    new-instance v0, Lcom/umeng/commonsdk/proguard/b;

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/c$1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/b;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v1, Lcom/umeng/commonsdk/proguard/c$1$1;

    invoke-direct {v1, p0, v0}, Lcom/umeng/commonsdk/proguard/c$1$1;-><init>(Lcom/umeng/commonsdk/proguard/c$1;Lcom/umeng/commonsdk/proguard/b;)V

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/b;->a(Lcom/umeng/commonsdk/proguard/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    const-wide/16 v0, 0x7530

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 167
    goto :goto_1

    .line 166
    :catch_0
    move-exception v0

    .line 170
    :goto_1
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v1

    .line 70
    :try_start_4
    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/c;->a(Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 71
    return-void

    .line 172
    :cond_1
    goto :goto_2

    .line 171
    :catchall_1
    move-exception v0

    .line 173
    :goto_2
    return-void
.end method
