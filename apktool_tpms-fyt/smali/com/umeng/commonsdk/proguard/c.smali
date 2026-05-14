.class public Lcom/umeng/commonsdk/proguard/c;
.super Ljava/lang/Object;
.source "UMSysLocationCache.java"


# static fields
.field public static final a:Ljava/lang/String; = "lng"

.field public static final b:Ljava/lang/String; = "lat"

.field public static final c:Ljava/lang/String; = "ts"

.field public static final d:J = 0x7530L

.field public static final e:I = 0xc8

.field private static final f:Ljava/lang/String; = "UMSysLocationCache"

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/commonsdk/proguard/c;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "begin location"

    aput-object v2, v0, v1

    const-string v1, "UMSysLocationCache"

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    if-nez p0, :cond_0

    .line 52
    return-void

    .line 56
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/commonsdk/proguard/c$1;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/proguard/c$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_0

    .line 177
    :catch_0
    move-exception p0

    .line 179
    :goto_0
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 19
    sget-boolean v0, Lcom/umeng/commonsdk/proguard/c;->g:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 19
    sput-boolean p0, Lcom/umeng/commonsdk/proguard/c;->g:Z

    return p0
.end method

.method public static b(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 7

    .line 184
    const-string v0, "e is "

    const-string v1, "UMSysLocationCache"

    const/4 v2, 0x0

    const-string v3, "umeng_common_location"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 185
    const/4 v3, 0x0

    if-nez p0, :cond_0

    .line 186
    return-object v3

    .line 189
    :cond_0
    nop

    .line 192
    const/4 v4, 0x1

    :try_start_0
    const-string v5, "location_json_array"

    const-string v6, ""

    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 193
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 194
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 200
    :cond_1
    :goto_0
    goto :goto_1

    .line 198
    :catchall_0
    move-exception p0

    .line 199
    new-array v5, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-static {v1, v5}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 196
    :catch_0
    move-exception p0

    .line 197
    new-array v5, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-static {v1, v5}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 202
    :goto_1
    if-eqz v3, :cond_2

    .line 203
    new-array p0, v4, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get json str is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :cond_2
    return-object v3
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    .line 216
    :try_start_0
    const-string v0, "umeng_common_location"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 218
    if-eqz p0, :cond_0

    .line 219
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 220
    const-string v0, "location_json_array"

    const-string v2, ""

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 221
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 222
    const-string p0, "UMSysLocationCache"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "delete is ok~~"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_0
    goto :goto_0

    .line 224
    :catchall_0
    move-exception p0

    .line 227
    :goto_0
    return-void
.end method
