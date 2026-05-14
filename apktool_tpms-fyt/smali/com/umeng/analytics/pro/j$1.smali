.class Lcom/umeng/analytics/pro/j$1;
.super Ljava/lang/Object;
.source "AutoViewPageTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/j;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/pro/j;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/umeng/analytics/pro/j$1;->a:Lcom/umeng/analytics/pro/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 229
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 225
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 9

    .line 201
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eq v0, v1, :cond_0

    .line 202
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/j$1;->a:Lcom/umeng/analytics/pro/j;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/j;->b(Lcom/umeng/analytics/pro/j;Landroid/app/Activity;)V

    .line 205
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->i()V

    .line 206
    iget-object v0, p0, Lcom/umeng/analytics/pro/j$1;->a:Lcom/umeng/analytics/pro/j;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/umeng/analytics/pro/j;->b:Z

    .line 208
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->f()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const-string v2, "@"

    aput-object v2, v5, v1

    .line 214
    new-array v6, v0, [Ljava/lang/String;

    aput-object p1, v6, v1

    .line 215
    sget-object v2, Lcom/umeng/analytics/pro/h;->r:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\\|"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_1
    goto :goto_0

    .line 218
    :catchall_0
    move-exception p1

    .line 221
    :goto_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    .line 177
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eq v0, v1, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    if-eqz p1, :cond_3

    .line 181
    iget-object v0, p0, Lcom/umeng/analytics/pro/j$1;->a:Lcom/umeng/analytics/pro/j;

    iget-boolean v0, v0, Lcom/umeng/analytics/pro/j;->b:Z

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/umeng/analytics/pro/j$1;->a:Lcom/umeng/analytics/pro/j;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/umeng/analytics/pro/j;->b:Z

    .line 183
    sget-object v0, Lcom/umeng/analytics/pro/j;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "."

    if-nez v0, :cond_1

    .line 184
    sget-object v0, Lcom/umeng/analytics/pro/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/umeng/analytics/pro/j$1;->a:Lcom/umeng/analytics/pro/j;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/j;->a(Lcom/umeng/analytics/pro/j;Landroid/app/Activity;)V

    .line 186
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b;->h()V

    goto :goto_0

    .line 189
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/j;->a:Ljava/lang/String;

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/pro/j$1;->a:Lcom/umeng/analytics/pro/j;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/j;->a(Lcom/umeng/analytics/pro/j;Landroid/app/Activity;)V

    .line 194
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b;->h()V

    .line 197
    :cond_3
    :goto_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 173
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 169
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 8

    .line 148
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eq v0, v1, :cond_0

    .line 149
    return-void

    .line 152
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->g()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v1, "@"

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 158
    new-array v5, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    .line 159
    sget-object v1, Lcom/umeng/analytics/pro/h;->s:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\\|"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_1
    goto :goto_0

    .line 162
    :catchall_0
    move-exception p1

    .line 165
    :goto_0
    return-void
.end method
