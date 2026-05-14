.class public Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AsyncDrawable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/graphics/drawable/Drawable;"
    }
.end annotation


# instance fields
.field private final baseDrawable:Landroid/graphics/drawable/Drawable;

.field private final bitmapLoadTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    .local p2, "bitmapWorkerTask":Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;, "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<TT;>;"
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    if-eqz p2, :cond_0

    .line 25
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->bitmapLoadTaskReference:Ljava/lang/ref/WeakReference;

    .line 27
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmapWorkerTask may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .line 129
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 132
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 35
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 38
    :cond_0
    return-void
.end method

.method public getBitmapWorkerTask()Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<",
            "TT;>;"
        }
    .end annotation

    .line 30
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->bitmapLoadTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 82
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 196
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 151
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 171
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 166
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 181
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 176
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 56
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/16 v0, 0x7f

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 186
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getState()[I
    .locals 1

    .line 146
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .line 161
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public invalidateSelf()V
    .locals 1

    .line 101
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 104
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 136
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 191
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .line 108
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 111
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "i"    # I

    .line 42
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 45
    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 61
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    :cond_0
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 68
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 71
    :cond_0
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .param p1, "configs"    # I

    .line 75
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 78
    :cond_0
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 122
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 49
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 52
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .line 87
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .line 94
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 97
    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .line 141
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 156
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;

    .line 115
    .local p0, "this":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 118
    :cond_0
    return-void
.end method
