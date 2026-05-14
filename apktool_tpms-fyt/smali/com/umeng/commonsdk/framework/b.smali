.class Lcom/umeng/commonsdk/framework/b;
.super Ljava/lang/Object;
.source "UMNetWorkSender.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/framework/b$a;
    }
.end annotation


# static fields
.field private static a:Landroid/os/HandlerThread; = null

.field private static b:Landroid/os/Handler; = null

.field private static c:Landroid/os/Handler; = null

.field private static final d:I = 0xc8

.field private static final e:I = 0x111

.field private static final f:I = 0x112

.field private static final g:I = 0x200

.field private static final h:I = 0x301

.field private static i:Lcom/umeng/commonsdk/framework/b$a; = null

.field private static j:Landroid/net/ConnectivityManager; = null

.field private static k:Landroid/net/NetworkInfo; = null

.field private static l:Landroid/content/IntentFilter; = null

.field private static m:Z = false

.field private static n:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/umeng/commonsdk/framework/UMSenderStateNotify;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Ljava/lang/Object; = null

.field private static final p:Ljava/lang/String; = "report_policy"

.field private static final q:Ljava/lang/String; = "report_interval"

.field private static r:Z = false

.field private static final s:I = 0x3a98

.field private static t:I

.field private static u:Ljava/lang/Object;

.field private static v:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/commonsdk/framework/b;->a:Landroid/os/HandlerThread;

    .line 37
    sput-object v0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    .line 39
    sput-object v0, Lcom/umeng/commonsdk/framework/b;->c:Landroid/os/Handler;

    .line 53
    sput-object v0, Lcom/umeng/commonsdk/framework/b;->l:Landroid/content/IntentFilter;

    .line 55
    const/4 v1, 0x0

    sput-boolean v1, Lcom/umeng/commonsdk/framework/b;->m:Z

    .line 57
    sput-object v0, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/b;->o:Ljava/lang/Object;

    .line 74
    sput-boolean v1, Lcom/umeng/commonsdk/framework/b;->r:Z

    .line 76
    const/16 v0, 0x3a98

    sput v0, Lcom/umeng/commonsdk/framework/b;->t:I

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/b;->u:Ljava/lang/Object;

    .line 163
    new-instance v0, Lcom/umeng/commonsdk/framework/b$1;

    invoke-direct {v0}, Lcom/umeng/commonsdk/framework/b$1;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/b;->v:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    sput-object p2, Lcom/umeng/commonsdk/framework/b;->c:Landroid/os/Handler;

    .line 219
    :try_start_0
    sget-object p2, Lcom/umeng/commonsdk/framework/b;->a:Landroid/os/HandlerThread;

    if-nez p2, :cond_3

    .line 221
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "NetWorkSender"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p2, Lcom/umeng/commonsdk/framework/b;->a:Landroid/os/HandlerThread;

    .line 222
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 223
    sget-object p2, Lcom/umeng/commonsdk/framework/b;->i:Lcom/umeng/commonsdk/framework/b$a;

    if-nez p2, :cond_0

    .line 224
    new-instance p2, Lcom/umeng/commonsdk/framework/b$a;

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/umeng/commonsdk/framework/b$a;-><init>(Ljava/lang/String;)V

    sput-object p2, Lcom/umeng/commonsdk/framework/b;->i:Lcom/umeng/commonsdk/framework/b$a;

    .line 225
    invoke-virtual {p2}, Lcom/umeng/commonsdk/framework/b$a;->startWatching()V

    .line 226
    const-string p2, "--->>> FileMonitor has already started!"

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 228
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object p2

    .line 229
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->l:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/b;->l:Landroid/content/IntentFilter;

    .line 232
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->v:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 234
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->v:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/umeng/commonsdk/framework/b;->l:Landroid/content/IntentFilter;

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/umeng/commonsdk/framework/b;->m()V

    .line 242
    sget-object p2, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    if-nez p2, :cond_2

    .line 243
    new-instance p2, Lcom/umeng/commonsdk/framework/b$2;

    sget-object v0, Lcom/umeng/commonsdk/framework/b;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/umeng/commonsdk/framework/b$2;-><init>(Lcom/umeng/commonsdk/framework/b;Landroid/os/Looper;)V

    sput-object p2, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    .line 273
    :cond_2
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p2

    const-string v0, "report_policy"

    invoke-virtual {p2, v0, p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    .line 274
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p2

    const-string v0, "report_interval"

    invoke-virtual {p2, v0, p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_3
    goto :goto_0

    .line 276
    :catchall_0
    move-exception p2

    .line 277
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 279
    :goto_0
    return-void
.end method

.method static synthetic a(Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 32
    sput-object p0, Lcom/umeng/commonsdk/framework/b;->j:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic a(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    .line 32
    sput-object p0, Lcom/umeng/commonsdk/framework/b;->k:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method static synthetic a(I)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->c(I)V

    return-void
.end method

.method private static a(II)V
    .locals 3

    .line 400
    sget-boolean v0, Lcom/umeng/commonsdk/framework/b;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 403
    iput p0, v0, Landroid/os/Message;->what:I

    .line 404
    sget-object p0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 406
    :cond_0
    return-void
.end method

.method private static a(IJ)V
    .locals 2

    .line 372
    sget-boolean v0, Lcom/umeng/commonsdk/framework/b;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 374
    iput p0, v0, Landroid/os/Message;->what:I

    .line 375
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> sendMsgDelayed: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MobclickRT"

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    sget-object p0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 378
    :cond_0
    return-void
.end method

.method public static a(Lcom/umeng/commonsdk/framework/UMSenderStateNotify;)V
    .locals 3

    .line 80
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    .line 85
    :cond_0
    if-eqz p0, :cond_3

    .line 87
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 88
    sget-object v2, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_1

    .line 89
    const-string p0, "MobclickRT"

    const-string v1, "--->>> addConnStateObserver: input item has exist."

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 87
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_2
    :try_start_2
    sget-object v1, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    :cond_3
    goto :goto_1

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    :try_start_3
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 98
    :goto_1
    monitor-exit v0

    .line 99
    return-void

    .line 98
    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static a()Z
    .locals 2

    .line 102
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-boolean v1, Lcom/umeng/commonsdk/framework/b;->r:Z

    monitor-exit v0

    return v1

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 32
    sput-boolean p0, Lcom/umeng/commonsdk/framework/b;->m:Z

    return p0
.end method

.method public static b()I
    .locals 2

    .line 108
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    sget v1, Lcom/umeng/commonsdk/framework/b;->t:I

    monitor-exit v0

    return v1

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static b(I)V
    .locals 1

    .line 346
    sget-boolean v0, Lcom/umeng/commonsdk/framework/b;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 349
    iput p0, v0, Landroid/os/Message;->what:I

    .line 350
    sget-object p0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 353
    :cond_0
    return-void
.end method

.method public static c()V
    .locals 1

    .line 338
    const/16 v0, 0x200

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->c(I)V

    .line 339
    return-void
.end method

.method private static c(I)V
    .locals 1

    .line 360
    sget-boolean v0, Lcom/umeng/commonsdk/framework/b;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 362
    iput p0, v0, Landroid/os/Message;->what:I

    .line 363
    sget-object p0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 365
    :cond_0
    return-void
.end method

.method public static d()V
    .locals 1

    .line 384
    const/16 v0, 0x111

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->b(I)V

    .line 385
    return-void
.end method

.method public static e()V
    .locals 2

    .line 410
    const/16 v0, 0x112

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/framework/b;->a(II)V

    .line 411
    return-void
.end method

.method static synthetic f()Landroid/net/ConnectivityManager;
    .locals 1

    .line 32
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->j:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic g()Landroid/net/NetworkInfo;
    .locals 1

    .line 32
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->k:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/Object;
    .locals 1

    .line 32
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->o:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic i()Ljava/util/ArrayList;
    .locals 1

    .line 32
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic j()V
    .locals 0

    .line 32
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->q()V

    return-void
.end method

.method static synthetic k()V
    .locals 0

    .line 32
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->p()V

    return-void
.end method

.method static synthetic l()V
    .locals 0

    .line 32
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->o()V

    return-void
.end method

.method private m()V
    .locals 6

    .line 114
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "report_policy"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    const-string v2, "11"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    const-string v1, "MobclickRT"

    const-string v2, "--->>> switch to report_policy 11"

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v1, 0x1

    sput-boolean v1, Lcom/umeng/commonsdk/framework/b;->r:Z

    .line 120
    const/16 v1, 0x3a98

    sput v1, Lcom/umeng/commonsdk/framework/b;->t:I

    .line 121
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "report_interval"

    const-string v4, "15"

    invoke-static {v2, v3, v4}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 123
    const-string v3, "MobclickRT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--->>> set report_interval value to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/16 v3, 0xf

    if-lt v2, v3, :cond_1

    const/16 v3, 0x5a

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    mul-int/lit16 v2, v2, 0x3e8

    sput v2, Lcom/umeng/commonsdk/framework/b;->t:I

    goto :goto_1

    .line 125
    :cond_1
    :goto_0
    sput v1, Lcom/umeng/commonsdk/framework/b;->t:I

    .line 129
    :goto_1
    goto :goto_2

    .line 130
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/umeng/commonsdk/framework/b;->r:Z

    .line 132
    :goto_2
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static n()V
    .locals 2

    .line 285
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->a:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 286
    sput-object v1, Lcom/umeng/commonsdk/framework/b;->a:Landroid/os/HandlerThread;

    .line 288
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 289
    sput-object v1, Lcom/umeng/commonsdk/framework/b;->b:Landroid/os/Handler;

    .line 291
    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->c:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 292
    sput-object v1, Lcom/umeng/commonsdk/framework/b;->c:Landroid/os/Handler;

    .line 295
    :cond_2
    return-void
.end method

.method private static o()V
    .locals 4

    .line 298
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 300
    sget-object v1, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 301
    if-lez v1, :cond_0

    .line 302
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 303
    sget-object v3, Lcom/umeng/commonsdk/framework/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/framework/UMSenderStateNotify;

    invoke-interface {v3}, Lcom/umeng/commonsdk/framework/UMSenderStateNotify;->onSenderIdle()V

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    :cond_0
    monitor-exit v0

    .line 308
    return-void

    .line 307
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private static p()V
    .locals 3

    .line 314
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->i:Lcom/umeng/commonsdk/framework/b$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Lcom/umeng/commonsdk/framework/b$a;->stopWatching()V

    .line 316
    sput-object v1, Lcom/umeng/commonsdk/framework/b;->i:Lcom/umeng/commonsdk/framework/b$a;

    .line 318
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->l:Landroid/content/IntentFilter;

    if-eqz v0, :cond_2

    .line 319
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->v:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 320
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 321
    sget-object v2, Lcom/umeng/commonsdk/framework/b;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 322
    sput-object v1, Lcom/umeng/commonsdk/framework/b;->v:Landroid/content/BroadcastReceiver;

    .line 324
    :cond_1
    sput-object v1, Lcom/umeng/commonsdk/framework/b;->l:Landroid/content/IntentFilter;

    .line 326
    :cond_2
    const-string v0, "--->>> handleQuit: Quit sender thread."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 328
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 329
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->n()V

    .line 332
    :cond_3
    return-void
.end method

.method private static q()V
    .locals 7

    .line 447
    const-string v0, "]."

    const-string v1, "--->>> handleProcessNext: Enter..."

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 450
    sget-boolean v1, Lcom/umeng/commonsdk/framework/b;->m:Z

    if-nez v1, :cond_0

    .line 451
    return-void

    .line 453
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 455
    :try_start_0
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->envelopeFileNumber(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_4

    .line 456
    const-string v2, "--->>> The envelope file exists."

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 457
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->envelopeFileNumber(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_1

    .line 458
    const-string v2, "--->>> Number of envelope files is greater than 200, remove old files first."

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 459
    invoke-static {v1, v3}, Lcom/umeng/commonsdk/framework/UMFrUtils;->removeRedundantEnvelopeFiles(Landroid/content/Context;I)V

    .line 462
    :cond_1
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 463
    if-eqz v2, :cond_4

    .line 464
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--->>> Ready to send envelope file ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 467
    const-string v4, "MobclickRT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> send envelope file [ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v0, Lcom/umeng/commonsdk/statistics/c;

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/c;-><init>(Landroid/content/Context;)V

    .line 471
    invoke-virtual {v0, v2}, Lcom/umeng/commonsdk/statistics/c;->a(Ljava/io/File;)Z

    move-result v0

    .line 472
    if-eqz v0, :cond_3

    .line 473
    const-string v0, "--->>> Send envelope file success, delete it."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 475
    invoke-static {v2}, Lcom/umeng/commonsdk/framework/UMFrUtils;->removeEnvelopeFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 476
    const-string v0, "--->>> Failed to delete already processed file. We try again after delete failed."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 477
    invoke-static {v2}, Lcom/umeng/commonsdk/framework/UMFrUtils;->removeEnvelopeFile(Ljava/io/File;)Z

    .line 485
    :cond_2
    const/16 v0, 0x111

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->c(I)V

    .line 486
    return-void

    .line 481
    :cond_3
    const-string v0, "--->>> Send envelope file failed, abandon and wait next trigger!"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 482
    return-void

    .line 496
    :cond_4
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    goto :goto_0

    .line 497
    :catchall_0
    move-exception v0

    .line 498
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 500
    :goto_0
    return-void
.end method


# virtual methods
.method public onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 139
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    const-string v1, "report_policy"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x3a98

    if-eqz v1, :cond_1

    .line 141
    const-string v1, "11"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const-string v1, "MobclickRT"

    const-string v3, "--->>> switch to report_policy 11"

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v1, 0x1

    sput-boolean v1, Lcom/umeng/commonsdk/framework/b;->r:Z

    .line 145
    sput v2, Lcom/umeng/commonsdk/framework/b;->t:I

    goto :goto_0

    .line 148
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/umeng/commonsdk/framework/b;->r:Z

    .line 151
    :cond_1
    :goto_0
    const-string v1, "report_interval"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 152
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 153
    const-string p2, "MobclickRT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>> set report_interval value to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/16 p2, 0xf

    if-lt p1, p2, :cond_3

    const/16 p2, 0x5a

    if-le p1, p2, :cond_2

    goto :goto_1

    .line 157
    :cond_2
    mul-int/lit16 p1, p1, 0x3e8

    sput p1, Lcom/umeng/commonsdk/framework/b;->t:I

    goto :goto_2

    .line 155
    :cond_3
    :goto_1
    sput v2, Lcom/umeng/commonsdk/framework/b;->t:I

    .line 160
    :cond_4
    :goto_2
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
