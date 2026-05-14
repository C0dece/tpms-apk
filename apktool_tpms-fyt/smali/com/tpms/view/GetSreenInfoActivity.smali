.class public Lcom/tpms/view/GetSreenInfoActivity;
.super Landroid/app/Activity;
.source "GetSreenInfoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tpms/view/GetSreenInfoActivity;Landroid/content/Context;F)I
    .locals 1
    .param p0, "x0"    # Lcom/tpms/view/GetSreenInfoActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # F

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/tpms/view/GetSreenInfoActivity;->pxToDip(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method private pxToDip(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pxValue"    # F

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 120
    .local v0, "scale":F
    div-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public dipToPx(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dipValue"    # F

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 132
    .local v0, "scale":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 66
    move-object/from16 v8, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f080003

    invoke-virtual {v8, v0}, Lcom/tpms/view/GetSreenInfoActivity;->setContentView(I)V

    .line 68
    const v0, 0x7f060078

    invoke-virtual {v8, v0}, Lcom/tpms/view/GetSreenInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    .line 69
    .local v9, "getBtn":Landroid/widget/Button;
    const v0, 0x7f06007e

    invoke-virtual {v8, v0}, Lcom/tpms/view/GetSreenInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/EditText;

    .line 70
    .local v10, "widthPxText":Landroid/widget/EditText;
    const v0, 0x7f06007c

    invoke-virtual {v8, v0}, Lcom/tpms/view/GetSreenInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/EditText;

    .line 71
    .local v11, "heightPxText":Landroid/widget/EditText;
    const v0, 0x7f060079

    invoke-virtual {v8, v0}, Lcom/tpms/view/GetSreenInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/EditText;

    .line 72
    .local v12, "densityText":Landroid/widget/EditText;
    const v0, 0x7f06007a

    invoke-virtual {v8, v0}, Lcom/tpms/view/GetSreenInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/EditText;

    .line 73
    .local v13, "densityDpiText":Landroid/widget/EditText;
    const v0, 0x7f06007d

    invoke-virtual {v8, v0}, Lcom/tpms/view/GetSreenInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/EditText;

    .line 74
    .local v14, "widthDipText":Landroid/widget/EditText;
    const v0, 0x7f06007b

    invoke-virtual {v8, v0}, Lcom/tpms/view/GetSreenInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/EditText;

    .line 75
    .local v15, "heightDipText":Landroid/widget/EditText;
    new-instance v7, Lcom/tpms/view/GetSreenInfoActivity$1;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v8, v7

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/tpms/view/GetSreenInfoActivity$1;-><init>(Lcom/tpms/view/GetSreenInfoActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v9, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method
