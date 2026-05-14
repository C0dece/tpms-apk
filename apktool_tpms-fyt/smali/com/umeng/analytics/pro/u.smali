.class public Lcom/umeng/analytics/pro/u;
.super Ljava/lang/Object;
.source "SessionIdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/u$a;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/umeng/analytics/pro/u;


# instance fields
.field private a:Lcom/umeng/analytics/pro/s;

.field private b:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/analytics/pro/u$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/umeng/analytics/pro/t;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/t;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/u;->a:Lcom/umeng/analytics/pro/s;

    .line 33
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3

    .line 232
    nop

    .line 234
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    goto :goto_0

    :catch_0
    move-exception p1

    move-wide p1, v0

    .line 236
    :goto_0
    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 240
    :cond_0
    return-wide p1
.end method

.method public static a()Lcom/umeng/analytics/pro/u;
    .locals 2

    .line 36
    sget-object v0, Lcom/umeng/analytics/pro/u;->c:Lcom/umeng/analytics/pro/u;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lcom/umeng/analytics/pro/u;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/u;->c:Lcom/umeng/analytics/pro/u;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/umeng/analytics/pro/u;

    invoke-direct {v1}, Lcom/umeng/analytics/pro/u;-><init>()V

    sput-object v1, Lcom/umeng/analytics/pro/u;->c:Lcom/umeng/analytics/pro/u;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcom/umeng/analytics/pro/u;->c:Lcom/umeng/analytics/pro/u;

    return-object v0
.end method

.method private a(JJLjava/lang/String;Z)V
    .locals 9

    .line 260
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 261
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/umeng/analytics/pro/u$a;

    .line 263
    if-eqz p6, :cond_0

    .line 264
    :try_start_0
    iget-object v4, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;

    move-object v3, p5

    move-wide v5, p1

    move-wide v7, p3

    invoke-interface/range {v2 .. v8}, Lcom/umeng/analytics/pro/u$a;->a(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_1

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/umeng/analytics/pro/u$a;->a(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 268
    :catch_0
    move-exception v1

    :goto_1
    nop

    .line 269
    goto :goto_0

    .line 271
    :cond_1
    return-void
.end method

.method private f(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    .line 193
    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 194
    const-string v1, "pre_session_id"

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/u;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 198
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/u;->h(Landroid/content/Context;)J

    move-result-wide v8

    .line 199
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/u;->i(Landroid/content/Context;)J

    move-result-wide v10

    .line 200
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;

    .line 203
    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, v10

    move-wide v4, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/umeng/analytics/pro/u;->a(JJLjava/lang/String;Z)V

    .line 206
    iget-object v1, p0, Lcom/umeng/analytics/pro/u;->a:Lcom/umeng/analytics/pro/s;

    invoke-interface {v1, p1}, Lcom/umeng/analytics/pro/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;

    .line 209
    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/umeng/analytics/pro/u;->a(JJLjava/lang/String;Z)V

    .line 213
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->a:Lcom/umeng/analytics/pro/s;

    iget-object v1, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/umeng/analytics/pro/s;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;

    return-object p1
.end method

.method private g(Landroid/content/Context;)Z
    .locals 6

    .line 220
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 221
    return v1

    .line 223
    :cond_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 224
    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 225
    const/4 p1, 0x1

    return p1

    .line 228
    :cond_1
    return v1
.end method

.method private h(Landroid/content/Context;)J
    .locals 2

    .line 244
    const-string v0, "a_end_time"

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private i(Landroid/content/Context;)J
    .locals 2

    .line 248
    const-string v0, "session_start_time"

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private j(Landroid/content/Context;)Z
    .locals 7

    .line 279
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 281
    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 283
    const-string v0, "a_start_time"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 284
    const-string v0, "a_end_time"

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 286
    const-string p1, "MobclickRT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--->>> interval of last session is: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v0, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/umeng/analytics/pro/u;->a:Lcom/umeng/analytics/pro/s;

    invoke-interface {p1, v3, v4, v0, v1}, Lcom/umeng/analytics/pro/s;->a(JJ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 288
    :catch_0
    move-exception p1

    .line 290
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 64
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 66
    if-nez p1, :cond_0

    .line 67
    const-string p1, ""

    return-object p1

    .line 70
    :cond_0
    const-string v0, ""

    .line 72
    :try_start_0
    const-class v1, Lcom/umeng/analytics/pro/u;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :try_start_1
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "pre_session_id"

    const-string v3, ""

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    :catch_0
    move-exception p1

    :goto_0
    nop

    .line 77
    return-object v0
.end method

.method public a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    .line 152
    iget-object p1, p0, Lcom/umeng/analytics/pro/u;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SUB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "%0"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "d"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/u;->e:Ljava/lang/String;

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/u;->e:Ljava/lang/String;

    return-object p1
.end method

.method public a(J)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->a:Lcom/umeng/analytics/pro/s;

    invoke-interface {v0, p1, p2}, Lcom/umeng/analytics/pro/s;->a(J)V

    .line 53
    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/u$a;)V
    .locals 1

    .line 319
    if-nez p1, :cond_0

    .line 320
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->d:Ljava/util/List;

    if-nez v0, :cond_1

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/u;->d:Ljava/util/List;

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_2
    return-void
.end method

.method public b()J
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->a:Lcom/umeng/analytics/pro/s;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/s;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 91
    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 93
    if-nez p1, :cond_0

    .line 94
    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 96
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/u;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;

    .line 99
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/u;->e(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 101
    :try_start_2
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/u;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception p1

    .line 105
    :cond_1
    :goto_0
    :try_start_3
    iget-object p1, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 90
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lcom/umeng/analytics/pro/u$a;)V
    .locals 1

    .line 335
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 339
    return-void

    .line 336
    :cond_1
    :goto_0
    return-void
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 114
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 116
    if-nez p1, :cond_0

    .line 117
    const-string p1, ""

    return-object p1

    .line 120
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/u;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception p1

    :goto_0
    nop

    .line 123
    iget-object p1, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;

    return-object p1
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception p1

    .line 142
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;

    return-object p1
.end method

.method public e(Landroid/content/Context;)Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/u;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/u;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/u;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/u;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
