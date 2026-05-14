.class public Lcom/lidroid/xutils/view/ViewInjectInfo;
.super Ljava/lang/Object;
.source "ViewInjectInfo.java"


# instance fields
.field public parentId:I

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 14
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 15
    :cond_0
    instance-of v1, p1, Lcom/lidroid/xutils/view/ViewInjectInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 17
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/lidroid/xutils/view/ViewInjectInfo;

    .line 19
    .local v1, "that":Lcom/lidroid/xutils/view/ViewInjectInfo;
    iget v3, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    iget v4, v1, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    if-eq v3, v4, :cond_2

    return v2

    .line 20
    :cond_2
    iget-object v3, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    if-nez v3, :cond_3

    return v0

    :cond_3
    return v2

    .line 22
    :cond_4
    iget-object v0, v1, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 28
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    add-int/2addr v1, v2

    .line 29
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
