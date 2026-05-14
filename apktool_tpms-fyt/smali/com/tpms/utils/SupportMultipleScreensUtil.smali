.class public Lcom/tpms/utils/SupportMultipleScreensUtil;
.super Ljava/lang/Object;
.source "SupportMultipleScreensUtil.java"


# static fields
.field public static final BASE_SCREEN_HEIGHT:I = 0x258

.field public static final BASE_SCREEN_HEIGHT_FLOAT:F = 600.0f

.field public static final BASE_SCREEN_WIDTH:I = 0x400

.field public static final BASE_SCREEN_WIDTH_FLOAT:F = 1024.0f

.field public static scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/tpms/utils/SupportMultipleScreensUtil;->scale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static getScaleValue(I)I
    .locals 2
    .param p0, "value"    # I

    .line 45
    sget v0, Lcom/tpms/utils/SupportMultipleScreensUtil;->scale:F

    int-to-float v1, p0

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 40
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 41
    .local v2, "widthPixels":I
    int-to-float v3, v2

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v3, v4

    sput v3, Lcom/tpms/utils/SupportMultipleScreensUtil;->scale:F

    .line 42
    return-void
.end method

.method public static scale(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 50
    if-eqz p0, :cond_1

    .line 52
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 53
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/tpms/utils/SupportMultipleScreensUtil;->scaleViewGroup(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/tpms/utils/SupportMultipleScreensUtil;->scaleView(Landroid/view/View;)V

    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public static scaleDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 140
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v0}, Lcom/tpms/utils/SupportMultipleScreensUtil;->getScaleValue(I)I

    move-result v0

    .line 141
    .local v0, "right":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v1}, Lcom/tpms/utils/SupportMultipleScreensUtil;->getScaleValue(I)I

    move-result v1

    .line 142
    .local v1, "bottom":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 143
    return-object p0
.end method

.method public static scaleTextView(Landroid/widget/TextView;)V
    .locals 7
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 147
    if-eqz p0, :cond_2

    .line 149
    invoke-static {p0}, Lcom/tpms/utils/SupportMultipleScreensUtil;->scaleViewSize(Landroid/view/View;)V

    .line 151
    const v0, 0x7f06006f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, "isScale":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    .line 154
    .local v1, "size":F
    sget v3, Lcom/tpms/utils/SupportMultipleScreensUtil;->scale:F

    mul-float v1, v1, v3

    .line 155
    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 158
    .end local v1    # "size":F
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 159
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    aget-object v2, v1, v2

    .line 160
    .local v2, "leftDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    .line 161
    .local v3, "topDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x2

    aget-object v4, v1, v4

    .line 162
    .local v4, "rightDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x3

    aget-object v5, v1, v5

    .line 163
    .local v5, "bottomDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v2, v3, v4, v5}, Lcom/tpms/utils/SupportMultipleScreensUtil;->setTextViewCompoundDrawables(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 164
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v6

    invoke-static {v6}, Lcom/tpms/utils/SupportMultipleScreensUtil;->getScaleValue(I)I

    move-result v6

    .line 165
    .local v6, "compoundDrawablePadding":I
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 167
    .end local v0    # "isScale":Ljava/lang/Object;
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "leftDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "topDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "rightDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "bottomDrawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "compoundDrawablePadding":I
    :cond_2
    return-void
.end method

.method private static scaleView(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 71
    const v0, 0x7f060070

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 72
    .local v1, "isScale":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 73
    :cond_0
    instance-of v2, p0, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 74
    move-object v2, p0

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/tpms/utils/SupportMultipleScreensUtil;->scaleTextView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-static {p0}, Lcom/tpms/utils/SupportMultipleScreensUtil;->scaleViewSize(Landroid/view/View;)V

    .line 78
    :goto_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 80
    :cond_2
    return-void
.end method

.method private static scaleViewGroup(Landroid/view/ViewGroup;)V
    .locals 3
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 63
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 64
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/tpms/utils/SupportMultipleScreensUtil;->scaleViewGroup(Landroid/view/ViewGroup;)V

    .line 66
    :cond_0
    invoke-static {v1}, Lcom/tpms/utils/SupportMultipleScreensUtil;->scaleView(Landroid/view/View;)V

    .line 61
    .end local v1    # "view":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static scaleViewSize(Landroid/view/View;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;

    .line 84
    if-eqz p0, :cond_3

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-static {v0}, Lcom/tpms/utils/SupportMultipleScreensUtil;->getScaleValue(I)I

    move-result v0

    .line 86
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-static {v1}, Lcom/tpms/utils/SupportMultipleScreensUtil;->getScaleValue(I)I

    move-result v1

    .line 87
    .local v1, "paddingTop":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-static {v2}, Lcom/tpms/utils/SupportMultipleScreensUtil;->getScaleValue(I)I

    move-result v2

    .line 88
    .local v2, "paddingRight":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-static {v3}, Lcom/tpms/utils/SupportMultipleScreensUtil;->getScaleValue(I)I

    move-result v3

    .line 89
    .local v3, "paddingBottom":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 93
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v4, :cond_2

    .line 95
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v5, :cond_0

    .line 96
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5}, Lcom/tpms/utils/SupportMultipleScreensUtil;->getScaleValue(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 99
    :cond_0
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_1

    .line 100
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5}, Lcom/tpms/utils/SupportMultipleScreensUtil;->getScaleValue(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    :cond_1
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_2

    .line 104
    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 105
    .local v5, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v6}, Lcom/tpms/utils/SupportMultipleScreensUtil;->getScaleValue(I)I

    move-result v6

    .line 106
    .local v6, "topMargin":I
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {v7}, Lcom/tpms/utils/SupportMultipleScreensUtil;->getScaleValue(I)I

    move-result v7

    .line 107
    .local v7, "leftMargin":I
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v8}, Lcom/tpms/utils/SupportMultipleScreensUtil;->getScaleValue(I)I

    move-result v8

    .line 108
    .local v8, "bottomMargin":I
    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v9}, Lcom/tpms/utils/SupportMultipleScreensUtil;->getScaleValue(I)I

    move-result v9

    .line 109
    .local v9, "rightMargin":I
    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 110
    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 111
    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 112
    iput v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 115
    .end local v5    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "topMargin":I
    .end local v7    # "leftMargin":I
    .end local v8    # "bottomMargin":I
    .end local v9    # "rightMargin":I
    :cond_2
    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    .end local v0    # "paddingLeft":I
    .end local v1    # "paddingTop":I
    .end local v2    # "paddingRight":I
    .end local v3    # "paddingBottom":I
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void
.end method

.method private static setTextViewCompoundDrawables(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "leftDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "topDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "rightDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottomDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 120
    if-eqz p1, :cond_0

    .line 121
    invoke-static {p1}, Lcom/tpms/utils/SupportMultipleScreensUtil;->scaleDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 124
    :cond_0
    if-eqz p3, :cond_1

    .line 125
    invoke-static {p3}, Lcom/tpms/utils/SupportMultipleScreensUtil;->scaleDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 128
    :cond_1
    if-eqz p2, :cond_2

    .line 129
    invoke-static {p2}, Lcom/tpms/utils/SupportMultipleScreensUtil;->scaleDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 132
    :cond_2
    if-eqz p4, :cond_3

    .line 133
    invoke-static {p4}, Lcom/tpms/utils/SupportMultipleScreensUtil;->scaleDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 136
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 137
    return-void
.end method
