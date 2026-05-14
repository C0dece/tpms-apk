.class public Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;
.super Ljava/lang/Object;
.source "BitmapCommonUtils.java"


# static fields
.field private static screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "value":I
    instance-of v1, p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 79
    :try_start_0
    const-class v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 80
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 81
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .local v2, "fieldValue":I
    if-lez v2, :cond_0

    const v3, 0x7fffffff

    if-ge v2, v3, :cond_0

    .line 83
    move v0, v2

    .line 85
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fieldValue":I
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 88
    :cond_0
    :goto_1
    return v0
.end method

.method public static getScreenSize(Landroid/content/Context;)Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 35
    sget-object v0, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 37
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    new-instance v1, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v3}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    sput-object v1, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    .line 39
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    sget-object v0, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    return-object v0
.end method

.method public static optimizeMaxSizeByView(Landroid/view/View;II)Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "maxImageWidth"    # I
    .param p2, "maxImageHeight"    # I

    .line 43
    move v0, p1

    .line 44
    .local v0, "width":I
    move v1, p2

    .line 46
    .local v1, "height":I
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 47
    new-instance v2, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    invoke-direct {v2, v0, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    return-object v2

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 51
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_4

    .line 52
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-lez v3, :cond_1

    .line 53
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 54
    :cond_1
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v4, :cond_2

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    nop

    .line 58
    :goto_1
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_3

    .line 59
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 60
    :cond_3
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v4, :cond_4

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    nop

    .line 65
    :cond_4
    :goto_2
    if-gtz v0, :cond_5

    const-string v3, "mMaxWidth"

    invoke-static {p0, v3}, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 66
    :cond_5
    if-gtz v1, :cond_6

    const-string v3, "mMaxHeight"

    invoke-static {p0, v3}, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 68
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->getScreenSize(Landroid/content/Context;)Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v3

    .line 69
    .local v3, "screenSize":Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    if-gtz v0, :cond_7

    invoke-virtual {v3}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v0

    .line 70
    :cond_7
    if-gtz v1, :cond_8

    invoke-virtual {v3}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result v1

    .line 72
    :cond_8
    new-instance v4, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    invoke-direct {v4, v0, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    return-object v4
.end method
