.class Lcom/umeng/analytics/pro/t;
.super Ljava/lang/Object;
.source "SessionIdGenerateServiceImpl.java"

# interfaces
.implements Lcom/umeng/analytics/pro/s;


# instance fields
.field private a:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-wide v0, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    iput-wide v0, p0, Lcom/umeng/analytics/pro/t;->a:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/umeng/analytics/pro/t;->a:J

    return-wide v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 39
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 43
    if-eqz p1, :cond_0

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Appkey is null or empty, Please check!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/umeng/analytics/pro/t;->a:J

    .line 30
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 74
    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 76
    const-string v2, "session_id"

    invoke-interface {p1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    const-string p2, "session_end_time"

    const-wide/16 v2, 0x0

    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 80
    const-string p2, "a_start_time"

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 81
    const-string p2, "a_end_time"

    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception p1

    :goto_0
    nop

    .line 86
    return-void
.end method

.method public a(JJ)Z
    .locals 8

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 57
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_0

    sub-long p1, v0, p1

    iget-wide v5, p0, Lcom/umeng/analytics/pro/t;->a:J

    cmp-long v7, p1, v5

    if-gez v7, :cond_0

    .line 59
    return v2

    .line 63
    :cond_0
    cmp-long p1, p3, v3

    if-lez p1, :cond_1

    sub-long/2addr v0, p3

    iget-wide p1, p0, Lcom/umeng/analytics/pro/t;->a:J

    cmp-long p3, v0, p1

    if-lez p3, :cond_1

    .line 64
    const/4 p1, 0x1

    return p1

    .line 66
    :cond_1
    return v2
.end method
