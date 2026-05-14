.class public Lcom/umeng/analytics/pro/k;
.super Ljava/lang/Object;
.source "CoreProtocolImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/k$c;,
        Lcom/umeng/analytics/pro/k$a;,
        Lcom/umeng/analytics/pro/k$d;,
        Lcom/umeng/analytics/pro/k$b;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context; = null

.field private static final l:Ljava/lang/String; = "first_activate_time"

.field private static final m:Ljava/lang/String; = "ana_is_f"

.field private static final n:Ljava/lang/String; = "thtstart"

.field private static final o:Ljava/lang/String; = "dstk_last_time"

.field private static final p:Ljava/lang/String; = "dstk_cnt"

.field private static final q:Ljava/lang/String; = "gkvc"

.field private static final r:Ljava/lang/String; = "ekvc"

.field private static final t:Ljava/lang/String; = "-1"


# instance fields
.field private b:Lcom/umeng/analytics/pro/k$c;

.field private c:Landroid/content/SharedPreferences;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lorg/json/JSONArray;

.field private final h:I

.field private i:I

.field private j:I

.field private k:J

.field private final s:J

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/pro/k$c;

    .line 63
    iput-object v0, p0, Lcom/umeng/analytics/pro/k;->c:Landroid/content/SharedPreferences;

    .line 64
    iput-object v0, p0, Lcom/umeng/analytics/pro/k;->d:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    .line 70
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/analytics/pro/k;->f:I

    .line 72
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/k;->g:Lorg/json/JSONArray;

    .line 73
    const/16 v0, 0x1388

    iput v0, p0, Lcom/umeng/analytics/pro/k;->h:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/pro/k;->i:I

    .line 75
    iput v0, p0, Lcom/umeng/analytics/pro/k;->j:I

    .line 76
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/umeng/analytics/pro/k;->k:J

    .line 85
    const-wide/32 v3, 0x1b77400

    iput-wide v3, p0, Lcom/umeng/analytics/pro/k;->s:J

    .line 89
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/k;->u:Z

    .line 90
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/k;->v:Z

    .line 94
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/umeng/analytics/pro/k;->w:Ljava/lang/Object;

    .line 109
    :try_start_0
    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 110
    const-string v4, "thtstart"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/umeng/analytics/pro/k;->k:J

    .line 111
    const-string v1, "gkvc"

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/analytics/pro/k;->i:I

    .line 112
    const-string v1, "ekvc"

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/pro/k;->j:I

    .line 113
    new-instance v0, Lcom/umeng/analytics/pro/k$c;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/k$c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/pro/k$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/k$1;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/k;
    .locals 1

    .line 125
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 126
    if-eqz p0, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    .line 130
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/k$b;->a()Lcom/umeng/analytics/pro/k;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    .locals 5

    .line 712
    const-string v0, "header"

    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/m;->a(Lorg/json/JSONObject;)J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-lez v3, :cond_0

    .line 713
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 715
    const-string v2, "eof"

    invoke-static {p1}, Lcom/umeng/analytics/pro/m;->a(Lorg/json/JSONObject;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 716
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 719
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0, p2, p3, p1}, Lcom/umeng/analytics/pro/m;->a(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 722
    :catchall_0
    move-exception p2

    :cond_0
    :goto_0
    nop

    .line 723
    return-object p1
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 4

    .line 580
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 581
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->f()Lorg/json/JSONObject;

    move-result-object v0

    .line 582
    if-eqz v0, :cond_2

    .line 583
    const-string v1, "__av"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 584
    const-string v2, "__vc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "app_version"

    if-eqz v2, :cond_0

    .line 588
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 590
    :cond_0
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 593
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "version_code"

    if-eqz v1, :cond_1

    .line 594
    :try_start_2
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 596
    :cond_1
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 601
    :goto_1
    goto :goto_2

    .line 599
    :catchall_0
    move-exception p1

    .line 604
    :cond_2
    :goto_2
    return-void
.end method

.method private a(JI)Z
    .locals 4

    .line 1234
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    .line 1239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1240
    sub-long/2addr v1, p1

    const-wide/32 p1, 0x1b77400

    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    .line 1241
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->p()V

    .line 1242
    return v0

    .line 1244
    :cond_0
    const/16 p1, 0x1388

    if-ge p3, p1, :cond_1

    .line 1245
    return v0

    .line 1247
    :cond_1
    const/4 p1, 0x0

    return p1

    .line 1251
    :cond_2
    return v0
.end method

.method private b(Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    .locals 3

    .line 735
    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/m;->a(Lorg/json/JSONObject;)J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    .line 737
    const/4 p1, 0x0

    .line 738
    sget-object p2, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/umeng/analytics/pro/g;->a(ZZ)V

    .line 739
    sget-object p2, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/g;->b()V

    .line 740
    const-string p2, "MobclickRT"

    const-string p3, "--->>> Instant session packet overload !!! "

    invoke-static {p2, p3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 742
    :catchall_0
    move-exception p2

    :cond_0
    :goto_0
    nop

    .line 743
    return-object p1
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 5

    .line 758
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->e()Z

    move-result v0

    const-string v1, "version_code"

    const-string v2, "app_version"

    if-nez v0, :cond_3

    .line 759
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->g()Lorg/json/JSONObject;

    move-result-object v0

    .line 760
    if-eqz v0, :cond_2

    .line 761
    const-string v3, "__av"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 762
    const-string v4, "__vc"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 765
    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 767
    :cond_0
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 770
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 771
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 773
    :cond_1
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    :goto_1
    goto :goto_2

    .line 776
    :catchall_0
    move-exception p1

    .line 780
    :cond_2
    :goto_2
    goto :goto_3

    .line 783
    :cond_3
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 784
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 787
    goto :goto_3

    .line 785
    :catchall_1
    move-exception p1

    .line 789
    :goto_3
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 20

    .line 1610
    move-object/from16 v0, p1

    const-string v1, "autopages"

    const-string v2, "version_code"

    const-string v3, "analytics"

    const-string v4, "channel"

    const-string v5, "appkey"

    const-string v6, "device_model"

    const-string v7, "active_user"

    const-string v8, "device_id"

    const-string v9, "activate_msg"

    const-string v10, "sdk_version"

    const-string v11, "sessions"

    const-string v12, "error"

    const-string v13, "gkv"

    const-string v14, "header"

    const-string v15, "ekv"

    move-object/from16 v16, v4

    const-string v4, "dplus"

    if-nez v0, :cond_0

    return-void

    .line 1612
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->length()I

    move-result v17

    if-gtz v17, :cond_1

    return-void

    .line 1613
    :cond_1
    move-object/from16 v17, v5

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1615
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1616
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1617
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1618
    move-object/from16 v18, v2

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1619
    invoke-virtual {v5, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1617
    :cond_2
    move-object/from16 v18, v2

    .line 1621
    :goto_0
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1622
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1623
    invoke-virtual {v5, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1625
    :cond_3
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1626
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1627
    invoke-virtual {v5, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1629
    :cond_4
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1630
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1632
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 1633
    nop

    .line 1634
    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v13, v15, :cond_7

    .line 1635
    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 1636
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Lorg/json/JSONObject;->length()I

    move-result v19

    if-lez v19, :cond_6

    .line 1637
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1638
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1640
    :cond_5
    invoke-virtual {v12, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1634
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1643
    :cond_7
    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1645
    :cond_8
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1646
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1647
    invoke-virtual {v5, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1649
    :cond_9
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1650
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1651
    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 1615
    :cond_a
    move-object/from16 v18, v2

    .line 1655
    :cond_b
    :goto_2
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1656
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1657
    invoke-virtual {v5, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1660
    :cond_c
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1661
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1662
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1663
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_12

    .line 1664
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1665
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1667
    :cond_d
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1668
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1670
    :cond_e
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1671
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1673
    :cond_f
    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1674
    const-string v2, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1676
    :cond_10
    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1677
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1679
    :cond_11
    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1680
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1685
    :cond_12
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 1686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "constructMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1687
    const-string v0, "MobclickRT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1691
    :cond_13
    goto :goto_3

    .line 1689
    :catchall_0
    move-exception v0

    .line 1690
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    .line 1692
    :goto_3
    return-void
.end method

.method private c(Z)Z
    .locals 3

    .line 1322
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    const/4 p1, 0x1

    return p1

    .line 1325
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/pro/k$c;

    if-nez v0, :cond_1

    .line 1326
    new-instance v0, Lcom/umeng/analytics/pro/k$c;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/k$c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/pro/k$c;

    .line 1329
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/pro/k$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/k$c;->a()V

    .line 1331
    iget-object v0, p0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/pro/k$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/k$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    .line 1332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report policy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->shouldSendMessage(Z)Z

    move-result p1

    .line 1335
    if-eqz p1, :cond_4

    .line 1336
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz v1, :cond_3

    .line 1340
    :cond_2
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->q()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1341
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/k;->d()V

    .line 1345
    :cond_3
    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    if-eqz v0, :cond_4

    .line 1346
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1347
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/k;->d()V

    .line 1351
    :cond_4
    return p1
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 5

    .line 1772
    :try_start_0
    const-string v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1773
    const-string v1, "eof"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const-string v2, "sessions"

    const-string v3, "analytics"

    const-string v4, "content"

    if-eqz v0, :cond_2

    .line 1775
    :try_start_1
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1776
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1780
    :cond_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "MobclickRT"

    if-eqz v0, :cond_1

    .line 1785
    :try_start_2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1787
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1788
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1789
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 1790
    if-eqz p1, :cond_1

    .line 1791
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1792
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1796
    const-string v0, "--->>> removeAllInstantData: really delete instant session data"

    invoke-static {v4, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/g;->b(Ljava/lang/String;)V

    .line 1802
    :cond_1
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->b()V

    .line 1805
    const-string p1, "--->>> removeAllInstantData: send INSTANT_SESSION_START_CONTINUE event because OVERSIZE."

    invoke-static {v4, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    const/16 v0, 0x1101

    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    .line 1807
    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    const/4 v2, 0x0

    .line 1806
    invoke-static {p1, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_0

    .line 1811
    :cond_2
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1812
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1815
    :cond_3
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1816
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1817
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1819
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1820
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/g;->a(ZZ)V

    .line 1825
    :cond_4
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1828
    :goto_0
    goto :goto_1

    .line 1827
    :catch_0
    move-exception p1

    .line 1829
    :goto_1
    return-void
.end method

.method private d(Z)Z
    .locals 2

    .line 1947
    iget-object v0, p0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/pro/k$c;

    if-nez v0, :cond_0

    .line 1948
    new-instance v0, Lcom/umeng/analytics/pro/k$c;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/k$c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/pro/k$c;

    .line 1951
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/pro/k$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/k$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    .line 1952
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    if-eqz v1, :cond_2

    .line 1953
    if-eqz p1, :cond_1

    .line 1954
    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->shouldSendMessageByInstant()Z

    move-result p1

    return p1

    .line 1956
    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->shouldSendMessage(Z)Z

    move-result p1

    return p1

    .line 1959
    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private e(Ljava/lang/Object;)V
    .locals 5

    .line 1193
    const-string v0, "__t"

    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    .line 1194
    const/16 v1, 0x802

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1195
    iget-wide v0, p0, Lcom/umeng/analytics/pro/k;->k:J

    iget v2, p0, Lcom/umeng/analytics/pro/k;->i:I

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/analytics/pro/k;->a(JI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1196
    return-void

    .line 1198
    :cond_0
    iget v0, p0, Lcom/umeng/analytics/pro/k;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/pro/k;->i:I

    goto :goto_0

    .line 1199
    :cond_1
    const/16 v1, 0x801

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 1200
    iget-wide v0, p0, Lcom/umeng/analytics/pro/k;->k:J

    iget v2, p0, Lcom/umeng/analytics/pro/k;->j:I

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/analytics/pro/k;->a(JI)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1201
    return-void

    .line 1203
    :cond_2
    iget v0, p0, Lcom/umeng/analytics/pro/k;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/pro/k;->j:I

    .line 1206
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/k;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget v1, p0, Lcom/umeng/analytics/pro/k;->f:I

    if-lt v0, v1, :cond_4

    .line 1207
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/k;->g:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONArray;)V

    .line 1208
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/k;->g:Lorg/json/JSONArray;

    .line 1210
    :cond_4
    iget-wide v0, p0, Lcom/umeng/analytics/pro/k;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    .line 1211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/pro/k;->k:J

    .line 1213
    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/pro/k;->g:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1216
    goto :goto_1

    .line 1214
    :catchall_0
    move-exception p1

    .line 1215
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    .line 1217
    :goto_1
    return-void
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 6

    .line 1840
    :try_start_0
    const-string v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1841
    const-string v1, "eof"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "sessions"

    const-string v4, "analytics"

    const-string v5, "content"

    if-eqz v0, :cond_2

    .line 1843
    :try_start_1
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1844
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1848
    :cond_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1853
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1855
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1857
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->i()V

    .line 1858
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->h()V

    .line 1859
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/umeng/analytics/pro/g;->b(ZZ)V

    .line 1860
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->a()V

    goto :goto_0

    .line 1863
    :cond_1
    const-string p1, "MobclickRT"

    const-string v0, "--->>> Error, Should not go to this branch."

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    :goto_0
    goto :goto_1

    .line 1868
    :cond_2
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1869
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1872
    :cond_3
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1873
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1874
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 1876
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1877
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/umeng/analytics/pro/g;->b(ZZ)V

    .line 1879
    :cond_4
    const-string v0, "ekv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "gkv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1880
    :cond_5
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->h()V

    .line 1883
    :cond_6
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1884
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->i()V

    .line 1889
    :cond_7
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1892
    :cond_8
    :goto_1
    goto :goto_2

    .line 1891
    :catch_0
    move-exception p1

    .line 1893
    :goto_2
    return-void
.end method

.method private f(Ljava/lang/Object;)V
    .locals 6

    .line 2090
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    .line 2091
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2092
    :cond_0
    const-string v0, "ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2094
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;)V

    .line 2095
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/k;->d()V

    .line 2098
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    .line 2099
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2101
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object p1

    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {p1, v3, v0, v1}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;J)V

    .line 2103
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object p1

    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/umeng/analytics/pro/u;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2104
    const-string v3, "MobclickRT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--->>> onProfileSignIn: force generate new session: session id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object p1

    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {p1, v3, v0, v1}, Lcom/umeng/analytics/pro/q;->b(Landroid/content/Context;J)Z

    move-result p1

    .line 2107
    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/c;->b(Landroid/content/Context;)V

    .line 2109
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v3

    sget-object v4, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    .line 2111
    if-eqz p1, :cond_1

    .line 2112
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object p1

    sget-object v2, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {p1, v2, v0, v1}, Lcom/umeng/analytics/pro/q;->c(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2119
    :cond_1
    goto :goto_1

    .line 2091
    :cond_2
    :goto_0
    return-void

    .line 2115
    :catchall_0
    move-exception p1

    .line 2116
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 2117
    const-string v0, " Excepthon  in  onProfileSignOff"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2120
    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic g()Landroid/content/Context;
    .locals 1

    .line 56
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    return-object v0
.end method

.method private g(Ljava/lang/Object;)V
    .locals 7

    .line 2125
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;)V

    .line 2126
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/k;->d()V

    .line 2128
    check-cast p1, Lorg/json/JSONObject;

    .line 2129
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_0

    .line 2130
    :cond_0
    const-string v0, "provider"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2131
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2132
    const-string v2, "ts"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2134
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    .line 2135
    const/4 v4, 0x1

    if-eqz p1, :cond_1

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object p1, p1, v4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2137
    :cond_1
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object p1

    sget-object v5, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {p1, v5, v2, v3}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;J)V

    .line 2139
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object p1

    sget-object v5, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/umeng/analytics/pro/u;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2141
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v5

    sget-object v6, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {v5, v6, v2, v3}, Lcom/umeng/analytics/pro/q;->b(Landroid/content/Context;J)Z

    move-result v5

    .line 2143
    sget-object v6, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v6, v0, v1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    const-string v0, "MobclickRT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> onProfileSignIn: force generate new session: session id = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object p1

    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    .line 2149
    if-eqz v5, :cond_2

    .line 2150
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object p1

    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, v2, v3}, Lcom/umeng/analytics/pro/q;->c(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2156
    :cond_2
    goto :goto_1

    .line 2129
    :cond_3
    :goto_0
    return-void

    .line 2154
    :catchall_0
    move-exception p1

    .line 2157
    :goto_1
    return-void
.end method

.method private h()V
    .locals 6

    .line 329
    :try_start_0
    const-string v0, "com.umeng.analytics.vismode.event.VisualHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 330
    const-string v1, "loadNativeData"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 331
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 334
    :goto_0
    return-void
.end method

.method private h(Ljava/lang/Object;)V
    .locals 3

    .line 2161
    const-string v0, "__ii"

    :try_start_0
    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    .line 2162
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2163
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2164
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2165
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 2166
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2167
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v2, p1, v1}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2172
    :cond_0
    goto :goto_0

    .line 2171
    :catchall_0
    move-exception p1

    .line 2173
    :goto_0
    return-void
.end method

.method private i()V
    .locals 7

    .line 341
    :try_start_0
    const-string v0, "com.umeng.analytics.vismode.event.VisualHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 342
    const-string v1, "processCommond"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 343
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    aput-object v3, v2, v5

    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 346
    :goto_0
    return-void
.end method

.method private j()V
    .locals 5

    .line 389
    const-string v0, "exception"

    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/pro/k;->b(J)Lorg/json/JSONObject;

    move-result-object v1

    .line 391
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto :goto_1

    .line 393
    :cond_0
    const-string v2, "header"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 394
    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 396
    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 398
    const-string v3, "MobclickRT"

    const-string v4, "--->>> constructInstantMessage: request build envelope."

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    sget-object v4, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v4, v2, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 402
    if-eqz v1, :cond_2

    .line 404
    :try_start_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build envelope error code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :cond_1
    goto :goto_0

    .line 408
    :catchall_0
    move-exception v0

    .line 413
    :goto_0
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/k;->b(Ljava/lang/Object;)V

    .line 416
    :cond_2
    return-void

    .line 391
    :cond_3
    :goto_1
    return-void
.end method

.method private k()V
    .locals 5

    .line 427
    const-string v0, "exception"

    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/pro/k;->a(J)Lorg/json/JSONObject;

    move-result-object v1

    .line 429
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto :goto_1

    .line 430
    :cond_0
    const-string v2, "header"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 431
    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 432
    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 434
    invoke-static {v3, v2, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 437
    if-eqz v1, :cond_2

    .line 439
    :try_start_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    const-string v2, "MobclickRT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build envelope error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :cond_1
    goto :goto_0

    .line 442
    :catchall_0
    move-exception v0

    .line 445
    :goto_0
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/k;->c(Lorg/json/JSONObject;)V

    .line 447
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/k;->a(Ljava/lang/Object;)V

    .line 452
    :cond_2
    return-void

    .line 429
    :cond_3
    :goto_1
    return-void
.end method

.method private l()Lorg/json/JSONObject;
    .locals 3

    .line 747
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->m()Lorg/json/JSONObject;

    move-result-object v0

    .line 748
    if-eqz v0, :cond_0

    .line 750
    :try_start_0
    const-string v1, "st"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    goto :goto_0

    .line 751
    :catchall_0
    move-exception v1

    .line 754
    :cond_0
    :goto_0
    return-object v0
.end method

.method private m()Lorg/json/JSONObject;
    .locals 11

    .line 793
    const-string v0, "vers_name"

    const-string v1, "$ud_da"

    const-string v2, "$pr_ve"

    const-string v3, ""

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 795
    :try_start_0
    sget-object v5, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 796
    const-string v5, "wrapper_version"

    sget-object v6, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 797
    const-string v5, "wrapper_type"

    sget-object v6, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 800
    :cond_0
    sget-object v5, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v5

    .line 810
    const-string v6, "vertical_type"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 811
    const-string v5, "sdk_version"

    const-string v6, "8.0.0"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 817
    sget-object v5, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/AnalyticsConfig;->getSecretKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 818
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 819
    const-string v6, "secret"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 822
    :cond_1
    sget-object v5, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    const-string v6, "pr_ve"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 824
    sget-object v6, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 827
    sget-object v7, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    const-string v8, "ekv_bl_ver"

    invoke-static {v7, v8, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 828
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 829
    sget-boolean v8, Lcom/umeng/analytics/AnalyticsConfig;->CLEAR_EKV_BL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "$ekv_bl_ver"

    if-eqz v8, :cond_2

    .line 830
    :try_start_1
    invoke-virtual {v4, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 832
    :cond_2
    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 836
    :cond_3
    :goto_0
    sget-object v7, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    const-string v8, "ekv_wl_ver"

    invoke-static {v7, v8, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 837
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 838
    sget-boolean v8, Lcom/umeng/analytics/AnalyticsConfig;->CLEAR_EKV_WL:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "$ekv_wl_ver"

    if-eqz v8, :cond_4

    .line 839
    :try_start_2
    invoke-virtual {v4, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 841
    :cond_4
    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 846
    :cond_5
    :goto_1
    const-string v7, "pro_ver"

    const-string v8, "1.0.0"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 849
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->t()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 850
    const-string v7, "atm"

    const-string v8, "1"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 851
    if-eqz v6, :cond_6

    .line 852
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "ana_is_f"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 858
    :cond_6
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 859
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 864
    if-eqz v6, :cond_8

    .line 866
    invoke-interface {v6, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 867
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 870
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Ljava/util/Date;

    .line 871
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 874
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, "vers_date"

    const-string v9, "vers_pre_version"

    if-eqz v5, :cond_7

    .line 876
    :try_start_3
    const-string v5, "0"

    invoke-interface {v6, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 878
    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 882
    :cond_7
    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 883
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "pre_version"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "cur_version"

    .line 884
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pre_date"

    .line 885
    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 886
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vers_code"

    .line 887
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 888
    invoke-interface {v0, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 889
    invoke-interface {v0, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 890
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 902
    :cond_8
    goto :goto_2

    .line 900
    :catchall_0
    move-exception v0

    .line 901
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 903
    :goto_2
    return-object v4
.end method

.method private n()Ljava/lang/String;
    .locals 8

    .line 1060
    const-string v0, ""

    const-string v1, "pre_version"

    .line 1062
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    const-string v4, "pr_ve"

    invoke-static {v3, v4, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1063
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "0"

    if-eqz v3, :cond_4

    .line 1064
    :try_start_1
    iget-object v3, p0, Lcom/umeng/analytics/pro/k;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/umeng/analytics/pro/k;->d:Ljava/lang/String;

    return-object v0

    .line 1067
    :cond_0
    iget-object v3, p0, Lcom/umeng/analytics/pro/k;->c:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/analytics/pro/k;->c:Landroid/content/SharedPreferences;

    .line 1072
    :cond_1
    iget-object v3, p0, Lcom/umeng/analytics/pro/k;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1073
    sget-object v5, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1075
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "cur_version"

    if-eqz v6, :cond_2

    .line 1076
    :try_start_2
    iget-object v0, p0, Lcom/umeng/analytics/pro/k;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1077
    move-object v2, v4

    goto :goto_0

    .line 1079
    :cond_2
    iget-object v4, p0, Lcom/umeng/analytics/pro/k;->c:Landroid/content/SharedPreferences;

    invoke-interface {v4, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1080
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1081
    iget-object v3, p0, Lcom/umeng/analytics/pro/k;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1082
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1083
    move-object v2, v0

    goto :goto_0

    .line 1085
    :cond_3
    move-object v2, v3

    .line 1092
    :cond_4
    :goto_0
    goto :goto_1

    .line 1091
    :catchall_0
    move-exception v0

    .line 1093
    :goto_1
    iput-object v2, p0, Lcom/umeng/analytics/pro/k;->d:Ljava/lang/String;

    .line 1095
    return-object v2
.end method

.method private o()Ljava/lang/String;
    .locals 7

    .line 1104
    const-string v0, "pre_date"

    .line 1106
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    const-string v3, "ud_da"

    invoke-static {v2, v3, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1108
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1109
    iget-object v2, p0, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    return-object v0

    .line 1112
    :cond_0
    iget-object v2, p0, Lcom/umeng/analytics/pro/k;->c:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    sget-object v2, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/analytics/pro/k;->c:Landroid/content/SharedPreferences;

    .line 1113
    :cond_1
    iget-object v2, p0, Lcom/umeng/analytics/pro/k;->c:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1114
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "yyyy-MM-dd"

    if-eqz v3, :cond_2

    .line 1115
    :try_start_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    .line 1116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1117
    iget-object v3, p0, Lcom/umeng/analytics/pro/k;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1118
    nop

    .line 1119
    move-object v1, v2

    goto :goto_0

    .line 1120
    :cond_2
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    .line 1121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1122
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1123
    iget-object v2, p0, Lcom/umeng/analytics/pro/k;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1124
    move-object v1, v3

    goto :goto_0

    .line 1126
    :cond_3
    move-object v1, v2

    .line 1132
    :cond_4
    :goto_0
    goto :goto_1

    .line 1131
    :catchall_0
    move-exception v0

    .line 1133
    :goto_1
    iput-object v1, p0, Lcom/umeng/analytics/pro/k;->e:Ljava/lang/String;

    .line 1134
    return-object v1
.end method

.method private p()V
    .locals 5

    .line 1257
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/umeng/analytics/pro/k;->i:I

    .line 1258
    iput v0, p0, Lcom/umeng/analytics/pro/k;->j:I

    .line 1259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/umeng/analytics/pro/k;->k:J

    .line 1261
    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1262
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dstk_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dstk_cnt"

    .line 1263
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1264
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 1265
    return-void
.end method

.method private q()Z
    .locals 4

    .line 1363
    :try_start_0
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/q;->b()Ljava/lang/String;

    move-result-object v0

    .line 1364
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1365
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;)V

    .line 1368
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/k;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 1369
    nop

    .line 1370
    nop

    .line 1371
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/umeng/analytics/pro/k;->g:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1372
    iget-object v2, p0, Lcom/umeng/analytics/pro/k;->g:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1373
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1374
    const-string v3, "__i"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1375
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 1376
    :cond_1
    return v1

    .line 1371
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1380
    :cond_3
    nop

    .line 1384
    goto :goto_1

    .line 1381
    :cond_4
    return v1

    .line 1383
    :catchall_0
    move-exception v0

    .line 1385
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private r()V
    .locals 7

    .line 1993
    const-string v0, "__i"

    iget-object v1, p0, Lcom/umeng/analytics/pro/k;->g:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1994
    nop

    .line 1995
    nop

    .line 1996
    nop

    .line 1999
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2000
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/umeng/analytics/pro/k;->g:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2002
    :try_start_0
    iget-object v3, p0, Lcom/umeng/analytics/pro/k;->g:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2003
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 2004
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2005
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "-1"

    if-nez v5, :cond_0

    :try_start_1
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2006
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/q;->b()Ljava/lang/String;

    move-result-object v4

    .line 2007
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2008
    goto :goto_1

    .line 2007
    :cond_1
    move-object v6, v4

    .line 2010
    :goto_1
    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2012
    :cond_2
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 2014
    :cond_3
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2016
    :catchall_0
    move-exception v3

    :goto_2
    nop

    .line 2000
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2018
    :cond_4
    iput-object v1, p0, Lcom/umeng/analytics/pro/k;->g:Lorg/json/JSONArray;

    .line 2020
    :cond_5
    return-void
.end method

.method private s()V
    .locals 7

    .line 2027
    const-string v0, "first_activate_time"

    :try_start_0
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2028
    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 2029
    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2030
    if-eqz v1, :cond_0

    .line 2031
    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2032
    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    .line 2033
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2034
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2039
    :catchall_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 2040
    return-void
.end method

.method private t()Z
    .locals 5

    .line 2075
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2076
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2077
    if-eqz v0, :cond_0

    .line 2078
    const-string v1, "ana_is_f"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2079
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2080
    const/4 v0, 0x1

    return v0

    .line 2084
    :catchall_0
    move-exception v0

    :cond_0
    nop

    .line 2085
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(J)Lorg/json/JSONObject;
    .locals 8

    .line 467
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/u;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 468
    return-object v1

    .line 472
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/k;->b(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 474
    invoke-static {}, Lcom/umeng/analytics/pro/n;->a()Lcom/umeng/analytics/pro/n;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)I

    move-result v2

    .line 479
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v4, 0x3

    if-gtz v3, :cond_1

    .line 480
    if-eq v2, v4, :cond_4

    .line 484
    return-object v1

    .line 489
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v5, 0x1

    const-string v6, "userlevel"

    const-string v7, "active_user"

    if-ne v3, v5, :cond_3

    .line 490
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 494
    if-eq v2, v4, :cond_2

    return-object v1

    .line 497
    :cond_2
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 500
    if-eq v2, v4, :cond_4

    return-object v1

    .line 503
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 504
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 505
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 508
    if-eq v2, v4, :cond_4

    return-object v1

    .line 514
    :cond_4
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->m()Lorg/json/JSONObject;

    move-result-object v1

    .line 515
    if-eqz v1, :cond_5

    .line 516
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/k;->b(Lorg/json/JSONObject;)V

    .line 519
    :cond_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 521
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    const-string v6, "analytics"

    if-ne v2, v4, :cond_6

    .line 523
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 525
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 526
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 529
    :cond_7
    :goto_0
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 530
    const-string v0, "header"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    :cond_8
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 534
    const-string v0, "content"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 537
    :cond_9
    invoke-direct {p0, v3, p1, p2}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    goto :goto_1

    .line 538
    :catchall_0
    move-exception p1

    .line 544
    :goto_1
    return-object v3
.end method

.method public a()V
    .locals 5

    .line 134
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/umeng/analytics/pro/k;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-boolean v1, p0, Lcom/umeng/analytics/pro/k;->u:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 138
    const-string v1, "MobclickRT"

    const-string v3, "--->>> network is now available, rebuild instant session data packet."

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    const/16 v3, 0x1101

    sget-object v4, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    .line 140
    invoke-static {v4}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v4

    .line 139
    invoke-static {v1, v3, v4, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 142
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    iget-object v1, p0, Lcom/umeng/analytics/pro/k;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_1
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/k;->v:Z

    if-eqz v0, :cond_1

    .line 147
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    const/16 v3, 0x1102

    sget-object v4, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    .line 148
    invoke-static {v4}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v4

    .line 147
    invoke-static {v0, v3, v4, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 150
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 142
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 152
    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1714
    const-string v0, "exception"

    if-eqz p1, :cond_2

    .line 1715
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    .line 1720
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1721
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1722
    const/16 v1, 0x65

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 1725
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->e(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1728
    :cond_1
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->e(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1732
    :catchall_0
    move-exception p1

    :cond_2
    :goto_0
    nop

    .line 1733
    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 2

    .line 168
    nop

    .line 169
    nop

    .line 170
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    goto/16 :goto_1

    .line 313
    :pswitch_0
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->h()V

    .line 314
    goto/16 :goto_1

    .line 320
    :pswitch_1
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/b;->b(Ljava/lang/Object;)V

    .line 321
    goto/16 :goto_1

    .line 317
    :pswitch_2
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/b;->b(Ljava/lang/Object;)V

    .line 318
    goto/16 :goto_1

    .line 308
    :pswitch_3
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/q;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 309
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->i()V

    goto/16 :goto_1

    .line 263
    :pswitch_4
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b;->k()V

    .line 264
    goto/16 :goto_1

    .line 257
    :pswitch_5
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b;->m()V

    .line 258
    goto/16 :goto_1

    .line 251
    :pswitch_6
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/b;->a(Ljava/lang/Object;)V

    .line 252
    goto/16 :goto_1

    .line 281
    :pswitch_7
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/k;->c()V

    .line 282
    goto/16 :goto_1

    .line 298
    :pswitch_8
    invoke-virtual {p0, p1, v1}, Lcom/umeng/analytics/pro/k;->a(Ljava/lang/Object;Z)V

    .line 299
    goto/16 :goto_1

    .line 287
    :pswitch_9
    const-string p2, "MobclickRT"

    const-string v0, "--->>> INSTANT_SESSION_START"

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/pro/q;->b(Landroid/content/Context;Ljava/lang/Object;)V

    .line 289
    iget-object p2, p0, Lcom/umeng/analytics/pro/k;->w:Ljava/lang/Object;

    monitor-enter p2

    .line 290
    :try_start_0
    iput-boolean v1, p0, Lcom/umeng/analytics/pro/k;->u:Z

    .line 291
    monitor-exit p2

    .line 292
    goto/16 :goto_1

    .line 291
    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 231
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->h(Ljava/lang/Object;)V

    .line 232
    goto/16 :goto_1

    .line 224
    :pswitch_b
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/k;->d()V

    .line 225
    goto/16 :goto_1

    .line 304
    :pswitch_c
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/pro/q;->c(Landroid/content/Context;Ljava/lang/Object;)V

    .line 305
    goto/16 :goto_1

    .line 270
    :pswitch_d
    const-string p2, "MobclickRT"

    const-string v0, "--->>> START_SESSION"

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 273
    iget-object p2, p0, Lcom/umeng/analytics/pro/k;->w:Ljava/lang/Object;

    monitor-enter p2

    .line 274
    :try_start_1
    iput-boolean v1, p0, Lcom/umeng/analytics/pro/k;->v:Z

    .line 275
    monitor-exit p2

    .line 276
    goto/16 :goto_1

    .line 275
    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 244
    :pswitch_e
    const-string p2, "MobclickRT"

    const-string v0, "--->>> PROFILE_SIGNOFF"

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->f(Ljava/lang/Object;)V

    .line 246
    goto/16 :goto_1

    .line 237
    :pswitch_f
    const-string p2, "MobclickRT"

    const-string v0, "--->>> PROFILE_SIGNIN"

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->g(Ljava/lang/Object;)V

    .line 239
    goto :goto_1

    .line 217
    :pswitch_10
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)V

    .line 218
    goto :goto_1

    .line 211
    :pswitch_11
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/r;->a(Landroid/content/Context;)V

    .line 212
    goto :goto_1

    .line 196
    :pswitch_12
    if-eqz p1, :cond_0

    .line 197
    :try_start_2
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->e(Ljava/lang/Object;)V

    .line 199
    :cond_0
    check-cast p1, Lorg/json/JSONObject;

    .line 200
    const-string p2, "__i"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 201
    const-string p2, "-1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 202
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/k;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 204
    :cond_1
    goto :goto_1

    :catchall_2
    move-exception p1

    .line 205
    goto :goto_1

    .line 173
    :pswitch_13
    :try_start_3
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p2

    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->isMainProcess(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 177
    if-eqz p1, :cond_2

    .line 178
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->e(Ljava/lang/Object;)V

    .line 180
    :cond_2
    check-cast p1, Lorg/json/JSONObject;

    .line 181
    const-string p2, "__i"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    const-string p2, "-1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 183
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/k;->a(Z)V

    goto :goto_0

    .line 186
    :cond_3
    sget-object p2, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getSubProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 187
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    .line 186
    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->insertEventsInSubProcess(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 189
    :cond_4
    :goto_0
    goto :goto_1

    :catchall_3
    move-exception p1

    .line 190
    nop

    .line 325
    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1100
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2003
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;Z)V
    .locals 0

    .line 1973
    const/4 p1, 0x1

    if-eqz p2, :cond_0

    .line 1975
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1976
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->j()V

    goto :goto_0

    .line 1979
    :cond_0
    sget-object p2, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isOnline(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1982
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1983
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->j()V

    .line 1987
    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 355
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/pro/k$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/k$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    .line 358
    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz v0, :cond_1

    .line 359
    const-string v0, "MobclickRT"

    if-eqz p1, :cond_0

    .line 361
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 362
    const-string p1, "--->>> send session start in policy ReportQuasiRealtime."

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->k()V

    goto :goto_0

    .line 366
    :cond_0
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    sget-object v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_APP:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {p1, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 367
    const-string p1, "--->>> send normal data in policy ReportQuasiRealtime."

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->k()V

    goto :goto_0

    .line 373
    :cond_1
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    sget-object v0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_APP:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 374
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->k()V

    .line 378
    :cond_2
    :goto_0
    return-void
.end method

.method public b(J)Lorg/json/JSONObject;
    .locals 8

    .line 613
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/u;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 614
    return-object v1

    .line 618
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/pro/g;->b(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 621
    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 622
    const-string v4, "active_user"

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    aget-object v6, v3, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v3, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 623
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 625
    :try_start_0
    const-string v7, "provider"

    aget-object v2, v3, v2

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 626
    const-string v2, "puid"

    aget-object v3, v3, v5

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 627
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 628
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    :cond_1
    goto :goto_0

    .line 630
    :catchall_0
    move-exception v2

    .line 635
    :cond_2
    :goto_0
    invoke-static {}, Lcom/umeng/analytics/pro/n;->a()Lcom/umeng/analytics/pro/n;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/n;->a(Landroid/content/Context;)I

    move-result v2

    .line 638
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v5, :cond_3

    .line 639
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 644
    if-eq v2, v6, :cond_3

    .line 645
    return-object v1

    .line 651
    :cond_3
    invoke-static {}, Lcom/umeng/analytics/pro/n;->a()Lcom/umeng/analytics/pro/n;

    move-result-object v3

    sget-object v4, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {v3, v0, v4}, Lcom/umeng/analytics/pro/n;->b(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 656
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-gtz v3, :cond_4

    .line 657
    if-eq v2, v6, :cond_4

    .line 661
    return-object v1

    .line 666
    :cond_4
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->l()Lorg/json/JSONObject;

    move-result-object v1

    .line 667
    if-eqz v1, :cond_5

    .line 668
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/k;->a(Lorg/json/JSONObject;)V

    .line 671
    :cond_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 672
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 675
    const-string v5, "analytics"

    if-ne v2, v6, :cond_6

    .line 676
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 678
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 679
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 692
    :catchall_1
    move-exception p1

    goto :goto_2

    .line 682
    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 683
    const-string v0, "header"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    :cond_8
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 687
    const-string v0, "content"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 691
    :cond_9
    invoke-direct {p0, v3, p1, p2}, Lcom/umeng/analytics/pro/k;->b(Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 698
    :goto_2
    return-object v3
.end method

.method public b(Z)Lorg/json/JSONObject;
    .locals 17

    .line 914
    const-string v1, "userlevel"

    const-string v0, "autopages"

    const-string v2, "sessions"

    const-string v3, "pages"

    .line 924
    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v5

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Lcom/umeng/analytics/pro/g;->a(Z)Lorg/json/JSONObject;

    move-result-object v4

    .line 925
    if-nez v4, :cond_0

    .line 926
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    goto/16 :goto_7

    .line 929
    :cond_0
    :try_start_1
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 930
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 931
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 932
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 933
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 934
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 935
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 937
    if-nez v10, :cond_1

    if-eqz v11, :cond_1

    .line 938
    invoke-virtual {v9, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 939
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 942
    :cond_1
    const-string v12, "page_start"

    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    .line 943
    :try_start_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 944
    nop

    .line 945
    const/4 v14, 0x0

    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_2

    .line 946
    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/json/JSONObject;

    .line 947
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 950
    :cond_2
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v10, v14, :cond_3

    .line 951
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    .line 952
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 954
    :cond_3
    new-instance v10, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;

    invoke-direct {v10}, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;-><init>()V

    .line 955
    invoke-virtual {v10, v12}, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;->setCompareKey(Ljava/lang/String;)V

    .line 956
    invoke-static {v13, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 957
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 958
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 959
    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 960
    goto :goto_3

    .line 961
    :cond_4
    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 962
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 965
    :cond_5
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v11, "$page_num"

    if-eqz v10, :cond_8

    .line 966
    :try_start_3
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 967
    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_7

    .line 968
    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 969
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 970
    const-string v15, "ts"

    move-object/from16 v16, v6

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v14, v15, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 971
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_5

    .line 969
    :cond_6
    move-object/from16 v16, v6

    .line 967
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v16

    goto :goto_4

    .line 974
    :cond_7
    move-object/from16 v16, v6

    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 975
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v9, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 976
    goto :goto_6

    .line 977
    :cond_8
    move-object/from16 v16, v6

    const/4 v5, 0x0

    invoke-virtual {v9, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 980
    :goto_6
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 932
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, v16

    goto/16 :goto_0

    .line 982
    :cond_9
    invoke-virtual {v4, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 987
    :cond_a
    goto :goto_7

    .line 984
    :catch_0
    move-exception v0

    .line 985
    :try_start_4
    const-string v2, "merge pages error"

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 986
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 993
    :goto_7
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 994
    if-eqz v0, :cond_b

    .line 995
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 996
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 997
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1025
    :cond_b
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 1026
    if-eqz v0, :cond_c

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1027
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1028
    const-string v3, "provider"

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1029
    const-string v3, "puid"

    aget-object v0, v0, v1

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1030
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_c

    const-string v0, "active_user"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1035
    :cond_c
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1036
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1037
    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getGroupInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1038
    const-string v1, "group_info"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1041
    :cond_d
    invoke-static {}, Lcom/umeng/analytics/pro/n;->a()Lcom/umeng/analytics/pro/n;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {v0, v4, v1}, Lcom/umeng/analytics/pro/n;->a(Lorg/json/JSONObject;Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1050
    goto :goto_8

    .line 1049
    :catchall_0
    move-exception v0

    .line 1051
    :goto_8
    return-object v4
.end method

.method public b()V
    .locals 0

    .line 154
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    .line 1907
    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/g;->d()V

    .line 1909
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1910
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 1911
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    .line 1741
    const-string v0, "exception"

    if-eqz p1, :cond_2

    .line 1742
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    .line 1747
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1748
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1749
    const/16 v1, 0x65

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 1754
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->d(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1758
    :cond_1
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->d(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1762
    :catchall_0
    move-exception p1

    :cond_2
    :goto_0
    nop

    .line 1763
    return-void
.end method

.method public c()V
    .locals 1

    .line 161
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;)V

    .line 162
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/k;->d()V

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/k;->a(Z)V

    .line 164
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 1897
    sget-object p1, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;)V

    .line 1898
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/k;->d()V

    .line 1900
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/k;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1901
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->k()V

    .line 1903
    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    .line 1142
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/k;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1143
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/k;->g:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONArray;)V

    .line 1144
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/k;->g:Lorg/json/JSONArray;

    .line 1146
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1147
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "thtstart"

    iget-wide v2, p0, Lcom/umeng/analytics/pro/k;->k:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gkvc"

    iget v2, p0, Lcom/umeng/analytics/pro/k;->i:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ekvc"

    iget v2, p0, Lcom/umeng/analytics/pro/k;->j:I

    .line 1148
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    goto :goto_0

    .line 1149
    :catchall_0
    move-exception v0

    .line 1151
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    .line 1929
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->s()V

    .line 1932
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->n()Ljava/lang/String;

    .line 1933
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->o()Ljava/lang/String;

    .line 1935
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/k;->a(Z)V

    .line 1937
    return-void
.end method

.method public e()V
    .locals 1

    .line 1918
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/k;->d(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1919
    invoke-direct {p0}, Lcom/umeng/analytics/pro/k;->k()V

    .line 1921
    :cond_0
    return-void
.end method

.method public f()J
    .locals 7

    .line 2050
    const-string v0, "first_activate_time"

    .line 2052
    const-wide/16 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 2053
    sget-object v3, Lcom/umeng/analytics/pro/k;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2054
    if-eqz v3, :cond_1

    .line 2055
    invoke-interface {v3, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2056
    cmp-long v6, v4, v1

    if-nez v6, :cond_0

    .line 2057
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2058
    :try_start_2
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 2062
    :catchall_0
    move-exception v0

    move-wide v1, v4

    goto :goto_0

    .line 2056
    :cond_0
    move-wide v1, v4

    goto :goto_0

    .line 2062
    :catchall_1
    move-exception v0

    :cond_1
    :goto_0
    nop

    .line 2064
    return-wide v1
.end method
