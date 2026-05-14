.class public Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;
.super Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;
.source "DefaultBitmapLoadCallBack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    .local p0, "this":Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;, "Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack<TT;>;"
    invoke-direct {p0}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;-><init>()V

    return-void
.end method

.method private animationDisplay(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 4
    .param p2, "animation"    # Landroid/view/animation/Animation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/animation/Animation;",
            ")V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;, "Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack<TT;>;"
    .local p1, "container":Landroid/view/View;, "TT;"
    :try_start_0
    const-class v0, Landroid/view/animation/Animation;

    const-string v1, "clone"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 45
    .local v0, "cloneMethod":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 46
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .end local v0    # "cloneMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    :catchall_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 50
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public onLoadCompleted(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;)V
    .locals 1
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "config"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;
    .param p5, "from"    # Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;",
            ")V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;, "Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack<TT;>;"
    .local p1, "container":Landroid/view/View;, "TT;"
    invoke-virtual {p0, p1, p3}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;->setBitmap(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 31
    invoke-virtual {p4}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 32
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;->animationDisplay(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 35
    :cond_0
    return-void
.end method

.method public onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;, "Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack<TT;>;"
    .local p1, "container":Landroid/view/View;, "TT;"
    invoke-virtual {p0, p1, p3}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 40
    return-void
.end method
