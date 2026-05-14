.class public Lcom/umeng/analytics/process/UMProcessDBDatasSender;
.super Ljava/lang/Object;
.source "UMProcessDBDatasSender.java"

# interfaces
.implements Lcom/umeng/commonsdk/framework/UMLogDataProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/process/UMProcessDBDatasSender$ReplaceCallback;,
        Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;
    }
.end annotation


# static fields
.field public static final UM_PROCESS_CONSTRUCTMESSAGE:I = 0x9052

.field public static final UM_PROCESS_EVENT_KEY:I = 0x9051

.field private static executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static mInstance:Lcom/umeng/analytics/process/UMProcessDBDatasSender;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGeneralBodyIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLockUtil:Lcom/umeng/commonsdk/utils/FileLockUtil;

.field private mPolicySelector:Lcom/umeng/analytics/pro/k$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-direct {v0}, Lcom/umeng/commonsdk/utils/FileLockUtil;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mLockUtil:Lcom/umeng/commonsdk/utils/FileLockUtil;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private constructMessage()V
    .locals 4

    .line 408
    invoke-direct {p0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->defconProcesserHandler()I

    move-result v0

    .line 409
    if-eqz v0, :cond_0

    .line 410
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mLockUtil:Lcom/umeng/commonsdk/utils/FileLockUtil;

    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/umeng/analytics/process/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;Lcom/umeng/analytics/process/UMProcessDBDatasSender$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/lang/String;Lcom/umeng/commonsdk/utils/FileLockCallback;)V

    .line 414
    return-void
.end method

.method private defconProcesserHandler()I
    .locals 4

    .line 446
    invoke-static {}, Lcom/umeng/analytics/pro/n;->a()Lcom/umeng/analytics/pro/n;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)I

    move-result v0

    .line 448
    if-eqz v0, :cond_0

    .line 452
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/process/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ReplaceCallback;

    invoke-direct {v3, p0, v1}, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ReplaceCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;Lcom/umeng/analytics/process/UMProcessDBDatasSender$1;)V

    invoke-static {v2, v3, v1}, Lcom/umeng/analytics/process/DBFileTraversalUtil;->traverseDBFiles(Ljava/lang/String;Lcom/umeng/commonsdk/utils/FileLockCallback;Lcom/umeng/analytics/process/DBFileTraversalUtil$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 456
    :catch_0
    move-exception v2

    :goto_0
    nop

    .line 459
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object v2

    const-string v3, "_main_"

    invoke-virtual {v2, v3, v1, v1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->deleteEventDatas(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 461
    :cond_0
    return v0
.end method

.method private generalBody()Lorg/json/JSONObject;
    .locals 7

    .line 293
    const-string v0, "userlevel"

    .line 297
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    if-nez v2, :cond_0

    .line 298
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v3

    const-wide/16 v5, 0x7d0

    sub-long/2addr v3, v5

    iget-object v5, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v5}, Lcom/umeng/analytics/process/UMProcessDBHelper;->readMainEvents(JLjava/util/List;)Lorg/json/JSONObject;

    move-result-object v1

    .line 306
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 307
    if-eqz v2, :cond_1

    .line 308
    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 310
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_2

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 319
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 320
    const-string v5, "provider"

    aget-object v2, v0, v2

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string v2, "puid"

    aget-object v0, v0, v3

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "active_user"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 328
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 329
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getGroupInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string v2, "group_info"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :cond_3
    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    .line 342
    :goto_0
    return-object v1
.end method

.method private generalHeader()Lorg/json/JSONObject;
    .locals 8

    .line 219
    const-string v0, "$ud_da"

    const-string v1, "$pr_ve"

    const-string v2, "pr_ve"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 221
    :try_start_0
    sget-object v4, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 222
    const-string v4, "wrapper_version"

    sget-object v5, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v4, "wrapper_type"

    sget-object v5, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    :cond_0
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v4

    .line 227
    const-string v5, "vertical_type"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 228
    const-string v4, "sdk_version"

    const-string v5, "8.0.0"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    nop

    .line 231
    nop

    .line 232
    nop

    .line 233
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ""

    if-lez v4, :cond_1

    .line 235
    :try_start_1
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object v4

    iget-object v6, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v4, v6}, Lcom/umeng/analytics/process/UMProcessDBHelper;->readVersionInfoFromColumId(Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v4

    .line 236
    if-eqz v4, :cond_1

    .line 237
    const-string v5, "__av"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 238
    const-string v6, "__vc"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 243
    :cond_1
    move-object v4, v5

    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "app_version"

    if-eqz v6, :cond_2

    .line 244
    :try_start_2
    iget-object v5, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 246
    :cond_2
    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, "version_code"

    if-eqz v5, :cond_3

    .line 250
    :try_start_3
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 252
    :cond_3
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    :goto_2
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/AnalyticsConfig;->getSecretKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 258
    const-string v5, "secret"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    :cond_4
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 263
    iget-object v6, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 266
    iget-object v7, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {v7, v2, v5}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    const-string v7, "ud_da"

    invoke-static {v2, v7, v5}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v2, "pro_ver"

    const-string v5, "1.0.0"

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 275
    const-string v2, "vers_pre_version"

    const-string v4, "0"

    invoke-interface {v6, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 278
    const-string v2, "vers_date"

    invoke-interface {v6, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    :cond_5
    goto :goto_3

    .line 280
    :catchall_0
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 283
    :goto_3
    return-object v3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBDatasSender;
    .locals 2

    .line 69
    sget-object v0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mInstance:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    if-nez v0, :cond_1

    .line 70
    const-class v0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mInstance:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    invoke-direct {v1}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;-><init>()V

    sput-object v1, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mInstance:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    .line 74
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 77
    :cond_1
    :goto_0
    sget-object v0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mInstance:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    iput-object p0, v0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    .line 79
    return-object v0
.end method


# virtual methods
.method public removeCacheData(Ljava/lang/Object;)V
    .locals 2

    .line 123
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    check-cast p1, Lorg/json/JSONObject;

    .line 128
    const-string v0, "analytics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 131
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "ekv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/process/UMProcessDBHelper;->deleteMainProcessEventDatasByIds(Ljava/util/List;)V

    .line 134
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mGeneralBodyIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 137
    :cond_1
    return-void

    .line 124
    :cond_2
    :goto_0
    return-void
.end method

.method public setupReportData(J)Lorg/json/JSONObject;
    .locals 6

    .line 156
    invoke-static {}, Lcom/umeng/analytics/pro/n;->a()Lcom/umeng/analytics/pro/n;

    move-result-object p1

    iget-object p2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)I

    move-result p1

    .line 159
    invoke-direct {p0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->generalBody()Lorg/json/JSONObject;

    move-result-object p2

    .line 164
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 166
    return-object v1

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->generalHeader()Lorg/json/JSONObject;

    move-result-object v0

    .line 172
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 174
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    const/4 v4, 0x3

    const-string v5, "analytics"

    if-ne p1, v4, :cond_1

    .line 176
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 178
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 179
    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 183
    const-string p1, "header"

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_7

    .line 187
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 188
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    const-string v4, "userlevel"

    const-string v5, "active_user"

    if-ne p2, v0, :cond_5

    .line 190
    :try_start_2
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 191
    return-object v1

    .line 193
    :cond_4
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 194
    return-object v1

    .line 197
    :cond_5
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 198
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 199
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 200
    return-object v1

    .line 204
    :cond_6
    const-string p1, "content"

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    :cond_7
    goto :goto_1

    .line 209
    :catchall_0
    move-exception p1

    .line 215
    :goto_1
    return-object v2
.end method

.method public workEvent(Ljava/lang/Object;I)V
    .locals 3

    .line 85
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->isMainProcess(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 112
    :pswitch_0
    const-string p1, "MobclickRT"

    const-string p2, "--->>> recv UM_PROCESS_CONSTRUCTMESSAGE msg."

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->constructMessage()V

    .line 114
    goto :goto_0

    .line 101
    :pswitch_1
    sget-object p1, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p2, Lcom/umeng/analytics/process/UMProcessDBDatasSender$1;

    invoke-direct {p2, p0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender$1;-><init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)V

    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 110
    nop

    .line 118
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x9051
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
