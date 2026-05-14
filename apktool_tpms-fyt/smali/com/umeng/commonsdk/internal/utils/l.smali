.class public Lcom/umeng/commonsdk/internal/utils/l;
.super Ljava/lang/Object;
.source "UMProbe.java"


# static fields
.field public static final a:Ljava/lang/String; = "UM_PROBE_DATA"

.field public static final b:Ljava/lang/String; = "_dsk_s"

.field public static final c:Ljava/lang/String; = "_thm_z"

.field public static final d:Ljava/lang/String; = "_gdf_r"

.field private static e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/l;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    nop

    .line 127
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 133
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 135
    nop

    .line 137
    nop

    .line 139
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/4 p1, 0x1

    .line 142
    goto :goto_0

    .line 139
    :cond_1
    const/4 p1, -0x1

    .line 149
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    .line 151
    goto :goto_1

    .line 149
    :cond_2
    move v2, p1

    .line 155
    :goto_1
    goto :goto_2

    .line 153
    :catch_0
    move-exception p0

    .line 154
    nop

    .line 156
    :goto_2
    return v2
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 165
    const-string v0, "thermal_zone"

    .line 166
    const-string v1, "ls /sys/class/thermal"

    .line 167
    nop

    .line 169
    :try_start_0
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    goto :goto_0

    .line 170
    :catchall_0
    move-exception v1

    const/4 v1, -0x1

    .line 174
    :goto_0
    if-lez v1, :cond_0

    .line 175
    goto :goto_1

    .line 176
    :cond_0
    if-gez v1, :cond_1

    .line 177
    const-string v0, "noper"

    goto :goto_1

    .line 176
    :cond_1
    const-string v0, "unknown"

    .line 180
    :goto_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 34
    nop

    .line 36
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "UM_PROBE_DATA"

    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 42
    sget-object v3, Lcom/umeng/commonsdk/internal/utils/l;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :try_start_1
    const-string v4, "_dsk_s"

    const-string v5, "_dsk_s"

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v4, "_thm_z"

    const-string v5, "_thm_z"

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v4, "_gdf_r"

    const-string v5, "_gdf_r"

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, p0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 51
    :cond_0
    :goto_0
    goto :goto_1

    .line 49
    :catch_0
    move-exception v1

    .line 50
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 52
    :goto_1
    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/utils/l;->b(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 189
    const-string v0, "goldfish"

    .line 190
    const-string v1, "ls /"

    .line 191
    nop

    .line 193
    :try_start_0
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    goto :goto_0

    .line 194
    :catchall_0
    move-exception v1

    const/4 v1, -0x1

    .line 198
    :goto_0
    if-lez v1, :cond_0

    .line 199
    goto :goto_1

    .line 200
    :cond_0
    if-gez v1, :cond_1

    .line 201
    const-string v0, "noper"

    goto :goto_1

    .line 200
    :cond_1
    const-string v0, "unknown"

    .line 204
    :goto_1
    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .line 56
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/l;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unknown"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    .line 58
    new-instance v1, Lcom/umeng/commonsdk/internal/utils/l$1;

    invoke-direct {v1, v0, p0}, Lcom/umeng/commonsdk/internal/utils/l$1;-><init>([Ljava/lang/String;Landroid/content/Context;)V

    .line 73
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 75
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3

    .line 82
    if-nez p0, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 86
    const/4 v0, 0x0

    const-string v1, "UM_PROBE_DATA"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 88
    if-eqz p0, :cond_1

    .line 89
    sget-object v1, Lcom/umeng/commonsdk/internal/utils/l;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "_dsk_s"

    aget-object v0, p1, v0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "_thm_z"

    const/4 v2, 0x1

    aget-object v2, p1, v2

    .line 91
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "_gdf_r"

    const/4 v2, 0x2

    aget-object p1, p1, v2

    .line 92
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 95
    :cond_1
    :goto_0
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 6

    .line 213
    nop

    .line 214
    nop

    .line 216
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/diskstats"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 217
    nop

    .line 218
    nop

    .line 219
    nop

    .line 220
    nop

    .line 222
    nop

    .line 223
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "mtd"

    const-string v3, "sda"

    const-string v4, "mmcblk"

    if-eqz v0, :cond_3

    .line 224
    :try_start_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 225
    nop

    .line 226
    move-object v2, v4

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 228
    nop

    .line 229
    move-object v2, v3

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    .line 231
    nop

    .line 232
    goto :goto_0

    .line 239
    :cond_3
    const-string v2, "unknown"

    :goto_0
    goto :goto_2

    .line 236
    :catchall_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 238
    :goto_1
    const-string v2, "noper"

    move-object v1, v0

    .line 242
    :goto_2
    if-eqz v1, :cond_4

    .line 243
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 245
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 247
    :cond_4
    :goto_3
    nop

    .line 249
    :goto_4
    return-object v2
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    .line 103
    nop

    .line 104
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 106
    const-string v1, "UM_PROBE_DATA"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 108
    if-eqz p0, :cond_0

    .line 109
    const-string v1, "_dsk_s"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 110
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 115
    :cond_0
    return v0
.end method
