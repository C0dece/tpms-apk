.class public final Lcom/tencent/bugly/proguard/y;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/y$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static b:Ljava/text/SimpleDateFormat;

.field private static c:I

.field private static d:Ljava/lang/StringBuilder;

.field private static e:Ljava/lang/StringBuilder;

.field private static f:Z

.field private static g:Lcom/tencent/bugly/proguard/y$a;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Landroid/content/Context;

.field private static k:Ljava/lang/String;

.field private static l:Z

.field private static m:Z

.field private static n:Ljava/util/concurrent/ExecutorService;

.field private static o:I

.field private static final p:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/proguard/y;->b:Ljava/text/SimpleDateFormat;

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/proguard/y;->a:Z

    .line 33
    const/16 v0, 0x1400

    sput v0, Lcom/tencent/bugly/proguard/y;->c:I

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/proguard/y;->m:Z

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/y;->p:Ljava/lang/Object;

    .line 50
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/bugly/proguard/y;->b:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 54
    return-void
.end method

.method public static a(I)V
    .locals 2

    .line 131
    sget-object v0, Lcom/tencent/bugly/proguard/y;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    sput p0, Lcom/tencent/bugly/proguard/y;->c:I

    .line 133
    if-gez p0, :cond_0

    .line 134
    const/4 p0, 0x0

    sput p0, Lcom/tencent/bugly/proguard/y;->c:I

    goto :goto_0

    .line 135
    :cond_0
    const/16 v1, 0x2800

    if-le p0, v1, :cond_1

    .line 136
    sput v1, Lcom/tencent/bugly/proguard/y;->c:I

    .line 138
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/tencent/bugly/proguard/y;

    monitor-enter v0

    .line 104
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/proguard/y;->l:Z

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    sget-boolean v1, Lcom/tencent/bugly/proguard/y;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/tencent/bugly/proguard/y;->n:Ljava/util/concurrent/ExecutorService;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v1, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v1, Lcom/tencent/bugly/proguard/y;->d:Ljava/lang/StringBuilder;

    .line 111
    sput-object p0, Lcom/tencent/bugly/proguard/y;->j:Landroid/content/Context;

    .line 112
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p0

    .line 113
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    sput-object v1, Lcom/tencent/bugly/proguard/y;->h:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, ""

    sput-object p0, Lcom/tencent/bugly/proguard/y;->i:Ljava/lang/String;

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/bugly/proguard/y;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/buglylog_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/bugly/proguard/y;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/bugly/proguard/y;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/bugly/proguard/y;->k:Ljava/lang/String;

    .line 118
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    sput p0, Lcom/tencent/bugly/proguard/y;->o:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    goto :goto_0

    .line 119
    :catchall_0
    move-exception p0

    .line 122
    :goto_0
    const/4 p0, 0x1

    :try_start_2
    sput-boolean p0, Lcom/tencent/bugly/proguard/y;->l:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    monitor-exit v0

    return-void

    .line 105
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 103
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/tencent/bugly/proguard/y;

    monitor-enter v0

    .line 176
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/proguard/y;->l:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/tencent/bugly/proguard/y;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 180
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/tencent/bugly/proguard/y;->m:Z

    if-eqz v1, :cond_1

    .line 181
    sget-object v1, Lcom/tencent/bugly/proguard/y;->n:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/tencent/bugly/proguard/y$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/tencent/bugly/proguard/y$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 191
    :cond_1
    sget-object v1, Lcom/tencent/bugly/proguard/y;->n:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/tencent/bugly/proguard/y$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/tencent/bugly/proguard/y$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    monitor-exit v0

    return-void

    .line 198
    :catch_0
    move-exception p0

    .line 199
    :try_start_2
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    :goto_0
    monitor-exit v0

    return-void

    .line 177
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    .line 175
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 159
    if-nez p2, :cond_0

    .line 160
    return-void

    .line 162
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 163
    if-nez v0, :cond_1

    const-string v0, ""

    .line 164
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/bugly/proguard/z;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 165
    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public static a(Z)V
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[LogUtil] Whether can record user log into native: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 148
    sput-boolean p0, Lcom/tencent/bugly/proguard/y;->m:Z

    .line 149
    return-void
.end method

.method public static a()[B
    .locals 9

    .line 264
    sget-boolean v0, Lcom/tencent/bugly/proguard/y;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 265
    return-object v1

    .line 267
    :cond_0
    sget-boolean v0, Lcom/tencent/bugly/proguard/y;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 268
    const/4 v0, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "[LogUtil] Get user log from native."

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 269
    invoke-static {}, Lcom/tencent/bugly/proguard/y;->b()Ljava/lang/String;

    move-result-object v3

    .line 270
    if-eqz v3, :cond_1

    .line 272
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v0, "[LogUtil] Got user log from native: %d bytes"

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 273
    const-string v0, "BuglyNativeLog.txt"

    invoke-static {v1, v3, v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 276
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    sget-object v3, Lcom/tencent/bugly/proguard/y;->p:Ljava/lang/Object;

    monitor-enter v3

    .line 279
    :try_start_0
    sget-object v4, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/y$a;->d(Lcom/tencent/bugly/proguard/y$a;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 280
    sget-object v4, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/y$a;->a(Lcom/tencent/bugly/proguard/y$a;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/y$a;->a(Lcom/tencent/bugly/proguard/y$a;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    .line 281
    sget-object v4, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/y$a;->a(Lcom/tencent/bugly/proguard/y$a;)Ljava/io/File;

    move-result-object v4

    const/16 v5, 0x7800

    invoke-static {v4, v5, v2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_2
    sget-object v2, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 285
    sget-object v2, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BuglyLog.txt"

    invoke-static {v1, v0, v2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .line 85
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->D:Lcom/tencent/bugly/crashreport/a;

    if-eqz v1, :cond_0

    .line 87
    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->D:Lcom/tencent/bugly/crashreport/a;

    invoke-interface {v0}, Lcom/tencent/bugly/crashreport/a;->getLogFromNative()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 93
    :cond_0
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 21
    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 66
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->D:Lcom/tencent/bugly/crashreport/a;

    if-eqz v1, :cond_0

    .line 68
    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->D:Lcom/tencent/bugly/crashreport/a;

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/bugly/crashreport/a;->appendLogToNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 74
    :cond_0
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static declared-synchronized e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-class v0, Lcom/tencent/bugly/proguard/y;

    monitor-enter v0

    .line 205
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    int-to-long v1, v1

    .line 206
    sget-object v3, Lcom/tencent/bugly/proguard/y;->d:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    const/16 v6, 0x7800

    if-le v3, v6, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {p2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    sget-object v6, Lcom/tencent/bugly/proguard/y;->b:Ljava/text/SimpleDateFormat;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/tencent/bugly/proguard/y;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    sget-object v6, Lcom/tencent/bugly/proguard/y;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/tencent/bugly/proguard/y;->o:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u0001\r\n"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/tencent/bugly/proguard/y;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 208
    sget-object p1, Lcom/tencent/bugly/proguard/y;->p:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 210
    :try_start_1
    sget-object p2, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    sget-object p0, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sget p2, Lcom/tencent/bugly/proguard/y;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p0, p2, :cond_2

    .line 212
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    .line 214
    :cond_2
    :try_start_3
    sget-boolean p0, Lcom/tencent/bugly/proguard/y;->f:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_3

    .line 216
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-void

    .line 219
    :cond_3
    :try_start_5
    sput-boolean v5, Lcom/tencent/bugly/proguard/y;->f:Z

    .line 220
    sget-object p0, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    if-nez p0, :cond_4

    .line 222
    new-instance p0, Lcom/tencent/bugly/proguard/y$a;

    sget-object p2, Lcom/tencent/bugly/proguard/y;->k:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/y$a;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    goto :goto_1

    .line 223
    :cond_4
    sget-object p0, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/y$a;->a(Lcom/tencent/bugly/proguard/y$a;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/y$a;->a(Lcom/tencent/bugly/proguard/y$a;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    sget-object p0, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    int-to-long v5, p0

    add-long/2addr v1, v5

    sget-object p0, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/y$a;->b(Lcom/tencent/bugly/proguard/y$a;)J

    move-result-wide v5

    cmp-long p0, v1, v5

    if-lez p0, :cond_6

    .line 226
    :cond_5
    sget-object p0, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/y$a;->c(Lcom/tencent/bugly/proguard/y$a;)Z

    .line 228
    :cond_6
    :goto_1
    sget-object p0, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    sget-object p2, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/tencent/bugly/proguard/y$a;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 230
    sget-object p0, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 231
    sput-boolean v4, Lcom/tencent/bugly/proguard/y;->f:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 235
    :cond_7
    goto :goto_2

    .line 233
    :catchall_0
    move-exception p0

    .line 236
    :goto_2
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit p1

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 204
    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method
