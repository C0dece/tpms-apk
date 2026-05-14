.class public Lcom/umeng/analytics/pro/j;
.super Ljava/lang/Object;
.source "AutoViewPageTracker.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static e:Lorg/json/JSONArray;

.field private static f:Ljava/lang/Object;


# instance fields
.field b:Z

.field c:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/Application;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/pro/j;->a:Ljava/lang/String;

    .line 41
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/j;->e:Lorg/json/JSONArray;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/j;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/j;->d:Ljava/util/Map;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/j;->g:Landroid/app/Application;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/j;->h:Z

    .line 54
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/j;->b:Z

    .line 143
    new-instance v0, Lcom/umeng/analytics/pro/j$1;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/j$1;-><init>(Lcom/umeng/analytics/pro/j;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/j;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/j;->g:Landroid/app/Application;

    if-nez v0, :cond_2

    .line 59
    if-eqz p1, :cond_2

    .line 61
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 62
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/j;->g:Landroid/app/Application;

    goto :goto_0

    .line 63
    :cond_0
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 64
    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/umeng/analytics/pro/j;->g:Landroid/app/Application;

    .line 66
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/j;->g:Landroid/app/Application;

    if-eqz v0, :cond_2

    .line 67
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/j;->b(Landroid/content/Context;)V

    .line 73
    :cond_2
    monitor-exit p0

    .line 75
    return-void

    .line 73
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/j;->a:Ljava/lang/String;

    .line 241
    iget-object p1, p0, Lcom/umeng/analytics/pro/j;->d:Ljava/util/Map;

    monitor-enter p1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/j;->d:Ljava/util/Map;

    sget-object v1, Lcom/umeng/analytics/pro/j;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    monitor-exit p1

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .line 118
    if-eqz p0, :cond_0

    .line 119
    nop

    .line 120
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 121
    sget-object v1, Lcom/umeng/analytics/pro/j;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    :try_start_1
    sget-object v2, Lcom/umeng/analytics/pro/j;->e:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    sput-object v3, Lcom/umeng/analytics/pro/j;->e:Lorg/json/JSONArray;

    .line 125
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 128
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 129
    const-string v2, "__b"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    invoke-static {p0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p0

    .line 131
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/q;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/g$a;->a:Lcom/umeng/analytics/pro/g$a;

    .line 130
    invoke-virtual {p0, v1, v0, v2}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 125
    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 136
    :catchall_1
    move-exception p0

    goto :goto_1

    .line 137
    :cond_0
    :goto_0
    nop

    .line 138
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/pro/j;Landroid/app/Activity;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/j;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 9

    .line 248
    nop

    .line 249
    nop

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/j;->d:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 251
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/j;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 252
    if-eqz p1, :cond_0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/j;->a:Ljava/lang/String;

    .line 256
    :cond_0
    sget-object p1, Lcom/umeng/analytics/pro/j;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/16 v1, 0x0

    if-nez p1, :cond_1

    .line 257
    iget-object p1, p0, Lcom/umeng/analytics/pro/j;->d:Ljava/util/Map;

    sget-object v3, Lcom/umeng/analytics/pro/j;->a:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 258
    iget-object p1, p0, Lcom/umeng/analytics/pro/j;->d:Ljava/util/Map;

    sget-object v1, Lcom/umeng/analytics/pro/j;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 260
    iget-object p1, p0, Lcom/umeng/analytics/pro/j;->d:Ljava/util/Map;

    sget-object v5, Lcom/umeng/analytics/pro/j;->a:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v7, v1

    move-wide v1, v3

    move-wide v3, v7

    goto :goto_0

    .line 263
    :cond_1
    move-wide v3, v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 265
    :try_start_2
    sget-object p1, Lcom/umeng/analytics/pro/j;->f:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 267
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 269
    const-string v5, "page_name"

    sget-object v6, Lcom/umeng/analytics/pro/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v5, "duration"

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 271
    const-string v1, "page_start"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 272
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 273
    sget-object v1, Lcom/umeng/analytics/pro/j;->e:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 275
    goto :goto_1

    .line 274
    :catchall_0
    move-exception v0

    .line 276
    :goto_1
    :try_start_4
    monitor-exit p1

    .line 281
    goto :goto_2

    .line 276
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 263
    :catchall_2
    move-exception p1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 277
    :catchall_3
    move-exception p1

    .line 282
    :goto_2
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 82
    iget-boolean p1, p0, Lcom/umeng/analytics/pro/j;->h:Z

    if-nez p1, :cond_0

    .line 83
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/umeng/analytics/pro/j;->h:Z

    .line 84
    iget-object p1, p0, Lcom/umeng/analytics/pro/j;->g:Landroid/app/Application;

    if-eqz p1, :cond_0

    .line 85
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/umeng/analytics/pro/j;->g:Landroid/app/Application;

    iget-object v0, p0, Lcom/umeng/analytics/pro/j;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 96
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/umeng/analytics/pro/j;Landroid/app/Activity;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/j;->b(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/j;->h:Z

    return v0
.end method

.method public b()V
    .locals 2

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/j;->h:Z

    .line 103
    iget-object v0, p0, Lcom/umeng/analytics/pro/j;->g:Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/umeng/analytics/pro/j;->g:Landroid/app/Application;

    iget-object v1, p0, Lcom/umeng/analytics/pro/j;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 107
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/j;->g:Landroid/app/Application;

    .line 109
    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/j;->b(Landroid/app/Activity;)V

    .line 113
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/j;->b()V

    .line 114
    return-void
.end method
