.class public Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/bitmap/core/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MemoryCacheKey"
.end annotation


# instance fields
.field private subKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

.field private uri:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V
    .locals 0
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .line 460
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->this$0:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->uri:Ljava/lang/String;

    .line 462
    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->subKey:Ljava/lang/String;

    .line 463
    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;)V
    .locals 0

    .line 460
    invoke-direct {p0, p1, p2, p3}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 467
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 468
    :cond_0
    instance-of v1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 470
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    .line 472
    .local v1, "that":Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;
    iget-object v3, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->uri:Ljava/lang/String;

    iget-object v4, v1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 474
    :cond_2
    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->subKey:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, v1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->subKey:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 475
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 478
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
