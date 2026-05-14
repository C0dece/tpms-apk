.class public Lcom/lidroid/xutils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"

# interfaces
.implements Lcom/lidroid/xutils/task/TaskHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;
    }
.end annotation


# instance fields
.field private cancelAllTask:Z

.field private context:Landroid/content/Context;

.field private defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

.field private globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

.field private pauseTask:Z

.field private final pauseTaskLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCachePath"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    .line 46
    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->cancelAllTask:Z

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    .line 59
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    .line 64
    invoke-static {v0, p2}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    .line 65
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-direct {v0}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .line 66
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCachePath"    # Ljava/lang/String;
    .param p3, "memoryCachePercent"    # F

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p3}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemCacheSizePercent(F)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;FI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCachePath"    # Ljava/lang/String;
    .param p3, "memoryCachePercent"    # F
    .param p4, "diskCacheSize"    # I

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p3}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemCacheSizePercent(F)V

    .line 87
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p4}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDiskCacheSize(I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCachePath"    # Ljava/lang/String;
    .param p3, "memoryCacheSize"    # I

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p3}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemoryCacheSize(I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCachePath"    # Ljava/lang/String;
    .param p3, "memoryCacheSize"    # I
    .param p4, "diskCacheSize"    # I

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p3}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemoryCacheSize(I)V

    .line 76
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p4}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDiskCacheSize(I)V

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/BitmapUtils;)Ljava/lang/Object;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1(Lcom/lidroid/xutils/BitmapUtils;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    return p0
.end method

.method static synthetic access$2(Lcom/lidroid/xutils/BitmapUtils;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/lidroid/xutils/BitmapUtils;->cancelAllTask:Z

    return p0
.end method

.method static synthetic access$3(Lcom/lidroid/xutils/BitmapUtils;)Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    return-object p0
.end method

.method static synthetic access$4(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;
    .locals 0

    .line 372
    invoke-static {p0, p1}, Lcom/lidroid/xutils/BitmapUtils;->getBitmapTaskFromContainer(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    move-result-object p0

    return-object p0
.end method

.method private static bitmapLoadTaskExist(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Z
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<",
            "TT;>;)Z"
        }
    .end annotation

    .line 384
    .local p0, "container":Landroid/view/View;, "TT;"
    .local p2, "callBack":Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;, "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<TT;>;"
    invoke-static {p0, p2}, Lcom/lidroid/xutils/BitmapUtils;->getBitmapTaskFromContainer(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    move-result-object v0

    .line 386
    .local v0, "oldLoadTask":Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;, "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<TT;>;"
    if-eqz v0, :cond_2

    .line 387
    invoke-static {v0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->access$3(Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "oldUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    return v3

    .line 389
    :cond_1
    :goto_0
    invoke-virtual {v0, v3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->cancel(Z)Z

    .line 394
    .end local v1    # "oldUrl":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private static getBitmapTaskFromContainer(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<",
            "TT;>;)",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<",
            "TT;>;"
        }
    .end annotation

    .line 373
    .local p0, "container":Landroid/view/View;, "TT;"
    .local p1, "callBack":Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;, "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<TT;>;"
    if-eqz p0, :cond_0

    .line 374
    invoke-virtual {p1, p0}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->getDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 375
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;

    if-eqz v1, :cond_0

    .line 376
    move-object v1, v0

    check-cast v1, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;

    .line 377
    .local v1, "asyncDrawable":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->getBitmapWorkerTask()Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    move-result-object v2

    return-object v2

    .line 380
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "asyncDrawable":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    .line 353
    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->cancelAllTask:Z

    .line 354
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 354
    monitor-exit v0

    .line 357
    return-void

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearCache()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearCache()V

    .line 278
    return-void
.end method

.method public clearCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearCache(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public clearDiskCache()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearDiskCache()V

    .line 286
    return-void
.end method

.method public clearDiskCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearDiskCache(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public clearMemoryCache()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearMemoryCache()V

    .line 282
    return-void
.end method

.method public clearMemoryCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearMemoryCache(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public closeCache()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->closeCache()V

    .line 306
    return-void
.end method

.method public configBitmapCacheListener(Lcom/lidroid/xutils/bitmap/BitmapCacheListener;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "listener"    # Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    .line 198
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setBitmapCacheListener(Lcom/lidroid/xutils/bitmap/BitmapCacheListener;)V

    .line 199
    return-object p0
.end method

.method public configDefaultAutoRotation(Z)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "autoRotation"    # Z

    .line 138
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setAutoRotation(Z)V

    .line 139
    return-object p0
.end method

.method public configDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .line 148
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapConfig(Landroid/graphics/Bitmap$Config;)V

    .line 149
    return-object p0
.end method

.method public configDefaultBitmapMaxSize(II)Lcom/lidroid/xutils/BitmapUtils;
    .locals 2
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 123
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    new-instance v1, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    invoke-direct {v1, p1, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)V

    .line 124
    return-object p0
.end method

.method public configDefaultBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "maxSize"    # Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    .line 128
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)V

    .line 129
    return-object p0
.end method

.method public configDefaultCacheExpiry(J)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "defaultExpiry"    # J

    .line 163
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDefaultCacheExpiry(J)V

    .line 164
    return-object p0
.end method

.method public configDefaultConnectTimeout(I)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "connectTimeout"    # I

    .line 168
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDefaultConnectTimeout(I)V

    .line 169
    return-object p0
.end method

.method public configDefaultDisplayConfig(Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 0
    .param p1, "displayConfig"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .line 153
    iput-object p1, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .line 154
    return-object p0
.end method

.method public configDefaultImageLoadAnimation(Landroid/view/animation/Animation;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 133
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setAnimation(Landroid/view/animation/Animation;)V

    .line 134
    return-object p0
.end method

.method public configDefaultLoadFailedImage(I)Lcom/lidroid/xutils/BitmapUtils;
    .locals 2
    .param p1, "resId"    # I

    .line 113
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    return-object p0
.end method

.method public configDefaultLoadFailedImage(Landroid/graphics/Bitmap;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 118
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    return-object p0
.end method

.method public configDefaultLoadFailedImage(Landroid/graphics/drawable/Drawable;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 108
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-object p0
.end method

.method public configDefaultLoadingImage(I)Lcom/lidroid/xutils/BitmapUtils;
    .locals 2
    .param p1, "resId"    # I

    .line 98
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    return-object p0
.end method

.method public configDefaultLoadingImage(Landroid/graphics/Bitmap;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 103
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    return-object p0
.end method

.method public configDefaultLoadingImage(Landroid/graphics/drawable/Drawable;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 93
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    return-object p0
.end method

.method public configDefaultReadTimeout(I)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "readTimeout"    # I

    .line 173
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDefaultReadTimeout(I)V

    .line 174
    return-object p0
.end method

.method public configDefaultShowOriginal(Z)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "showOriginal"    # Z

    .line 143
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setShowOriginal(Z)V

    .line 144
    return-object p0
.end method

.method public configDiskCacheEnabled(Z)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "enabled"    # Z

    .line 188
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDiskCacheEnabled(Z)V

    .line 189
    return-object p0
.end method

.method public configDiskCacheFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "fileNameGenerator"    # Lcom/lidroid/xutils/cache/FileNameGenerator;

    .line 193
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V

    .line 194
    return-object p0
.end method

.method public configDownloader(Lcom/lidroid/xutils/bitmap/download/Downloader;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "downloader"    # Lcom/lidroid/xutils/bitmap/download/Downloader;

    .line 158
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDownloader(Lcom/lidroid/xutils/bitmap/download/Downloader;)V

    .line 159
    return-object p0
.end method

.method public configMemoryCacheEnabled(Z)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "enabled"    # Z

    .line 183
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemoryCacheEnabled(Z)V

    .line 184
    return-object p0
.end method

.method public configThreadPoolSize(I)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "threadPoolSize"    # I

    .line 178
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setThreadPoolSize(I)V

    .line 179
    return-object p0
.end method

.method public display(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 205
    .local p1, "container":Landroid/view/View;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/lidroid/xutils/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    .line 206
    return-void
.end method

.method public display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V
    .locals 1
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "displayConfig"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            ")V"
        }
    .end annotation

    .line 209
    .local p1, "container":Landroid/view/View;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lidroid/xutils/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    .line 210
    return-void
.end method

.method public display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V
    .locals 9
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "displayConfig"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<",
            "TT;>;)V"
        }
    .end annotation

    .line 217
    .local p1, "container":Landroid/view/View;, "TT;"
    .local p4, "callBack":Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;, "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<TT;>;"
    if-nez p1, :cond_0

    .line 218
    return-void

    .line 221
    :cond_0
    if-nez p4, :cond_1

    .line 222
    new-instance v0, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;

    invoke-direct {v0}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;-><init>()V

    move-object p4, v0

    .line 225
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    if-ne p3, v0, :cond_3

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->cloneNew()Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    move-result-object p3

    .line 230
    :cond_3
    invoke-virtual {p3}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v6

    .line 231
    .local v6, "size":Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    invoke-virtual {v6}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->optimizeMaxSizeByView(Landroid/view/View;II)Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)V

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 235
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 236
    invoke-virtual {p3}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getLoadFailedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, p1, p2, v0}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 237
    return-void

    .line 241
    :cond_4
    invoke-virtual {p4, p1, p2, p3}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onPreLoad(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    .line 244
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 246
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_5

    .line 247
    invoke-virtual {p4, p1, p2, p3}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoadStarted(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    .line 248
    nop

    .line 249
    nop

    .line 250
    nop

    .line 251
    nop

    .line 252
    nop

    .line 253
    sget-object v5, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;->MEMORY_CACHE:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    .line 248
    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, v7

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoadCompleted(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;)V

    goto :goto_1

    .line 254
    :cond_5
    invoke-static {p1, p2, p4}, Lcom/lidroid/xutils/BitmapUtils;->bitmapLoadTaskExist(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 256
    new-instance v8, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;-><init>(Lcom/lidroid/xutils/BitmapUtils;Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    .line 259
    .local v0, "loadTask":Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;, "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<TT;>;"
    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapLoadExecutor()Lcom/lidroid/xutils/task/PriorityExecutor;

    move-result-object v1

    .line 260
    .local v1, "executor":Lcom/lidroid/xutils/task/PriorityExecutor;
    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/BitmapUtils;->getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 261
    .local v2, "diskCacheFile":Ljava/io/File;
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    .line 262
    .local v4, "diskCacheExist":Z
    :goto_0
    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lcom/lidroid/xutils/task/PriorityExecutor;->isBusy()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 263
    iget-object v5, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v5}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDiskCacheExecutor()Lcom/lidroid/xutils/task/PriorityExecutor;

    move-result-object v1

    .line 266
    :cond_7
    invoke-virtual {p3}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getLoadingDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 267
    .local v5, "loadingDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v8, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;

    invoke-direct {v8, v5, v0}, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)V

    invoke-virtual {p4, p1, v8}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 269
    invoke-virtual {p3}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getPriority()Lcom/lidroid/xutils/task/Priority;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->setPriority(Lcom/lidroid/xutils/task/Priority;)V

    .line 270
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;

    goto :goto_2

    .line 254
    .end local v0    # "loadTask":Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;, "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<TT;>;"
    .end local v1    # "executor":Lcom/lidroid/xutils/task/PriorityExecutor;
    .end local v2    # "diskCacheFile":Ljava/io/File;
    .end local v4    # "diskCacheExist":Z
    .end local v5    # "loadingDrawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    :goto_1
    nop

    .line 272
    :goto_2
    return-void
.end method

.method public display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V
    .locals 1
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<",
            "TT;>;)V"
        }
    .end annotation

    .line 213
    .local p1, "container":Landroid/view/View;, "TT;"
    .local p3, "callBack":Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;, "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lidroid/xutils/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    .line 214
    return-void
.end method

.method public flushCache()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->flushCache()V

    .line 302
    return-void
.end method

.method public getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .line 313
    if-nez p2, :cond_0

    .line 314
    iget-object p2, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 366
    iget-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->cancelAllTask:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 361
    iget-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    .line 339
    invoke-virtual {p0}, Lcom/lidroid/xutils/BitmapUtils;->flushCache()V

    .line 340
    return-void
.end method

.method public resume()V
    .locals 2

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    .line 345
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 345
    monitor-exit v0

    .line 348
    return-void

    .line 345
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supportCancel()Z
    .locals 1

    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public supportPause()Z
    .locals 1

    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public supportResume()Z
    .locals 1

    .line 328
    const/4 v0, 0x1

    return v0
.end method
