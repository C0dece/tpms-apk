.class public Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
.super Ljava/lang/Object;
.source "BitmapGlobalConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;
    }
.end annotation


# static fields
.field private static final BITMAP_LOAD_EXECUTOR:Lcom/lidroid/xutils/task/PriorityExecutor;

.field private static final DEFAULT_POOL_SIZE:I = 0x5

.field private static final DISK_CACHE_EXECUTOR:Lcom/lidroid/xutils/task/PriorityExecutor;

.field public static final MIN_DISK_CACHE_SIZE:I = 0xa00000

.field public static final MIN_MEMORY_CACHE_SIZE:I = 0x200000

.field private static final configMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitmapCache:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

.field private bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

.field private defaultCacheExpiry:J

.field private defaultConnectTimeout:I

.field private defaultReadTimeout:I

.field private diskCacheEnabled:Z

.field private diskCachePath:Ljava/lang/String;

.field private diskCacheSize:I

.field private downloader:Lcom/lidroid/xutils/bitmap/download/Downloader;

.field private fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

.field private mContext:Landroid/content/Context;

.field private memoryCacheEnabled:Z

.field private memoryCacheSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/lidroid/xutils/task/PriorityExecutor;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/task/PriorityExecutor;-><init>(I)V

    sput-object v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->BITMAP_LOAD_EXECUTOR:Lcom/lidroid/xutils/task/PriorityExecutor;

    .line 54
    new-instance v0, Lcom/lidroid/xutils/task/PriorityExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/task/PriorityExecutor;-><init>(I)V

    sput-object v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->DISK_CACHE_EXECUTOR:Lcom/lidroid/xutils/task/PriorityExecutor;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->configMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCachePath"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/high16 v0, 0x400000

    iput v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->memoryCacheSize:I

    .line 44
    const/high16 v0, 0x3200000

    iput v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCacheSize:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->memoryCacheEnabled:Z

    .line 47
    iput-boolean v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCacheEnabled:Z

    .line 56
    const-wide v0, 0x9a7ec800L

    iput-wide v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->defaultCacheExpiry:J

    .line 57
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->defaultConnectTimeout:I

    .line 58
    iput v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->defaultReadTimeout:I

    .line 72
    if-eqz p1, :cond_0

    .line 73
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCachePath:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->initBitmapCache()V

    .line 76
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "diskCachePath"    # Ljava/lang/String;

    const-class v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    monitor-enter v0

    .line 80
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "xBitmapCache"

    invoke-static {p0, v1}, Lcom/lidroid/xutils/util/OtherUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 84
    :cond_0
    sget-object v1, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->configMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    sget-object v1, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->configMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 87
    :cond_1
    :try_start_1
    new-instance v1, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-direct {v1, p0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    .local v1, "config":Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
    sget-object v2, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->configMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    monitor-exit v0

    return-object v1

    .line 79
    .end local v1    # "config":Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "diskCachePath":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getMemoryClass()I
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    return v0
.end method

.method private initBitmapCache()V
    .locals 6

    .line 94
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;

    .line 95
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;

    .line 96
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 4

    .line 359
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;

    .line 360
    return-void
.end method

.method public clearCache(Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .line 371
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;

    .line 372
    return-void
.end method

.method public clearDiskCache()V
    .locals 4

    .line 367
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;

    .line 368
    return-void
.end method

.method public clearDiskCache(Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .line 379
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;

    .line 380
    return-void
.end method

.method public clearMemoryCache()V
    .locals 4

    .line 363
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;

    .line 364
    return-void
.end method

.method public clearMemoryCache(Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .line 375
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;

    .line 376
    return-void
.end method

.method public closeCache()V
    .locals 4

    .line 387
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;

    .line 388
    return-void
.end method

.method public flushCache()V
    .locals 4

    .line 383
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->execute([Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;

    .line 384
    return-void
.end method

.method public getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCache:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)V

    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCache:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCache:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    return-object v0
.end method

.method public getBitmapCacheListener()Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    return-object v0
.end method

.method public getBitmapLoadExecutor()Lcom/lidroid/xutils/task/PriorityExecutor;
    .locals 1

    .line 198
    sget-object v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->BITMAP_LOAD_EXECUTOR:Lcom/lidroid/xutils/task/PriorityExecutor;

    return-object v0
.end method

.method public getDefaultCacheExpiry()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->defaultCacheExpiry:J

    return-wide v0
.end method

.method public getDefaultConnectTimeout()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->defaultConnectTimeout:I

    return v0
.end method

.method public getDefaultReadTimeout()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->defaultReadTimeout:I

    return v0
.end method

.method public getDiskCacheExecutor()Lcom/lidroid/xutils/task/PriorityExecutor;
    .locals 1

    .line 202
    sget-object v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->DISK_CACHE_EXECUTOR:Lcom/lidroid/xutils/task/PriorityExecutor;

    return-object v0
.end method

.method public getDiskCachePath()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskCacheSize()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCacheSize:I

    return v0
.end method

.method public getDownloader()Lcom/lidroid/xutils/bitmap/download/Downloader;
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->downloader:Lcom/lidroid/xutils/bitmap/download/Downloader;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;

    invoke-direct {v0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->downloader:Lcom/lidroid/xutils/bitmap/download/Downloader;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->downloader:Lcom/lidroid/xutils/bitmap/download/Downloader;

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/download/Downloader;->setContext(Landroid/content/Context;)V

    .line 107
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->downloader:Lcom/lidroid/xutils/bitmap/download/Downloader;

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDefaultCacheExpiry()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/bitmap/download/Downloader;->setDefaultExpiry(J)V

    .line 108
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->downloader:Lcom/lidroid/xutils/bitmap/download/Downloader;

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDefaultConnectTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/download/Downloader;->setDefaultConnectTimeout(I)V

    .line 109
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->downloader:Lcom/lidroid/xutils/bitmap/download/Downloader;

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDefaultReadTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/download/Downloader;->setDefaultReadTimeout(I)V

    .line 110
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->downloader:Lcom/lidroid/xutils/bitmap/download/Downloader;

    return-object v0
.end method

.method public getFileNameGenerator()Lcom/lidroid/xutils/cache/FileNameGenerator;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    return-object v0
.end method

.method public getMemoryCacheSize()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->memoryCacheSize:I

    return v0
.end method

.method public getThreadPoolSize()I
    .locals 1

    .line 190
    sget-object v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->BITMAP_LOAD_EXECUTOR:Lcom/lidroid/xutils/task/PriorityExecutor;

    invoke-virtual {v0}, Lcom/lidroid/xutils/task/PriorityExecutor;->getPoolSize()I

    move-result v0

    return v0
.end method

.method public isDiskCacheEnabled()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCacheEnabled:Z

    return v0
.end method

.method public isMemoryCacheEnabled()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->memoryCacheEnabled:Z

    return v0
.end method

.method public setBitmapCacheListener(Lcom/lidroid/xutils/bitmap/BitmapCacheListener;)V
    .locals 0
    .param p1, "bitmapCacheListener"    # Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    .line 237
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    .line 238
    return-void
.end method

.method public setDefaultCacheExpiry(J)V
    .locals 0
    .param p1, "defaultCacheExpiry"    # J

    .line 122
    iput-wide p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->defaultCacheExpiry:J

    .line 123
    return-void
.end method

.method public setDefaultConnectTimeout(I)V
    .locals 0
    .param p1, "defaultConnectTimeout"    # I

    .line 130
    iput p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->defaultConnectTimeout:I

    .line 131
    return-void
.end method

.method public setDefaultReadTimeout(I)V
    .locals 0
    .param p1, "defaultReadTimeout"    # I

    .line 138
    iput p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->defaultReadTimeout:I

    .line 139
    return-void
.end method

.method public setDiskCacheEnabled(Z)V
    .locals 0
    .param p1, "diskCacheEnabled"    # Z

    .line 218
    iput-boolean p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCacheEnabled:Z

    .line 219
    return-void
.end method

.method public setDiskCacheSize(I)V
    .locals 1
    .param p1, "diskCacheSize"    # I

    .line 181
    const/high16 v0, 0xa00000

    if-lt p1, v0, :cond_0

    .line 182
    iput p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->diskCacheSize:I

    .line 183
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCache:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->setDiskCacheSize(I)V

    .line 187
    :cond_0
    return-void
.end method

.method public setDownloader(Lcom/lidroid/xutils/bitmap/download/Downloader;)V
    .locals 0
    .param p1, "downloader"    # Lcom/lidroid/xutils/bitmap/download/Downloader;

    .line 114
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->downloader:Lcom/lidroid/xutils/bitmap/download/Downloader;

    .line 115
    return-void
.end method

.method public setFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V
    .locals 1
    .param p1, "fileNameGenerator"    # Lcom/lidroid/xutils/cache/FileNameGenerator;

    .line 226
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    .line 227
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCache:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->setDiskCacheFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V

    .line 230
    :cond_0
    return-void
.end method

.method public setMemCacheSizePercent(F)V
    .locals 2
    .param p1, "percent"    # F

    .line 167
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 170
    invoke-direct {p0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getMemoryClass()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    const/high16 v1, 0x44800000    # 1024.0f

    mul-float v0, v0, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->memoryCacheSize:I

    .line 171
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCache:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->setMemoryCacheSize(I)V

    .line 174
    :cond_0
    return-void

    .line 168
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "percent must be between 0.05 and 0.8 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMemoryCacheEnabled(Z)V
    .locals 0
    .param p1, "memoryCacheEnabled"    # Z

    .line 210
    iput-boolean p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->memoryCacheEnabled:Z

    .line 211
    return-void
.end method

.method public setMemoryCacheSize(I)V
    .locals 1
    .param p1, "memoryCacheSize"    # I

    .line 153
    const/high16 v0, 0x200000

    if-lt p1, v0, :cond_0

    .line 154
    iput p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->memoryCacheSize:I

    .line 155
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCache:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->setMemoryCacheSize(I)V

    .line 158
    goto :goto_0

    .line 159
    :cond_0
    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemCacheSizePercent(F)V

    .line 161
    :cond_1
    :goto_0
    return-void
.end method

.method public setThreadPoolSize(I)V
    .locals 1
    .param p1, "threadPoolSize"    # I

    .line 194
    sget-object v0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->BITMAP_LOAD_EXECUTOR:Lcom/lidroid/xutils/task/PriorityExecutor;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/task/PriorityExecutor;->setPoolSize(I)V

    .line 195
    return-void
.end method
