.class public Lcom/lidroid/xutils/util/MimeTypeUtils;
.super Ljava/lang/Object;
.source "MimeTypeUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .line 31
    const-string v0, "application/octet-stream"

    .line 32
    .local v0, "result":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 33
    .local v1, "extPos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 34
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "ext":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .end local v2    # "ext":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
