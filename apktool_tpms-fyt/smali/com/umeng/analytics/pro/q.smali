.class public Lcom/umeng/analytics/pro/q;
.super Ljava/lang/Object;
.source "SessionTracker.java"

# interfaces
.implements Lcom/umeng/analytics/pro/u$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/q$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "session_start_time"

.field public static final b:Ljava/lang/String; = "session_end_time"

.field public static final c:Ljava/lang/String; = "session_id"

.field public static final d:Ljava/lang/String; = "pre_session_id"

.field public static final e:Ljava/lang/String; = "a_start_time"

.field public static final f:Ljava/lang/String; = "a_end_time"

.field private static g:Ljava/lang/String;

.field private static h:Landroid/content/Context;

.field private static i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/pro/q;->g:Ljava/lang/String;

    .line 46
    sput-object v0, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/analytics/pro/q;->i:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/pro/u;->a(Lcom/umeng/analytics/pro/u$a;)V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/q$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/umeng/analytics/pro/q;-><init>()V

    return-void
.end method

.method public static a()Lcom/umeng/analytics/pro/q;
    .locals 1

    .line 59
    invoke-static {}, Lcom/umeng/analytics/pro/q$a;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 2

    .line 481
    sget-object v0, Lcom/umeng/analytics/pro/q;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/q;->g:Ljava/lang/String;

    .line 484
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/umeng/analytics/pro/q;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 489
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 490
    const-string v1, "__f"

    invoke-virtual {v0, v1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 492
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p5

    invoke-virtual {p5}, Lcom/umeng/analytics/b;->b()Lorg/json/JSONObject;

    move-result-object p5

    .line 493
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Lorg/json/JSONObject;->length()I

    move-result p6

    if-lez p6, :cond_2

    .line 494
    const-string p6, "__sp"

    invoke-virtual {v0, p6, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    :cond_2
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p5

    invoke-virtual {p5}, Lcom/umeng/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object p5

    .line 498
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Lorg/json/JSONObject;->length()I

    move-result p6

    if-lez p6, :cond_3

    .line 499
    const-string p6, "__pp"

    invoke-virtual {v0, p6, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    :cond_3
    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p5

    sget-object p6, Lcom/umeng/analytics/pro/q;->g:Ljava/lang/String;

    sget-object v1, Lcom/umeng/analytics/pro/g$a;->d:Lcom/umeng/analytics/pro/g$a;

    invoke-virtual {p5, p6, v0, v1}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 502
    :catch_0
    move-exception p5

    :goto_0
    nop

    .line 505
    :try_start_1
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    .line 506
    const-string p6, "__e"

    invoke-virtual {p5, p6, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 507
    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    sget-object p3, Lcom/umeng/analytics/pro/g$a;->c:Lcom/umeng/analytics/pro/g$a;

    invoke-virtual {p1, p2, p5, p3}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 508
    :catch_1
    move-exception p1

    :goto_1
    nop

    .line 510
    sput-object p2, Lcom/umeng/analytics/pro/q;->g:Ljava/lang/String;

    .line 511
    return-void

    .line 485
    :cond_4
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 10

    .line 514
    sget-object v0, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 515
    if-nez v0, :cond_0

    .line 516
    return-void

    .line 522
    :cond_0
    const-wide/16 v1, 0x0

    const-string v3, "session_end_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 525
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 526
    const-string v5, "__ii"

    invoke-virtual {v0, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    const-string v5, "__e"

    invoke-virtual {v0, v5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 528
    const-string p2, "__f"

    invoke-virtual {v0, p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 530
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->getLocation()[D

    move-result-object p2

    .line 531
    const/4 p3, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    .line 532
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 533
    const-string v5, "lat"

    aget-wide v6, p2, p3

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 534
    const-string v5, "lng"

    aget-wide v6, p2, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 535
    const-string p2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, p2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 536
    const-string p2, "__d"

    invoke-virtual {v0, p2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    :cond_1
    const-string p2, "android.net.TrafficStats"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 540
    const-string v4, "getUidRxBytes"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, p3

    invoke-virtual {p2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 541
    const-string v5, "getUidTxBytes"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, p3

    invoke-virtual {p2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 542
    sget-object v5, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 543
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 544
    return-void

    .line 546
    :cond_2
    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, p3

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 547
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p3

    invoke-virtual {p2, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 548
    cmp-long v3, v8, v1

    if-lez v3, :cond_4

    cmp-long v3, p2, v1

    if-gtz v3, :cond_3

    goto :goto_0

    .line 551
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 552
    const-string v2, "download_traffic"

    invoke-virtual {v1, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 553
    const-string v2, "upload_traffic"

    invoke-virtual {v1, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 554
    const-string p2, "__c"

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    :cond_4
    :goto_0
    sget-object p2, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/g$a;->e:Lcom/umeng/analytics/pro/g$a;

    invoke-virtual {p2, p1, v0, p3}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z

    .line 558
    sget-object p1, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/r;->a(Landroid/content/Context;)V

    .line 559
    sget-object p1, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 561
    :catchall_0
    move-exception p1

    :goto_1
    nop

    .line 562
    return-void
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 322
    sget-object v0, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 323
    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    .line 332
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/u;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 336
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/q;->c(Landroid/content/Context;)V

    .line 338
    sget-object p1, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/k;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/umeng/analytics/pro/k;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 340
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 342
    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    .line 352
    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;)V

    .line 354
    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/k;->d()V

    .line 355
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 443
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/q;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 444
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 446
    :catchall_0
    move-exception p1

    :cond_0
    nop

    .line 448
    sget-object p1, Lcom/umeng/analytics/pro/q;->g:Ljava/lang/String;

    return-object p1
.end method

.method public a(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 3

    .line 259
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/u;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> onInstantSessionInternal: current session id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobclickRT"

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 263
    const-string v2, "__e"

    invoke-virtual {v1, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 265
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/b;->b()Lorg/json/JSONObject;

    move-result-object p2

    .line 266
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_0

    .line 267
    const-string p3, "__sp"

    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object p2

    .line 271
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_1

    .line 272
    const-string p3, "__pp"

    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    :cond_1
    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/g$a;->f:Lcom/umeng/analytics/pro/g$a;

    invoke-virtual {p2, v0, v1, p3}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z

    .line 279
    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/k;

    move-result-object p1

    invoke-virtual {p1, v1, p4}, Lcom/umeng/analytics/pro/k;->a(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 280
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 282
    return-object v0
.end method

.method public a(Landroid/content/Context;J)V
    .locals 1

    .line 63
    sget-object p1, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 66
    if-eqz p1, :cond_0

    .line 67
    const-string v0, "session_start_time"

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 16

    .line 77
    move-object/from16 v1, p0

    const-string v0, "Extend current session: "

    const-string v2, ""

    const-string v3, "versionname"

    :try_start_0
    sget-object v4, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    .line 82
    :cond_0
    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 83
    sget-object v6, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 84
    if-nez v6, :cond_1

    .line 85
    return-void

    .line 87
    :cond_1
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 88
    if-nez v7, :cond_2

    .line 89
    return-void

    .line 92
    :cond_2
    invoke-interface {v6, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 93
    sget-object v9, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-static {v9}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 95
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v13, "a_end_time"

    const-string v14, "MobclickRT"

    const-string v15, "versioncode"

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    .line 97
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v15, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v7, v3, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 100
    :cond_3
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--->>> onStartSessionInternal: upgrade version: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-> "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-interface {v6, v15, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 104
    const-string v10, "pre_date"

    invoke-interface {v6, v10, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 105
    const-string v12, "pre_version"

    invoke-interface {v6, v12, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 106
    invoke-interface {v6, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static/range {p1 .. p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v7, v15, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v7, v3, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    const-string v3, "vers_date"

    invoke-interface {v7, v3, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v3, "vers_pre_version"

    invoke-interface {v7, v3, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-string v3, "cur_version"

    invoke-interface {v7, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    const-string v2, "vers_code"

    invoke-interface {v7, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 131
    const-string v0, "vers_name"

    invoke-interface {v7, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    const-wide/16 v2, 0x0

    invoke-interface {v6, v13, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 139
    sub-long v2, v4, v8

    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/u;->b()J

    move-result-wide v8

    cmp-long v0, v2, v8

    if-gez v0, :cond_4

    .line 140
    const-wide/16 v2, 0x0

    invoke-interface {v7, v13, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 144
    :cond_4
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    sget-boolean v0, Lcom/umeng/analytics/pro/q;->i:Z

    if-eqz v0, :cond_5

    .line 147
    sput-boolean v11, Lcom/umeng/analytics/pro/q;->i:Z

    .line 152
    sget-object v0, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-virtual {v1, v0, v4, v5}, Lcom/umeng/analytics/pro/q;->b(Landroid/content/Context;J)Z

    .line 153
    sget-object v0, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-virtual {v1, v0, v4, v5}, Lcom/umeng/analytics/pro/q;->c(Landroid/content/Context;J)V

    .line 156
    :cond_5
    return-void

    .line 159
    :cond_6
    :goto_0
    sget-boolean v2, Lcom/umeng/analytics/pro/q;->i:Z

    if-eqz v2, :cond_7

    .line 160
    sput-boolean v11, Lcom/umeng/analytics/pro/q;->i:Z

    .line 161
    invoke-direct/range {p0 .. p1}, Lcom/umeng/analytics/pro/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/q;->g:Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start new session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/umeng/analytics/pro/q;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSessionChanged flag has been set, Start new session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/umeng/analytics/pro/q;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 165
    :cond_7
    const-string v2, "session_id"

    const/4 v3, 0x0

    invoke-interface {v6, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/umeng/analytics/pro/q;->g:Ljava/lang/String;

    .line 166
    const-string v2, "a_start_time"

    invoke-interface {v7, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 167
    const-wide/16 v2, 0x0

    invoke-interface {v7, v13, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/umeng/analytics/pro/q;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;)V

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/umeng/analytics/pro/q;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-direct/range {p0 .. p1}, Lcom/umeng/analytics/pro/q;->c(Landroid/content/Context;)V

    .line 173
    sget-object v0, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/k;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/umeng/analytics/pro/k;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 175
    :catchall_0
    move-exception v0

    :goto_1
    nop

    .line 176
    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 0

    .line 472
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 473
    return-void

    .line 475
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/analytics/pro/q;->a(Ljava/lang/String;J)V

    .line 476
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7

    .line 459
    sget-object v1, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;Ljava/lang/String;JJ)V

    .line 460
    const-string p1, "MobclickRT"

    const-string p2, "saveSessionToDB: complete"

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    sget-boolean p1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->SUB_PROCESS_EVENT:Z

    if-eqz p1, :cond_0

    .line 463
    sget-object p1, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    const p2, 0x9051

    .line 465
    invoke-static {p1}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    move-result-object p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    .line 463
    invoke-static {p1, p2, p3, p4}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 467
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 437
    sget-object v0, Lcom/umeng/analytics/pro/q;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 7

    .line 185
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 186
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    .line 190
    :cond_0
    if-nez p2, :cond_1

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    goto :goto_0

    .line 193
    :cond_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 196
    :goto_0
    sget-object v0, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 197
    if-nez v0, :cond_2

    .line 198
    return-void

    .line 200
    :cond_2
    const-string v1, "versionname"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    sget-object v2, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 203
    if-nez v0, :cond_3

    .line 204
    return-void

    .line 207
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "session_start_time"

    const/4 v5, 0x1

    const-string v6, "MobclickRT"

    if-nez v3, :cond_4

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 208
    const-string v1, "--->>> requestNewInstantSessionIf: version upgrade"

    invoke-static {v6, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-interface {v0, v4, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    sget-object v0, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/umeng/analytics/pro/k;->a(Ljava/lang/Object;Z)V

    .line 220
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/u;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> force generate new session: session id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sput-boolean v5, Lcom/umeng/analytics/pro/q;->i:Z

    .line 223
    sget-object v0, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2, v5}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    .line 224
    return-void

    .line 228
    :cond_4
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/u;->e(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 230
    const-string v1, "--->>> More then 30 sec from last session."

    invoke-static {v6, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sput-boolean v5, Lcom/umeng/analytics/pro/q;->i:Z

    .line 234
    invoke-interface {v0, v4, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    sget-object v0, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    goto :goto_1

    .line 239
    :cond_5
    const-string p1, "--->>> less then 30 sec from last session, do nothing."

    invoke-static {v6, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sput-boolean v2, Lcom/umeng/analytics/pro/q;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :goto_1
    goto :goto_2

    .line 243
    :catchall_0
    move-exception p1

    .line 247
    :goto_2
    return-void
.end method

.method public b(Landroid/content/Context;J)Z
    .locals 10

    .line 365
    nop

    .line 368
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 369
    if-nez v1, :cond_0

    .line 370
    return v0

    .line 373
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 375
    if-nez v2, :cond_1

    .line 376
    return v0

    .line 379
    :cond_1
    const-string v3, "a_start_time"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 380
    const-string v3, "a_end_time"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 383
    cmp-long v1, v6, v4

    if-lez v1, :cond_4

    cmp-long v1, v8, v4

    if-nez v1, :cond_4

    .line 384
    const/4 v0, 0x1

    .line 385
    sget-object v1, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/umeng/analytics/pro/q;->c(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 389
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 390
    const-string v3, "__f"

    invoke-virtual {v1, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 392
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/b;->b()Lorg/json/JSONObject;

    move-result-object p2

    .line 393
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_2

    .line 394
    const-string p3, "__sp"

    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    :cond_2
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object p2

    .line 398
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_3

    .line 399
    const-string p3, "__pp"

    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    :cond_3
    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    sget-object p2, Lcom/umeng/analytics/pro/g$a;->d:Lcom/umeng/analytics/pro/g$a;

    invoke-virtual {p1, v2, v1, p2}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z

    .line 405
    sget-object p1, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/k;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception p1

    :goto_0
    goto :goto_1

    .line 412
    :catchall_1
    move-exception p1

    :cond_4
    :goto_1
    nop

    .line 413
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 453
    sget-object v0, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;J)V
    .locals 0

    .line 422
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 423
    if-nez p1, :cond_0

    .line 424
    return-void

    .line 431
    :cond_0
    :try_start_0
    sget-object p1, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/k;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/k;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 432
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 433
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 6

    .line 287
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 288
    if-eqz p1, :cond_0

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/q;->h:Landroid/content/Context;

    .line 292
    :cond_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 293
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 294
    if-nez p1, :cond_1

    .line 295
    return-void

    .line 298
    :cond_1
    const-string p2, "a_start_time"

    const-wide/16 v2, 0x0

    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 300
    cmp-long p2, v4, v2

    if-nez p2, :cond_2

    .line 301
    const-string p1, "onPause called before onResume"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 306
    const-string p2, "MobclickRT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>> onEndSessionInternal: write activity end time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string p2, "a_end_time"

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 308
    const-string p2, "session_end_time"

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 310
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 312
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 313
    return-void
.end method
