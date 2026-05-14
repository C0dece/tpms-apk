.class public Lcom/umeng/commonsdk/framework/a;
.super Ljava/lang/Object;
.source "UMEnvelopeBuildImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)J
    .locals 2

    .line 28
    if-nez p0, :cond_0

    .line 29
    const-wide/16 v0, 0x0

    return-wide v0

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getLastSuccessfulBuildTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 127
    if-nez p0, :cond_0

    .line 128
    return-object p2

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->c()Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 101
    const-string v0, "--->>> buildEnvelopeFile Enter."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const/4 p0, 0x0

    .line 106
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    :try_start_1
    const-string p0, "exception"

    const/16 p2, 0x65

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    goto :goto_1

    .line 108
    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, p1

    move-object p1, p0

    move-object p0, v1

    .line 109
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 111
    :goto_1
    return-object p1

    .line 115
    :cond_0
    new-instance v0, Lcom/umeng/commonsdk/statistics/b;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/b;-><init>()V

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z
    .locals 4

    .line 57
    nop

    .line 58
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 60
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->isOnline(Landroid/content/Context;)Z

    move-result v1

    .line 61
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->envelopeFileNumber(Landroid/content/Context;)I

    move-result v2

    .line 63
    if-eqz v1, :cond_2

    .line 65
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->a()Z

    move-result v3

    .line 66
    if-eqz v3, :cond_0

    .line 68
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->b()I

    move-result p0

    .line 69
    int-to-long p0, p0

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/framework/c;->a(J)V

    .line 70
    nop

    .line 71
    goto :goto_0

    .line 73
    :cond_0
    const/4 v3, 0x1

    .line 74
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->hasEnvelopeFile(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 75
    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x1

    .line 80
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    if-lez v2, :cond_3

    .line 85
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->d()V

    .line 89
    :cond_3
    return v0
.end method

.method public static b(Landroid/content/Context;)J
    .locals 2

    .line 40
    if-nez p0, :cond_0

    .line 41
    const-wide/16 v0, 0x0

    return-wide v0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getLastInstantBuildTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Landroid/content/Context;)J
    .locals 2

    .line 139
    if-nez p0, :cond_0

    .line 140
    const-wide/16 v0, 0x0

    return-wide v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/b;->a(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method
